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
	function sordersList(){
		location.href="/seller/sorders/sordersListView"
	}
	function reviewList(){
		location.href="/seller/sreview/sreviewListView"
	}
	function sellerMain(){
		location.href="/seller/main/view";
	}
	function memberWithdrawal(){
		location.href="/home/mmember/memberWithdrawal";
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
								<ul class="kt-menu__nav ">
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text" onClick="main()">홈페이지</span></a>
									</li>
									  <sec:authorize access="hasRole('ROLE_SYSTEM')">
                                		<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text" onClick="sysMain()">어드민홈</span></a>
									</li>
                                </sec:authorize>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">상품 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="/seller/product/myProductListView" class="kt-menu__link"><i
														class="kt-menu__link-icon flaticon-gift"></i><span
														class="kt-menu__link-text">상품 리스트</span></a>
												</li>

												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-edit-1"></i><span
														class="kt-menu__link-text" onclick="reviewList()">상품 리뷰</span></a>
												</li>
											</ul>
										</div>
									</li>
									<li
										class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel"
										data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a
										href="javascript:;" class="kt-menu__link kt-menu__toggle"><span
											class="kt-menu__link-text">주문 관리</span><i
											class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div
											class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon2-shopping-cart-1"></i><span
														class="kt-menu__link-text" onclick="sordersList()">주문 리스트</span></a>
												</li>

												<!-- <li class="kt-menu__item  kt-menu__item--submenu"
													data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a
													href="javascript:;" class="kt-menu__link kt-menu__toggle"><i
														class="kt-menu__link-icon flaticon-tool"></i><span
														class="kt-menu__link-text">주문 재고</span></a>
												</li> -->
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<!-- end: Header Menu -->


						<!-- begin:: Brand -->
						<div class="kt-header__brand   kt-grid__item" id="kt_header_brand">
							<a class="kt-header__brand-logo" href="/seller/main/view"> <img
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
									<span class="kt-header__topbar-icon" target="_blank"><i
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

							<!--begin: Quick actions -->
							<div class="kt-header__topbar-item dropdown">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown"
									data-offset="10px,0px">
									<span class="kt-header__topbar-icon"><i
										class="flaticon2-gear"></i></span>
								</div>
								<div
									class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-xl">
									<form>


										<!--begin: Head -->
										<div class="kt-head kt-head--skin-light">
											<h3 class="kt-head__title">
												마이페이지 <span class="kt-space-15"></span> <span
													class="btn btn-success btn-sm btn-bold btn-font-md">23
													tasks pending</span>
											</h3>
										</div>

										<!--end: Head -->

										<!--begin: Grid Nav -->
										<div class="kt-grid-nav kt-grid-nav--skin-light">
											<div class="kt-grid-nav__row">
												<a href="#" class="kt-grid-nav__item"> <span
													class="kt-grid-nav__icon"> <svg
															xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
															height="24px" viewBox="0 0 24 24" version="1.1"
															class="kt-svg-icon kt-svg-icon--success kt-svg-icon--lg">
                                                                <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                    <rect
																x="0" y="0" width="24" height="24" />
                                                                    <path
																d="M4.3618034,10.2763932 L4.8618034,9.2763932 C4.94649941,9.10700119 5.11963097,9 5.30901699,9 L15.190983,9 C15.4671254,9 15.690983,9.22385763 15.690983,9.5 C15.690983,9.57762255 15.6729105,9.65417908 15.6381966,9.7236068 L15.1381966,10.7236068 C15.0535006,10.8929988 14.880369,11 14.690983,11 L4.80901699,11 C4.53287462,11 4.30901699,10.7761424 4.30901699,10.5 C4.30901699,10.4223775 4.32708954,10.3458209 4.3618034,10.2763932 Z M14.6381966,13.7236068 L14.1381966,14.7236068 C14.0535006,14.8929988 13.880369,15 13.690983,15 L4.80901699,15 C4.53287462,15 4.30901699,14.7761424 4.30901699,14.5 C4.30901699,14.4223775 4.32708954,14.3458209 4.3618034,14.2763932 L4.8618034,13.2763932 C4.94649941,13.1070012 5.11963097,13 5.30901699,13 L14.190983,13 C14.4671254,13 14.690983,13.2238576 14.690983,13.5 C14.690983,13.5776225 14.6729105,13.6541791 14.6381966,13.7236068 Z"
																fill="#000000" opacity="0.3" />
                                                                    <path
																d="M17.369,7.618 C16.976998,7.08599734 16.4660031,6.69750122 15.836,6.4525 C15.2059968,6.20749878 14.590003,6.085 13.988,6.085 C13.2179962,6.085 12.5180032,6.2249986 11.888,6.505 C11.2579969,6.7850014 10.7155023,7.16999755 10.2605,7.66 C9.80549773,8.15000245 9.45550123,8.72399671 9.2105,9.382 C8.96549878,10.0400033 8.843,10.7539961 8.843,11.524 C8.843,12.3360041 8.96199881,13.0779966 9.2,13.75 C9.43800119,14.4220034 9.7774978,14.9994976 10.2185,15.4825 C10.6595022,15.9655024 11.1879969,16.3399987 11.804,16.606 C12.4200031,16.8720013 13.1129962,17.005 13.883,17.005 C14.681004,17.005 15.3879969,16.8475016 16.004,16.5325 C16.6200031,16.2174984 17.1169981,15.8010026 17.495,15.283 L19.616,16.774 C18.9579967,17.6000041 18.1530048,18.2404977 17.201,18.6955 C16.2489952,19.1505023 15.1360064,19.378 13.862,19.378 C12.6999942,19.378 11.6325049,19.1855019 10.6595,18.8005 C9.68649514,18.4154981 8.8500035,17.8765035 8.15,17.1835 C7.4499965,16.4904965 6.90400196,15.6645048 6.512,14.7055 C6.11999804,13.7464952 5.924,12.6860058 5.924,11.524 C5.924,10.333994 6.13049794,9.25950479 6.5435,8.3005 C6.95650207,7.34149521 7.5234964,6.52600336 8.2445,5.854 C8.96550361,5.18199664 9.8159951,4.66400182 10.796,4.3 C11.7760049,3.93599818 12.8399943,3.754 13.988,3.754 C14.4640024,3.754 14.9609974,3.79949954 15.479,3.8905 C15.9970026,3.98150045 16.4939976,4.12149906 16.97,4.3105 C17.4460024,4.49950095 17.8939979,4.7339986 18.314,5.014 C18.7340021,5.2940014 19.0909985,5.62999804 19.385,6.022 L17.369,7.618 Z"
																fill="#000000" />
                                                                </g>
                                                            </svg>
												</span> <span class="kt-grid-nav__title">회원정보 수정</span><span
													class="kt-grid-nav__desc">Profile</span>
												</a> <a onclick = "memberWithdrawal()" class="kt-grid-nav__item"> <span
													class="kt-grid-nav__icon"> <svg
															xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
															height="24px" viewBox="0 0 24 24" version="1.1"
															class="kt-svg-icon kt-svg-icon--success kt-svg-icon--lg">
                                                                <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                    <rect
																x="0" y="0" width="24" height="24" />
                                                                    <path
																d="M14.8571499,13 C14.9499122,12.7223297 15,12.4263059 15,12.1190476 L15,6.88095238 C15,5.28984632 13.6568542,4 12,4 L11.7272727,4 C10.2210416,4 9,5.17258756 9,6.61904762 L10.0909091,6.61904762 C10.0909091,5.75117158 10.823534,5.04761905 11.7272727,5.04761905 L12,5.04761905 C13.0543618,5.04761905 13.9090909,5.86843034 13.9090909,6.88095238 L13.9090909,12.1190476 C13.9090909,12.4383379 13.8240964,12.7385644 13.6746497,13 L10.3253503,13 C10.1759036,12.7385644 10.0909091,12.4383379 10.0909091,12.1190476 L10.0909091,9.5 C10.0909091,9.06606198 10.4572216,8.71428571 10.9090909,8.71428571 C11.3609602,8.71428571 11.7272727,9.06606198 11.7272727,9.5 L11.7272727,11.3333333 L12.8181818,11.3333333 L12.8181818,9.5 C12.8181818,8.48747796 11.9634527,7.66666667 10.9090909,7.66666667 C9.85472911,7.66666667 9,8.48747796 9,9.5 L9,12.1190476 C9,12.4263059 9.0500878,12.7223297 9.14285008,13 L6,13 C5.44771525,13 5,12.5522847 5,12 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,12 C19,12.5522847 18.5522847,13 18,13 L14.8571499,13 Z"
																fill="#000000" opacity="0.3" />
                                                                    <path
																d="M9,10.3333333 L9,12.1190476 C9,13.7101537 10.3431458,15 12,15 C13.6568542,15 15,13.7101537 15,12.1190476 L15,10.3333333 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9,10.3333333 Z M10.0909091,11.1212121 L12,12.5 L13.9090909,11.1212121 L13.9090909,12.1190476 C13.9090909,13.1315697 13.0543618,13.952381 12,13.952381 C10.9456382,13.952381 10.0909091,13.1315697 10.0909091,12.1190476 L10.0909091,11.1212121 Z"
																fill="#000000" />
                                                                </g>
                                                            </svg>
												</span> <span class="kt-grid-nav__title">회원탈퇴</span> <span
													class="kt-grid-nav__desc">Withdrawal</span>
												</a>
											</div>

										</div>

										<!--end: Grid Nav -->

									</form>
								</div>
							</div>

							<!--end: Quick actions -->

							<!--begin: User bar -->
							<div class="kt-header__topbar-item kt-header__topbar-item--user">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown"
									data-offset="10px,0px">

	                            	<c:if test="${sessionScope.id != null}">
										<div>
											<span class="kt-header__topbar-welcome"><a onclick="memberLogout()"> 로그아웃 </a></span>
											<span class="kt-header__topbar-welcome">${sessionScope.name} 님</span>
										</div>
									</c:if>
									<c:if test="${sessionScope.id == null}">
										<div>
											<span class="kt-header__topbar-welcome kt-visible-desktop"><a onclick="memberLogin()"> 로그인 </a></span>
										</div>
									</c:if>
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

							<style>
							.modal {padding-left:0 !important;}
							.modal-body {overflow-y:auto; max-height:76vh;}
							.modal-body > .kt-portlet {box-shadow:none; overflow-x:hidden;}
							.kt-wizard-v4 [data-ktwizard-type="step-content"][data-ktwizard-state="current"] {width:90%; padding-top:25px;}
							.modal-dialog {width:calc(100% - 5%); height:calc(100vh - 14%); margin:auto; top:50%; transform:translateY(-50%) !important;}
							.kt-form .kt-form__group.kt-form__group--inline > .kt-form__label > label {width:max-content;}
							.btn-sm.custom_btn {padding:3px 10px;}

							.kt-datatable.kt-datatable--default.kt-datatable--scroll > .kt-datatable__table > .kt-datatable__body {overflow-x:hidden !important;}
							.kt-datatable__row-detail > .kt-datatable__detail {padding:0 !important;}
							.kt-datatable > .kt-datatable__table > .kt-datatable__body .kt-datatable__row-detail .kt-datatable__detail table {width:100%;}
							.kt-datatable.kt-datatable--default > .kt-datatable__table > .kt-datatable__body .kt-datatable__row-detail .kt-datatable__detail {width:100%;}
							.kt-datatable__row-detail table > tr::before {content:''; width:36px; height:35px; display:block;}
							.kt-datatable__row-detail table > tr > td:first-of-type {width:85px;}
							table.kt-datatable__table > thead.kt-datatable__head > tr > th:first-of-type {width:38px;}
							table.kt-datatable__table > thead.kt-datatable__head > tr > th:nth-child(2) {width:42px;}
							table.kt-datatable__table > tbody.kt-datatable__body > tr > td:first-of-type {width:38px;}
							table.kt-datatable__table > tbody.kt-datatable__body > tr > td:nth-child(2) {width:42px;}
							@media (min-width: 600px) {.modal-dialog {max-width:500px;}}
							@media (min-width: 850px) {.modal-dialog {max-width:800px;}}
							@media (min-width: 1250px) {.modal-dialog {max-width:1200px;}}
							</style>

							<!-- begin:: PREVIEW MODAL -->
							<div class="modal fade" id="memberPreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">

										<!--begin: form -->
										<form id="memberViewForm" novalidate="novalidate" action="" method="post"  enctype="multipart/form-data" >
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">회원정보</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												</button>
											</div>
											<div class="modal-body">
						 <div class="kt-portlet kt-wizard-v4">
                              <div class="kt-portlet__body kt-portlet__body--fit">
                                 <div class="kt-grid">
                                    <div class="kt-grid__item kt-grid__item--fluid kt-wizard-v4__wrapper">
                                          <div class="kt-wizard-v4__content" data-ktwizard-type="step-content" data-ktwizard-state="current">
                                             <div class="kt-section kt-section--first">
                                                <div class="kt-wizard-v4__form">
                                                   <div class="row">
                                                      <div class="col-xl-12">
                                                         <div class="kt-section__body">
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">아이디</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "id" name = "id" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">비밀번호</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "password" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label" for="division">회원구분</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <select class="form-control" name="division" id="division">
                                                                     <option value="">선택</option>
                                                                     <option value="0">관리자</option>
                                                                     <option value="1">일반회원</option>
                                                                     <option value="2">판매자</option>
                                                                     <option value="3">블랙리스트</option>
                                                                  </select>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">이름</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input  class="form-control" type="text" id = "name" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">성별</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "gender" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">생년월일</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "birth" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">휴대폰번호</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "phone" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">주소</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "address" readonly>
                                                               </div>
                                                            </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
											</div>
									 <!--end: Form -->
									 </form>
										</div>
									</div>
								</div>
							<!-- end:: PREVIEW MODAL -->


