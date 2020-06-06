<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- noticeList.js 에 동일하게 작성했는데 적용이 안된다.. -->
<script>
	function addNoticeForm(){
		location.href="/sys/notice/addNoticeView";
	}
</script>
<style>
	div.dropdown.dropdown-inline > button {height:40px;}
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
												공지사항 목록
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
													<button type="button" class="btn btn-brand btn-icon-sm" aria-haspopup="true" aria-expanded="false"
													id="addNoticeBtn">
														<i class="flaticon2-plus"></i> 등록
													</button>
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
																	<label>카테고리:</label>
																</div>
																<div class="kt-form__control">
																	<select class="form-control bootstrap-select" id="kt_form_category">
																		<option value="">All</option>
																		<option value="101">공지사항</option>
																		<option value="102">이벤트</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
															<div class="kt-form__group kt-form__group--inline">
																<div class="kt-form__label">
																	<label>사용여부:</label>
																</div>
																<div class="kt-form__control">
																	<select class="form-control bootstrap-select" id="kt_form_use_yn">
																		<option value="">All</option>
																		<option value="Y" selected="selected">사용중</option>
																		<option value="N">미사용</option>
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

							<div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">

										<!--begin: form -->
                                       <form id="noticeForm" novalidate="novalidate" action="/sys/notice/addNotice" method="post"  enctype="multipart/form-data" >
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">공지사항 등록</h5>
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
														   <input name="id" type="hidden" value="${sessionScope.id}">
													       <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">제목명</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input name="title" class="form-control" type="text" placeholder="제목명" required>
                                                               </div>
                                                            </div>

															    <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label" for="categoryno">카테고리</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <select class="form-control" name="categoryno">
                                                                     <option value="">선택</option>
                                                                     <option value="101">공지사항</option>
                                                                     <option value="102">이벤트</option>
                                                                    </select>
                                                               </div>
                                                            </div>

                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">첨부 파일</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                               <div class="custom-file">
															<input type="file" class="custom-file-input" name="notice_file">
															<label class="custom-file-label" for="mainImg">선택된 파일이 없습니다</label>
																</div>
                                                               </div>
                                                            </div>
 			                                                <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">내용</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <textarea name="content" class="form-control kt-ckeditor-2" cols="20" rows="5" style = "resize : none;"></textarea>
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
												<button type="button" id="addNoticeSubmitBtn" class="btn btn-primary">등록</button>
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
											</div>
                                     </form>
										</div>
									</div>
								</div>
							<!-- end:: Content -->

							<!-- begin:: PREVIEW MODAL -->
							<div class="modal fade" id="noticePreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">

										<!--begin: form -->
										<form id="noticeViewForm" novalidate="novalidate" action="" method="post"  enctype="multipart/form-data" >
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">공지사항</h5>
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
                                                               <label class="col-xl-2 col-lg-2 col-form-label">제목</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "title" readonly>
                                                               </div>
                                                            </div>
                                                              <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">작성자</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "sys_id" readonly>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">작성일자</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <input class="form-control" type="text" id = "sys_date" readonly>
                                                               </div>
                                                            </div>
<!--                                                             <div class="form-group row"> -->
<!--                                                                <label class="col-xl-2 col-lg-2 col-form-label">첨부 파일</label> -->
<!--                                                                <div class="col-lg-10 col-xl-10"> -->
<!--                                                                <div class="custom-file"> -->
<!-- 															<input type="text" class="form-control" name="notice_file"  id="notice_file"> -->
<!-- 																</div> -->
<!--                                                                </div> -->
<!--                                                             </div> -->
 			                                                <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">내용</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <textarea class="form-control kt-ckeditor-2" cols="20" rows="5" style = "resize : none;" id = "content" readonly></textarea>
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
									 <!--end: Form -->
									 </form>
										</div>
									</div>
								</div>
							<!-- end:: Content -->

							<!-- begin:: PREVIEW MODAL -->
							<div class="modal fade" id="editNoticeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">

										<!--begin: form -->
                                       <form id="editNoticeForm" novalidate="novalidate" action="" method="post"  enctype="multipart/form-data" >
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">공지사항 수정</h5>
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
                                                               <label class="col-xl-2 col-lg-2 col-form-label">제목</label>
                                                               <input name="id" type="hidden" value="${sessionScope.id}">
                                                               <div class="col-lg-10 col-xl-10">
	                                                               <input name="noticeno" type="hidden" id = "noticeno">
                                                                  <input name="title" class="form-control" type="text" placeholder="제목명" id = "title" required>
                                                               </div>
                                                            </div>
                                                            	    <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label" for="categoryno">카테고리</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <select class="form-control" name="categoryno" id="categoryno">
                                                                     <option value="">선택</option>
                                                                     <option value="101">공지사항</option>
                                                                     <option value="102">이벤트</option>
                                                                    </select>
                                                               </div>
                                                            </div>
<!--                                                             <div class="form-group row"> -->
<!--                                                                <label class="col-xl-2 col-lg-2 col-form-label">첨부 파일</label> -->
<!--                                                                <div class="col-lg-10 col-xl-10"> -->
<!--                                                                <div class="custom-file"> -->
<!-- 															<input type="file" class="custom-file-input" name="notice_file"> -->
<!-- 															<label class="custom-file-label" for="mainImg">선택된 파일이 없습니다</label> -->
<!-- 																</div> -->
<!--                                                                </div> -->
<!--                                                             </div> -->
<!--  			                                                <div class="form-group row"> -->
<!--                                                                <label class="col-xl-2 col-lg-2 col-form-label">내용</label> -->
<!--                                                                <div class="col-lg-10 col-xl-10"> -->
<!--                                                                   <textarea name="content" class="form-control" cols="20" rows="5" style = "resize : none;" id = "content" required></textarea> -->
<!--                                                                </div> -->
<!--                                                          </div> -->

                                                             <div class="form-group row">
                                                               <label class="col-xl-2 col-lg-2 col-form-label">내용</label>
                                                               <div class="col-lg-10 col-xl-10">
                                                                  <textarea name="content" class="form-control kt-ckeditor-edit" cols="20" rows="5" style = "resize : none;"></textarea>
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
												<button type="button" id="editNoticeSubmitBtn" class="btn btn-primary">수정</button>
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
											</div>
									 <!--end: Form -->
                                     </form>
										</div>
									</div>
								</div>
							<!-- end:: Content -->
						</div>
					</div>

<script src="/web/js/sys/notice/noticeList.js"></script>