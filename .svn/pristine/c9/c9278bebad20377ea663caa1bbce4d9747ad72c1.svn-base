
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
						url: '/rest/sys/report/reportList',
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
						return row.REPORTNO;
					},
				},
				{
					field: 'REPORTNO',
					title : 'No',
					width : '20',
					sortable : 'desc',
					type: 'number',
				},
				{
					field: 'CATEGORYNAME',
					title: '분류',
					width: '70'
				}, {
					field: 'ID',
					title: '접수 ID',
					width: '150',
				}, {
					field: 'REPORT_ID',
					title: '신고 ID',
					width: '150',
				}, {
					field: 'SYS_DATE',
					title: '신고일자',
					width: 'auto'
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

	// 타입 셀렉박스가 변경됬을시 이벤트 발생
    $('#kt_form_type').on('change', function() {
      datatable.search($(this).val().toLowerCase(), 'CATEGORYNAME');
    });

    // 셀렉박스
    $('#kt_form_type').selectpicker();

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