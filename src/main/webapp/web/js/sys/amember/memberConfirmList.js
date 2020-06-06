
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
						url: '/rest/sys/member/memberConfirmList',
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
				title: '주문번호',
				sortable: false,
				width: 30,
				type: 'char',
				selector: {class: 'kt-checkbox--solid'},
				textAlign: 'center',
					template: function(row) {
						return row.ID;
					},
				},
				{
					field: 'ID',
					title : '아이디',
					width : '180',
					sortable : 'desc',
					type: 'char',
				},
				{
					field: 'NAME',
					title: '이름',
					width: 'auto',
				}, {
					field: 'SYS_DATE',
					title: '가입일자',
					width: 'auto',
				}, {
					field: 'GENDER',
					title: '성별',
					width: 'auto',
				}, {
					field: 'DIVISION',
					title: '회원 구분',
					width: 'auto',
					template: function(row) {
						console.log(row)
						console.log(row.DIVISION)
					if(row.DIVISION == "0") {
						return "<button type='button' class='btn btn-brand btn-elevate btn-pill btn-sm custom_btn'>관리자</button>"
					} else if (row.DIVISION == "1") {
						return "<button value='1' data-division ="+ row.DIVISION +" type='button' class='btn btn-info btn-elevate btn-pill btn-sm custom_btn division'>일반회원</button>"
					} else if (row.DIVISION == "2") {
							return "<button value='2' data-division ="+ row.DIVISION +" type='button' class='btn btn-success btn-elevate btn-pill btn-sm custom_btn division'>판매자</button>"
					} else if (row.DIVISION == "3") {
							return "<button value='3' data-division ="+ row.DIVISION +" type='button' class='btn btn-dark btn-elevate btn-pill btn-sm custom_btn division'>블랙리스트</button>"
					}
					},
				}, {
					field: 'Actions',
					title: '승인여부',
					sortable: false,
					width: 'auto',
					overflow: 'visible',
					autoHide: false,
					template: function(row) {
						return '\
		                  <button data-member-id="' + row.ID +
		                  '" class="btn btn-sm btn-default btn-font-sm confirmO" title="Edit details">\
		                      <i class="la la-circle"></i> 승인\
		                  </button> <button data-member-id="' + row.ID +
		                  '" class="btn btn-sm btn-default btn-font-sm confirmX" title="Edit details">\
	                      <i class="la la-close"></i> 거절\
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
//								info: '총 {{total}}중 {{start}} - {{end}} 표시중',
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

	// 승인 버튼 클릭했을때
	datatable.on('click', '.confirmO', function() {
		var id = $(this).data('member-id');
		var confirm = $(this).val();

		swal.fire("승인 완료", "OK 버튼을 클릭해주세요.", "success").then(function(result) {
             if (result.value) {

		$.ajax({
	        url:  '/rest/sys/member/confirmOK',
	        type: 'POST',
	        traditional: true,
	        data: {id : id, confirm : confirm},
	        success: function(result) {
	        	if(result > 0) {
					datatable.reload();
				}
			}, error: function(){
	            alert("error");
				}
			});
             		}
         		});
	});

	// 거절 버튼 클릭했을때
	datatable.on('click', '.confirmX', function() {
		var id = $(this).data('member-id');
		var confirm = $(this).val();

		swal.fire("거절 완료", "OK 버튼을 클릭해주세요.", "error").then(function(result) {
             if (result.value) {

		$.ajax({
	        url:  '/rest/sys/member/confirmX',
	        type: 'POST',
	        traditional: true,
	        data: {id : id, confirm : confirm},
	        success: function(result) {
	        	if(result > 0) {
					datatable.reload();
				}
			}, error: function(){
	            alert("error");
				}
			});
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


jQuery(document).ready(function() {
	KTDatatableRemoteAjaxDemo.init();
});