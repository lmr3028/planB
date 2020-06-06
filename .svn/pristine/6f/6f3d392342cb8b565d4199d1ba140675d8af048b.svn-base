
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
						url: '/rest/sys/member/memberList',
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
						return "<button value='1' data-division ="+ row.ID +" type='button' class='btn btn-info btn-elevate btn-pill btn-sm custom_btn division'>일반회원</button>"
					} else if (row.DIVISION == "2") {
							return "<button  type='button' class='btn btn-success btn-elevate btn-pill btn-sm custom_btn division'>판매자</button>"
					} else if (row.DIVISION == "3") {
							return "<button value='3' data-division ="+ row.ID +" type='button' class='btn btn-dark btn-elevate btn-pill btn-sm custom_btn division'>블랙리스트</button>"
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
		                  <button data-member-id="' + row.ID +
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
      datatable.search($(this).val().toLowerCase(), 'GENDER');
    });

    // 셀렉박스
    $('#kt_form_type').selectpicker();

	//타입 셀렉박스가 변경됐을시 이벤트 발생
	$('#kt2_form_type').on('change', function() {   // 검색 컬럼 정하기
	  datatable.search($(this).val().toLowerCase(), 'DIVISION');
	});

	// 셀렉박스
	$('#kt2_form_type').selectpicker();

    // 로우 더블클릭시 이벤트 - 상세/수정 모달 팝업
	datatable.on('dblclick', 'tr', function() {
		console.log($(this))
		$(this).find('.view').click();
	});

	// iframe 리사이징
	function iResize() {
	    document.getElementById('memberPreviewFrame').style.height =
	    document.getElementById('memberPreviewFrame').contentWindow.document.body.offsetHeight + 'px';
	}

	// 상세 버튼 클릭했을때
	datatable.on('click', '.view', function() {
		var id = $(this).data('member-id');
		console.log("view : " + id)
		$.ajax({
	        url:  '/rest/sys/member/memberView',
	        type: 'POST',
	        data: {id : id},
	        success: function(result) {
	        		var memberViewForm = $('#memberViewForm');

	        		memberViewForm.find('#id').val(result.id);
	        		memberViewForm.find('#password').val(result.password);
	        		memberViewForm.find('#divisionname').val(result.divisionname);
	        		memberViewForm.find('#division').val(result.division);
	        		memberViewForm.find('#name').val(result.name);
	        		memberViewForm.find('#gender').val(result.gender);
	        		memberViewForm.find('#birth').val(result.birth);
	        		memberViewForm.find('#phone').val(result.phone);
	        		memberViewForm.find('#address').val(result.address);

	        		$('#memberPreviewModal').modal('show');
	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

	// 수정 버튼 누를시 - 데이터 서버 전송
	$('#editDivisiontSubmitBtn').on('click', function(){
		var memberViewForm = $('#memberViewForm');

	     swal.fire({
             title: '회원 구분 수정',
             text: "회원 구분을 수정하시겠습니까 ?",
             type: 'warning',
             showCancelButton: true,
             confirmButtonText: '변경'
         }).then(function(result) {
             if (result.value) {

		$.ajax({
	        url: '/rest/sys/member/updateMember',
	        type: 'POST',
	        data: memberViewForm.serialize(),
	        success: function(result) {
	        	$('#memberPreviewModal').modal('hide');
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
	$('#memberPreviewModal').on('hidden.bs.modal', function(e){
		$('#memberPreviewModal').validate().resetForm(); // 폼 초기화
	});

	// 블랙리스트 처리
	datatable.on('click', '.division', function() {
		var id = $(this).data('division');
		var division = $(this).val();

		if(division == 1 || division == 2) {
			console.log("회원구분 " + division)
			 swal.fire({
	                title: '블랙리스트',
	                text: "블랙리스트 처리하시겠습니까 ?",
	                type: 'warning',
	                showCancelButton: true,
	                confirmButtonText: '변경'
	            }).then(function(result) {
	                if (result.value) {
			$.ajax({
				url:  '/rest/sys/member/divisionBlack',
				type: 'POST',
				traditional: true, // arr 일 경우
				data: {id : id, division : division},
				success: function(result) {
					if(result > 0) {
						   swal.fire(
	                        '변경',
	                        '블랙리스트 처리되었습니다.',
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
		} else if(division == 3) {
			console.log("회원구분 " + division)
			 swal.fire({
	                title: '블랙리스트 해제',
	                text: "블랙리스트를 해제하시겠습니까 ?",
	                type: 'warning',
	                showCancelButton: true,
	                confirmButtonText: '변경'
	            }).then(function(result) {
	                if (result.value) {
			$.ajax({
				url:  '/rest/sys/member/divisionGeneral',
				type: 'POST',
				traditional: true, // arr 일 경우
				data: {id : id, division : division},
				success: function(result) {
					if(result > 0) {
//						alert("변경되었습니다.")
						   swal.fire(
	                        '변경',
	                        '블랙리스트 해제되었습니다.',
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
		}

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
