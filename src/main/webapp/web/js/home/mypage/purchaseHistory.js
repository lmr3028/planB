

$(document).ready(function purchaseHistory(){
	$.ajax({
		type : "post",
		url : "/rest/home/mmember/purchaseHistory",
		dataType : "json", // 여러 개 항목 받아옴
		success : function(result){
			console.log(result);

			var output = "";
			for (var i = 0; i < result.length; i++) {
				console.log(result[i])

/*				output +='<div class="wishlist-content">'
				output +='<div class="wishlist-table table-responsive">'
				output +='<table>'
				output +='<thead>'
				output +='<tr>'
				output +='<th class="product-remove"><span class="nobr"> 구매 번호 </span></th>'
				output +='<th class="product-thumbnail"> 구매 상품사진 </th>'
				output +='<th class="product-name"><span class="nobr"> 구매 상품이름 </span></th>'
				output +='<th class="product-price"><span class="nobr"> 구매 상품가격 </span></th>'
				output +='<th class="product-name"><span class="nobr"> 구매 날짜 </span></th>'
				output +='<th class="product-stock-stauts"><span class="nobr"> 수량 </span></th>'
				output +='<th class="product-stock-stauts"><span class="nobr"> 배송 현황 </span></th>'
				output +='<th class="product-stock-stauts"><span class="nobr"> 수령구분 </span></th>'
				output +='<th class="product-add-to-cart"><span class="nobr">리뷰쓰기</span></th>'
				output +='</tr>'
				output +='</thead>'
				output +='<tbody>'*/

				output +='<tr>'
				output +='<td class="product-remove">' + result[i].ORDERSNO + '</td>'
				output +='<td class="product-thumbnail"><a href="/home/product/productDetail?productNo=' + result[i].PRODUCTNO + '"><img src=/web/images/thumbnail/' + result[i].PHOTO1NAME + '></a></td>'
				output +='<td class="product-name"><a href="/home/product/productDetail?productNo=' + result[i].PRODUCTNO + '">' + result[i].PNAME + '</a></td>'
				output +='<td class="product-price"><span class="amount">' + result[i].PRICE + '원</span></td>'
				output +='<td class="product-name">' + result[i].SYS_DATE + '</td>'
				output +='<td class="product-stock-status"><span class="wishlist-in-stock">' + result[i].QUANTITY + '</span></td>'
				if(result[i].DELIVERY == 1){
				output +='<td class="product-stock-statu"><span class="wishlist-in-stock"> 배송 준비중</span></td>'
				} else if (result[i].DELIVERY == 2){
				output +='<td class="product-stock-statu"><span class="wishlist-in-stock"> 배송중</span></td>'
				}  else if (result[i].DELIVERY == 3){
				output +='<td class="product-stock-statu"><span class="wishlist-in-stock"> 배송완료</span></td>'
				}
				output +='<td class="product-add-to-cart"><a class = "update" data-orders-no="' + result[i].ORDERSNO + '"> 수령완료 </a>' +
								'<a href="/home/product/productDetail?productNo=' + result[i].PRODUCTNO + '"> 리뷰쓰기 </a></td>'

				output +='</tr>'

			}

			$("#purchaseHistory ").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
		},
		error : function(){
			console.log("통신실패!");
		}
	});
});

//수령 완료 클릭했을때
$(".product-add-to-cart").on('click', '.update', function() {
	var ordersno = $(this).data('orders-no');
	console.log("상품 주문번호 : " + ordersno)
	$.ajax({
		url:"/rest/home/mmember/deliveryUpdate",
		type: 'POST',
		success: function(result) {
			console.log(result)
		},
		error: function(){
			alert("error");
		}
	});

});