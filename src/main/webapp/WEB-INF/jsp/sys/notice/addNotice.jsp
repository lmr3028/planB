<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

		<!--begin::Page Custom Styles(used by this page) -->
		<link href="/web/lib/dist/assets/css/pages/wizard/wizard-4.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles -->

		<style>
		/*  custom  */
		div.custom-heading {font-weight:bold; padding:5px 0;}
		.nopadding {padding:0 !important;}
		label.custom_ChooseFile {width:calc(100% - 20px); margin-left:10px;}
		div.custom_file {margin-bottom:10px !important;}
		div.custom_file:last-child {margin-bottom:0 !important;}
		.kt-heading {border-bottom:1px solid #48465b;}
		.kt-wizard-v4 .kt-wizard-v4__wrapper .kt-form .kt-wizard-v4__content .kt-wizard-v4__form {margin-top:4rem;}
		.kt-avatar .kt-avatar__holder {width:134px; height:134px;}
		.btn.btn-primary {margin:auto 0 auto auto;}
		</style>

									<div class="kt-portlet kt-wizard-v4">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-grid">
												<div class="kt-grid__item kt-grid__item--fluid kt-wizard-v4__wrapper">

													<!--begin: Form Wizard Form-->
													<form class="kt-form" id="kt_user_add_form" novalidate="novalidate" action="/sys/notice/addNotice" method="post"  enctype="multipart/form-data" >

														<!--begin: Form Wizard Step 1-->
														<div class="kt-wizard-v4__content" data-ktwizard-type="step-content" data-ktwizard-state="current">
															<div class="kt-heading kt-heading--md custom-heading">
																공지사항 등록 페이지
<!-- 																<div> -->
<!-- 																	<span>Product No :</span> -->
<!-- 																	<span id="productNo">1234</span> -->
<!-- 																</div> -->
															</div>

															<div class="kt-section kt-section--first">
																<div class="kt-wizard-v4__form">
																	<div class="row">
																		<div class="col-xl-12">
																			<div class="kt-section__body">

																				<div class="form-group row">
																					<label class="col-xl-3 col-lg-3 col-form-label">제목</label>
																					<div class="col-lg-9 col-xl-9">
																						<input name="title" class="form-control" type="text" placeholder="제목">
																						<input name="id" class="form-control" type="hidden" value="${sessionScope.id}">
																					</div>
																				</div>
																				<div class="form-group row">
																					<label class="col-xl-3 col-lg-3 col-form-label">내용</label>
																					<div class="col-lg-9 col-xl-9">
																						<textarea class="form-control" name="content" id="kt-ckeditor-2" rows="3" style="margin-top: 0px; margin-bottom: 0px; height: 132px; resize: none;"></textarea>
																					</div>
																				</div>
																				<div class="form-group row">
																					<div class="col-xl-3 col-lg-3 nopadding">
																						<label class="col-xl-12 col-lg-12 col-form-label">첨부 파일</label>
																					</div>
																					<div class="col-xl-9 col-lg-9 nopadding">
																						<div class="form-group">
																							<div class="custom_file custom-file col-lg-12 col-xl-12">
																								<input type="file" class="custom-file-input" name="notice_file">
																								<label class="custom-file-label custom_ChooseFile" for="notice_file">Choose file</label>
																							</div>
																						</div>
																					</div>
																				</div

																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<!--end: Form Wizard Step 1-->

														<!--begin: Form Actions -->
														<div class="kt-form__actions">
														<button type="submit" class="btn btn-primary">submit</button>
<!-- 															<div class="btn btn-secondary btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-prev">
																Previous
															</div> -->
<!-- 															<div class="btn btn-success btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-submit"> -->
<!-- 																제품 등록 -->
<!-- 															</div> -->
<!-- 															<div class="btn btn-brand btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-next">
																Next Step
															</div> -->
														</div>

														<!--end: Form Actions -->
													</form>

													<!--end: Form Wizard Form-->
												</div>
											</div>
										</div>
									</div>

				<script src="/web/js/sys/notice/addNotice.js" type="text/javascript"></script>
				<script src="/web/lib/dist/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js" type="text/javascript"></script>

		<!--end::Page Vendors -->