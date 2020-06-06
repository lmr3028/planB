 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	function goodBy(){
		location.href="/home/mmember/myDelete";
	}
	function history(){
		location.href="/home/mmember/purchaseHistory";
	}
	function myReview(){
		location.href="/home/mmember/reviewHistory";
	}
	function memberWithdrawal(){
		location.href="/home/mmember/memberWithdrawal";
	}

	function salesUpdate(){
		if(confirm("판매자로 권한을 신청하시겠습니까? (확인시, 해당 ID는 자동 로그아웃)") == true){
			location.href="/home/mmember/salesUpdate";
			alert("판매자 권한 승인 후, 로그인이 가능합니다.");
		} else {
			return false;
		}

	}
/* 	function myInformation(){
		location.href="/home/mmember/informationModify";
	} */
</script>

 <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/web/images/thumbnail/11401a6f6d7be1a45fcdda8cd95d2bf1ac4f2b96pbf47176d1ew76924c77104q.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">마이페이지</h2>
                                <nav class="bradcaump-inner">
                                  <span class="breadcrumb-item active">My Page</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->

        <section class="htc__choose__us__ares bg__white">
            <div class="container-fluid container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <div class="htc__choose__wrap">
                        	<div class="tx">
                        		<span>저희 쇼핑몰을 이용해 주셔서 감사합니다.</span>
	                        	<span><span class="b"><c:out value="${myname}" /></span>님은 <span class="b"><c:out value="${myDivision}" /></span> 회원이십니다.</span>
	                        </div>


	                        <div class="mypage_wrap">
                            <div class="choose__container mypage_container">
                                <div class="single__chooose">
                                	<a href="/home/mmember/informationModify?id=${sessionScope.id}" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-id-badge"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>회원 정보수정</h4>
	                                            <p>나의 최신 정보를 업데이트 해주세요! </p>
	                                        </div>
	                                    </div>
                                	</a>
                                	<a onclick="myReview()" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-comment-alt"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>나의 리뷰</h4>
	                                            <p>내가 남긴 소중한 리뷰 목록입니다. </p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a onclick="myReview()" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-bookmark"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>즐겨찾기</h4>
	                                            <p>즐겨찾기 </p>
	                                        </div>
	                                    </div>
	                                </a>
                                </div>
                                <div class="single__chooose">
                                	<a onclick="history()" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-shopping-cart-full"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>구매내역</h4>
	                                            <p>내가 산 상품의 역사를 보고싶으면 클릭. </p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a onclick = "memberWithdrawal()" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-face-sad"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>회원 탈퇴</h4>
	                                            <p>탈퇴 시 기존의 정보는 모두 초기화됩니다.</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a onclick="salesUpdate()" style="cursor:pointer">
	                                    <div class="choose__us">
	                                        <div class="choose__icon">
	                                            <span class="ti-pencil-alt"></span>
	                                        </div>
	                                        <div class="choose__details">
	                                            <h4>판매자 권한 신청</h4>
	                                            <p>일반회원에서 판매 관리자로 권한을 신청</p>
	                                        </div>
	                                    </div>
	                                </a>
                                </div>
                            </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </section>


<!--     jquery latest version
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    Bootstrap framework js
    <script src="js/bootstrap.min.js"></script>
    All js plugins included in this file.
    <script src="js/plugins.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    Waypoints.min.js.
    <script src="js/waypoints.min.js"></script>
    Main js file that contents all jQuery plugins activation.
    <script src="js/main.js"></script> -->

    <!--
<script src="/web/js/home/mypage/myPage.js"></script>
     -->