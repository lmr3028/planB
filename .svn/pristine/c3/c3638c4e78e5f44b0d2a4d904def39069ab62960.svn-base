	function getCookie() {
	 	var cookiedata = document.cookie;
	 	if ( cookiedata.indexOf("notice=done") < 0 ){
	 		$.ajax({
		        url:  '/rest/home/notice/noticeSlider',
		        type: 'POST',
		        success: function(result) {
		        	console.log(result)

		        	var output = `<div class="notice_inner common_inner container" id="notice_slider">`
					for (var i = 0; i < result.length; i++) {
						output +=  `<div class="sp-slides"><div class="sp-slide"><div class="item_inner"><div class="notice_conts">`
						output +=  '<p>' + result[i].title + '</p> <a href="/home/notice/noticeViewPage?notice='+ result[i].noticeno + '">자세히보기</a>'
						output += `</div></div></div></div>`;

					}
		        	output += `<div class="pal_close">
	        					<div class="pal_close_inner">
		        					<label class="control control_checkbox" for="pal_check">
	 	                   				<input type="checkbox" id="pal_check" />
	                   					<span class="control_indicator"></span>
		        							오늘 하루 이 창 보지 않음
				 	                </label>
				 	                <button class="icon_15_close_wh"><span class="blind">닫기</span></button>
				 	             </div>
				 	          </div>
				 	       </div>
				 	    </div>`;

		        	$(".notice").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력

		        },
		        error: function(){
		            alert("error");
		        }
		    });
		}
	}

	function setCookieAt00( name, value, expiredays ) {
	   var todayDate = new Date();
	   todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
	   if ( todayDate > new Date() ){
	   		expiredays = expiredays - 1;
	   }
	   todayDate.setDate( todayDate.getDate() + expiredays );
	   document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}

	getCookie();

	$(document).ready(function() {



    /* #=========================================#
    | 슬라이드  - Slider Pro |
    * https://github.com/bqworks/slider-pro
    #=========================================# */

    // 공지사항 슬라이드
    $('#notice_slider').sliderPro({
      width: '100%', // Default value: 500
      height: 50, // Default value: 300
      buttons: false, // Default value: true
      arrows: true,
      fadeArrows: false, // Default value : true - hover 시에만 화살표 표시할지
      autoplayOnHover: 'pause', // Default value: pause , other value : start , none
      autoplay: true, // Default value: true
      autoplayDelay: 3000, //3초, 단위:ms , Default value: 5000
      orientation: 'vertical', // Default value: 'horizontal' - 슬라이딩 방향 설정 vertical 시 세로 이동
      touchSwipeThreshold: 10, // Default value : 50 - 스와이핑시 얼마나 드래그 해야 이동할지 최소 px 설정
      init: function() {
        // puase , stop 버튼 그리기
        $('#notice_slider .sp-arrows').append("<button class='icon_controls_stop pause on' type='button' tabindex='1'><span class='blind'>정지</span>" +
          "</button><button class='icon_controls_play play' type='button' tabindex='1'><span class='blind'>재생</span></button>");

        $('#notice_slider .sp-arrows').children('.sp-arrow').attr('tabindex', 1);

        $('.notice_conts').show();
      }
    });

    // 공지사항 닫을시 전체적인 layout 조정
    $('.notice').on('click','.pal_close button', function() {
    	$('.notice').velocity('slideUp', {
    	  duration: 400
    	});
    	if($("input:checkbox[id='pal_check']").is(":checked")){
			setCookieAt00("notice","done", 1);
			$(".notice").css("display","none");
		}
    });

	  // 화살표형 : 일시정지 버튼 클릭시
	  $(".sp-arrows .pause").on("click", function() {
	    var $thisSlider = $("#" + ($(this).parent().parent().parent().attr('id'))).data('sliderPro');
	    $thisSlider.settings.autoplay = false;
	    $thisSlider.stopAutoplay();
	    $thisSlider.update();

	    $thisSlider.$arrows.find('.pause').removeClass('on');
	    $thisSlider.$arrows.find('.play').addClass('on');

	    console.log($thisSlider)
	  });

	  // 화살표형 : 시작 버튼 클릭시
	  $(".sp-arrows .play").on("click", function() {
	    var $thisSlider = $("#" + ($(this).parent().parent().parent().attr('id'))).data('sliderPro');
	    $thisSlider.settings.autoplay = true;
	    $thisSlider.startAutoplay();
	    $thisSlider.update();

	    $thisSlider.$arrows.find('.pause').addClass('on')
	    $thisSlider.$arrows.find('.play').removeClass('on');

	    console.log($thisSlider)
	  });

    });

	$(document).ready(function() {

		getNoticeList(); // 공지사항 리스트 HTML

	});


	function getNoticeList() {

				$.ajax({
					type : "post",
					url : "/rest/home/notice/homeNoticeListMain",
					dataType : "json", // 여러 개 항목 받아옴
					success : function(result){
						console.log(result);

						var output = '',
							  date = '';

						// 공지사항 리스트 HTML 생성
						for (var i = 0; i < result.length; i++) {
							date = moment(result[i].SYS_DATE)

							output +='<div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">'
							output +='<div class="blog foo"><div class="blog__thumb">'
							output +='<a href="/home/notice/noticeViewPage?notice='+ result[i].NOTICENO + '"><img src="/web/images/notice/list/' + result[i].NOTICE_FILENAME + '" alt="공지사항 이미지"></a>'
							output +='<div class="blog__post__time"><div class="post__time--inner">'
							output +='<span class="date">' + date.format('DD') + '</span><span class="month">' + date.format('MMMM')+ '</span>'
							output +='</div></div></div>'
							output +='<div class="blog__hover__info"><div class="blog__hover__action"><p class="blog__des">'
							output +='<a href="/home/notice/noticeViewPage?notice='+ result[i].NOTICENO + '">'+ result[i].TITLE +'</a></p>'
							output +='<ul class="bl__meta"><li>작성자 :<a href="mailto:'+ result[i].ID +'">관리자</a></li></ul>'
							output +='<div class="blog__btn"><a class="read__more__btn" href="/home/notice/noticeViewPage?notice='+ result[i].NOTICENO + '">read more</a>'
							output +='</div></div></div></div></div></div>'
						}

						$("#noticeList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력

					},
					error : function(){
						alert("통신실패!");
					}
				});
	}



	/*-------------------------------------------
	  03. Product  Masonry (width)
	--------------------------------------------- */
	  function productList() {
				$.ajax({
					type : "post",
					url : "/rest/home/product/productListMain",
					dataType : "json", // 여러 개 항목 받아옴
					success : function(result){
						console.log(result);

						var output = "";
						for (var i = 0; i < result.length; i++) {
							output +='<div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12 cat--' + result[i].CATEGORYNO + '">'
							output +='<div class="product">'
							output +='<div class="product__inner">'
							output +='<div class="pro__thumb">'
							output +='<a class = "view" data-product-no="' + result[i].PRODUCTNO + '">' // 이미지 클릭시 디테일로
							output +='<img src=/web/images/thumbnail/' + result[i].PHOTO1NAME + '>'
							output +='</a>'
							output +='</div>'
							output +='<div class="product__hover__info">'
							output +='<ul class="product__action">' // hover로 cart / bookmark 가능
							output +='<li><a title="Add TO Cart" href="/home/cart/cartAdd?productno=' + result[i].PRODUCTNO + '"><span class="ti-shopping-cart"></span></a></li>'
							output +='<li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>'
							output +='</ul>'
							output +='</div>'
							output +='</div>'
							output +='<div class="product__details">'
							output +='<h2><a class = "view" data-product-no="' + result[i].PRODUCTNO + '">' + result[i].PNAME + '</a><h2>' // 상품명 클릭시 디테일로
							output +='<ul class="product__price">'
							output +='<li class="new__price">' + result[i].PRICE + '원</li>'
							output +='</ul>'
							output +='</div>'
							output +='</div>'
							output +='</div>'
						}

						$("#productListMain").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력

						gridIsotope();
					},
					error : function(){
						console.log("통신실패!");
					}
				});
	  }

	  function gridIsotope() {
		  $('.htc__product__container').imagesLoaded( function() {

			    // filter items on button click
			    $('.product-categories-menu').on( 'click', 'a', function() {
			      var filterValue = $(this).attr('data-filter');
			      $grid.isotope({ filter: filterValue });
			    });
			    // init Isotope
			    var $grid = $('.product__list').isotope({
			      itemSelector: '.single__pro',
			      percentPosition: true,
			      transitionDuration: '0.7s',
			      masonry: {
			        // use outer width of grid-sizer for columnWidth
			        columnWidth: '.single__pro',
			      }
			    });

			});
	  }

	  $(document).ready(function(){

		productList();

		$('.product__menu button').on('click', function(event) {
		    $(this).siblings('.is-checked').removeClass('is-checked');
		    $(this).addClass('is-checked');
		    event.preventDefault();
		});

});

//상품 클릭했을때
$(".product__list").on('click','.view', function() {

var productNo = $(this).data('product-no');
console.log("view : " + productNo)
window.location.href = "/home/product/productDetail?productNo=" + productNo

});



/*-------------------------------------------
03. Product List Hit(width)
--------------------------------------------- */
function productListHit() {
			$.ajax({
				type : "post",
				url : "/rest/home/product/productListHit",
				dataType : "json", // 여러 개 항목 받아옴
				success : function(result){
					console.log(result);

					var output = "";
					for (var i = 0; i < result.length; i++) {
						output +='<div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12 cat--' + result[i].CATEGORYNO + '">'
						output +='<div class="product">'
						output +='<div class="product__inner">'
						output +='<div class="pro__thumb">'
						output +='<a class = "view" data-product-no="' + result[i].PRODUCTNO + '">' // 이미지 클릭시 디테일로
						output +='<img src=/web/images/thumbnail/' + result[i].PHOTO1NAME + '>'
						output +='</a>'
						output +='</div>'
						output +='<div class="product__hover__info">'
						output +='<ul class="product__action">' // hover로 cart / bookmark 가능
						output +='<li><a title="Add TO Cart" href="/home/cart/cartAdd?productno=' + result[i].PRODUCTNO + '"><span class="ti-shopping-cart"></span></a></li>'
						output +='<li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>'
						output +='</ul>'
						output +='</div>'
						output +='</div>'
						output +='<div class="product__details">'
						output +='<h2><a class = "view" data-product-no="' + result[i].PRODUCTNO + '">' + result[i].PNAME + '</a><h2>' // 상품명 클릭시 디테일로
						output +='<ul class="product__price">'
						output +='<li class="new__price">' + result[i].PRICE + '원</li>'
						output +='</ul>'
						output +='</div>'
						output +='</div>'
						output +='</div>'
					}

					$("#productListHit").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력

					gridIsotope();
				},
				error : function(){
					console.log("통신실패!");
				}
			});
}

$(document).ready(function(){

	productListHit();

	$('.product__menu button').on('click', function(event) {
	    $(this).siblings('.is-checked').removeClass('is-checked');
	    $(this).addClass('is-checked');
	    event.preventDefault();
	});

});

/*
function eventInsert(){
	location.href = "/home/notice/eventInsert"
	alert("이벤트에 응모하셨습니다.");
}
*/

