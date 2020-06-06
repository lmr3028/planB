	function myProductListView(){
		location.href="/seller/product/myProductListView";
	}

	function sordersListView(){
		location.href="/seller/sorders/sordersListView";
	}

	function sreviewListView(){
		location.href="/seller/sreview/sreviewListView";
	}


const primary = "#6993FF", success = "#1BC5BD", info = "#8950FC", warning = "#FFA800", danger = "#F64E60";


jQuery(document).ready(function() { // 페이지가 로드됬을때 실행

		// chart_4

    var chart4Labels = []; // 차트4 라벨 담을곳
    var chart4Data = []; // 차트4 데이터 담을곳

    // 차트4 데이터 서버로 부터 가져오기
    $.getJSON("/rest/seller/main/graph4", function(data) { // AJAX 통신 성공시
   	 console.log(data);
   	 console.log(Object.keys(data[0]));
        $.each(data, function(key, value) { // 반복문
        	chart4Data.push(value.zero);
        	chart4Data.push(value.one);
        	chart4Data.push(value.two);
        	chart4Data.push(value.three);
        	chart4Data.push(value.four);
            chart4Data.push(value.five);
        });

		var chart_4 = {
			series : [ {
				name : 'Servings',
				data : chart4Data
			} ],
			annotations : {
				points : [ {
					x : 'Bananas',
					seriesIndex : 0,
					label : {
						borderColor : '#775DD0',
						offsetY : 0,
						style : {
						color : '#fff',
						background : '#775DD0',
					},
					text : 'Bananas are good',
				}
			} ]
		},
		chart : {
			height : 350,
			type : 'bar',
		},
		plotOptions : {
			bar : {
				columnWidth : '30%',
				endingShape : 'rounded'
			}
		},
		dataLabels : {
			enabled : true
		},
		stroke : {
			width : 2
		},

		grid : {
			row : {
				colors : [ '#fff', '#f2f2f2' ]
			}
		},
		xaxis : {
			labels : {
				formatter: function (value){
					if(value-1 == 0) return "☆";
					var star = "";
					for (var i = 0; i < value-1; i++) {
						star += "★"
					}
					return star;
				}
			},
			tickPlacement : 'on'
		},
		yaxis : {
			title : {
				text : 'Servings',
			},
		},
		fill : {
			type : 'gradient',
			gradient : {
				shade : 'light',
				type : "horizontal",
				shadeIntensity : 0.25,
				gradientToColors : undefined,
				inverseColors : true,
				opacityFrom : 0.85,
				opacityTo : 0.85,
				stops : [ 50, 0, 100 ]
			},
		}
	};

		var chart4 = new ApexCharts(document.querySelector("#chart_4"), chart_4); // chart4 생성
		chart4.render(); // chart4 그리기
    				}).fail(function(jqXHR, textStatus, errorThrown) { // 실패시
    	})


    	var chart3Labels = []; // 차트3 라벨 담을곳
    	var chart3Data = []; // 차트3 데이터 담을곳

    	// 차트1 데이터 서버로 부터 가져오기
    	$.getJSON("/rest/seller/main/graph3", function(data) { // AJAX 통신 성공시
    		console.log(data);
    		$.each(data, function(key, value) { // 반복문
    			chart3Labels.push(value.date);
    			chart3Data.push(value.count);
    		});

			var chart_1 = {
				series : [ {
					name : "date",
					data : chart3Data
				} ],
				chart : {
					height : '600',
					type : 'line',
					zoom : {
						enabled : true
					}
				},
				dataLabels : {
					enabled : false
				},
				stroke : {
					curve : 'straight'
				},
				title : {
					text : '일별',
					align : 'left'
				},
				grid : {
					row : {
						colors : [ '#f3f3f3', 'transparent' ], // takes an
																// array which
																// will
						// be repeated
						// on columns
						opacity : 0.5
					},
				},
				xaxis : {
					categories : chart3Labels
				},
				colors : [ primary ]
			};

		var chart1 = new ApexCharts(document.querySelector("#chart_1"), chart_1);
		chart1.render();
    					}).fail(function(jqXHR, textStatus, errorThrown) { // 실패시
			})

});


// 내가 가장 많이 판매한 상품 목록 Ajax

var KTDatatableRemoteAjaxDemo = function() {

	var demo = function() {

		var datatable = $('.kt-datatable').KTDatatable({
			data: {
				type: 'remote',
				source: {
					read: {
						url: '/rest/seller/main/myProductList',
						map: function(raw){
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

			layout: {
				scroll: true,
				footer: false,
			},

			sortable: false,
			pagination: false,

			search: {
				input: $('#generalSearch'),
			},

			columns: [
				{
					field: 'PRODUCTNO',
					title : '상품번호',
					width : 'auto',
					type: 'number',
				},
				{
					field: 'PNAME',
					title: '상품명',
					width: 'auto',
				}, {
					field: 'COUNT',
					title: '판매 횟수',
					width: 'auto',
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


// 나의 상품 최근리뷰 목록

var KTDatatableRemoteAjaxDemo2 = function() {

	var demo2 = function() {

		var datatable2 = $('.kt-datatable2').KTDatatable({
			data: {
				type: 'remote',
				source: {
					read: {
						url: '/rest/seller/main/myProductReview',
						map: function(raw){
							var dataSet = raw;
							if (typeof raw.data !== 'undefined') {
								dataSet = raw.data;
							}
							return dataSet;
						},
					},
				},
				pageSize: 5,
				serverPaging: false,
				serverFiltering: false,
				serverSorting: false,
			},

			layout: {
				scroll: true,
				footer: false,
			},

			sortable: false,
			pagination: false,

			search: {
				input: $('#generalSearch'),
			},

			columns: [
				{
					field: 'ID',
					title: '구매자 아이디',
					width: 'auto',
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
						width: 'auto',
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
	};

	return {
		// public functions
		init: function() {
			demo2();
		},
	};
}();

jQuery(document).ready(function() {
	KTDatatableRemoteAjaxDemo2.init();
});