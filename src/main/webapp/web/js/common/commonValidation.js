
/* input 숫자만 입력 */
var keyupOnlyNum = function keyupOnlyNum(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
				var inputVal = $(thisObject).val();
				$(thisObject).val(inputVal.replace(/[^0-9]/gi, ''));
			}
		});
	});
};

/* input 영문만 입력 */
var keyupOnlyAlpha = function keyupOnlyAlpha(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			$(thisObject).val(inputVal.replace(/[^a-zA-Z]/gi, ''));
		});
	});
};

/* input 영문, 숫자만 입력 */
var keyupOnlyAlphaNum = function keyupOnlyAlphaNum(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			$(thisObject).val(inputVal.replace(/[^0-9a-zA-Z]/gi, ''));
		});
	});
};

/* input 한글만 입력 */
var keyupOnlyHangul = function keyupOnlyHangul(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			$(thisObject).val(inputVal.replace(/[^ㄱ-ㅎ가-힣]/gi, ''));
		});
	});
};
/* input 한글, 영어만 입력 */
var keyupOnlyHangulAlpha = function keyupOnlyHangul(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			$(thisObject).val(inputVal.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/gi, ''));
		});
	});
};
/* input 영어 대문자만 입력 */
var keyupOnlyUpperAlpha = function keyupOnlyHangul(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			inputVal = inputVal.toLocaleUpperCase();
			$(thisObject).val(inputVal.replace(/[^A-Z]/gi, ''));
		});
	});
};
/* input 영어 대문자/숫자만 입력 */
var keyupOnlyUpperAlphaNum = function keyupOnlyHangul(target) {
	$(target).each(function(idx, thisObject) {
		$(thisObject).keyup(function(event) {
			event.stopPropagation();
			
			var inputVal = $(thisObject).val();
			inputVal = inputVal.toLocaleUpperCase();
			$(thisObject).val(inputVal.replace(/[^0-9A-Z]/gi, ''));
		});
	});
};

/* 이메일 포맷 체크 */
var checkEmailFormat = function checkEmailFormat(strEmail) {
	var check1		= /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/;
	var check2		= /^[a-zA-Z0-9\-\.\_\+]+\@[a-zA-Z0-9\-\.\+]+\.([a-zA-Z]{2,4})$/;
	
	if (!check1.test(strEmail) && check2.test(strEmail)) {
		return true;
	} else {
		return false;
	}
};

/* 유효한 날짜인지 체크 */
var checkValidDate = function checkValidDate(thisVal) {
	var thisYY = parseInt(thisVal.substr(0, 4) - 0);
	var thisMM = parseInt(thisVal.substr(4, 2) - 0);
	var thisDD = parseInt(thisVal.substr(6, 2) - 0);
	
	if (thisYY < 1000) {
		return "YYYY";
	}
	if (thisMM > 12 || thisMM < 1) {
		return "MM";
	}
	var numdays = new Date(thisYY, thisMM, 0).getDate();
	if (thisDD > numdays || thisDD < 1) {
		return "DD";
	}
	
	return thisVal;
};

var generateUUID = function generateUUID() {
	var d = new Date().getTime(),
		uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
			var r = (d + Math.random()*16)%16 | 0;
			d = Math.floor(d/16);
			return (c=='x' ? r : (r&0x7|0x8)).toString(16);
		});
	
	return uuid;
};

/* 보안이 약한 비밀번호인지 확인 */
function isWeekPassword(password) {
	var regExp = /^(?=.*[0-9])(?=.*[~`!@#$%\\^&*()-])(?=.*[a-zA-Z]).{10,20}|(?=.*[~`!@#$%\\^&*()-])(?=.*[a-zA-Z]).{10,20}|(?=.*[0-9])(?=.*[a-zA-Z]).{10,20}|(?=.*[0-9])(?=.*[~`!@#$%\\^&*()-]).{10,20}$/;
	return !regExp.test(password);
}

/* 문자간의 차이가 일정한 비밀번호인지 확인 */
function isSerialNumPassword(password) {
	var o, d, p, n = 0;
	for (var i = 0; i < password.length; i++) {
		var c = password.charCodeAt(i);
		p = o - c;
		n = (p == d) ? (n + 1) : 0;
		if (i > 0 && p > -2 && n > 1) {
			return true;
		}
		d = p;
		o = c;
	}
	return false;
}

/* 아이디가 포함된 비밀번호인지 확인 */
function isPasswordContainsId(password, id) {
	return isTargetContainsSource(password, id, 6);
}

/* source가 target에 포함되어 있는지 확인 */
function isTargetContainsSource(target, source, count) {
	var leng = source.length;
    var leftOver = leng - (count -1);

	for (var i = 0; i < leftOver; i++) {
		var sub = source.substring(i, (i + count));

		if (target.indexOf(sub) >= 0) {
			return true;
        }
	}

    return false;
}

/* 개인정보가 포함된 비밀번호인지 확인 */
function isPasswordContainsProfile(birthDate, phoneNumber, email, password) {

	if (isTargetContainsSource(password, birthDate.replace("-", ""), 4)
			|| (phoneNumber != '' && isTargetContainsSource(password, phoneNumber.replace("-", ""), 4))
			|| isTargetContainsSource(password, email, 4)) {
		return true;
	}

	return false;
}