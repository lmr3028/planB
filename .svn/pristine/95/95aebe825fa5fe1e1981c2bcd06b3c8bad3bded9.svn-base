
$(document).ready(function reviewHistory(){
	$.ajax({
		type : "post",
		url : "/rest/home/mmember/reviewHistory",
		dataType : "json", // 여러 개 항목 받아옴
		success : function(result){
			console.log(result);

			var output = "";
			for (var i = 0; i < result.length; i++) {
				console.log(result[i])

				/*output +='<thead>'
				output +='<tr>'
				output +='<th class="product-remove"><span class="nobr"> 리뷰 번호 </span></th>'
				output +='<th class="product-name"><span class="nobr"> 리뷰 상품이름 </span></th>'
				output +='<th class="product-name"><span class="nobr"> 리뷰 내용 </span></th>'
				output +='<th class="product-name"><span class="nobr"> 구매 날짜 </span></th>'
				output +='<th class="product-price"><span class="nobr"> 내가 준 평점 </span></th>'
				output +='<th class="product-add-to-cart"><span class="nobr">상품 재구매</span></th>'
				output +='</tr>'
				output +='</thead>'*/
/*				output +='<tbody>'*/
				output +='<tr>'
				output +='<td class="product-remove">' + result[i].REVIEWNO + '</td>'
				output +='<td class="product-name">' + result[i].PNAME + '</td>'
				output +='<td class="product-name">' + result[i].CONTENTS + '</td>'
				output +='<td class="product-name">' + result[i].SYS_DATE + '</td>'
				output +='<td class="product-price"><span class="amount" id="reviewRating" >'
				if(result[i].RATING || result[i].RATING > 0){
	        		for (var j = 0; j < result[i].RATING; j++) {
	        			output += "<span class='zmdi zmdi-star' style='color:rgb(255, 184, 34)'></span>"
	        		}
	        		for (var j = 0; j < 5 - result[i].RATING; j++) {
	        			output += "<span class='ti-star' style='color:rgb(255, 184, 34)'></span>"
	        		}

	        	}
				output +='</span></td>'
				output +='<td class="product-add-to-cart"><a href="/home/product/productDetail?productNo=' + result[i].PRODUCTNO + '"> 상품 재구매 </a></td>'
				output +='</tr>'


			}

			$("#reviewHistory").append(output); //output에 담긴 내용을 html로 변환해서 div 영역에 출력
		},
		error : function(){
			console.log("통신실패!");
		}
	});
});