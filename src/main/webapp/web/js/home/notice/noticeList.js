
$(document).ready(function() {

	getNoticeList(); // 공지사항 리스트 HTML

});


function getNoticeList() {

			$.ajax({
				type : "post",
				url : "/rest/home/notice/homeNoticeList",
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
			}); // END AJAX
} // END getNoticeList Function
