<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

       <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/web/images/thumbnail/11401a6f6d7be1a45fcdda8cd95d2bf1ac4f2b96pbf47176d1ew76924c77104q.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">상품 상세 정보</h2>
                                <nav class="bradcaump-inner">
                                  <span class="breadcrumb-item active">Product Details</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Product Details -->
        <section class="htc__product__details pt--120 pb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                        <div class="product__details__container">
                            <!-- Start Small images -->
                            <ul class="product__small__images" role="tablist">
                                <li role="presentation" class="pot-small-img active">
                                    <a href="#img-tab-1" role="tab" data-toggle="tab">
                                        <img id="small_photo1" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img">
                                    <a href="#img-tab-2" role="tab" data-toggle="tab">
                                        <img id="small_photo2" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img hidden-xs">
                                    <a href="#img-tab-3" role="tab" data-toggle="tab">
                                        <img id="small_photo3" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img hidden-xs hidden-sm">
                                    <a href="#img-tab-4" role="tab" data-toggle="tab">
                                        <img id="small_photo4" alt="small-image">
                                    </a>
                                </li>
                            </ul>
                            <!-- End Small images -->
                            <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active product-video-position" id="img-tab-1">
                                        <img id = "big_photo1" alt="full-image">
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade product-video-position" id="img-tab-2">
                                        <img id = "big_photo2"  alt="full-image">
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade product-video-position" id="img-tab-3">
                                        <img id = "big_photo3" alt="full-image">
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade product-video-position" id="img-tab-4">
                                        <img id = "big_photo4" alt="full-image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
                        <div class="htc__product__details__inner">
                            <div class="pro__detl__title">
                                <h2 id="product_title"></h2>
                            </div>
                            <div class="pro__dtl__rating">
                                <ul class="pro__rating" id="product_rating">
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                </ul>
                                <span class="rat__qun">판매 수량  <span id="COUNT"></span> </span>
                            </div>
                            <div class="pro__details">
                                <p id="product_simple_content"></p>
                            </div>
                            <ul class="pro__dtl__prize">
                                <li id="product_price"></li>
                            </ul>
                            <div class="product-action-wrap">
                                <div class="prodict-statas"><span>수량 :</span></div>
                                <div class="product-quantity">
                         <form id='myform' method='POST' action='#'>
										<input type="hidden" name="productno" class="product_no" value="">
										<input type="hidden" name="price" id="product_price2" value="">
                                        <div class="product-quantity">
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box numBox" type="text" name="quantity" value="1">
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <ul class="pro__dtl__btn">
                                <li class="buy__now__btn"  style="cursor:pointer;"><a class="plzCart">장바구니</a></li>
                                <li class="buy__now__btn"  style="cursor:pointer;"><a id="plzCart">구매하기</a></li>
                                <li><a class="plzBookMark"><span class="ti-heart"></span></a></li>
                            </ul>
                         </form>
                            <div class="pro__social__share">
                                <h2>Share :</h2>
                                <ul class="pro__soaial__link">
                                    <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                    <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                                    <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                    <li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Details -->
        <!-- Start Product tab -->
        <section class="htc__product__details__tab bg__white pb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <ul class="product__deatils__tab mb--60" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#description" role="tab" data-toggle="tab">상품 설명</a>
                            </li>
                            <li role="presentation">
                                <a href="#reviews" role="tab" data-toggle="tab">후기</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="product__details__tab__content">
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="description" class="product__tab__content fade in active">
                                <div class="product__description__wrap">
                                    <div class="product__desc" id="product_content">
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="reviews" class="product__tab__content fade">
                                <div class="review__address__inner" id = "reviewList">
                                    <!-- Start Single Review -->
                                    <!-- <div class="pro__review">
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div> -->
                                    <!-- End Single Review -->
                                    <!-- Start Single Review -->
                                  <!--   <div class="pro__review ans">
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div> -->
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->
                                <form id="reviewWriteForm" novalidate="novalidate" method="post">
                                <div class="rating__wrap">
                                    <h2 class="rating-title">REVIEW</h2>
                                    <div class="single-checkout-box select-option mt--40">
                                    	<input type="hidden" name="productno" class="product_no">
                                        <select name = "rating">
                                            <option value = "5">5점 ★★★★★ </option>
                                            <option value = "4">4점 ★★★★ </option>
                                            <option value = "3">3점 ★★★ </option>
                                            <option value = "2">2점 ★★ </option>
                                            <option value = "1">1점 ★ </option>
                                        </select>
                                      </div>
                                </div>
                                <!-- End RAting Area -->
                                <div class="review__box">
                                        <div class="single-review-form">
                                            <div class="review-box message">
                                                <textarea name = "contents" placeholder="리뷰를 남겨주세요."></textarea>
                                            </div>
                                        </div>
                                        <div class="review-btn">
                                            <!-- <a type="button" class="fv-btn" id="review_write_submit">리뷰 등록</a> -->
                                            <button type="button" class="btn btn-custom-blue btn-elevate kt-login__btn-primary" id="review_write_submit">리뷰 등록</button>
                                        </div>
                                </div>
                              </form>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product tab -->

        <script src="/web/js/home/hproduct/productDetail.js"></script>
