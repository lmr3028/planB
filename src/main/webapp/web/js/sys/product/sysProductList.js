// Class definition

var KTDatatableRemoteAjaxDemo = function() {
	// Private functions

	// basic demo
	var demo = function() {

		var datatable = $('#productTable').KTDatatable({
			// datasource definition
			data: {
				type: 'remote',
				source: {
					read: {
						url: '/rest/sys/product/sysProductList',
						map: function(raw) {
							console.log(raw)
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
						return row.PRODUCTNO;
					},
				},
				{
					field: 'PRODUCTNO',
					title : 'No',
					width : '40',
					sortable : 'desc',
					type: 'number',
				},
				{
					field: 'PNAME',
					title: '상품명',
					width: '420',
				}, {
					field: 'CATEGORYNAME',
					title: '카테고리',
					width: 'auto',
				}, {
					field: 'ID',
					title: '판매자 아이디',
					width: '150',
				}, {
					field: 'PRICE',
					title: '가격',
					width: 'auto',
					template: function(row) {
						return row.PRICE + "원";
					},
				},{
					field: 'Actions',
					title: 'Actions',
					sortable: false,
					width: 'auto',
					overflow: 'visible',
					autoHide: false,
					template: function(row) {
						return '\
		                  <button data-product-no="' + row.PRODUCTNO +
		                  '" class="btn btn-sm btn-default btn-font-sm view" title="Edit details">\
		                      <i class="flaticon2-document"></i> 상세\
		                  </button>';
					},
				}],

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
					// info: '총 {{total}}중 {{start}} - {{end}} 표시중',
							},
						},
					},
				},
		});

	// 타입 셀렉박스가 변경됬을시 이벤트 발생
    $('#kt_form_type').on('change', function() {
      datatable.search($(this).val().toLowerCase(), 'CATEGORYNAME');
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
		$.ajax({
	        url:  '/rest/seller/product/productView',
	        type: 'POST',
	        data: {productno : productNo},
	        success: function(result) {
	        	console.log(result)
	        	var iframe = $("#productPreviewFrame");
	        	iframe.attr('src','/seller/product/productPreview');

	        	$(iframe).on('load', function(){
	        		setTimeout(iResize, 400);
	        		var thiz = $(this).contents();

	        		thiz.find('#product_title').text(result.pname);
	        		thiz.find('#product_simple_content').text(result.simplecontent);
	        		thiz.find('#product_price').text(result.price + "원");
	        		thiz.find('#product_content').html(result.content);
	        		thiz.find('#small_photo1').attr('src', "/web/images/small/" + result.photo1name);
	        		thiz.find('#small_photo2').attr('src', "/web/images/small/" + result.photo2name);
	        		thiz.find('#small_photo3').attr('src', "/web/images/small/" + result.photo3name);
	        		thiz.find('#small_photo4').attr('src', "/web/images/small/" + result.photo4name);
	        		thiz.find('#big_photo1').attr('src', "/web/images/big/" + result.photo1name);
	        		thiz.find('#big_photo2').attr('src', "/web/images/big/" + result.photo2name);
	        		thiz.find('#big_photo3').attr('src', "/web/images/big/" + result.photo3name);
	        		thiz.find('#big_photo4').attr('src', "/web/images/big/" + result.photo4name);

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

	        		$('#productPreviewModal').modal('show');
	        	});

	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

			// 상품 모달 보이기
			$('#addProductBtn').on('click', function(){
				$('#productModal').modal('show');
			});

			// 모달 닫았을 시 이벤트
			$('#productModal').on('hidden.bs.modal', function(e){
				$("label[for='mainImg']").text("선택된 파일이 없습니다"); // 메인 이미지 초기화
				$('.custom-file-input-clear-button').click(); // 다중이미지 초기화
				$('#productForm').validate().resetForm(); // 폼 초기화
			});

			// 상품 등록 버튼 누를시 - 데이터 서버 전송
			$('#addProductSubmitBtn').on('click', function(){
				var productForm = $("#productForm");
				productForm.validate(); //유효성 검사

			     if (!productForm.valid())return;

			    var formData = new FormData(productForm[0]);

				$.ajax({
			        url: '/rest/seller/product/addProduct',
			        type: 'POST',
			        processData: false,
                    contentType: false,
			        data: formData,
			        success: function(result) {
			        	alert("SUCCESS")
			        	console.log(result);
			        	$('#productModal').modal('hide');
			        	datatable.reload();

			        },
			        error: function(){
			            alert("error");
			        }
			    });


			});

		// 단일 상품 삭제
		datatable.on('click', '.useYn', function() {
			var productNo = [];
			productNo[0]= $(this).data('product-no');
			var useYn = $(this).val();

			 swal.fire({
	                title: '변경?',
	                text: "상태 변경을 하시겠습니까 ?",
	                type: 'warning',
	                showCancelButton: true,
	                confirmButtonText: '변경!'
	            }).then(function(result) {
	                if (result.value) {
			$.ajax({
				url:  '/rest/seller/product/updateStatus',
				type: 'POST',
				traditional: true, // arr 일 경우
				data: {productno : productNo, useYn : useYn},
				success: function(result) {
					if(result > 0) {
//						alert("변경되었습니다.")
						   swal.fire(
	                        '변경!',
	                        '상태가 변경되었습니다.',
	                        'success'
	                    )
						datatable.reload();
					}
				},
				error: function(){
					alert("error");
				}
			});
	                }
	            });
		});

		// 상품 변경 다중
		$('.useYnBtn').on('click', function(){
			var records = $(datatable.getSelectedRecords()); // 선택된 체크박스 엘리먼트
			var recordLength = records.length; // 선택된 체크박스 개수

			if(recordLength <= 0) { // 선택된 체크박스가 0 과 같거나 작다면
				return alert("체크된 데이터가 없습니다");
			}

			var result = confirm('체크된 상품들을 삭제하시겠습니까?');
			if(!result) return false;

			var arrayProductNo = [];
			for (var i = 0; i < recordLength; i++) {
				arrayProductNo.push(records.eq(i).children('td').find("input[type='checkbox']").val());
			}

			$.ajax({
		        url:  '/rest/seller/product/useYn',
		        type: 'POST',
		        traditional: true, // arr 일 경우
		        data: {productno : arrayProductNo},
		        success: function(result) {
		        	if(result > 0) {
						alert("삭제되었습니다.")
						datatable.reload();
					}
		        },
		        error: function(){
		            alert("error");
		        }
		    });
		});

	};

	return {
		// public functions
		init: function() {
			demo();
		},
	};
}();

$(document).ready(function() {
	KTDatatableRemoteAjaxDemo.init();
});

// FORM 유효성 검사
$("#addProductForm").validate({
    rules: {
    	categoryno:{
    		required: true
    	},
    	mainImg:{
				required: true
			},
			subImg:{
				required: true
			},
			pname:{
				required: true
			},
			price:{
				required: true
			},
/* 				content:{
				required: true
			}, */
			simplecontent:{
				required: true
			}
    },
    messages: {
    	categoryno : {
    		required: "상품의 카테고리를 지정해 주세요."
    	},
		mainImg:{
			required: "상품 메인 이미지를 등록해 주세요."
		},
		subImg:{
			required: "3개의 상품 이미지를 등록해 주세요."
		},
		pname:{
			required: "상품 이름을 입력해 주세요."
		},
		price:{
			required: "상품 가격을 책정해 주세요."
		},
/* 				content:{
				required: "상품 내용을 적어주세요."
			}, */
		simplecontent:{
			required: "상품 내용을 적어주세요."
		}
    }
});


// CK EDITOR
var KTCkeditor = function () {
    // Private functions
    var demos = function () {
        ClassicEditor
            .create( document.querySelector( '#kt-ckeditor-2' ) , {
            	simpleUpload: {
                    uploadUrl: 'http://localhost:8080/ck'
                  }
            })
            .then( editor => {
                console.log( editor );
            } )
            .catch( error => {
                console.error( error );
            } );
    }

    return {
        // public functions
        init: function() {
            demos();
        }
    };
}();

//  CK EDITOR 및 다중 파일 업로드
jQuery(document).ready(function() {
    KTCkeditor.init();

    var viewModel = {};
	  viewModel.fileData = ko.observable({
	    dataURL: ko.observable(),
	    // base64String: ko.observable(),
	  });
	  viewModel.multiFileData = ko.observable({
	    dataURLArray: ko.observableArray(),
	  });
	  viewModel.onClear = function(fileData){
	      fileData.clear && fileData.clear();
	  };
	  viewModel.debug = function(){
	    window.viewModel = viewModel;
	  };
	  ko.applyBindings(viewModel);
});