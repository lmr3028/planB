
// Class definition

var KTDatatableRemoteAjaxDemo = function() {
	// Private functions

	// basic demo
	var demo = function() {

		var datatable = $('.kt-datatable').KTDatatable({
			// datasource definition
			data: {
				type: 'remote',
				source: {
					read: {
						url: '/rest/seller/sreview/sreviewList',
						map: function(raw) {
							var dataSet = raw;
							if (typeof raw.data !== 'undefined') {
								dataSet = raw.data;
							}
							return dataSet;
						},
					},
				},
				pageSize: 10,
				serverPaging: false,
				serverFiltering: false,
				serverSorting: false,
			},

			// layout definition
			layout: {
				scroll: true,
				footer: false,
			},

			// column sorting
			sortable: true,
			pagination: true,

			search: {
				input: $('#generalSearch'),
			},

			// columns definition
			columns: [
				{
					field: 'INDEX',
					title: '#',
					sortable: false,
					width: 30,
					type: 'number',
					selector: {class: 'kt-checkbox--solid'},
					textAlign: 'center',
						template: function(row) {
							return row.REVIEWNO;
						},
				}, {
					field: 'REVIEWNO',
					title: '리뷰 번호',
					width: '40',
					sortable: 'number',
				}, {
					field: 'ID',
					title: '구매자 아이디',
					width: '300',
				}, {
					field: 'RATING',
					title: '구매자 만족도',
					width: 'auto',
					template: function(row) {
						console.log(row.RATING)
						if(row.RATING == 0 ){
							return "<i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i>"
						} else if(row.RATING == 1 ){
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if(row.RATING == 2 ){
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if(row.RATING == 3 ){
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if(row.RATING == 4 ){
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star-o'></i>"
						} else if(row.RATING == 5 ){
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i>"
						}
					}
					}, {
						field: 'CONTENTS',
						title: '리뷰 내용',
						width: '600',
					}, {
						field: 'SYS_DATE',
						title: '리뷰 작성 시간',
						width: '300',
					}
					],
				// 한글 번역
				translate: {
					records: {
						processing: '처리중...',
						noRecords: '데이터가 없습니다.',
					},
					toolbar: {
						pagination: {
							items: {
								default: {
									first: '첫째',
									prev: '이전',
									next: '다음',
									last: '마지막',
									more: '더보기',
									input: '입력',
									select: '선택',
								},
//								info: '총 {{total}}중 {{start}} - {{end}} 표시중',
							},
						},
					},
				},
		});

//    $('#kt_form_status').on('change', function() {
//      datatable.search($(this).val().toLowerCase(), 'Status');
//    });

	// 타입 셀렉박스가 변경됐을시 이벤트 발생
    $('#kt_form_type').on('change', function() {   // 검색 컬럼 정하기
      datatable.search($(this).val().toLowerCase(), 'RATING');
    });

    // 셀렉박스
    $('#kt_form_type').selectpicker();



 // 로우 더블클릭시 이벤트 - 상세/수정 모달 팝업
	datatable.on('dblclick', 'tr', function() {
		console.log($(this))
		$(this).find('.view').click();
	});

	// iframe 리사이징
	function iResize() {
	    document.getElementById('productPreviewFrame').style.height =
	    document.getElementById('productPreviewFrame').contentWindow.document.body.offsetHeight + 'px';
	}

	// 상세 버튼 클릭했을때
	datatable.on('click', '.view', function() {
		var productNo = $(this).data('product-no');
		console.log("view : " + productNo)
		var iframe = $("#productPreviewFrame");

		$.ajax({
	        url:  '/rest/seller/product/productView',
	        type: 'POST',
	        data: {productno : productNo},
	        success: function(result) {
	        	console.log(result)

	        	iframe.attr('src','/seller/product/productPreview');

	        	$(iframe).on('load', function(){
	        		setTimeout(iResize, 400);
	        		var thiz = $(this).contents();
	        		thiz.find('#product_title').text(result.pname);
	        		thiz.find('#product_simple_content').text(result.simplecontent);
	        		thiz.find('#product_price').text(result.price + "원");
	        		thiz.find('#product_content').html(result.content);
	        		if(result.rating || result.rating > 0){
	        			var starHtml = "";
	        			for (var i = 0; i < result.rating; i++) {
	        				starHtml += "<li><span class='zmdi zmdi-star'></span></li>"
	        			}
	        			for (var i = 0; i < 5 - result.rating; i++) {
	        				starHtml += "<li><span class='ti-star'></span></li>"
	        			}
	        			thiz.find('#product_rating').html(starHtml);
	        		}

	        		thiz.find('#COUNT').text(result.reviewno);

	        		/*thiz.find('#img-tab-1').append(result.P_PHOTO1NAME);
	        		thiz.find('#img-tab-2').append(result.P_PHOTO2NAME);
	        		thiz.find('#img-tab-3').append(result.P_PHOTO3NAME);
	        		thiz.find('#img-tab-4').append(result.P_PHOTO4NAME);*/


	        		$('#productPreviewModal').modal('show');
	        	});

	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

	// 배송 처리
//	datatable.on('click', '.delivery1', function() {
//		var ordersno = [];
//		ordersno[0]  = $(this).data('ordersno');
//		var delivery = $(this).val();
//
//		if(delivery == 1) {
//			console.log("배송 여부?" + delivery)
//			 swal.fire({
//	                title: '승인',
//	                text: "승인 처리하시겠습니까 ?",
//	                type: 'warning',
//	                showCancelButton: true,
//	                confirmButtonText: '변경'
//	            }).then(function(result) {
//	                if (result.value) {
//			$.ajax({
//				url:  '/rest/seller/sorders/deliveryEndorse',
//				type: 'POST',
//				traditional: true, // arr 일 경우
//				data: {ordersno : ordersno, delivery : delivery},
//				success: function(result) {
//					if(result > 0) {
//						   swal.fire(
//	                        '변경',
//	                        '배송 처리되었습니다.',
//	                        'success'
//	                    )
//						datatable.reload();
//					}
//				},
//				error: function(){
//					alert("error");
//				}
//			});
//	                }
//	            });
//		} else if(delivery == 2) {
//			console.log("배송 여부? " + delivery)
//			 swal.fire({
//	                title: '승인 취소',
//	                text: "승인을 취소하시겠습니까 ?",
//	                type: 'warning',
//	                showCancelButton: false,
//	                confirmButtonText: '승인 대기로 변경'
//	            }).then(function(result) {
//	                if (result.value) {
//			$.ajax({
//				url:  '/rest/seller/sorders/deliveryReturn',
//				type: 'POST',
//				traditional: true, // arr 일 경우
//				data: {ordersno : delivery, delivery : delivery},
//				success: function(result) {
//					if(result > 1) {
////						alert("변경되었습니다.")
//						   swal.fire(
//	                        '변경',
//	                        '승인이 취소되었습니다.',
//	                        'success'
//	                    )
//						datatable.reload();
//					}
//				},
//				error: function(){
//					alert("error");
//				}
//			});
//	                }
//	            });
//		}
//
//	});
//
//	};
//
//	 // 승인 버튼 클릭했을때
//	   datatable.on('click', '.delivery1', function() {
//	      var ordersno = $(this).data('ordersno');
//	      var delivery = $(this).val();
//
//	      swal.fire("배송 승인 완료", "OK 버튼을 클릭해주세요.", "success").then(function(result) {
//	             if (result.value) {
//
//	      $.ajax({
//	           url:  '/rest/seller/sorders/deliveryEndorse',
//	           type: 'POST',
//	           traditional: true,
//	           data: {ordersno : ordersno, delivery : delivery},
//	           success: function(result) {
//	              if(result > 0) {
//	               datatable.reload();
//	            }
//	         }, error: function(){
//	               alert("error");
//	            }
//	         });
//	                   }
//	               });
//	   });
//
//	// 취소 버튼 클릭했을때
//	   datatable.on('click', '.delivery2', function() {
//	      var ordersno = $(this).data('ordersno');
//	      var delivery = $(this).val();
//
//	      swal.fire("배송 취소 승인 완료", "OK 버튼을 클릭해주세요.", "success").then(function(result) {
//	             if (result.value) {
//
//	      $.ajax({
//	           url:  '/rest/seller/sorders/deliveryReturn',
//	           type: 'POST',
//	           traditional: true,
//	           data: {ordersno : ordersno, delivery : delivery},
//	           success: function(result) {
//	              if(result > 0) {
//	               datatable.reload();
//	            }
//	         }, error: function(){
//	               alert("error");
//	            }
//	         });
//	                   }
//	               });
//	   });
	};
return {
	// public functions
	init: function() {
		demo();
	},
};
}();




jQuery(document).ready(function() {
	KTDatatableRemoteAjaxDemo.init();
});

