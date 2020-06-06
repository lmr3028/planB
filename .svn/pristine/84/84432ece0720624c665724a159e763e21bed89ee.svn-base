<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>

<html lang="kr">

<!-- begin::Head -->
<head>
<base href="">
<meta charset="utf-8" />
<title>planB</title>
<meta name="description" content="Latest updates and statistic charts">
<meta name="viewport" content="width=device-width, user-scalable=no">

<tiles:insertAttribute name="homeHeader" />

<style>

</style>

<!--  Modernizr JS -->
    <script src="/web/lib2/tmart/js/vendor/modernizr-2.8.3.min.js"></script>
<!--  jquery latest version -->
    <script src="/web/lib2/tmart/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="http://malsup.github.com/jquery.form.js"></script>
<!--  Bootstrap framework js -->
    <script src="/web/lib2/tmart/js/bootstrap.min.js"></script>
<!--  All js plugins included in this file. -->
    <script src="/web/lib2/tmart/js/plugins.js"></script>
    <script src="/web/lib2/tmart/js/slick.min.js"></script>
    <script src="/web/lib2/tmart/js/owl.carousel.min.js"></script>
<!--     Waypoints.min.js. -->
   <script src="/web/lib2/tmart/js/waypoints.min.js"></script>
	<!-- 2020.05.12 validate -->
<!-- <script src="/web/js/common/validate.min.js" type="text/javascript"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script src="/web/js/tiles/layout/homeLayout.js"></script>
<script src="/web/js/common/moment.js"></script>
<script src="/web/js/common/commonUtils.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!--     <script src="/web/lib/dist/assets/plugins/bootstrap-session-timeout/dist/bootstrap-session-timeout.js"></script> -->

<script>
	function memberLogout(){
		location.href="/member/login/memberlogout";
	}
	function memberLogin(){
		location.href="/member/join/loginSignUp";
	}
	function page(){
		location.href="/home/mmember/myPage";
	}
	function checkOut(){
		location.href="/home/orders/checkOut";
	}
</script>
<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-page--loading">
  <!-- Body main wrapper start -->
<!--
<c:if test="${not empty sessionScope.id}">
	<div class="modal fade in" id="session-timeout-dialog" style="display: block;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">Your Session is About to Expire!</h4>
				</div>
				<div class="modal-body">
					<p>Your session is about to expire.</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped countdown-bar active" role="progressbar" style="min-width: 15px; width: 71%;">
							<span class="countdown-holder">10s</span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button id="session-timeout-dialog-logout" type="button" class="btn btn-default" onclick="memberLogout()">로그아웃</button>
					<button id="session-timeout-dialog-keepalive" type="button" class="btn btn-primary" data-dismiss="modal">로그인 연장</button>
				</div>
			</div>
		</div>
	</div>
</c:if>
 -->

		<!-- begin::Page loader -->
    	<div class="kt-page-loader kt-page-loader--logo">
			<img alt="Logo" src="/web/lib/dist/assets/media/logos/planB_logo_mini.png">
			<div class="kt-spinner kt-spinner--info"></div>
		</div>
		<!-- end::Page loader -->

    <div class="wrapper fixed__footer">


    	<!-- Start 공지사항 슬라이더 -->
		<div class="notice">
		</div>
		<!-- End 공지사항 슬라이더 -->

        <!-- Start Header Style -->
        <header id="header" class="htc-header header--3 bg__white">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-1 col-lg-1 col-sm-1 col-xs-1">
                            <div class="logo">
                                <a href="/">
                                    <img src="/web/lib/dist/assets/media/logos/planB_logo.png" alt="logo">
                                </a>
                            </div>
                        </div>
                        <!-- Start MAinmenu Ares -->
                        <div class="col-md-6 col-lg-9 col-sm-4 col-xs-4">
                            <nav class="mainmenu__nav hidden-xs hidden-sm">
                                <ul class="main__menu">
                                <sec:authorize access="hasRole('ROLE_SYSTEM')">
                                	<li><a href="/sys/main/view">어드민홈</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasAnyRole('ROLE_SYSTEM','ROLE_SELLER')">
                                	<li><a href="/seller/main/view">판매자홈</a></li>
                                </sec:authorize>
                                    <li class="drop"><a href="/home/product/list">상품</a>
                                        <ul class="dropdown">
                                            <li><a href="#">식품 / 건강</a></li>
                                            <li><a href="#">가구 / 데코</a></li>
                                            <li><a href="#">패션 / 뷰티</a></li>
                                            <li><a href="#">가전 / 디지털</a></li>
                                            <li><a href="#">자동차</a></li>
                                        </ul>
                                    </li>
                                     <li class="drop"><a href="/home/notice/noticeListViewPage">공지사항</a>
                                     <ul class="dropdown">
                                            <li><a href="/home/notice/noticeListViewPage">공지사항</a></li>
                                            <li><a href="#">이벤트</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">고객센터</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu clearfix visible-xs visible-sm">
                                <nav id="mobile_dropdown">
                                    <ul>
                                    <sec:authorize access="isAnonymous()">  <li class="login"><a href="/member/join/loginSignUp">로그인 바로가기<span class="icon ti-angle-double-right"></span></a></li></sec:authorize>
                                    <sec:authorize access="isAuthenticated()"> <li class="logout"><a onclick="memberLogout()">
                                    	<span class="log_name"><span>${sessionScope.name}</span>님</span>
                                    	로그아웃<span class="icon ti-close"></span>
                                    </a></li></sec:authorize>

                                   <li class="drop"><a href="/home/product/list">상품</a>
                                        <ul class="dropdown">
                                            <li><a href="#">식품 / 건강</a></li>
                                            <li><a href="#">가구 / 데코</a></li>
                                            <li><a href="#">패션 / 뷰티</a></li>
                                            <li><a href="#">가전 / 디지털</a></li>
                                            <li><a href="#">자동차</a></li>
                                        </ul>
                                    </li>
                                     <li class="drop"><a href="/home/notice/noticeListViewPage">공지사항</a>
                                     <ul class="dropdown">
                                            <li><a href="/home/notice/noticeListViewPage">공지사항</a></li>
                                            <li><a href="#">이벤트</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">고객센터</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- End MAinmenu Ares -->
                        <div class="col-md-5 col-sm-6 col-xs-6">
                            <ul class="menu-extra">
                            	<sec:authorize access="isAnonymous()">
									<li class="kt-header__topbar-welcome kt-visible-desktop"><a href="/member/join/loginSignUp"> 로그인 </a></li>
								</sec:authorize>
                            	<sec:authorize access="isAuthenticated()">
	                            	<li><span class="nameId">${sessionScope.name} 님</span><a onclick="memberLogout()"> 로그아웃 </a></li>
                                <li><a onclick="page()"><span class="ti-user"></span></a></li>
                                <li class="cart__menu"><span class="ti-shopping-cart"></span></li>
                                </sec:authorize>
                            </ul>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
            <style>
            	ul.menu-extra > li > span.nameId {font-size:16px; font-weight:bold; color:#000; margin-right:5px; cursor:default;}
            	ul.menu-extra > li > a {cursor:pointer;}
            </style>
        </header>
        <!-- End Header Style -->

        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->
            <!-- Start Cart Panel -->
            <div class="shopping__cart">
                <div class="shopping__cart__inner">
                    <div class="offsetmenu__close__btn">
                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                    </div>
                    <div class="shp__cart__wrap" id="myCartList">
                        <!-- <div class="shp__single__product">
                             <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="/web/lib2/tmart/images/product/sm-img/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$105.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div> -->
                        <!-- <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="/web/lib2/tmart/images/product/sm-img/2.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">Brone Candle</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$25.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div> -->
                    </div>
<!--                     <ul class="shoping__total">
                        <li class="subtotal">Subtotal:</li>
                        <li class="total__price">$130.00</li>
                    </ul> -->
                    <ul class="shopping__btn">
                        <li><a onclick="checkOut()" style="cursor:pointer">구매하기</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Cart Panel -->
        </div>
        <!-- End Offset Wrapper -->
		<tiles:insertAttribute name="body" />

		<tiles:insertAttribute name="homeFooter" />

		 </div>
    <!-- Body main wrapper end -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="big images" src="/web/lib2/tmart/images/product/big-img/1.jpg">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>Simple Fabric Bags</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">$17.20</span>
                                        <span class="old-price">$45.00</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
                                </div>
                                <div class="select__color">
                                    <h2>Select color</h2>
                                    <ul class="color__list">
                                        <li class="red"><a title="Red" href="#">Red</a></li>
                                        <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                    </ul>
                                </div>
                                <div class="select__size">
                                    <h2>Select size</h2>
                                    <ul class="color__list">
                                        <li class="l__size"><a title="L" href="#">L</a></li>
                                        <li class="m__size"><a title="M" href="#">M</a></li>
                                        <li class="s__size"><a title="S" href="#">S</a></li>
                                        <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                        <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                                    </ul>
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social-icons">
                                            <li><a target="_blank" title="rss" href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
                                            <li><a target="_blank" title="Linkedin" href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                            <li><a target="_blank" title="Tumblr" href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="/rest/home/cart/cartAdd/">Add to cart</a>
                                </div>
                            </div><!-- .product-info -->
                        </div><!-- .modal-product -->
                    </div><!-- .modal-body -->
                </div><!-- .modal-content -->
            </div><!-- .modal-dialog -->
        </div>
        <!-- END Modal -->
    </div>
    <!-- END QUICKVIEW PRODUCT -->

    <script src="/web/lib2/tmart/js/main.js"></script>

</body>

<!-- end::Body -->
</html>
