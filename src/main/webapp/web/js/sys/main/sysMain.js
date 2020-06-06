	function memberList(){
		location.href="/sys/member/memberList";
	}

	function reportList(){
		location.href="/admin/report/reportList";
	}

const primary = "#6993FF", success = "#1BC5BD", info = "#8950FC", warning = "#FFA800", danger = "#F64E60";




jQuery(document).ready(function() {

    var chart1Labels = []; // 차트1 라벨 담을곳
    var chart1Data = []; // 차트1 데이터 담을곳

    // 차트1 데이터 서버로 부터 가져오기
    $.getJSON("/rest/sys/main/graph1", function(data) { // AJAX 통신 성공시
   	 console.log(data);
        $.each(data, function(key, value) { // 반복문
            chart1Labels.push(value.categoryname);
            chart1Data.push(value.count);
        });

        // 차트3 옵션 및 데이터 설정
        var chart_3 = {
        			series : chart1Data,
        				chart : {
        					height : '900',
        					offsetY: '40',
        					type : 'pie',
        				},
        				labels : chart1Labels,
        				responsive : [ {
        					breakpoint : 480,
        					options : {
        						chart : {
        							width : 200
        						},
        						legend : {
        							position : 'bottom'
        						}
        					}
        				} ]
};

        var chart3 = new ApexCharts(document.querySelector("#chart_3"), chart_3); // chart3 생성
        chart3.render(); // chart3 그리기
					     }).fail(function(jqXHR, textStatus, errorThrown) { // 실패시
			})


		// chart_4

    var chart4Labels = []; // 차트4 라벨 담을곳
    var chart4Data = []; // 차트4 데이터 담을곳

    // 차트4 데이터 서버로 부터 가져오기
    $.getJSON("/rest/sys/main/graph4", function(data) { // AJAX 통신 성공시
   	 console.log(data);
   	console.log(Object.keys(data[0]));
        $.each(data, function(key, value) { // 반복문
            chart4Labels.push(value.zero);
            chart4Labels.push(value.one);
            chart4Labels.push(value.two);
            chart4Labels.push(value.three);
            chart4Labels.push(value.four);
            chart4Labels.push(value.five);
        });

		var chart_4 = {
			series : [ {
				name : 'Servings',
				data : chart4Labels
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
			height : 450,
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
			labels: {
			    formatter: function (value) {
			    	if(value-1 == 0 ) return "☆";
			    	var star = "";
			    	for (var i = 0; i < value-1; i++) {
			    		star += "★"
					}
			        return  star;
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


    	// 회원가입일자
    	var chart3Labels = []; // 차트3 라벨 담을곳
    	var chart3Data = []; // 차트3 데이터 담을곳

    	// 차트1 데이터 서버로 부터 가져오기
    	$.getJSON("/rest/sys/main/graph3", function(data) { // AJAX 통신 성공시
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


	var chart2Labels = [];
	var chart2Data = [];

	$.getJSON("/rest/sys/main/graph2", function(data) { // AJAX 통신 성공시
		console.log(data);
		$.each(data, function(key, value) { // 반복문
			chart2Labels.push(value.categoryname);
			chart2Data.push(value.count);

     });
		var chart_2 = {
				series: [{
			          data: chart2Data
			        }],
			          chart: {
			          height: 600,
			          type: 'bar',
//			          events: {
//			            click: function(chart, w, e) {
//			              // console.log(chart, w, e)
//			            }
//			          }
			        },
			        plotOptions: {
			          bar: {
			            columnWidth: '45%',
			            distributed: true
			          }
			        },
			        dataLabels: {
			          enabled: false
			        },
			        legend: {
			          show: false
			        },
			        xaxis: {
			          categories: chart2Labels,
			          labels: {
			            style: {
			              fontSize: '12px'
			            }
			          }
			        }
			        };


		var chart2 = new ApexCharts(document.querySelector("#chart_2"), chart_2);
		chart2.render();
	}).fail(function(jqXHR, textStatus, errorThrown) { // 실패시
	})
});