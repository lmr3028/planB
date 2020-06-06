<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<style>
.kt-form .kt-form__group.kt-form__group--inline > .kt-form__label > label {width:max-content;}
.btn-sm.custom_btn {padding:3px 10px;}
</style>
					<div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch" id="kt_body">
						<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

							<!-- begin:: Content -->
							<div class="kt-container  kt-grid__item kt-grid__item--fluid">
								<div class="kt-portlet kt-portlet--mobile">
									<div class="kt-portlet__head kt-portlet__head--lg">
										<div class="kt-portlet__head-label">
											<span class="kt-portlet__head-icon">
												<i class="kt-font-brand flaticon2-line-chart"></i>
											</span>
											<h3 class="kt-portlet__head-title">
												리뷰 리스트
											</h3>
										</div>
										<div class="kt-portlet__head-toolbar">
											<div class="kt-portlet__head-wrapper">
<!-- 												<a href="#" class="btn btn-clean btn-icon-sm"> -->
<!-- 													<i class="la la-long-arrow-left"></i> -->
<!-- 													Back -->
<!-- 												</a> -->
<!-- 												&nbsp; -->
												<div class="dropdown dropdown-inline">
													<!-- <button type="button" class="btn btn-brand btn-icon-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														<i class="flaticon2-plus"></i> 등록
													</button> -->
													<div class="dropdown-menu dropdown-menu-right">
														<ul class="kt-nav">
															<li class="kt-nav__section kt-nav__section--first">
																<span class="kt-nav__section-text">Choose an action:</span>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-open-text-book"></i>
																	<span class="kt-nav__link-text">Reservations</span>
																</a>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-calendar-4"></i>
																	<span class="kt-nav__link-text">Appointments</span>
																</a>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-bell-alarm-symbol"></i>
																	<span class="kt-nav__link-text">Reminders</span>
																</a>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-contract"></i>
																	<span class="kt-nav__link-text">Announcements</span>
																</a>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-shopping-cart-1"></i>
																	<span class="kt-nav__link-text">Orders</span>
																</a>
															</li>
															<li class="kt-nav__separator kt-nav__separator--fit">
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-rocket-1"></i>
																	<span class="kt-nav__link-text">Projects</span>
																</a>
															</li>
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-chat-1"></i>
																	<span class="kt-nav__link-text">User Feedbacks</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="kt-portlet__body">

										<!--begin: Search Form -->
										<div class="kt-form kt-form--label-right kt-margin-t-10 kt-margin-b-10">
											<div class="row align-items-center">
												<div class="col-xl-8 order-2 order-xl-1">
													<div class="row align-items-center">
														<div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
															<div class="kt-input-icon kt-input-icon--left">
																<input type="text" class="form-control" placeholder="검색" id="generalSearch">
																<span class="kt-input-icon__icon kt-input-icon__icon--left">
																	<span><i class="la la-search"></i></span>
																</span>
															</div>
														</div>

														<div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
															<div class="kt-form__group kt-form__group--inline">
																<div class="kt-form__label">
																	<label>리뷰 목록: </label>
																</div>
																<div class="kt-form__control">
																	<select class="form-control bootstrap-select" id="kt_form_type">
																		<option value="">All</option>
																		<option value="5">최고 점수를  준 착한 리뷰</option>
																		<option value="4">4점 리뷰</option>
																		<option value="3">3점 리뷰</option>
																		<option value="2">2점 리뷰</option>
																		<option value="1">1점 리뷰</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-xl-4 order-1 order-xl-2 kt-align-right">
													<a href="#" class="btn btn-default kt-hidden">
														<i class="la la-cart-plus"></i> New Order
													</a>
													<div class="kt-separator kt-separator--border-dashed kt-separator--space-lg d-xl-none"></div>
												</div>
											</div>
										</div>

										<!--end: Search Form -->
									</div>
									<div class="kt-portlet__body kt-portlet__body--fit">

										<!--begin: Datatable -->
										<div class="kt-datatable" id="ajax_data"></div>

										<!--end: Datatable -->
									</div>
								</div>
							</div>

							<!-- end:: Content -->

							<!-- begin:: PREVIEW MODAL -->

							<div class="modal fade" id="productPreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">

										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">상품 미리보기</h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											</button>
										</div>

										<div class="modal-body">
											<iframe id="productPreviewFrame" src="" frameborder = "0" scrolling="no" style="height:100%; width:100%;"></iframe>
										</div>

										<div class="modal-footer">
											<button data-product-no="18" class="btn btn-sm btn-default btn-font-sm edit" title="Edit details">수정</button>
											<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
										</div>

									</div>
								</div>
							</div>
							<!-- end:: PREVIEW MODAL -->

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


						</div>
					</div>

<script src="/web/js/seller/sreview/sreviewList.js"></script>
<!-- <script src="/web/js/sys/notice/addNotice.js" type="text/javascript"></script> -->
<!-- <script src="/web/lib/dist/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js" type="text/javascript"></script> -->