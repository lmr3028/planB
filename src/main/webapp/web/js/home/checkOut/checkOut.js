$(document).ready(function() {

	$.ajax({
        url:  '/rest/home/orders/memberInfo',
        type: 'POST',
        success: function(result) {
        	console.log(result)
        		$('#id').val(result.id);
        		$('#divisionname').val(result.divisionname);
        		$('#email').val(result.id);
        		$('#name').val(result.name);
        		$('#phone').val(result.phone);
        		$('#sample6_postcode').val(result.address1);
        		$('#sample6_address').val(result.address2);
        		$('#sample6_detailAddress').val(result.address3);
        		$('#sample6_extraAddress').val(result.address4);

        },
        error: function(){
            alert("error");
        }
    });

	$.ajax({
		type : "post",
		url : "/rest/home/cart/myCartList",
		dataType : "json", // 여러 개 항목 받아옴
		success : function(result){
			console.log(result);

			var output = "";
			var sumPrice = 0;
			for (var i = 0; i < result.length; i++) {
				console.log(result[i])

				sumPrice += parseFloat((result[i].PRICE).replace(/,/g, ''));

				output +='<div class="shp__single__product">'
				output +='<div class="shp__pro__thumb">'
				output +='<a href="#">'
				output +='<img src=/web/images/thumbnail/' + result[i].PHOTO1NAME + '>'
				output +='</a>'
				output +='</div>'
				output +='<div class="shp__pro__details">'
				output +='<h2><a href="#">' + result[i].PNAME + '</a></h2>'
				output +='<span class="quantity">' + result[i].QUANTITY + '개</span>'
				output +='<span class="shp__price">' + result[i].PRICE + '원</span>'
				output +='</div>'
				output +='<div class="remove__btn">'
				output +='<a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>'
				output +='</div>'
				output +='</div>'
			}
				output += '<div class="puick-contact-area mt--60">'
				output += '<h2 class="section-title-3">총 금액</h2>'
				output += '<a id="totalPrice">' + numberWithCommas(sumPrice) + '원' +'</a>'
				output += '</div>'

			$("#myOrderList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
		},
		error : function(){
			console.log("통신실패!");
		}
	});


//	$('.btn btn-custom-blue btn-elevate kt-login__btn-primary').on('click', function() {
//			$.ajax({
//				type : 'post',
//				url : '/rest/home/orders/ordersAdd',
//				data : $('productno').serialize(),
//				success : function(result) {
//					console.log(result);
//				},
//				error : function() {
//					alert("에러 ...");
//				}
//			})
//	});


});

