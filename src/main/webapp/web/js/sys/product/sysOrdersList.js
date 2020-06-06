const primary = "#6993FF", success = "#1BC5BD", info = "#8950FC", warning = "#FFA800", danger = "#F64E60";
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
						url: '/rest/sys/product/sysOrdersList',
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
					field: 'ORDERSNO',
					title : 'No',
					width : 'auto',
					sortable : 'desc',
					type: 'number',
				},
				{
					field: 'PNAME',
					title: '상품명',
					width: '400',
				}, {
					field: 'SALES_ID',
					title: '판매자',
					width: 'auto',
				}, {
					field: 'SYS_DATE',
					title: '판매일자',
					width: 'auto',
				}, {
					field: 'SUMPRICE',
					title: '매출액',
					width: 'auto',
					template: function(row) {
						return row.SUMPRICE + "원";
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
	      datatable.search($(this).val().toLowerCase(), 'SYS_DATE');
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