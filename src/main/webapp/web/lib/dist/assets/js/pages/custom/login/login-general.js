

// Class Definition
var KTLoginGeneral = function() {

    var login = $('#kt_login');

    var showErrorMsg = function(form, type, msg) {
        var alert = $('<div class="alert alert-' + type + ' alert-dismissible" role="alert">\
			<div class="alert-text">'+msg+'</div>\
			<div class="alert-close">\
                <i class="flaticon2-cross kt-icon-sm" data-dismiss="alert"></i>\
            </div>\
		</div>');

        form.find('.alert').remove();
        alert.prependTo(form);
        //alert.animateClass('fadeIn animated');
        KTUtil.animateClass(alert[0], 'fadeIn animated');
        alert.find('span').html(msg);
    }

    // Private Functions
    var displaySignUpForm = function() {
        login.removeClass('kt-login--forgot');
        login.removeClass('kt-login--signin');
        login.removeClass('kt-login--forgot_id');

        login.addClass('kt-login--signup');
        KTUtil.animateClass(login.find('.kt-login__signup')[0], 'flipInX animated');
    }

    var displaySignInForm = function() {
        login.removeClass('kt-login--forgot');
        login.removeClass('kt-login--signup');
        login.removeClass('kt-login--forgot_id');

        login.addClass('kt-login--signin');
        KTUtil.animateClass(login.find('.kt-login__signin')[0], 'flipInX animated');
        //login.find('.kt-login__signin').animateClass('flipInX animated');
    }

    var displayForgotForm = function() {
        login.removeClass('kt-login--signin');
        login.removeClass('kt-login--signup');
        login.removeClass('kt-login--forgot_id');


        login.addClass('kt-login--forgot');
        //login.find('.kt-login--forgot').animateClass('flipInX animated');
        KTUtil.animateClass(login.find('.kt-login__forgot')[0], 'flipInX animated');

    }

    var displayForgotIdForm = function() {
        login.removeClass('kt-login--signin');
        login.removeClass('kt-login--signup');
        login.removeClass('kt-login--forgot');

        login.addClass('kt-login--forgot_id');
        //login.find('.kt-login--forgot_id').animateClass('flipInX animated');
        KTUtil.animateClass(login.find('.kt-login__forgot_id')[0], 'flipInX animated');

    }

    var handleFormSwitch = function() {
        $('#kt_login_forgot').click(function(e) {
            e.preventDefault();
            displayForgotForm();
        });

        $('#kt_login_forgot_id').click(function(e) {
            e.preventDefault();
            displayForgotIdForm();
        });

        $('#kt_login_forgot_id_cancel').click(function(e) {
            e.preventDefault();
            displaySignInForm();
        });

        $('#kt_login_forgot_cancel').click(function(e) {
            e.preventDefault();
            displaySignInForm();
        });

        $('#kt_login_signup').click(function(e) {
            e.preventDefault();
            displaySignUpForm();
        });

        $('#kt_login_signup_cancel').click(function(e) {
            e.preventDefault();
            displaySignInForm();
        });


    }

    var handleSignInFormSubmit = function() {
        $('#kt_login_signin_submit').click(function(e) {
            e.preventDefault();
            var btn = $(this);
            var form = $(this).closest('form');

            form.validate({
                rules: {
                    id: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true
                    }
                }, messages:{
                	id:{
                		required : "아이디를 입력하세오.",
                		email: "아이디는 메일 형식으로 입력하세요."
                	},
                	password: {
                		required : "비밀번호를 입력하세요.",
                	}
                }
            });

            if (!form.valid()) {
                return;
            }

            KTApp.blockPage(); // AJAX 호출 전  페이지 블락킹

            form.submit();

//            form.ajaxSubmit({
//            	async: true,
//                url: '/rest/member/login/signin',
//                type: 'post',
//                success: function(response, status, xhr, $form) {
//                		console.log(response)
//                		console.log(status)
//                		console.log(xhr)
//                		console.log($form)
//	                    var hostname = window.location.protocol + "//" + window.location.host;
//	                    var url = "";
//	                    // change_date 와 현재 날짜 비교 90일 이상일시 다른 페이지 / 출력 90일 미만시 아래 조건문 실행
////	                    Date today = new Date(); // 오늘 날짜
//
//	                    if(response.division=='1' && response.confirm=='0') {
//	                    	url = hostname;
//	                    } else if(response.division=='2' && response.confirm=='0') {
//	                    	url = hostname + "/seller/main/view";
//	                    } else if(response.division=='3' && response.confirm=='0') {
////	                    	alert("해당 아이디로는 접속이 불가합니다.")
//	                    	form.validate().resetForm(); // 폼 초기화
//	                    	form.find('#userId').focus(); // 폼안의 유저 아이디에 포커스
//	                    	KTApp.unblockPage(); // 페이지 BLOCK 해제
//	                        swal.fire("로그인 실패", "해당 아이디로는 접속이 불가합니다.", "error"); // ALERT 창 대신에 MODAL 창 사용
//	                        return false;
//	                    } else if(response.division=='0' && response.confirm=='0'){
//	                    	url = hostname + "/sys/main/view";
//	                    } else if(response.division=='99') {
//	                    	form.validate().resetForm(); // 폼 초기화
//	                    	form.find('#userId').focus(); // 폼안의 유저 아이디에 포커스
//	                    	KTApp.unblockPage(); // 페이지 BLOCK 해제
//	                        swal.fire("로그인 실패", "해당 아이디는 탈퇴한 아이디입니다.", "error"); // ALERT 창 대신에 MODAL 창 사용
//	                        return false;
////	                    	alert("해당 아이디는 탈퇴한 아이디입니다.")
//	                    } else if(response.division=='1' && response.confirm=='1') {
//	                    	form.validate().resetForm(); // 폼 초기화
//	                    	form.find('#userId').focus(); // 폼안의 유저 아이디에 포커스
//	                    	KTApp.unblockPage(); // 페이지 BLOCK 해제
//	                        swal.fire("로그인 실패", "판매자 권한 승인 후 로그인이 가능합니다.", "warning"); // ALERT 창 대신에 MODAL 창 사용
//	                        return false;
////	                    	alert("해당 아이디는 탈퇴한 아이디입니다.")
//	                    } else{
//	                    	form.validate().resetForm(); // 폼 초기화
//	                    	form.find('#userId').focus(); // 폼안의 유저 아이디에 포커스
//	                    	KTApp.unblockPage(); // 페이지 BLOCK 해제
//	                        swal.fire("로그인 실패", "아이디 또는 비밀번호가 틀렸습니다.", "error"); // ALERT 창 대신에 MODAL 창 사용
//	                        return false;
////	                    	alert("아이디 또는 비밀번호가 틀렸습니다.")
//	                    }
//	                    window.location.href = "/";
//                },
//                error: function(response){
//                    alert("에러가 발생했습니다.")
//                    KTApp.unblockPage();
//                    swal.fire("로그인 실패", "다시 시도해 주세요", "error");
//                }
//            });
        });
    }

    var handleSignUpFormSubmit = function() {
        $('#kt_login_signup_submit').click(function(e) {
            e.preventDefault();

            var btn = $(this);
            var form = $(this).closest('form');

            if (!form.valid()) {
                return;
            }

            btn.addClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', true);

            form.ajaxSubmit({
                url: '/member/join/signup',
                success: function(response, status, xhr, $form) {
                	// similate 2s 	delay
                	setTimeout(function() {
	                    btn.removeClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', false);
	                    form.clearForm();
	                    form.validate().resetForm();

	                    // display signup form
	                    displaySignInForm();
	                    var signInForm = login.find('.kt-login__signin form');
	                    signInForm.clearForm();
	                    signInForm.validate().resetForm();

	                    showErrorMsg(signInForm, 'success', '회원가입을 축하드립니다.');
	                }, 2000);
                }
            });
        });
    }

    var handleForgotFormSubmit = function() {
        $('#kt_login_forgot_submit').click(function(e) {
            e.preventDefault();

            var btn = $(this);
            var form = $(this).closest('form');

            form.validate({
                rules: {
                    id: {
                        required: true,
                        email: true
                    }
            }, messages:{
                    	id:{
                    		required : "아이디를 입력하세요.",
                    		email: "아이디는 메일 형식으로 입력하세요."
                    	}
                    }
            });

            if (!form.valid()) {
                return;
            }

            btn.addClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', true);

            form.ajaxSubmit({
                url: '',
                success: function(response, status, xhr, $form) {
                	// similate 2s delay
                	setTimeout(function() {
                		btn.removeClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', false); // remove
	                    form.clearForm(); // clear form
	                    form.validate().resetForm(); // reset validation states

	                    // display signup form
	                    displaySignInForm();
	                    var signInForm = login.find('.kt-login__signin form');
	                    signInForm.clearForm();
	                    signInForm.validate().resetForm();

	                    showErrorMsg(signInForm, 'success', 'Cool! Password recovery instruction has been sent to your email.');
                	}, 2000);
                }
            });
        });
    }

    // Public Functions
    return {
        // public functions
        init: function() {
            handleFormSwitch();
            handleSignInFormSubmit();
            handleSignUpFormSubmit();
            handleForgotFormSubmit();
//            handleForgotIdFormSubmit();
        }
    };
}();

// Class Initialization
jQuery(document).ready(function() {
    KTLoginGeneral.init();

    $.validator.addMethod("passwordCk",  function( value, element ) {
  	   return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
  });

   $('#signupform').validate({
         rules: {
             id: {
                 required: true,
                 email: true
             },
             password: {
             	required : true,
             	passwordCk : true
             },
             rpassword: {
             	required: true,
             	equalTo : "#passwordCk"
             },
             name: {
             	required: true
             },
            birth: {
             	required: true
             },
             gender: {
             	required: true
             },
             address1: {
             	required: true
             },
             address2: {
             	required: true
             },
           address3: {
             	required: true
             },
             address4: {
             	required: true
             },
             phone: {
             	required: true
             },
             agree: {
                 required: true
             }
         }, messages:{
         	id:{
         		required : "아이디를 입력하세요.",
         		email: "아이디는 메일 형식으로 입력하세요."
         	},
         	password: {
         		required : "비밀번호를 입력하세요.",
         		passwordCk : "비밀번호는 8~16자리 대소문자, 숫자, 특수문자 조합으로 입력하세요."
         	},
         	rpassword:{
         		required : "비밀번호 확인을 입력하세요.",
         		equalTo: "비밀번호가 일치하지 않습니다."
         	},
         	name:{
         		required : "이름을 입력하세요."
         	},
         	birth:{
         		required : "생년월일을 입력하세요."
         	},
             gender: {
             	required: "성별을 선택해주세요."
             },
         	address1:{
         		required : "주소를 입력하세요."
         	},
         	address2:{
         		required : "주소를 입력하세요."
         	},
       	address3:{
        		required : "주소를 입력하세요."
         	},
         	address4:{
         		required : "주소를 입력하세요."
         	},
         	phone:{
         		required : "휴대폰번호를 입력하세요.",
         		phone: "올바른 형식(예: 010-0000-0000)으로 입력해 주세요."
         	},
         	agree:{
         		required : "약관에 동의하세요."
         	}
         }
     });

});

$(document).ready(function(){

    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var key = getCookie("key");
    $("#userId").val(key);

    if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }

    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});

function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}