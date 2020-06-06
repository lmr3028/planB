function myCartList(){
	$.ajax({
		type : "post",
		url : "/rest/home/cart/myCartList",
		dataType : "json", // 여러 개 항목 받아옴
		success : function(result){
			console.log(result);
			$("#myCartList").empty();
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
				output +='<a href="/rest/home/cart/myCartDelete?productno=' + result[i].PRODUCTNO + '" title="Remove this item"><i class="zmdi zmdi-close"></i></a>'
				output +='</div>'
				output +='</div>'
			}
			output += '<ul class="shoping__total">'
			output += '<li class="subtotal">Subtotal:</li>'
			output += '<li class="total__price">' + numberWithCommas(sumPrice) + '원' + '</li>'
			output += '</ul>'




			$("#myCartList").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
		},
		error : function(){
			console.log("통신실패!");
		}
	});
}

$(document).ready(function() {
	myCartList()
});


// 장바구니 삭제 ---

//function cartDelete(action, msg) {
//
//	if (confirm(msg)) {
//
//		return $.ajax({
//			type : 'post',
//			async : false,
//			url : action,
//			dataType : 'json',
//			timeout : 30000,
//			cache : false ,
//			success : function(response, status, request) {
//				return response;
//			}
//		});
//	}
//}
//$(document).ready(function() {
//
//    $(document).on('click', '.remove__btn', function (e) {
//        e.preventDefault();
//        var action = $(this).attr('href');
//
//
//        var req = cartDelete(action, "선택하신 정보를 삭제하시겠습니까?");
//        req.success(function(data) {
//            if (data.rescd == '00') {
//                alert(data.restx);
//                location.reload();
//            }
//            else {
//                alert(data.restx);
//            }
//        });
//    });
//});


