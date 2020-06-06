<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<style>
		div.tx {line-height:20px; padding-bottom:40px;}
		div.tx > span {color:#366cf3; font-weight:bold;}
		table {
		    position: relative;
		    width: 100%;
		    table-layout: fixed;
		    border-spacing: 0;
		    border-collapse: collapse;
		    word-wrap: break-word;
		    word-break: keep-all;
		    border: 0;
		    border-bottom: 1px solid #e5e5e5;
		}
		table td, table th {
		    line-height: 14px;
		    text-align: left;
		    vertical-align: top;
		    letter-spacing: -1px;
		    border: 0;
		    border-top: 1px solid #e5e5e5;
		}
		table th {border-right: 1px solid #e5e5e5; background: #f9f9f9;}
		table th > div {line-height:18px;}
		table th > div, table td > div {padding:32px 31px 32px;}
		table td > div > div.ps {margin-bottom:26px; line-height:20px; color:#8e8e8e;}
		table td > div > div.ps > span {color:#303030;}
		table td > div > div:first-of-type {margin-bottom:26px;}
		table td > div > div.btn_input {font-size:0; width:100%;}
		table td > div > div.btn_input > * {display:inline-block !important;}
		table td > div > div.btn_input > input {width:216px !important;}
		table td > div > div.btn_input > div {margin-left:10px;}
		div.ps > span {display:block; padding-bottom:10px; font-size:16px;}
		.form-control:focus {box-shadow:none;}
		.kt-login__actions {margin-top:7%; text-align:right; font-size:0;}
		.kt-login__actions > button {display:inline-block; height:50px; padding-left:2.5rem; padding-right:2.5rem;}
		.btn-custom-blue {
		    color: #fff;
		    background-color: rgba(54, 108, 243, 1);
		    border: 1px solid rgba(54, 108, 243, 0.4);
		}
		.btn-custom-blue:hover {
		    color: #fff;
		    background-color: rgba(54, 108, 243, 0.8);
		    border: 1px solid rgba(54, 108, 243, 0.8);
		    box-shadow: 0px 9px 16px 0px rgba(54, 108, 243, 0.25);
		}
		div.kt-login__actions > button + button {margin-left:1%;}
		.btn.btn-light.btn-elevate:hover {
		    box-shadow: 0px 9px 16px 0px rgba(153, 153, 153, 0.15) !important;
		    border-color: #e5e5e5;
		}
		input.btn.btn-custom-border-blue {width:107px;}
		@media (min-width:450px) and (max-width:545px) {
			colgroup > col {width:30% !important;}
		}
		@media (max-width:545px) {
			table td > div > div.btn_input > input {width:calc(100% - 117px) !important;}
		}


		</style>




		<!--begin::Page Custom Styles(used by this page) -->
		<link href="/web/lib/dist/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />

            <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/web/images/thumbnail/11401a6f6d7be1a45fcdda8cd95d2bf1ac4f2b96pbf47176d1ew76924c77104q.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">고객정보 수정</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Information</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Modify</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->


<section class="htc__product__area shop__page ptb--130 bg__white">
	<div class="container-fluid container">
		<div class="row">
 			<div class="tx">
 				<div><span class="b"><c:out value="${myname}" /></span>님의 연락처 정보입니다.</div>
 				<div><span>회원정보는 개인정보처리방침에 따라 안전하게 보호되며, </span>회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다.</div>
 			</div>
				<form class="kt-form" action="/home/mmember/mypage" id="modifyform" method="post">
								<table>
									<colgroup>
										<col style="width:22%"></col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><div>사용자 아이디</div></th>
											<td>
											<div class="input-group first_input">
											<input class="form-control" type="email" placeholder="이메일" name="id" id="id" readonly>
											</div>
											</td>
										</tr>
										<tr>
											<th scope="row"><div>비밀번호 변경</div></th>
											<td><div>
												<div class="ps">다른 아이디/사이트에서 사용한 적 없는 비밀번호, 이전에 사용한 적 없는 비밀번호가 안전합니다.</div>
												<div class="input-group">
													<input class="form-control" type="password" placeholder="새 비밀번호" name="password" id="password">&nbsp;
												</div>
												<div class="input-group">
													<input class="form-control" type="password" placeholder="새 비밀번호 확인" id="passwordCheck">
												</div>
											</div></td>
										</tr>
										<tr>
											<th scope="row"><div>핸드폰번호 변경</div></th>
											<td><div>
												<div class="ps">
													아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 유료 결제 등 네이버로부터 알림을 받을 때 사용할 휴대전화입니다.
												</div>
												<div class="input-group">
													<div class="input-group">
														<input class="form-control" type="text" id="phone" name="phone" placeholder="휴대폰 번호">
													</div>
												</div>
											</div></td>
										</tr>
										<tr>
											<th scope="row"><div>주소 변경</div></th>
											<td><div>
												<div class="input-group btn_input">
													<input class="form-control" type="text" id="sample6_postcode" name="address1" placeholder="우편번호">
													<div class="input-group-append">
														<input class="btn btn-custom-border-blue" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
													</div>
												</div>
												<div class="input-group">
													<input class="form-control" type="text" id="sample6_address" name="address2" placeholder="주소">&nbsp;
												</div>
												<div class="input-group">
													<input class="form-control" type="text" id="sample6_detailAddress" name="address3" placeholder="상세주소">&nbsp;
												</div>
												<div class="input-group">
													<input class="form-control" type="text" id="sample6_extraAddress" name="address4" placeholder="참고항목">&nbsp;
												</div>
											</div></td>
										</tr>
									</tbody>
								</table>

									<div class="kt-login__actions">
									  	<button id="editMemberSubmitBtn" type="button" class="btn btn-custom-blue btn-elevate kt-login__btn-primary">정보 수정</button>
										<button id="kt_login_signup_cancel" type="button" class= "btn btn-light btn-elevate kt-login__btn-secondary">취소</button>
									<!--  	<input type="submit" name="submit" class="btn btn-custom-blue btn-elevate kt-login__btn-primary" value="회원가입">
										<button type="button" class="btn btn-light btn-elevate kt-login__btn-secondary" onclick="location.href='goMain'">이전으로</button> -->
									</div>
						</form>
		</div>
	</div>
</section>

			<!-- <script src="/web/lib/dist/assets/js/global/integration/plugins/jquery-validation.init.js" type="text/javascript"></script>
		begin::Page Scripts(used by this page)
		<script src="/web/lib/dist/assets/js/pages/custom/login/login-general.js" type="text/javascript"></script>

		<!-- Daum address Script -->
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

		<!--end::Page Scripts -->
 		<script src="/web/js/member/join/loginSignUp.js"></script>

		<script src="/web/js/home/mypage/myPage.js"></script>
 		<script src="/web/js/home/mypage/informationModify.js"></script>

