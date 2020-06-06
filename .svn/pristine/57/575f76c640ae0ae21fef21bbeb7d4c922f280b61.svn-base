
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
						url: '/rest/sys/notice/noticeEventList',
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
					field: 'EVENTNO',
					title: '응모번호',
					width: 'auto',
				},
				{
					field: 'ID',
					title: '아이디',
					width: 'auto',
				},
				{
					field: 'NAME',
					title: '이름',
					width: 'auto',
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


	// 모달 닫았을 시 이벤트
	$('#memberPreviewModal').on('hidden.bs.modal', function(e){
		$('#memberPreviewModal').validate().resetForm(); // 폼 초기화
	});

	};

return {
	// public functions
	init: function() {
		demo();
	},
};
}();

// 추첨 버튼 누를시 - 데이터 서버 전송
$('#eventSelect').on('click', function(){

 swal.fire({
        title: '추첨',
        text: "추첨을 시작하시겠습니까 ?",
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: '시작'
    }),  	$.ajax({
    		url:  '/rest/sys/notice/eventSelect',
    		type: 'POST',
			traditional: true, // arr 일 경우
			data: {id : id, name : name},
    		success: function(result) {
    			if(result > 0) {
    				console.log(result)
    				swal.fire(
    						'축하드립니다.',
    						'당첨자 ooo',
    						'success'
    				)
    				datatable.reload();
    			}
    		},
    		error: function(){
    			alert("error");
    		}
    	});


});




jQuery(document).ready(function() {
	KTDatatableRemoteAjaxDemo.init();
});