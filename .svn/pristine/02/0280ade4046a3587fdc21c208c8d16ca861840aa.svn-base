	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        var addr = '';
	        var extraAddr = '';
	        if (data.userSelectedType === 'R') {
	            addr = data.roadAddress;
	        } else {
	            addr = data.jibunAddress;
	        }
	        if(data.userSelectedType === 'R'){
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraAddr += data.bname;
	            }
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            if(extraAddr !== ''){
	                extraAddr = ' (' + extraAddr + ')';
	            }
	            document.getElementById("sample6_extraAddress").value = extraAddr;
	        } else {
	            document.getElementById("sample6_extraAddress").value = '';
	        }
	        document.getElementById('sample6_postcode').value = data.zonecode;
	        document.getElementById("sample6_address").value = addr;
	        document.getElementById("sample6_detailAddress").focus();
	        }
	        }).open();
	}

	function confirmJoinId(){
		var inputId = document.getElementById("id");
		$.ajax({
			type : "post",
			url : "/rest/member/join/confirmJoinId",
			data : {"id" : inputId.value},
			dataType : "text",
			success : function(result){
				if(result=="true"){
					alert("사용 가능한 ID 입니다");
				} else {
					alert("이미 사용중인 ID 입니다");
				}
			},
			error : function(){
				console.log("통신 실패!!");
				alert("통신 실패!!");
			}
		});
	}