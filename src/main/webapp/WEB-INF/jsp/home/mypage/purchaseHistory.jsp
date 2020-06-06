 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/web/images/thumbnail/11401a6f6d7be1a45fcdda8cd95d2bf1ac4f2b96pbf47176d1ew76924c77104q.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">구매내역</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Purchase</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Wishlist</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->

        <!-- wishlist-area start -->
        <div class="wishlist-area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12" >
                       <div class="wishlist-content">
                                <div class="wishlist-table table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product-remove"><span class="nobr"> 구매 번호 </span></th>
                                                <th class="product-thumbnail"> 구매 상품사진 </th>
                                                <th class="product-name"><span class="nobr"> 구매 상품이름 </span></th>
                                                <th class="product-price"><span class="nobr"> 구매 상품가격 </span></th>
                                                <th class="product-name"><span class="nobr"> 구매 날짜 </span></th>
                                                <th class="product-stock-stauts"><span class="nobr"> 수량 </span></th>
                                                <th class="product-stock-stauts"><span class="nobr"> 배송 현황 </span></th>
                                                <th class="product-add-to-cart"><span class="nobr">리뷰쓰기</span></th>
                                            </tr>
                                        </thead>
                                        <tbody id = "purchaseHistory">

                                        <!--  <tr>
                                                <td class="product-remove"><a href="#">×</a></td>
                                                <td class="product-thumbnail"><a href="#"><img src="images/product/4.png" alt="" /></a></td>
                                                <td class="product-name"><a href="#">Vestibulum suscipit</a></td>
                                                <td class="product-price"><span class="amount">£165.00</span></td>
                                                <td class="product-stock-status"><span class="wishlist-in-stock">In Stock</span></td>
                                                <td class="product-add-to-cart"><a href="#"> Add to Cart</a></td>
                                            </tr>
                                            <tr>
                                                <td class="product-remove"><a href="#">×</a></td>
                                                <td class="product-thumbnail"><a href="#"><img src="images/product/5.png" alt="" /></a></td>
                                                <td class="product-name"><a href="#">Vestibulum dictum magna</a></td>
                                                <td class="product-price"><span class="amount">£50.00</span></td>
                                                <td class="product-stock-status"><span class="wishlist-in-stock">In Stock</span></td>
                                                <td class="product-add-to-cart"><a href="#"> Add to Cart</a></td>
                                            </tr>  -->
                                        </tbody>
                                    </table>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- wishlist-area end -->

     </div>

  <script src="/web/js/home/mypage/purchaseHistory.js"></script>