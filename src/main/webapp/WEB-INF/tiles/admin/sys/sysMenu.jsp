<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script>
	function main(){
		location.href="/";
	}
	function sysMain(){
		location.href="/sys/main/view";
	}
	function sellerMain(){
		location.href="/seller/main/view";
	}

	function memberList(){
		location.href="/sys/member/memberList";
	}

	function reportList(){
		location.href="/admin/report/reportList";
	}

	function noticeList(){
		location.href="/sys/notice/NoticeListView";
	}

	function noticeEventList(){
		location.href="/sys/notice/noticeEventList";
	}

	function sysProductList(){
		location.href="/sys/product/SysProductListView";
	}

	function sysOrdersList(){
		location.href="/sys/product/sysOrdersListView";
	}

	function memberConfirmList(){
		location.href="/sys/member/memberConfirmList";
	}

	function memberLogin(){
		location.href="/member/join/loginSignUp";
	}

</script>


<div id="kt_header" class="kt-header  kt-header--fixed "
					data-ktheader-minimize="on">
					<div class="kt-container  kt-container--fluid ">

						<!-- begin: Header Menu -->
						<button class="kt-header-menu-wrapper-close"
							id="kt_header_menu_mobile_close_btn">
							<i class="la la-close"></i>
						</button>
						<div class="kt-header-menu-wrapper kt-grid__item kt-grid__item--fluid"
							id="kt_header_menu_wrapper">
							<div id="kt_header_menu"
								class="kt-header-menu kt-header-menu-mobile ">
								<ul class="kt-menu__nav">
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text" onClick="main()">홈페이지</span></a>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text" onClick="sellerMain()">판매자홈</span></a>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">회원 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-users"></i><span
														class="kt-menu__link-text" onclick="memberList()">회원 목록</span></a>
												</li>
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-user-ok"></i><span
														class="kt-menu__link-text" onclick="memberConfirmList()">판매자 승인 목록</span></a>
												</li>
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-user-settings"></i><span
														class="kt-menu__link-text" onclick="reportList()">회원 신고 목록</span></a>
												</li>
											</ul>
										</div>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">상품 / 판매 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link"><i
														class="kt-menu__link-icon flaticon2-list-3"></i><span
														class="kt-menu__link-text" onclick="sysProductList()">상품 목록</span></a>
												</li>

												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-diagram"></i><span
														class="kt-menu__link-text" onclick="sysOrdersList()">판매 / 매출액 목록</span></a>
												</li>
											</ul>
										</div>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">공지사항 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon2-list-3"></i><span
														class="kt-menu__link-text" onclick="noticeList()">공지사항 목록</span></a>
												</li>

												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon2-notepad"></i><span
														class="kt-menu__link-text" onclick="noticeEventList()">추첨 목록</span></a>
												</li>
											</ul>
										</div>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">채팅 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-chat"></i><span
														class="kt-menu__link-text" onclick="noticeList()">상담 채팅 관리</span></a>
												</li>

												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-chat-1"></i><span
														class="kt-menu__link-text">실시간 채팅 관리</span></a>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<!-- end: Header Menu -->


						<!-- begin:: Brand -->
						<div class="kt-header__brand   kt-grid__item" id="kt_header_brand">
							<a class="kt-header__brand-logo" onclick="sysMain()"> <img
								alt="Logo" src="/web/lib/dist/assets/media/logos/planB_logo.png" />
							</a>
						</div>
						<!-- end:: Brand -->


						<!-- begin:: Header Topbar -->
						<div class="kt-header__topbar kt-grid__item">

						<!--begin: Notifications -->
							<div class="kt-header__topbar-item dropdown">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown"
									data-offset="10px,0px">
									<span class="kt-header__topbar-icon" onclick="location.href='http://localhost:8080/'" target="_blank"><i
										class="flaticon2-architecture-and-city"></i></span>
								</div>
							</div>

							<!--begin: Notifications -->
							<div class="kt-header__topbar-item dropdown">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown"
									data-offset="10px,0px">
									<span class="kt-header__topbar-icon"><i
										class="flaticon2-bell-alarm-symbol"></i></span> <span
										class="kt-badge kt-badge--danger"></span>
								</div>
								<div
									class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-xl">
									<form>


										<!--begin: Head -->
										<div
											class="kt-head kt-head--skin-light kt-head--fit-x kt-head--fit-b">
											<h3 class="kt-head__title">
												User Notifications &nbsp; <span
													class="btn btn-label-primary btn-sm btn-bold btn-font-md">23
													new</span>
											</h3>
											<ul
												class="nav nav-tabs nav-tabs-line nav-tabs-bold nav-tabs-line-3x nav-tabs-line-brand  kt-notification-item-padding-x"
												role="tablist">
												<li class="nav-item"><a class="nav-link active show"
													data-toggle="tab"
													href="#topbar_notifications_notifications" role="tab"
													aria-selected="true">Alerts</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#topbar_notifications_events"
													role="tab" aria-selected="false">Events</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#topbar_notifications_logs"
													role="tab" aria-selected="false">Logs</a></li>
											</ul>
										</div>

										<!--end: Head -->
										<div class="tab-content">
											<div class="tab-pane active show"
												id="topbar_notifications_notifications" role="tabpanel">
												<div
													class="kt-notification kt-margin-t-10 kt-margin-b-10 kt-scroll"
													data-scroll="true" data-height="300"
													data-mobile-height="200">
													<a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-line-chart kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New order
																has been received</div>
															<div class="kt-notification__item-time">2 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-box-1 kt-font-brand"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer is registered</div>
															<div class="kt-notification__item-time">3 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-chart2 kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">
																Application has been approved</div>
															<div class="kt-notification__item-time">3 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-image-file kt-font-warning"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New file
																has been uploaded</div>
															<div class="kt-notification__item-time">5 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-drop kt-font-info"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New user
																feedback received</div>
															<div class="kt-notification__item-time">8 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-pie-chart-2 kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">System
																reboot has been successfully completed</div>
															<div class="kt-notification__item-time">12 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-favourite kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New order
																has been placed</div>
															<div class="kt-notification__item-time">15 hrs ago
															</div>
														</div>
													</a> <a href="#"
														class="kt-notification__item kt-notification__item--read">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-safe kt-font-primary"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">Company
																meeting canceled</div>
															<div class="kt-notification__item-time">19 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-psd kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New report
																has been received</div>
															<div class="kt-notification__item-time">23 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon-download-1 kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">Finance
																report has been generated</div>
															<div class="kt-notification__item-time">25 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon-security kt-font-warning"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer comment recieved</div>
															<div class="kt-notification__item-time">2 days ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-pie-chart kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer is registered</div>
															<div class="kt-notification__item-time">3 days ago
															</div>
														</div>
													</a>
												</div>
											</div>
											<div class="tab-pane" id="topbar_notifications_events"
												role="tabpanel">
												<div
													class="kt-notification kt-margin-t-10 kt-margin-b-10 kt-scroll"
													data-scroll="true" data-height="300"
													data-mobile-height="200">
													<a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-psd kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New report
																has been received</div>
															<div class="kt-notification__item-time">23 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon-download-1 kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">Finance
																report has been generated</div>
															<div class="kt-notification__item-time">25 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-line-chart kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New order
																has been received</div>
															<div class="kt-notification__item-time">2 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-box-1 kt-font-brand"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer is registered</div>
															<div class="kt-notification__item-time">3 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-chart2 kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">
																Application has been approved</div>
															<div class="kt-notification__item-time">3 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-image-file kt-font-warning"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New file
																has been uploaded</div>
															<div class="kt-notification__item-time">5 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-drop kt-font-info"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New user
																feedback received</div>
															<div class="kt-notification__item-time">8 hrs ago</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-pie-chart-2 kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">System
																reboot has been successfully completed</div>
															<div class="kt-notification__item-time">12 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-favourite kt-font-brand"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New order
																has been placed</div>
															<div class="kt-notification__item-time">15 hrs ago
															</div>
														</div>
													</a> <a href="#"
														class="kt-notification__item kt-notification__item--read">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-safe kt-font-primary"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">Company
																meeting canceled</div>
															<div class="kt-notification__item-time">19 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-psd kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New report
																has been received</div>
															<div class="kt-notification__item-time">23 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon-download-1 kt-font-danger"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">Finance
																report has been generated</div>
															<div class="kt-notification__item-time">25 hrs ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon-security kt-font-warning"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer comment recieved</div>
															<div class="kt-notification__item-time">2 days ago
															</div>
														</div>
													</a> <a href="#" class="kt-notification__item">
														<div class="kt-notification__item-icon">
															<i class="flaticon2-pie-chart kt-font-success"></i>
														</div>
														<div class="kt-notification__item-details">
															<div class="kt-notification__item-title">New
																customer is registered</div>
															<div class="kt-notification__item-time">3 days ago
															</div>
														</div>
													</a>
												</div>
											</div>
											<div class="tab-pane" id="topbar_notifications_logs"
												role="tabpanel">
												<div class="kt-grid kt-grid--ver" style="min-height: 200px;">
													<div
														class="kt-grid kt-grid--hor kt-grid__item kt-grid__item--fluid kt-grid__item--middle">
														<div
															class="kt-grid__item kt-grid__item--middle kt-align-center">
															All caught up! <br>No new notifications.
														</div>
													</div>
												</div>
											</div>
										</div>

									</form>
								</div>
							</div>

							<!--end: Notifications -->


							<style>
								.kt-header__brand {position:absolute; top:50%; left:50%; transform:translate(-50%, -50%);}
								.btn-sm.custom_btn {padding:3px 10px;}

								@media (min-width: 1025px){.kt-header-menu-wrapper .kt-header-menu .kt-menu__nav > .kt-menu__item > .kt-menu__link {padding:0.75rem 0.8rem;}}
							</style>
							<!--begin: User bar -->
							<div class="kt-header__topbar-item kt-header__topbar-item--user">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown"
									data-offset="10px,0px">
									<div>
											<span class="kt-header__topbar-welcome">
								</span></div>

	                            	<sec:authorize access="isAuthenticated()">
										<div>
											<span class="kt-header__topbar-welcome"><a onclick="memberLogout()"> 로그아웃 </a></span>
											<span class="kt-header__topbar-welcome">${sessionScope.name} 님</span>
										</div>
									</sec:authorize>
									<sec:authorize access="isAnonymous()">
										<div>
											<span class="kt-header__topbar-welcome kt-visible-desktop"><a onclick="memberLogin()"> 로그인 </a></span>
										</div>
									</sec:authorize>

									<!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
									<span
										class="kt-badge kt-badge--username kt-badge--unified-success kt-badge--lg kt-badge--rounded kt-badge--bold kt-hidden">S</span>
								</div>

							</div>

							<!--end: User bar -->

						</div>

						<!-- end:: Header Topbar -->

					</div>
				</div>
