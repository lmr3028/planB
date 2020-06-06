
		/*-------------------------------------------
		  03. Product  Masonry (width)
		--------------------------------------------- */
		  function productList() {
					$.ajax({
						type : "post",
						url : "/rest/home/product/productList",
						dataType : "json", // 여러 개 항목 받아옴
						success : function(result){
							console.log(result);

							var output = "";
							for (var i = 0; i < result.length; i++) {
								output +='<div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--' + result[i].CATEGORYNO + '">'
								output +='<div class="product foo">'
								output +='<div class="product__inner">'
								output +='<div class="pro__thumb">'
								output +='<a class = "view" data-product-no="' + result[i].PRODUCTNO + '">' // 이미지 클릭시 디테일로
								output +='<img src=/web/images/thumbnail/' + result[i].PHOTO1NAME + '>'
								output +='</a>'
								output +='</div>'
								output +='<div class="product__hover__info">'
								output +='<ul class="product__action">' // hover로 cart / bookmark 가능
								output +='<li><a class="plzCart"><span class="ti-shopping-cart"></span></a></li>'
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

							$("#productList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력

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
				    $('.product__menu').on( 'click', 'button', function() {
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


// 상품 클릭했을때
    $(".product__list").on('click','.view', function() {

	var productNo = $(this).data('product-no');
	console.log("view : " + productNo)
	window.location.href = "/home/product/productDetail?productNo=" + productNo

});

// 카트 클릭했을 때
    /*$(".product__hover__info").on('click', function() {
    	if (confirm("상품을 장바구니에 추가하시겠습니까?")) {

    		$.ajax({
    			type : 'post',
    			url : '/rest/home/cart/cartAdd',
    			data : $('productno').serialize(),
    			success : function(result) {
    				console.log(result);
    				alert("장바구니에 담겼습니다.");
    				myCartList()
    			},
    			error : function() {
    				alert("에러 ...");
    			}
    		})
    	}
});*/



