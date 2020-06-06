<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--begin::Page Custom Styles(used by this page) -->
 <link href="/web/lib/dist/assets/css/pages/wizard/wizard-4.css" rel="stylesheet" type="text/css" />
 <!--end::Page Custom Styles -->
<style>
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
												전체 상품 리스트
											</h3>
										</div>
										<div class="kt-portlet__head-toolbar">
											<div class="kt-portlet__head-wrapper">
<!-- 												<a href="#" class="btn btn-clean btn-icon-sm"> -->
<!-- 													<i class="la la-long-arrow-left"></i> -->
<!-- 													Back -->
<!-- 												</a> -->
<!-- 												&nbsp; -->
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
																	<label>카테고리:</label>
																</div>
																<div class="kt-form__control">
																	<select class="form-control bootstrap-select" id="kt_form_type">
																		<option value="">All</option>
																		<option value="식품 / 건강">식품 / 건강</option>
																		<option value="가구 / 데코">가구 / 데코</option>
																		<option value="패션 / 뷰티">패션 / 뷰티</option>
																		<option value="가전 / 디지털">가전 / 디지털</option>
																		<option value="자동차">자동차</option>
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
										<div class="kt-datatable" id="productTable"></div>
										<!--end: Datatable -->
									</div>
								</div>
							</div>

							<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">

										<!--begin: form -->
                                       <form id="productForm" novalidate="novalidate" action="/rest/seller/product/addProduct" method="post"  enctype="multipart/form-data" >
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">상품 등록</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												</button>
											</div>
											<div class="modal-body">
<!-- 											<iframe src="/seller/product/addModal" frameborder = "0" scrolling="no" style="height:100%; width:100%;"></iframe> -->
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

<!--                                                          <div class="form-group row"> -->
<!--                                                                <label class="col-xl-3 col-lg-3 col-form-label" for="categoryNo">아이디</label> -->
<!--                                                                <div class="col-lg-9 col-xl-9"> -->
<%--                                                                <input name="id" class="form-control" type="text" value="${sessionScope.id}" readonly> --%>
<!--                                                                </div> -->
<!--                                                             </div> -->
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label" for="categoryNo">카테고리</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <select class="form-control" name="categoryno">
                                                                     <option value="">선택</option>
                                                                     <option value="1">식품 / 건강</option>
                                                                     <option value="2">가구 / 데코</option>
                                                                     <option value="3">패션 / 뷰티</option>
                                                                     <option value="4">가전 / 디지털</option>
                                                                     <option value="5">자동차</option>                                                                  </select>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">메인 이미지</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                               <div class="custom-file">
															<input type="file" class="custom-file-input" name="mainImg" id="mainImg" required>
															<label class="custom-file-label" for="mainImg">선택된 파일이 없습니다</label>
														</div>
<!-- 														            <input type="file" name="mainImg" data-bind="fileInput: fileData, customFileInput: { -->
<!-- 														              buttonClass: 'btn btn-success', -->
<!-- 														              fileNameClass: 'disabled form-control', -->
<!-- 														              onClear: onClear, -->
<!-- 														            }" accept="image/*"> -->
<!--                                                                  <div class="well" data-bind="fileDrag: fileData"> -->
<!-- 														            <img style="height: 100px; width:100px; margin:5px;" class="img-rounded  thumb" data-bind="attr: { src: fileData().dataURL }, visible: fileData().dataURL"> -->
<!-- 														            <div data-bind="ifnot: fileData().dataURL"> -->
<!-- 														                <label class="drag-label">Drag file here</label> -->
<!-- 														            </div> -->
<!-- 																 </div> -->
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">서브 이미지</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input type="file" name="subImg"
                                                                  multiple data-bind="fileInput: multiFileData, customFileInput: {
                                                                                buttonClass: 'btn btn-success',
                                                                                fileNameClass: 'disabled form-control',
                                                                                onClear: onClear,
                                                                              }" accept="image/*" required>
                                                                  <div class="well" data-bind="fileDrag: multiFileData">
                                                                       <div>
                                                                                 <!-- ko foreach: {data: multiFileData().dataURLArray, as: 'dataURL'} -->
                                                                                 <img style="height: 100px; width:100px; margin: 5px;" class="img-rounded  thumb" data-bind="attr: { src: dataURL }, visible: dataURL">
                                                                                 <!-- /ko -->
                                                                           <div data-bind="ifnot: fileData().dataURL">
                                                                               <label class="drag-label">Drag files here</label>
                                                                           </div>
                                                                       </div>
                                                                  </div>
                                                               </div>
                                                            </div>

                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">상품 명</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input name="pname" class="form-control" type="text" placeholder="상품이름" required>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">가격</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input name="price" class="form-control" type="number" value="0" aria-describedby="price-error" required>
                                                               </div>
                                                            </div>
 			                                                <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">상품설명</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <textarea name="simplecontent" class="form-control" cols="20" rows="5" style = "resize : none;" required></textarea>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">컨텐츠</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <textarea name="content" class="form-control" id="kt-ckeditor-2" rows="3" style="margin-top: 0px; margin-bottom: 0px; height: 132px; resize: none;"></textarea>
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
												<button type="button" id="addProductSubmitBtn" class="btn btn-primary">등록</button>
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
											</div>
									 <!--end: Form -->
                                     </form>
										</div>
									</div>
								</div>
							<!-- end:: Content -->

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
											<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
										</div>

									</div>
								</div>
							</div>
							<!-- end:: PREVIEW MODAL -->
						</div>
					</div>
				<script src="/web/js/sys/product/sysProductList.js" type="text/javascript"></script>