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
						url: '/rest/seller/product/myProductList',
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
					width: '400',
				}, {
					field: 'CATEGORYNAME',
					title: '카테고리',
					width: 'auto',
				}, {
					field: 'PRICE',
					title: '가격',
					width: 'auto',
					template: function(row) {
		            return row.PRICE + "원";
					}
				},  {
					field: 'AVGRATING',
					title: '평점',
					width: 'auto',
					template: function(row) {
						if(row.AVGRATING == 0 || row.AVGRATING == null) {
							return "<i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i><i class='la la-star-o' style='color:rgb(255, 184, 34)'></i>"
						} else if (row.AVGRATING == 1) {
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if (row.AVGRATING == 2) {
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star-o'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if (row.AVGRATING == 3) {
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star-o'></i><i class='la la-star-o'></i>"
						} else if (row.AVGRATING == 4) {
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star-o'></i>"
						} else if (row.AVGRATING == 5) {
							return "<i class='la la-star' style='color:rgb(255, 184, 34)'><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i><i class='la la-star'></i>"
						}
						},
				}, {
					field: 'USEYN',
					title: '사용/미사용',
					width: 'auto',
					template: function(row) {
						if(row.USEYN == "사용") {
							return "<button value='미사용' data-product-no="+ row.PRODUCTNO + "   type='button' class='btn btn-success btn-elevate btn-pill btn-sm custom_btn useYn'>사용</button>";
						} else if (row.USEYN == "미사용") {
							return "<button value='사용' data-product-no="+ row.PRODUCTNO + "  type='button' class='btn btn-danger btn-elevate btn-pill btn-sm custom_btn useYn'>미사용</button>";
						}
					},
				}, {
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
		                  </button> <button data-product-no="' + row.PRODUCTNO +
		                  '" class="btn btn-sm btn-default btn-font-sm edit" title="Edit details">\
	                      <i class="flaticon2-document"></i> 수정\
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


	/** START :::::::::::::: 상품 수정**/
	// 그리드 수정 버튼 클릭시 productno로 정보 가져와서 셋팅
	datatable.on('click', '.edit', function() {
		var productNo = $(this).data('product-no');
		console.log("edit : " + productNo)
		$.ajax({
	        url:  '/rest/seller/product/productView',
	        type: 'POST',
	        data: {productno : productNo},
	        success: function(result) {
	        	console.log(result)
	        		var editProductForm = $('#editProductForm');
				     editProductForm.find('#categoryno').val(result.categoryno).attr('selected','selected');
				     editProductForm.find('#productno')	.val(result.productno);
				     editProductForm.find('#simplecontent').val(result.simplecontent);
				     editProductForm.find('#price').val(parseFloat(result.price.replace(/,/g, '')));
				     editProductForm.find('#pname').val(result.pname);
				     setDataToaddEditor(result.content);

	        		$('#editProductModal').modal('show');
	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

	// 상품 등록 버튼 누를시 - 데이터 서버 전송
	$('#editProductSubmitBtn').on('click', function(){
		var editProductForm = $('#editProductForm');

		editProductForm.validate(); //유효성 검사
	     if (!editProductForm.valid())return;

	     swal.fire({
             title: '상품 수정',
             text: "상품정보를 수정하시겠습니까 ?",
             type: 'warning',
             showCancelButton: true,
             confirmButtonText: '변경'
         }).then(function(result) {
             if (result.value) {

		$.ajax({
	        url: '/rest/seller/product/updateProduct',
	        type: 'POST',
	        data: editProductForm.serialize(),
	        success: function(result) {
	        	$('#editProductModal').modal('hide');
	        	  swal.fire(
	                        '수정',
	                        '수정이 완료되었습니다.',
	                        'success'
	                    )
	        	datatable.reload();
	        },
	        error: function(){
	            alert("error");
	        }
	    });
             }
         });
	});

	// 모달 닫았을 시 이벤트
	$('#editProductModal').on('hidden.bs.modal', function(e){
		$('#editProductModal').validate().resetForm(); // 폼 초기화
	});

	/** END :::::::::::::: 상품 수정 **/

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
			    formData.append('content', getDataFromaddEditor());

			    swal.fire({
	                title: '등록',
	                text: "상품을 등록 하시겠습니까 ?",
	                type: 'info',
	                showCancelButton: true,
	                confirmButtonText: '확인'
	            }).then(function(result) {
	                if (result.value) {
				$.ajax({
			        url: '/rest/seller/product/addProduct',
			        type: 'POST',
			        processData: false,
                    contentType: false,
			        data: formData,
			        success: function	(result) {
			        	console.log(result);
			        	$('#productModal').modal('hide');

			     	   swal.fire(
		                        '등록',
		                        '상품이 등록 되었습니다.',
		                        'success'
		                    )
			        	datatable.reload();

			        },
			        error: function(){
			            alert("error");
			        }
			    });
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

		// 상품 변경 다중 - 미구현
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

let addEditor;

function getDataFromaddEditor() {
    return addEditor.getData();
}

let editEditor;
function setDataToaddEditor(data) {
    return editEditor.setData(data);
}
// CK EDITOR
var KTCkeditor = function () {
    // Private functions
    var demos = function () {
        ClassicEditor
            .create( document.querySelector('.kt-ckeditor-add') , {
            })
            .then( editor => {
            	addEditor = editor; // Save for later use.
            } )
            .catch( error => {
                console.error( error );
            } );

        ClassicEditor
        .create( document.querySelector('.kt-ckeditor-edit') , {
        })
        .then( editor => {
        	editEditor = editor; // Save for later use.
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



