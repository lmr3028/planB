
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
						url: '/rest/sys/notice/noticetList',
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
						return row.NOTICENO;
					},
				},
				{
					field: 'NOTICENO',
					title : 'No',
					width : 'auto',
					sortable : 'desc',
					type: 'number',
				},
				 {
					field: 'CATEGORYNO',
					title: '카테고리',
					width: 'auto',
					template: function(row) {
						return row.CATEGORYNAME
					}
				},
				{
					field: 'TITLE',
					title: '제목',
					width: '400',
				}, {
					field: 'SYS_DATE',
					title: '작성일자',
					width: 'auto',
				}, {
					field: 'USE_YN',
					title: '사용구분',
					width: 'auto',
					template: function(row) {
					console.log(row.USE_YN)
					if(row.USE_YN == "Y") {
						return "<button value='N' data-notice-no="+ row.NOTICENO +"  type='button' class='btn btn-success btn-elevate btn-pill btn-sm custom_btn use_yn'>사용</button>";
					} else if (row.USE_YN == "N") {
						return "<button value='Y' data-notice-no="+ row.NOTICENO +" type='button' class='btn btn-danger btn-elevate btn-pill btn-sm custom_btn use_yn'>미사용</button>";
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
		                  <button data-notice-no="' + row.NOTICENO +
		                  '" class="btn btn-sm btn-default btn-font-sm view" title="Edit details">\
		                      <i class="flaticon2-document"></i> 상세\
		                  </button> <button data-notice-no="' + row.NOTICENO +
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
//								info: '총 {{total}}중 {{start}} - {{end}} 표시중',
							},
						},
					},
				},
		});

	// 타입 셀렉박스가 변경됬을시 이벤트 발생
    $('#kt_form_category').on('change', function() {
      datatable.search($(this).val().toLowerCase(), 'CATEGORYNO');
    });

	// 타입 셀렉박스가 변경됬을시 이벤트 발생
    $('#kt_form_use_yn').on('change', function() {
      datatable.search($(this).val().toLowerCase(), 'USE_YN');
    });

    //init 시점부터 use yn 사용중인 것만 표기
	datatable.search('Y', 'USE_YN');

    // 셀렉박스
    $('#kt_form_category, #kt_form_use_yn').selectpicker();

    // 로우 더블클릭시 이벤트 - 상세/수정 모달 팝업
	datatable.on('dblclick', 'tr', function() {
		console.log($(this))
		$(this).find('.view').click();
	});

	// 상세 버튼 클릭했을때
	datatable.on('click', '.view', function() {
		var noticeNo = $(this).data('notice-no');
		console.log("view : " + noticeNo)
		$.ajax({
	        url:  '/rest/sys/notice/noticeView',
	        type: 'POST',
	        data: {noticeno : noticeNo},
	        success: function(result) {
	        		var noticeViewForm = $('#noticeViewForm');

	        		noticeViewForm.find('#noticeno').val(result.noticeno);
	        		noticeViewForm.find('#title').val(result.title);
	        		noticeViewForm.find('#content').val(result.content);
	        		noticeViewForm.find('#sys_id').val(result.id);
	        		noticeViewForm.find('#sys_date').val(result.sys_date);

	        		$('#noticePreviewModal').modal('show');
	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

	/** START :::::::::::::: 공지사항 수정**/
	// 그리드 수정 버튼 클릭시 notice로 정보 가져와서 셋팅
	datatable.on('click', '.edit', function() {
		var noticeNo = $(this).data('notice-no');
		console.log("edit : " + noticeNo)
		$.ajax({
	        url:  '/rest/sys/notice/noticeView',
	        type: 'POST',
	        data: {noticeno : noticeNo},
	        success: function(result) {
	        		var editNoticeForm = $('#editNoticeForm');

	        		 editNoticeForm.find('#noticeno').val(result.noticeno);
				     editNoticeForm.find('#title').val(result.title);
				     editNoticeForm.find('#sys_date').val(result.sys_date);
				     editNoticeForm.find('#content').val(result.content);
				     editNoticeForm.find('#notice_filename').val(result.notice_filename);
				     editNoticeForm.find('#categoryno').val(result.categoryno).attr('selected','selected');
				     setDataToaddEditor(result.content);

	        		$('#editNoticeModal').modal('show');
	        },
	        error: function(){
	            alert("error");
	        }
	    });
	});

	// 공지사항 수정 버튼 누를시 - 데이터 서버 전송
	$('#editNoticeSubmitBtn').on('click', function(){
		var editNoticeForm = $('#editNoticeForm');

		editNoticeForm.validate(); //유효성 검사
	     if (!editNoticeForm.valid())return;

	    var formData = new FormData(editNoticeForm[0]);
	    formData.append('content', getDataFromTheEditor());

	     swal.fire({
             title: '공지사항 수정',
             text: "공지사항을 수정하시겠습니까 ?",
             type: 'warning',
             showCancelButton: true,
             confirmButtonText: '변경'
         }).then(function(result) {
             if (result.value) {

		$.ajax({
	        url: '/rest/sys/notice/updateNotice',
	        type: 'POST',
	        data: editNoticeForm.serialize(),
	        success: function(result) {
	        	$('#editNoticeModal').modal('hide');
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
	$('#editNoticeModal').on('hidden.bs.modal', function(e){
		$('#editNoticeModal').validate().resetForm(); // 폼 초기화
	});

	/** END :::::::::::::: 공지사항 수정 **/

	// 공지사항 삭제
	datatable.on('click', '.use_yn', function() {
		var noticetNo = $(this).data('notice-no');
		var use_yn = $(this).val();

		 swal.fire({
                title: '변경?',
                text: "상태 변경을 하시겠습니까 ?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: '변경!'
            }).then(function(result) {
                if (result.value) {
		$.ajax({
			url:  '/rest/sys/notice/noticeUpdateStatus',
			type: 'POST',
			traditional: true, // arr 일 경우
			data: {noticeno : noticetNo, use_yn : use_yn},
			success: function(result) {
				if(result > 0) {
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

	// 공지사항 모달 보이기
	$('#addNoticeBtn').on('click', function(){
		$('#noticeModal').modal('show');
	});

	// 모달 닫았을 시 이벤트
	$('#noticeModal').on('hidden.bs.modal', function(e){
		$("label[for='mainImg']").text("선택된 파일이 없습니다"); // 메인 이미지 초기화
		$('.custom-file-input-clear-button').click(); // 다중이미지 초기화
		$('#noticeForm').validate().resetForm(); // 폼 초기화
	});

	// 공지사항 등록 버튼 누를시 - 데이터 서버 전송
	$('#addNoticeSubmitBtn').on('click', function(){
		var noticeForm = $("#noticeForm");

		noticeForm.validate(); //유효성 검사
	     if (!noticeForm.valid())return;

	    var formData = new FormData(noticeForm[0]);
	    formData.append('content', getDataFromTheEditor());

		$.ajax({
	        url: '/rest/sys/notice/addNotice',
	        type: 'POST',
	        processData: false,
            contentType: false,
	        data: formData,
	        success: function	(result) {
	        	alert("등록 완료")
	        	console.log(result);
	        	$('#noticeModal').modal('hide');
	        	datatable.reload();

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

jQuery(document).ready(function() {
	KTDatatableRemoteAjaxDemo.init();

//FORM 유효성 검사
$("#noticeForm").validate({
    rules: {
			title:{
				required: true
			}
    },
    messages: {
    	title : {
    		required: "제목명을 입력해 주세요."
    	}
    }
});

});

let theEditor;

function getDataFromTheEditor() {
    return theEditor.getData();
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
            .create( document.querySelector('.kt-ckeditor-2') , {
            })
            .then( editor => {
            	theEditor = editor; // Save for later use.
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
});