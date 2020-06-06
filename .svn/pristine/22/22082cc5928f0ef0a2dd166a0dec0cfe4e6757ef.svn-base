

		$('#editMemberSubmitBtn').click(function(e) {
			console.log("수정 호출")

            var btn = $(this);
            var form = $(this).closest('form');

            if (!form.valid()) {
                return;
            }

            form.ajaxSubmit({
                url: '/rest/home/mmember/updateMember',
                success: function(response, status, xhr, $form) {
                	// similate 2s 	delay
//	                    showErrorMsg(signInForm, 'success', 'Thank you. To complete your registration please check your email.');
                		if(response.error == "Y"){
                			alert("실패하였습니다.");
                		} else{
                			alert("수정하였습니다.");
                			location.href="/home/mmember/myPage";
                		}
                }
            });
        });




