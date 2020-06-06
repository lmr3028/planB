
$(document).ready(function() {
	getNoticeDetail(); // 공지사항 상세 HTML
});

function getNoticeDetail() {

			var noticeNo = getParam("notice");

			$.ajax({
				type : "post",
				url : "/rest/home/notice/homeNoticeDetail",
				data: {noticeno : noticeNo},
				success : function(result){
					console.log(result);

					//공지사항 상세 정보
					var notice = result.notice;
					var date = moment(notice.sys_date);
	        		$('#notice_img').attr('src', "/web/images/notice/detail/" + notice.notice_filename);
	        		$('#notice_date').append(
	        				date.format('DD')+'<span class="upc-mth">' + date.format('MMMM')
	        				+ ', ' + date.format('YYYY') + '</span>');
	        		$('#notice_title').text(notice.title);
	        		$('#notice_content').html(notice.content);

	        		//우측 공지사항 카테고리
	        		var category = result.category;
	        		var categoryHtml = '';
	        		for (var i = 0; i < category.length; i++) {
	        			categoryHtml += '<li><a href="/home/notice/noticeListViewPage"><i class="zmdi zmdi-caret-right">'
	        			categoryHtml += '</i>'+  category[i].CATEGORYNAME + '<span>'+ category[i].count +'</span></a></li>'
					}

	        		$('#categoryList').append(categoryHtml);

	        		//우측 하단 최근 공지사항
	        		var latestPost = result.latestPost;
	        		var latestPostHtml = '';

	        		for (var i = 0; i < latestPost.length; i++) {
	        			var latestPostDate = moment(latestPost[i].SYS_DATE);
	        			latestPostHtml += '<div class="single-recent-post"><div class="recent-thumb">'
	        			latestPostHtml += '<a href="blog-details.html"><img src="/web/lib2/tmart/images/blog/sm-img/1.jpg" alt="post images"></a></div>'
	        			latestPostHtml += '<div class="recent-details"><div class="recent-post-dtl">'
	        			latestPostHtml += '<h6><a href="/home/notice/noticeViewPage?notice='+ latestPost[i].NOTICENO +'">' + latestPost[i].TITLE + '</a></h6></div>'
	        			latestPostHtml += '<div class="recent-post-time"><p>'+ latestPostDate.format('DD일 MMMM YYYY')+ '</p></div></div></div>'

					}

	        		$('#latestPostList').append(latestPostHtml);
				},
				error : function(){
					alert("통신실패!");
				}
			}); // END AJAX
} // END getNoticeDetail Function
