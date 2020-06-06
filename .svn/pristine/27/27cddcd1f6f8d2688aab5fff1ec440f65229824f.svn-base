

	var productNo = getParam("productNo");

	$.ajax({
        url:  '/rest/home/product/productDetail',
        type: 'POST',
        data: {productno : productNo},
        success: function(result) {
        	console.log(result)
        		$('#product_title').text(result.pname);
        		$('.product_no').val(result.productno);
        		$('#product_simple_content').text(result.simplecontent);
        		$('#product_price').text(result.price + "원");
        		$('#product_content').html(result.content);
        		$('#small_photo1').attr('src', "/web/images/small/" + result.photo1name);
        		$('#small_photo2').attr('src', "/web/images/small/" + result.photo2name);
        		$('#small_photo3').attr('src', "/web/images/small/" + result.photo3name);
        		$('#small_photo4').attr('src', "/web/images/small/" + result.photo4name);
        		$('#big_photo1').attr('src', "/web/images/big/" + result.photo1name);
        		$('#big_photo2').attr('src', "/web/images/big/" + result.photo2name);
        		$('#big_photo3').attr('src', "/web/images/big/" + result.photo3name);
        		$('#big_photo4').attr('src', "/web/images/big/" + result.photo4name);

        		// 장바구니용
        		$('#product_price2').val(parseFloat((result.price).replace(/,/g, '')));

        	/*	<li class="buy__now__btn"><a onClick="location.href='cartAdd?productno=${result.productno}'">장바구니</a></li>*/

        		if(result.rating || result.rating > 0){
        			var starHtml = "";
        			for (var i = 0; i < result.rating; i++) {
        				starHtml += "<li><span class='zmdi zmdi-star'></span></li>"
        			}
        			for (var i = 0; i < 5 - result.rating; i++) {
        				starHtml += "<li><span class='ti-star'></span></li>"
        			}
        			$('#product_rating').html(starHtml);
        		}

        		$('#COUNT').text(result.reviewno);

        },
        error: function(){
            alert("error");
        }
    });


	$('.plzCart').on('click', function() {
	if (confirm("상품을 장바구니에 추가하시겠습니까?")) {

		$.ajax({
			type : 'post',
			url : '/rest/home/cart/cartAdd',
			data : $('#myform').serialize(),
			success : function(result) {
				console.log(result);
				alert("장바구니에 담겼습니다.");
				$(".numBox").val("1");
				myCartList()
			},
			error : function() {
				alert("에러 ...");
			}
		})
	}
});




	$('.plzBookMark').on('click', function() {
		if (confirm("상품을 즐겨찾기에 추가하시겠습니까?")) {

			$.ajax({
				type : 'post',
				url : '/rest/home/mmember/myBookMark',
				data : {productno : id},
				success : function(result) {
					console.log(result);
					alert("즐겨찾기에 추가되었습니다.");
				},
				error : function() {
					alert("에러 ...");
				}
			})
		}
	});


// 장바구니 삭제
//	$('.remove__btn').on('click', function() {
//		if (confirm("상품을 삭제하시겠습니까?")) {
//
//			$.ajax({
//				type : 'post',
//				url : '/rest/home/cart/cartDelete',
//				data : $('productno').serialize(),
//				success : function(result) {
//					console.log(result);
//					alert("삭제되었습니다.");
//					location.reload();
//				},
//				error : function() {
//					alert("에러 ...");
//				}
//			})
//		}
//	});

        $('#review_write_submit').on('click', function() {
        	var reviewWriteForm = $("#reviewWriteForm");

        	$.ajax({
                url:  '/rest/home/review/reviewWrite',
                type: 'POST',
                dataType : "json", // 여러 개 항목 받아옴
                data : reviewWriteForm.serialize(),
                success: function(result) {
                	console.log(result)

                	            	var output = "";
            	for (var i = 0; i < result.length; i++) {
            		console.log(result[i])

            		output += '<div class="pro__review">'
            		output += '<div class="review__details">'
            		output += '<div class="review__info">'
            		output += '<h4><a href="#">' + result[i].ID + '</a></h4>'
            		output += '<ul class="rating">'
            			if(result[i].RATING || result[i].RATING > 0){
            				for (var j = 0; j < result[i].RATING; j++) {
            					output += '<li><i class="zmdi zmdi-star" style="color:rgb(255, 184, 34)"></i></li>'
            				} for (var j = 0; j < 5 - result[i].RATING; j++) {
            					output += '<li><i class="ti-star" style="color:rgb(255, 184, 34)"></i></li>'
            				}
            			}
            		output += '</ul>'
            		output += '<div class="rating__send">'
            		output += '<a href="#"><i class="zmdi zmdi-mail-reply"></i></a>'
            		output += '<a href="#"><i class="zmdi zmdi-close"></i></a>'
            		output += '</div>'
            		output += '</div>'
            		output += '<div class="review__date">'
            		output += '<span>' + result[i].SYS_DATE + '</span>'
            		output += '</div>'
            		output += '<p>' + result[i].CONTENTS + '</p>'
            		output += '</div>'
            		output += '</div>'
            	}

            	$("#reviewList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
                },
                error: function(){
                    alert("error");
                }
        });
	});


        $(document).ready(function() {
    	$.ajax({
    		type: 'POST',
            url:  '/rest/home/product/reviewList',
            data: {productno : productNo},
            dataType : "json", // 여러 개 항목 받아옴
            success: function(result) {
            	console.log(result);

            	var output = "";
            	for (var i = 0; i < result.length; i++) {
            		console.log(result[i])

            		output += '<div class="pro__review">'
            		output += '<div class="review__details">'
            		output += '<div class="review__info">'
            		output += '<h4><a href="#">' + result[i].ID + '</a></h4>'
            		output += '<ul class="rating">'
            			if(result[i].RATING || result[i].RATING > 0){
            				for (var j = 0; j < result[i].RATING; j++) {
            					output += '<li><i class="zmdi zmdi-star" style="color:rgb(255, 184, 34)"></i></li>'
            				} for (var j = 0; j < 5 - result[i].RATING; j++) {
            					output += '<li><i class="ti-star" style="color:rgb(255, 184, 34)"></i></li>'
            				}
            			}
            		output += '</ul>'
            		output += '<div class="rating__send">'
            		output += '<a href="#"><i class="zmdi zmdi-mail-reply"></i></a>'
            		output += '<a href="#"><i class="zmdi zmdi-close"></i></a>'
            		output += '</div>'
            		output += '</div>'
            		output += '<div class="review__date">'
            		output += '<span>' + result[i].SYS_DATE + '</span>'
            		output += '</div>'
            		output += '<p>' + result[i].CONTENTS + '</p>'
            		output += '</div>'
            		output += '</div>'
            	}

            	$("#reviewList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
            	myCartList()

            },
			error : function(){
				console.log("통신실패!");
			}
		});
});

