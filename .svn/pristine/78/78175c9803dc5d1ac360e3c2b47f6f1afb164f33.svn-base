<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <!--begin::Page Custom Styles(used by this page) -->
 <link href="/web/lib/dist/assets/css/pages/wizard/wizard-4.css" rel="stylesheet" type="text/css" />
 <!--end::Page Custom Styles -->

                           <div class="kt-portlet kt-wizard-v4">`
                              <div class="kt-portlet__body kt-portlet__body--fit">
                                 <div class="kt-grid">
                                    <div class="kt-grid__item kt-grid__item--fluid kt-wizard-v4__wrapper">

                                       <!--begin: Form Wizard Form-->
                                       <form class="kt-form" id="addProductForm" novalidate="novalidate" action="/admin/product/addProduct" method="post"  enctype="multipart/form-data" >

                                          <!--begin: Form Wizard Step 1-->
                                          <div class="kt-wizard-v4__content" data-ktwizard-type="step-content" data-ktwizard-state="current">
                                             <div class="kt-heading kt-heading--md custom-heading">
                                                상품 등록 페이지
<!--                                                 <div> -->
<!--                                                    <span>Product No :</span> -->
<!--                                                    <span id="productNo">1234</span> -->
<!--                                                 </div> -->
                                             </div>

                                             <div class="kt-section kt-section--first">
                                                <div class="kt-wizard-v4__form">
                                                   <div class="row">
                                                      <div class="col-xl-12">
                                                         <div class="kt-section__body">

                                                         <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label" for="categoryNo">아이디</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                               <input name="id" class="form-control" type="text" value="${sessionScope.id}" readonly>
                                                               </div>
                                                            </div>

                                                            <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label" for="categoryNo">카테고리</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <select class="form-control" name="categoryno">
                                                                     <option value="1">식품 / 건강</option>
                                                                     <option value="2">가구 / 데코</option>
                                                                     <option value="3">패션 / 뷰티</option>
                                                                     <option value="4">가전 / 디지털</option>
                                                                     <option value="5">자동차</option>
                                                                  </select>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label">메인 이미지 업로드</label>
                                                               <div class="col-lg-9 col-xl-9">
														            <input type="file" name="mainImg" data-bind="fileInput: fileData, customFileInput: {
														              buttonClass: 'btn btn-success',
														              fileNameClass: 'disabled form-control',
														              onClear: onClear,
														            }" accept="image/*">
                                                                 <div class="well" data-bind="fileDrag: fileData">
														            <img style="height: 100px; width:100px; margin:5px;" class="img-rounded  thumb" data-bind="attr: { src: fileData().dataURL }, visible: fileData().dataURL">
														            <div data-bind="ifnot: fileData().dataURL">
														                <label class="drag-label">Drag file here</label>
														            </div>
																 </div>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label">서브 이미지 업로드</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <input type="file" name="subImg"
                                                                  multiple data-bind="fileInput: multiFileData, customFileInput: {
                                                                                buttonClass: 'btn btn-success',
                                                                                fileNameClass: 'disabled form-control',
                                                                                onClear: onClear,
                                                                              }" accept="image/*">
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
                                                               <label class="col-xl-3 col-lg-3 col-form-label">상품 이름</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <input name="pname" class="form-control" type="text" placeholder="상품이름">
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label">상품 가격</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <input name="price" class="form-control" type="number" value="0" aria-describedby="price-error">
                                                               </div>
                                                            </div>
 			                                                <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label">제품 간단설명</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <textarea name="simplecontent" class="form-control" cols="20" rows="5" style = "resize : none;"></textarea>
                                                               </div>
                                                            </div>
                                                            <div class="form-group row">
                                                               <label class="col-xl-3 col-lg-3 col-form-label">제품 상세설명</label>
                                                               <div class="col-lg-9 col-xl-9">
                                                                  <textarea name="content" class="form-control" id="kt-ckeditor-2" rows="3" style="margin-top: 0px; margin-bottom: 0px; height: 132px; resize: none;"></textarea>
                                                               </div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>

                                          <!--end: Form Wizard Step 1-->

                                          <!--begin: Form Actions -->
                                          <div class="kt-form__actions">
                                          <button type="submit" id="kt_add_product_submit" class="btn btn-primary">submit</button>
<!--                                              <div class="btn btn-secondary btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-prev">
                                                Previous
                                             </div> -->
<!--                                              <div class="btn btn-success btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-submit"> -->
<!--                                                 제품 등록 -->
<!--                                              </div> -->
<!--                                              <div class="btn btn-brand btn-md btn-tall btn-wide kt-font-bold kt-font-transform-u" data-ktwizard-type="action-next">
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
            <script src="/web/js/admin/seller/product/addProduct.js" type="text/javascript"></script>