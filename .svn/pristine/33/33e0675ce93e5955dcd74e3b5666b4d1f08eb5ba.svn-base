
var agent = navigator.userAgent.toLowerCase();
var ISIE = ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1));
var ISSAFARI = navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1 &&  navigator.userAgent.indexOf('Android') == -1;
/**
 * ajax 호출 
 * @param paramObj
 * - 파라미터 속성  
 * url : json 호출 url
 * data : 파라메터 데이터 Form 명 또는 Object
 * fnBeforeSend : ajax 요청 전 호출 함수
 * fnCallBack : 정상 처리 완료 후 호출 함수
 * fnErrorCallBack : 에러 응답 시 호출 함수
 * fnComplete : 정상이든 비정상이든 실행이 완료될 경우 실행할 함수
 * isLoadingSpinner : loading spinner(ajax로 데이터를 가져오는 동안 표출)의 사용 여부
 * loadingSpinnerTarget : loading spinner를 표출할 타켓 객체
 * async : 비동기 여부 
 */
function fnGetAjaxData(paramObj)
{							
	try {
		var sData = null;
		if(typeof(paramObj.data) == "object" || paramObj.dataType === "json") {
			sData = paramObj.data;
		}
		else {
			sData = $('#'+paramObj.data).serialize();
		}
		
		if(paramObj.contentType == undefined ){
			paramObj.contentType = "application/json"
		}
		
		$.ajax({
			type: "POST",
			url: paramObj.url,
			data: paramObj.data,
			async: paramObj.async,
			cache: false, 
			contentType: paramObj.contentType,
			beforeSend : function(){ //ajax 요청하기 전에 실행
				
				if(paramObj.fnBeforeSend){
					paramObj.fnBeforeSend();
				}

//				if(paramObj.isLoadingSpinner == true){ //loading spinner 사용 여부 true일 경우에만 생성.
//					var loadingSpinnerTarget = paramObj.loadingSpinnerTarget;
//					loadingSpinnerTarget.each(function(){ 
//						var loadingspnr = new LoadingSpinner(); 
//						$(this).block({
//							message : loadingspnr.$loadingType1,
//							css : {border:'0px',width:'auto',height:'auto'} 
//						});
//					});
//				}
				
		 	},
			success : function(data, status, request) {
				
//				if(paramObj.isLoadingSpinner == true){
//					var loadingSpinnerTarget = paramObj.loadingSpinnerTarget;
//					loadingSpinnerTarget.unblock();
//				}
				
				if(paramObj.fnCallBack){
					paramObj.fnCallBack(data);
				}

			},
			complete: function(){
				if(paramObj.fnComplete){
					paramObj.fnComplete();
				};
			},
		    error: function(data, status, error) {
//				//window.error = error;
//		    	if(paramObj.isLoadingSpinner == true){
//					var loadingSpinnerTarget = paramObj.loadingSpinnerTarget;
//					loadingSpinnerTarget.unblock();
//				}

		    	if(paramObj.fnErrorCallBack){
					paramObj.fnErrorCallBack(data);
		    	}
//		    	else{
//		    		
//		    	}
			}
		});	
	} catch(e) {
		console.log("fnGetAjaxData["+e.message+"]");
	}

}

function callAjax(paramObj){
	$.ajax({
		type: "POST",
		url: paramObj.url,
		data: paramObj.data,
		cache: false, 
		contentType: "application/json",
		success : function (data) { 
			//console.log("SUCCESS : ", data); 
		},
	    error: function(e) {
			console.log("ERROR : ", e); 
		}
	});	
}


/**
 * 페이지 이동
 * @param url : 이동할 페이지 url
 * @param pramData : 파라미터 데이터  
 * @param [type] : default - json데이터를 jsonData에 담아서 정송
 *               : form    - json 데이터를 form에 담아서 전송 - level 1만 적용
 * @returns
 */
function fnMovePage(url,pramData,type,method){
	var form = document.createElement('form');
	var objs;
	switch(type){
		case 'form' : 
			// form 전송
			objs = document.createElement('div');
			for(var p in pramData){
				var obj = document.createElement('input');
				obj.setAttribute('type','hidden');
				obj.setAttribute('name',p);
				obj.setAttribute('value',pramData[p]);
				objs.appendChild(obj);
			}
			break;
		// 다른 전송 방법이 있다면 추가.
		case 'form2' :
			objs = document.createElement('div');
			for(var p in pramData){
				
				var pData = pramData[p];
				var param;
				if(typeof(pData) == 'object'){
					param = JSON.stringify(pData);
				}else if(typeof(pData) == 'string' || typeof(pData) == 'number'){
					param = pData;
				}else{
					param = null;
				}
				if(param){
					var obj = document.createElement('input');
					obj.setAttribute('type','hidden');
					obj.setAttribute('name',p);
					obj.setAttribute('value',param);
					objs.appendChild(obj);
				}
			}
			break;
		default:
			// json - jsonData로 전송
			objs = document.createElement('input');
			objs.setAttribute('type', 'hidden');
			objs.setAttribute('name','jsonData');
			//JSON.stringify(pramData)
			objs.setAttribute('value',JSON.stringify(pramData));
			break;
	}
	form.appendChild(objs);
	if(method == 'get'){
		url += '?'+$(form).serialize();
	}else{
		form.setAttribute('method', 'post');
	}
	form.setAttribute('action', url);
	document.body.appendChild(form);
	form.submit();
}

/**
 * 1자리의 월 또는 일자 String(ex. "1","2","3"..)앞에 0채우기
 * @param a(String)
 * @returns
 */
function fillZeroForDate(a){ 
	if(String(a).length<2){ return "0"+a;}else{ return a;}
} 


//** ---------------------------------------------------------------------------
//함 수 명 : 
//인    자  :  strValue(문자열)
//결    과  : Boolean
//목    적  : 빈값여부 체크
//사용예제 : if ( uf_isEmpty( form.title.value ) == true ) alert("입력된 값 없음");
//** ---------------------------------------------------------------------------
function uf_isEmpty(strValue)
{
	if ( strValue == null || strValue == "null" || strValue == "" || strValue == undefined || strValue == "undefined")
	{
		return true;
	}

	return false;
}


var isOpenLayer = false;
var _thisBtn;
var myScrollTop;
var openLayerPopup = function openLayerPopup(layerId, focusEl, target) {
	if (!getLsLayer(layerId)) {
		isOpenLayer = true;
		var _body = $('body');
		var _thisTargetLayer = $('#' + layerId + '');
		if (typeof target != 'undefined') {
			_thisBtn = target;
		} else {
			_thisBtn = $('#btn_' + layerId + '');
		}
		
		var pgt = window.scrollY || document.documentElement.scrollTop;
	    var vph = $(window).height();
	    var voff = pgt + vph / 2.0;
	    $('.pop_layer').css({
	      'display': 'blcok',
	      'top': voff
	    });
	    $('.layer_bg').show();
		
		// 같은 레이어 호출시 레이어 닫은 후 포커스 가야할 버튼 다시 지정
		/*if (typeof(focusEl) != 'undefined' && focusEl != '') {
			_thisBtn = $('#' + focusEl);
		}
		
		myScrollTop = $(window).scrollTop();
		$('.dp-xs body').addClass('fixed');
        
        _thisTargetLayer.show();
        
        var targetWrap = _thisTargetLayer.find('.popup-wrap');
        targetWrap.attr('tabindex', 0);
        $(targetWrap).css({
            'margin-left' : -($(targetWrap).outerWidth() / 2),
            'margin-top' : -($(targetWrap).outerHeight() / 2)
        });*/
		
		// 레이어 팝업 닫기 / 닫은 후 스크롤락 해제
		$('[data-event="popup-close"]').each(function() {
			$(this).on('click', function() {
				$(this).closest('.pop_layer').fadeOut(150);
	           // $('.dp-xs body').removeClass('fixed');
	           /* $(window).scrollTop(myScrollTop);
				if (typeof _thisBtn != 'undefined') {
					_thisBtn.focus();
				}*/
				$('.pop_layer').css('display', 'none');
				$('.layer_bg').hide();
				
			});
		});
	}
};

var getLsLayer = function getLsLayer(name) {
	var ls = false;
	if (localStorage.getItem(name)) {
		var saveDate = localStorage.getItem(name),
			todayDate = new Date();
		if (parseInt(todayDate.getTime()) > parseInt(saveDate)) {
			localStorage.removeItem(name);
			ls = false;
		} else {
			ls = true;
		}
	} else {
		ls = false;
	}
	return ls;
};

//** ---------------------------------------------------------------------------
//함 수 명 : fnMsgPopup
//인    자  :  msg(Object), callback(Function OR String)
//결    과  : 
//목    적  : 메시지 레이어 팝업 열기
//사용예제 : 
//			fnMsgPopup({"type":"A","message":"아이디를 입력해주세요","title":"알립니다"},function(){alert(obj.aa)},function(){console.log('aaa')});
//			fnMsgPopup({"type":"A","message":"아이디를 입력해주세요","title":"알립니다"},"test1({'test':'11'})");
//** ---------------------------------------------------------------------------
var func = null;	//alert:close callback function, confirm : yes button callback function
var func2 = null;	//confirm(only) : no button callback function
var type = "A";
function fnMsgPopup(obj, callback, callback2, openCallback){
	
	if(obj == null || obj == ''){
		return;
	}
	if(obj.message == null || obj.message==''){
		return;
	}
	
	if(obj.type == null || obj.type == ''){
		obj.type = "A";
	}
	this.type = obj.type.toUpperCase();

	$("#msgPopup .pop_01 #popTitle").text( (obj.title==null||obj.title==''?"" + i18n("common.alert")+ "":obj.title) );
	$("#msgPopup .pop_01 .pop_cont1 #popMsg").html( obj.message );
	$("#msgPopup .pop_01 .pop_cont1 img").attr("alt", obj.title);
	
	if( this.type == "C" ){
		$("#msgPopup .pop_01 .pop_cont1 img").attr("src", "/img/membership/login_05.png");
		$("#msgPopup .pop_01 .pop_cont1 #closeBtn").hide();
		$("#msgPopup .pop_01 .pop_cont1 #yesBtn").show();
		$("#msgPopup .pop_01 .pop_cont1 #noBtn").show();
	}else{
		$("#msgPopup .pop_01 .pop_cont1 img").attr("src", "/img/membership/login_04.png");
		$("#msgPopup .pop_01 .pop_cont1 #yesBtn").hide();
		$("#msgPopup .pop_01 .pop_cont1 #noBtn").hide();
		$("#msgPopup .pop_01 .pop_cont1 #closeBtn").show();
	}
	
	$("#msgPopup").show();
	
	if( this.type == "C" ){
		$("#msgPopup .pop_01 .pop_cont1 #noBtn").focus();
	}else{
		$("#msgPopup .pop_01 .pop_cont1 #closeBtn").focus();
	}

	/*
	if( $("body").hasClass("mobile") == true && $("body").hasClass("pop_on") == false ){
		$("body").addClass("pop_on");
	}else if( $("body").hasClass("web") == true && $("body").css("overflow") != "hidden" ){
		$("body").css("overflow","hidden");
	}
	*/
	
	func = callback;
	if( callback2 != null ){
		func2 = callback2;
	}

	if(openCallback){ openCallback(); }
}

//** ---------------------------------------------------------------------------
//함 수 명 : fnMsgPopupClose
//인    자  :  
//결    과  : 
//목    적  : 메시지 레이어 팝업 callback 처리
//사용예제 : 
//** ---------------------------------------------------------------------------
function fnMsgPopupClose(value){
	var _func = this.func;
	if( value == "N" ){
		_func = this.func2;
	}
	if( typeof _func == "function" ){
		_func();
	}else if( typeof _func == "string" ){
		if(_func.indexOf("()") == -1){
			_func += "()";
		}
		eval(_func);
	}
	
	$("#msgPopup").hide();
	
	/*
	if( $("body").hasClass("mobile") == true && $("body").hasClass("pop_on") == true ){
		$("body").removeClass("pop_on");
	}else if( $("body").hasClass("web") == true && $("body").css("overflow") == "hidden" ){
		$("body").css("overflow","visible");
	}
	*/
	
	func = null;
	func2 = null;
}

/*
 * 조건 : <select> 태그가 먼저 생성된 상태였을 때 실행
 * cdgrId : 코드그룹 ID
 * selectType : 태그선택을 위한 구분 값, id,name
 * selectElId : selectType 가 id 이면 반드시 입력
 * selectElName : selectType 가 name 이면 반드시 입력
 * selectValue : 만들어진  select,option 태그에서 해당 목록 선택
 * codeType : 조회하는 데이터의 선택, FULL, SIMPLE
 */
function fnSetSelectBoxCodeData(cdgrId,selectType,selectElId,selectElName,selectValue,codeType){

	//다국어 때문에 simple만 가능케 구현
	var callUrl = "/cmm/code/selectCodeListSimpleInfo.do";
	
	$.ajax({
        type: "POST",
        url: callUrl,
        data: {cdgrId:cdgrId}, // serializes the form's elements.
        success: function(data)
        {
        	if(data != undefined){
			   var codeList = JSON.parse(data);
			   var $selectTag = null;
			   if(selectType == "id"){
				   $selectTag = $("#"+selectElId);
			   }else if(selectType == "name"){
				   $selectTag = $("select[name="+selectElName+"]");
			   }else{
				   return false;
			   }
			   productOptionList($selectTag,codeList,selectValue);
        	}
        }
	});
}
/**
 * 공통코드 불러오는 메서드
 * 
 * @param groupCd : 그룹코드
 * @param successCallback : 성공 콜백 함수
 * @param failCallback : 실패 에러 함수
 * @returns
 */
function fnComnLoadCode(groupCd,successCallback, failCallback){
	if(typeof(groupCd) != 'string'){
		console.log('fnComnLoadCode : groupCd is not string type.');
		return;
	}
	var param = JSON.stringify({"groupCd":groupCd});
	var opt = {
		url: restURL+'/comn/code/searchForSelectBox',
		data: param,
		dataType: 'json',
		fnCallBack: successCallback,
		fnErrorCallBack: failCallback
	}
	fnGetAjaxData(opt)
}
function productOptionList($selectTag,codeList,selectValue){
	$selectTag.empty();
	
	if(selectValue == undefined || selectValue == ''){		
		$selectTag.append("<option value='' disabled selected>선택</option>");
	}
	
	for (var i in codeList) {
		$selectTag.append('<option value="' + codeList[i].codeId + '">' + codeList[i].codeNm + '</option>');
	}
	
	$selectTag.val(selectValue).attr("selected", "selected");
}

// 현재 날자(시간 제외)를 날자
function dateToDay(){
	var date = new Date();
	var y = date.getFullYear();
	var m = date.getMonth();
	var d = date.getDate();
	return new Date(y,m,d); 
}
// String(yyyy-mm-dd) >> Date 변환 / 구분자 
function dateToString(dStr, sp){
	var _sp = sp || '-';
	var dStrArr = dStr.split(_sp);
	return new Date(Number(dStrArr[0]),Number(dStrArr[1])-1,Number(dStrArr[2]));
}
// Date를 날자로 환산.
function dayToDate(date){
	return date.getTime() / (1000*60*60*24);
}

// Messge Call 함수
function fnGetSpringMessage(id){
	var myCallId = eval(id);
	return myCallId;    	
}



// 규정 레이어 팝업
function fnLayerPop( t , url , fnm , paramObj, pId , pLayerClass){
	$tgt=$(t);
	var sData = null;
	if(typeof(paramObj) == "object" ) {
		sData = paramObj;
	}
	else {
		sData = $('#'+paramObj).serialize();
	}
	if(!pId) pId = "myModal";
	if(!pLayerClass) pLayerClass = "layer_700";
	$('#pop_layer_'+pId).remove(); //초기화 
	var blackLight = "<div class='"+pLayerClass+" pop_layer' id='pop_layer_"+ pId+"'>"; 
		blackLight = blackLight + "<div class='pop_inner'>";
		blackLight = blackLight + "<button class='icon_20_close_black' onclick=deleteLayer('"+pId+"');><span class='blind'>닫기</span></button>";
		blackLight = blackLight + "<div id='"+pId+"'>";
		blackLight = blackLight + "</div></div></div>"
		jQuery("body").append(blackLight);
		
		jQuery("#"+pId).load(url, sData,function(){ setTimeout(function() {
			if ( "function" == typeof( eval(fnm) ) ) {
				_fn = fnm;
				
				var efn = eval(_fn); efn();
			}
		}, 500); } ); 
		
		
		var pgt = window.scrollY || document.documentElement.scrollTop;
	    var vph = $(window).height();
	    var voff = pgt + vph / 2.0;
	    
	    $('.pop_layer').css({
	      'display': 'block',
	      'top': voff
	    });
	    
		$("#" + pId).show();
		$('.layer_bg').show();
		
		
}

function deleteLayer(pId) {
	if(!pId) pId = "myModal";
	$('#pop_layer_'+pId).remove();
	$('.layer_bg').hide();
};

function messageOnload(){
	jQuery.i18n.properties({
	    name:'messages',
	    path:'/properties/',
	    mode:'map',
	    cache: true,
	    //debug: true,
	    language:'ko',
	    callback: function () {
	       
	    }
	});
}

//메세지 호출 공통 함수
function i18n(msg) {
    /*var args = "\""+ msg + "\"";
    for (var i = 1; i < arguments.length; i++) {
           args += ", \"" + arguments[i] + "\"";
    }
    if (parent != this) {
           return eval("parent.i18n('" + args + "','no Message')");
    }*/

    return jQuery.i18n.prop(msg,'no Message');
}



//Validation 부분
function isWeekPswd(pswd) {
	var regExp = /^(?=.*[0-9])(?=.*[~`!@#$%\\^&*()-])(?=.*[a-zA-Z]).{10,20}|(?=.*[~`!@#$%\\^&*()-])(?=.*[a-zA-Z]).{10,20}|(?=.*[0-9])(?=.*[a-zA-Z]).{10,20}|(?=.*[0-9])(?=.*[~`!@#$%\\^&*()-]).{10,20}$/;
	return !regExp.test(pswd);
}

function isSerialNumPswd(pswd) {
	var o, d, p, n = 0;
	for(var i=0; i<pswd.length; i++) {
		var c = pswd.charCodeAt(i);
		p = o - c;
		n = (p == d) ? (n + 1) : 0;
		if(i > 0 && p > -2 && n > 1) {
			return true;
		}
		d = p;
		o = c;
	}
	return false;
}

function isPswdContainsId(pswd, id) {
	return isTargetContainsSource(pswd, id, 6);
}

function isTargetContainsSource(target, source, count) {
	var leng = source.length;
    var leftOver = leng - (count -1);

	for(var i=0; i < leftOver; i++) {
		var sub = source.substring(i, (i + count));

		if(target.indexOf(sub) >= 0) {
			return true;
        }
	}

    return false;
}

function isPswdContainsProfile(birthDate, mpNo, eMail, pswd) {

	if(isTargetContainsSource(pswd, birthDate.replace("-", ""), 4)
			|| (mpNo != '' && isTargetContainsSource(pswd, mpNo.replace("-", ""), 4))
			|| isTargetContainsSource(pswd, eMail, 4)) {
		return true;
	}

	return false;
}

function isEMail(value) {
	if(value.length >= 30) return false;
    var regExp = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    return regExp.test(value);
}

// 모바일 기종 체크
function isMobile(){
	var filter = "win16|win32|win64|mac";
	if(navigator.platform){
		if(0 > filter.indexOf(navigator.platform.toLowerCase())){
			return true;
		}else{
			return false;
		}
	}
	
}

// 팝업 구분에 따른 팝업 호출
function imgPopupCall(linkUrl ,imagePopYn){
	if(linkUrl){
		if(imagePopYn == 'Y'){
			window.open(linkUrl);
		}else{
			location.href = linkUrl;
		}
	}
}

/**
 * 시스템 이용가능시간 체크 
 * @param obj
 * - 파라미터 속성  
 * fnCallback : 시스템 이용 가능할 경우 실행할 콜백함수
 * goMain : 시스템 이용 불가할 경우, 
 * 			팝업창 확인 버튼 클릭 시 메인으로 이동할지 / 해당 페이지에 머무를지 여부 (boolean)
 * 			디폴트 값은 true
 */
function checkSystemAvailTime(obj){
	
	var goMain = (obj.goMain == false ? false : true);
	
	fnGetAjaxData({ //시스템 점검 시간 체크
		url : "/booking/reservation/checkSystemChkTime.do",
		fnCallBack : function(d){
			if(d != null){
				var msg = null, title = null;
				
				if(d.type == "SystemCheck"){ //서비스 점검 
					
					msg = i18n("booking.reservation.m058");//23:50~00:05<br/>서비스 점검 시간 입니다.
					
				}else if(d.type == "SvcNotAvail"){ //서비스 이용 불가 
					
					if(d.msg){
						if(d.msg.svcchkTitle){ title = d.msg.svcchkTitle; }; 
						if(d.msg.svcchkMemo){ msg = d.msg.svcchkMemo; }; 
					}
					
				}else{ 
					
					msg = i18n("booking.reservation.m059");//"오류 발생<br/>새로고침 후 다시 시도 해주십시오."
				}
				
				fnMsgPopup({"message":msg,"title":title},null,null,function(){
					if(goMain){
						$("#closeBtn").one('click',function(){
							location.href="/index.do"; 
						})
					}
				});
				
				
			}else{
				obj.fnCallback();
			}

		},
		fnErrorCallBack : function(){
			//"오류 발생<br/>새로고침 후 다시 시도 해주십시오."
			fnMsgPopup({"message":i18n("booking.reservation.m059")});
		}
	})
	
	
}

//나이계산기 box - return ADULT , CHILD , INFANT 중 하나 
var getAgeByFltDate = function (fltDate, dateOfBirth) {

    var _sTaxType = "";
    var _fltDate = moment(fltDate,'YYYY-MM-DD');
    var depYear = Number(_fltDate.format('Y'));							//비행일(년)
    var depMonth = Number(_fltDate.format('M'));							//비행일(월)
    var depDate = Number(_fltDate.format('D'));							//비행일(일)

    var _dateOfBirth = moment(dateOfBirth,'YYYY-MM-DD');
    var dobYear = Number(_dateOfBirth.format('Y'));							//생년월일(년)
    var dobMonth = Number(_dateOfBirth.format('M'));							//생년월일(월)
    var dobDate = Number(_dateOfBirth.format('D'));			

    //나이 계산
    var age = depYear - dobYear;
    //만 나이 계산(생일이 출발일  이후인 경우 나이 - 1)
//    if(depMonth <= dobMonth && depDate < dobDate){
//    	age --;
//    }
    // 2019.01.07 만 나이 계산 조건문 수정
    if((depMonth == dobMonth && depDate < dobDate) || depMonth < dobMonth){
    	age --;
    }
    
    return age;
}

//나이계산기 box - return ADULT , CHILD , INFANT 중 하나 
var getTaxTypeByFltDate = function (fltDate, dateOfBirth,calType) {

    var _sTaxType = "";

    //나이 계산
    var age = getAgeByFltDate(fltDate, dateOfBirth);

    if(calType == 'D') {
    	//국내선 : 만 13세 이상 성인
    	if(age >= 150 || age < 0){
    		_sTaxType = "NONE";
    	}else if(age >= 13) {
    		_sTaxType = "ADULT";
		}else if(age >= 2 && age < 13) {
			_sTaxType = "CHILD";
        }else{
        	_sTaxType = "INFANT";
        }
    } else {
    	if(age >= 150 || age < 0){
    		_sTaxType = "NONE";
    	}else if(age >= 12) {
        	_sTaxType = "ADULT";
        }else if(age >= 2 && age < 12) {
        	_sTaxType = "CHILD";
        }else{
        	_sTaxType = "INFANT";
        }
    } 
    return _sTaxType;
}

//나이계산기 , 내부적인 항공사룰 - return ADULT , CHILD, CHILD2 , INFANT 중 하나 
var getTaxTypeByFltDateInnerRule = function (fltDate, dateOfBirth,calType) {

    var _sTaxType = "";

    //나이 계산
    var age = getAgeByFltDate(fltDate, dateOfBirth);
    
    if(calType == 'D') {
    	//국내선 : 만 13세 이상 성인
    	if(age >= 150 || age < 0){
    		_sTaxType = "NONE";
    	}else if(age >= 75) {
    		_sTaxType = "SENIOR";
		}else if(age >= 13) {
    		_sTaxType = "ADULT";
		}else if(age >= 8 && age < 13) {
			_sTaxType = "CHILD2";
        }else if(age >= 2 && age < 8) {
			_sTaxType = "CHILD1";
        }else{
        	_sTaxType = "INFANT";
        }
    } else {
    	if(age >= 150 || age < 0){
    		_sTaxType = "NONE";
    	}else if(age >= 75) {
    		_sTaxType = "SENIOR";
		}else if(age >= 13) {
    		_sTaxType = "ADULT";
		}else if(age >= 8 && age < 13) {
			_sTaxType = "CHILD2";
        }else if(age >= 2 && age < 8) {
			_sTaxType = "CHILD1";
        }else{
        	_sTaxType = "INFANT";
        }
    } 
    return _sTaxType;
}

// 통화 formatting. 3자리 단위씩 ','찍어주는 함수.
var fnCurrencyFormat = function(obj){
//	if(!currency && currency != 0) return;
//	return currency.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	obj = Number(obj)+"";
    var regx = new RegExp(/(-?\d+)(\d{3})/);
    var regExp = /[\{\}\[\]\/?.;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
    var bExists = obj.indexOf(".",0);
    var strArr = obj.split('.');
    while (regx.test(strArr[0])) {
        strArr[0] = strArr[0].replace(regx, "$1,$2");
        strArr[0] = strArr[0].replace(regExp,'');
    }
    if (bExists > -1) {
    	strArr[1] = strArr[1].replace(regExp,'');
        obj = strArr[0] + "." + strArr[1];
    } else {  
        obj = strArr[0];
    }
    return obj;
}
function cfn_numWithComma(obj) {
	obj = Number(obj)+"";
    var regx = new RegExp(/(-?\d+)(\d{3})/);
    var regExp = /[\{\}\[\]\/?.;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
    var bExists = obj.indexOf(".",0);
    var strArr = obj.split('.');
    while (regx.test(strArr[0])) {
        strArr[0] = strArr[0].replace(regx, "$1,$2");
        strArr[0] = strArr[0].replace(regExp,'');
    }
    if (bExists > -1) {
    	strArr[1] = strArr[1].replace(regExp,'');
        obj = strArr[0] + "." + strArr[1];
    } else {  
        obj = strArr[0];
    }
    return obj;
}

function checkZero(data){

	if(data.length == 1){
	  data = "0" + data;
	}
	
	return data;
}

//현재 날짜
function currentDate(){
	return moment().format('YYYY-MM-DD');
}

//return yyyy-mm-dd
var getModifyDateByStrDate = function(strDate,num,separator){
	 return moment(strDate).add(num, 'days').format('YYYY-MM-DD');
}

//input str yyyy-mm-dd , 특정 일자의 요일 조회*(언어별)
function getDayByLang(strDate, lang) {
	var day = "";
	if (strDate != undefined) {
		var week;
		if(lang == "ko" || lang == "KO"){
			week     = new Array("\uC77C","\uC6D4","\uD654","\uC218","\uBAA9","\uAE08","\uD1A0");
		} else if(lang == "en" || lang == "EN"){
			week     = new Array("SU", "MO", "TU", "WE", "TH", "FR", "SA");
		} else if(lang == "ja" || lang == "JA"){
			//week     = new Array("日", "月", "火", "水", "木", "金", "土");
			week     = new Array("\u65E5","\u6708","\u706B","\u6C34","\u6728","\uF90A","\u571F");
		} else if(lang == "ch" || lang == "CH"){
			//week     = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");
			week     = new Array("\u5468\u65E5","\u5468\u4E00","\u5468\u4E8C","\u5468\u4E09","\u5468\u56DB","\u5468\u4E94","\u5468\u516D");
		} else if(lang == "ru" || lang == "RU"){
			//week     = new Array("Воскр",  "Пон", "Вт", "Ср", "Чет", "Пят",  "Субб");
			week     = new Array("\u0412\u043E\u0441\u043A\u0440","\u041F\u043E\u043D","\u0412\u0442","\u0421\u0440","\u0427\u0435\u0442","\u041F\u044F\u0442","\u0421\u0443\u0431\u0431");
		} else if(lang == "de" || lang == "DE"){
			week     = new Array("SO","MO","DI","MI","DO","FR","SA");
		} else if(lang == "fr" || lang == "FR"){
			week     = new Array("DI","LU","MA","ME","JE","VE","SA");
		} else if(lang == "zh" || lang == "ZH"){
			week     = new Array("\u65e5","\u4e00","\u4e8c","\u4e09","\u56db","\u4e94","\uf9d1");
		} else if(lang == "es" || lang == "ES"){
			//week = new Array(dom, lun, mar, mié, jue, vie, sáb);
			week     = new Array("dom","lun","mar","\u006d\u0069\u00e9","jue","vie","\u0073\u00e1\u0062");
		}
	
	  day = week[moment(strDate).day()];
	}
	
	return day;
}

/**
 * String으로부터 Date 객체를 생성 
 * YYYY-MM-DD HH:mm:ss("2018-04-27 09:30:00") 형식의 문자열을 Date 객체에 파싱.
 * 제공된 문자열이 형식과 일치하지 않으면 유효하지 않은 날짜(NaN 값)가 반환.
 * @param {string} "YYYY-MM-DD HH:mm:ss" 
 * @return {Date} 문자열 date에 해당하는 Date 객체
 */
function cfn_strDateTimeToDate(strDateTime){
	var a = strDateTime.split(" ");
	var dateStr = a[0]; 
	var timeStr = a[1];
	
	var /**Date*/date = parseISO8601(dateStr);
	var t = timeStr.split(":");
	date.setHours(t[0]);
	date.setMinutes(t[1]);
	if(t[2]){ date.setSeconds(t[2]); }
	return date;
}
//form > object
function fnConvtFormToObject($form){
	var obj = {};
	var data = $form.serializeArray();
	data.forEach(function(val,i){
		if(val && val.value){
			obj[val.name] = val.value;
		}
	})
	return obj;
}


/***
 * YYYYMMDD String을 Date형식으로 
 * @param str
 * @returns
 */
function parseDate(str) {
    if(/^(\d){8}$/.test(str) == false) 
    {return false;}	
    
    var y = Number(str.substr(0,4)),
        m = Number(str.substr(4,2)) -1,
        d = Number(str.substr(6,2));
    return new Date(y,m,d);
}

/**
 * 숫자 앞에 특정한 문자를 부여한다.
 * @param n (필수)
 * @param width (선택) : 기본값 2
 *        type : number
 * @param str (선택) : 기본값 '0'
 * @returns
 */
function fnNumberPad(n, width, str) {
	var str = str || '0';
	var width = width || 2;
	n = n + '';
	return n.length >= width ? n : new Array(width - n.length + 1).join(str) + n;
}

/**
 * 소셜 네트워크 공유
 * @param sns
 * @param url
 * @param txt
 * @returns
 */
function sendSns(sns, url, txt)
{
    var o;
    var _url = encodeURIComponent(url);
    var _txt = encodeURIComponent(txt);
    var _br  = encodeURIComponent('\r\n');
 
    switch(sns)
    {
        case 'facebook':
            o = {
                method:'popup',
                url:'http://www.facebook.com/sharer/sharer.php?u=' + _url
            };
            break;
 
        case 'twitter':
            o = {
                method:'popup',
                url:'http://twitter.com/intent/tweet?text=' + _txt + '&url=' + _url
            };
            break;
 
        case 'me2day':
            o = {
                method:'popup',
                url:'http://me2day.net/posts/new?new_post[body]=' + _txt + _br + _url + '&new_post[tags]=epiloum'
            };
            break;
 
        case 'kakaotalk':
            o = {
                method:'web2app',
                param:'sendurl?msg=' + _txt + '&url=' + _url + '&type=link&apiver=2.0.1&appver=2.0&appid=dev.epiloum.net&appname=' + encodeURIComponent('Epiloum 개발노트'),
                a_store:'itms-apps://itunes.apple.com/app/id362057947?mt=8',
                g_store:'market://details?id=com.kakao.talk',
                a_proto:'kakaolink://',
                g_proto:'scheme=kakaolink;package=com.kakao.talk'
            };
            break;
 
        case 'kakaostory':
            o = {
                method:'web2app',
                param:'posting?post=' + _txt + _br + _url + '&apiver=1.0&appver=2.0&appid=dev.epiloum.net&appname=' + encodeURIComponent('Epiloum 개발노트'),
                a_store:'itms-apps://itunes.apple.com/app/id486244601?mt=8',
                g_store:'market://details?id=com.kakao.story',
                a_proto:'storylink://',
                g_proto:'scheme=kakaolink;package=com.kakao.story'
            };
            break;
 
        case 'band':
            o = {
                method:'web2app',
                param:'create/post?text=' + _txt + _br + _url,
                a_store:'itms-apps://itunes.apple.com/app/id542613198?mt=8',
                g_store:'market://details?id=com.nhn.android.band',
                a_proto:'bandapp://',
                g_proto:'scheme=bandapp;package=com.nhn.android.band'
            };
            break;
 
        default:
            alert('지원하지 않는 SNS입니다.');
            return false;
    }
 
    switch(o.method)
    {
        case 'popup':
            popup.open(o.url, sns, {width: 700, height: 420});
            break;
 
        case 'web2app':
            if(navigator.userAgent.match(/android/i))
            {
                // Android
                setTimeout(function(){ location.href = 'intent://' + o.param + '#Intent;' + o.g_proto + ';end'}, 100);
            }
            else if(navigator.userAgent.match(/(iphone)|(ipod)|(ipad)/i))
            {
                // Apple
                setTimeout(function(){ location.href = o.a_store; }, 200);          
                setTimeout(function(){ location.href = o.a_proto + o.param }, 100);
            }
            else
            {
                alert('이 기능은 모바일에서만 사용할 수 있습니다.');
            }
            break;
    }
}


/**
 * 팝업(새창)
 * popup.open(url, name, options)
 * ex_ popup.open('/v/comn/popup/index','popup',{width:200, height: 200})
 *     popup.close('popup')
 *     
 * popup.openPost(url, name, options, arg, fnCallback)
 * ex_ popup.open('/v/comn/popup/index','popup',{width:200, height: 200},{data: 'sample1'},function(){})
 *     popup.close('popup')
 */
var popup
window.onload = function(){
	popup = new Popup();
}

//popup
var Popup = function(options){
	// 팝업 목록
	this.list;
	this.init(options);
};

Popup.prototype.init = function(options){
	this.list = {};
	
}
Popup.open = function(url, name, options){
	// options값 추출
	var url = url || '';
	var name = name || '_blank';
	var mType = options.mType || '';
	
	// 기본 설정
	var opt = {
		toolbar: 0,
		menubar: 0,
		location: 0,
		status: 0,
		resizable: 0,
		width: 100,
		height: 100
	}
	$.extend(opt, options)
	
	var specs = Popup.convtOptionToQuery(opt);
	if(mType == 'post'){
		var win = window.open('', name, specs);
	}else{
		var win = window.open(url, name, specs);
	}
	
	return win;
	
}
//팝업 열기
Popup.prototype.open = function(url, name, options, fnCallback){
	var _this = this

	// 기존에 띄어진 팜업 제거.
	this.remove(name);
	
	// 팝업 호출
	var win = Popup.open(url, name, options);
	// 콜백 선언
	win.fnCallback = fnCallback;
	win.onload = function(e){
		_this.add(name, win);
		Popup.setAutoSize(win);
	}
	// 팝업을 닫을 경우 리스트에서 제거
	win.onbeforeunload = function(e){
		_this.remove(name);
	}
	
}
// 팝업 생성(post)
Popup.prototype.openPost = function(url, name, options, arg, fnCallback){
	var _this = this;
	options.mType = 'post';
	// 기존 중복된 form 제거.
	var $beforeForm = $('form[target='+name+']');
	if($beforeForm.length > 0){
		$beforeForm.remove();
	}
	// 기존 list 제거
	this.remove(name);
	
	// post전송을 위한 form 만들기.
	var $form = $('<form/>',{
		action: url,
		name: name,
		style: 'display:none;'
	})
	
	for(key in arg){
		var $input = $('<input/>',{
			type: 'text',
			name: key,
			value: arg[key]
		})
		$form.append($input);
	}
	
	$('body').append($form);
	// 팝업 생성
	var win = Popup.open(url, name, options);
	
	// 부모창에 데이터 전송할 콜백함수 셋팅
	win.fnCallback = fnCallback;

	// 팝업 onload 이벤트
	win.onload = function(e){
		// 팝업 리스트 등록
		_this.add(name, win);
		// 가운데 표출
		// TODO 멀티 화면일 경우 정렬에 대하여 에로사항이 있음.
		Popup.setAutoSize(win);
	}
	// 팝업 닫기전 실행 이벤트
	win.onbeforeunload = function(e){
		// 팝업 리스트 해당 정보 제거.
		_this.remove(name);
		$form.remove();
	}
	//사파리는 Session 초기 화 문제로 변경처리함 Kang
	if(ISSAFARI){
		$form.attr("target","_blank");
	}else{
		$form.attr("target",name);
	}
	
	$form.attr("method","post");
	// 해당 팝업에 submit 결과 전송
	$form.submit();
}

//팝업 리스트 등록
Popup.prototype.add = function(name, win){
	this.list[name] = win;
}
//팝업 리스트 제거 (닫기 포함)
Popup.prototype.remove = function(name){
	if(this.list.hasOwnProperty(name)){
		var win = this.list[name];
		this.close(name);
		delete this.list[name];
	}
}
//팝업 닫기
Popup.prototype.close = function(name){
	if(this.list.hasOwnProperty(name)){
		var win = this.list[name];
		win.close();
	}
}

//팝업 사이즈 설정
Popup.setAutoSize = function(window){
	
	var document = window.document
	
	var thisX;
	var thisY;
	var maxThisX;
	var maxThisY;
	var marginY;
	
	thisX			= parseInt(document.body.scrollWidth);
	thisY			= parseInt(document.body.scrollHeight);
	maxThisX		= screen.width - 50;
	maxThisY		= screen.height - 50;
	marginY			= 0;
	
	// 브라우저별 높이 조절.
	if(navigator.userAgent.indexOf("MSIE 6") > 0){
		marginY		= 45;		// IE 6.x
	}else if(navigator.userAgent.indexOf("MSIE 7") > 0){
		marginY		= 75;		// IE 7.x
	}else if(navigator.userAgent.indexOf("Firefox") > 0){
		marginY		= 50;		// FF
	}else if(navigator.userAgent.indexOf("Opera") > 0){
		marginY		= 30;		// Opera
	}else if(navigator.userAgent.indexOf("Netscape") > 0){
		marginY		= -2;		// Netscape
	}

	if(thisX > maxThisX){
		window.document.body.scroll		= "yes";
		thisX							= maxThisX;
	}
	if (thisY > maxThisY - marginY){
		window.document.body.scroll		= "yes";
		thisX							+= 19;
		thisY							= maxThisY - marginY;
	}
	  
	window.resizeTo(thisX+10, thisY+marginY);

	  // 센터 정렬
	var windowX;
	var windowY;
	
	windowX			= (screen.width - (thisX+10))/2;
	windowY			= (screen.height - (thisY+marginY))/2 - 20;
	
	window.moveTo(windowX,windowY);
}
//팝업 가운데 설정
Popup.setCenter = function(window){
	var document = window.document
	
	var thisX;
	var thisY;
	var maxThisX;
	var maxThisY;
	var marginY;
	
	thisX			= parseInt(document.body.scrollWidth);
	thisY			= parseInt(document.body.scrollHeight);
	maxThisX		= screen.width - 50;
	maxThisY		= screen.height - 50;
	marginY			= 0;
	
	// 브라우저별 높이 조절.
	if (navigator.userAgent.indexOf("MSIE 6") > 0){
		marginY		= 45;		// IE 6.x
	}else if(navigator.userAgent.indexOf("MSIE 7") > 0){
		marginY		= 75;		// IE 7.x
	}else if(navigator.userAgent.indexOf("Firefox") > 0){
		marginY		= 50;		// FF
	}else if(navigator.userAgent.indexOf("Opera") > 0){
		marginY		= 30;		// Opera
	}else if(navigator.userAgent.indexOf("Netscape") > 0){
		marginY		= -2;		// Netscape
	}

	if (thisX > maxThisX){
		// window.document.body.scroll = "yes";
		thisX							= maxThisX;
	}

	if (thisY > maxThisY - marginY){
		// window.document.body.scroll = "yes";
		thisX							+= 19;
		thisY							= maxThisY - marginY;
	}

	// 센터 정렬
	var windowX;
	var windowY;

	windowX			= (screen.width - (thisX+10))/2;
	windowY			= (screen.height - (thisY+marginY))/2 - 20;
	
	window.moveTo(windowX,windowY);
}
//옵션 변경.
Popup.convtOptionToQuery = function(options){
	var query = '';
	if(!(options instanceof Object)) {
		console.log('popup of options type is wrong data')
		return query;
	}
	var keys = Object.keys(options);
	if(keys.length > 0){
		query = keys.map(function(key,index,arr){
			return key+'='+options[key]
		}).join(',')
	}
	return query;
}


//escapeHtml
function fnEscapeHtml (string) { 
	var entityMap = {
			'&' : '&amp;',
			'<' : '&lt;',
			'>' : '&gt;',
			'"' : '&quot;',
//			"'" : '&#39;',
			"'" : '&apos;',
			'/' : '&#x2F;',
			'`' : '&#x60;',
			'=' : '&#x3D;'
	};
	return String(string).replace(/[&<>"'`=\/]/g, function (s) { return entityMap[s]; }); 
}
// unescapeHtml
function fnUnescapeHtml (string) { 
	var entityMap = {
			'&amp;': '&', 
			'&lt;': '<', 
			'&gt;': '>', 
			'&quot;': '"', 
//			'&#39;': "'",
			'&apos;': "'",
			'&#x2F;': '/', 
			'&#x60;': '`', 
			'&#x3D;': '=' 
	};
	var resultStr = string;
	for(var escapeStr in entityMap){
		resultStr = resultStr.replace(new RegExp(escapeStr,'g'),entityMap[escapeStr]);
	}
	return resultStr;
}

//YYYY-MM-DD HH:mm:ss -> YYYY-MM-DDTHH:mm:ss
var formatChangeIe9 = function(strTime){
	var returnVal = strTime;
	var arrStrTime = strTime.split(" ");
	if(arrStrTime.length == 2){
		returnVal = arrStrTime[0]+"T"+arrStrTime[1];
	}
	
	return returnVal;
}

//Back Button 을 위함
function backHistorySave(dataValue , pageId , pageUrl){
	history.pushState(dataValue, pageId, pageUrl);
}

var backControl = function(callbackFunction) {
	window.innerDocClick = false;
	history.pushState({page:"first"},  document.title, location.pathname + '#first');
	window.addEventListener('popstate', function(event) {
		history.pushState({page:"historyChanged"},  document.title, location.pathname + '#changed');
		if (!window.innerDocClick) {
			callbackFunction();
		}
	});

	window.addEventListener('mouseover', function(event) {
		window.innerDocClick = true;
	});

	window.addEventListener('mouseout', function(event) {
		window.innerDocClick = false;
	});
};





/**
 * 팝업(새창)
 * popup.open(url, name, options)
 * ex_ popup.open('/v/comn/popup/index','popup',{width:200, height: 200})
 *     popup.close('popup')
 *     
 * popup.openPost(url, name, options, arg, fnCallback)
 * ex_ popup.open('/v/comn/popup/index','popup',{width:200, height: 200},{data: 'sample1'},function(){})
 *     popup.close('popup')
 */
//var popup
//window.onload = function(){
//	popup = new Popup();
//}

//popup
var Popup = function(options){
	// 팝업 목록
	this.list;
	this.init(options);
};

Popup.prototype.init = function(options){
	this.list = {};
	
}
Popup.open = function(url, name, options){
	// options값 추출
	var url = url || '';
	var name = name || '_blank';
	var mType = options.mType || '';
	
	// 기본 설정
	var opt = {
		toolbar: 0,
		menubar: 0,
		location: 0,
		status: 0,
		resizable: 1,
		scrollbars: 1,
		width: 100,
		height: 100
	}
	$.extend(opt, options)
	
	var specs = Popup.convtOptionToQuery(opt);
	if(mType == 'post'){
		var win = window.open('', name, specs);
	}else{
		var win = window.open(url, name, specs);
	}
	
	return win;
	
}
//팝업 열기
Popup.prototype.open = function(url, name, options, fnCallback){
	var _this = this

	// 기존에 띄어진 팜업 제거.
	this.remove(name);
	
	// 팝업 호출
	var win = Popup.open(url, name, options);
	// 콜백 선언
	win.fnCallback = fnCallback;
	win.onload = function(e){
		_this.add(name, win);
		Popup.setAutoSize(win);
		win.document.body.scroll = "auto";
	}
	// 팝업을 닫을 경우 리스트에서 제거
	win.onbeforeunload = function(e){
		_this.remove(name);
	}
	
}
// 팝업 생성(post)
Popup.prototype.openPost = function(url, name, options, arg, fnCallback){
	var _this = this;
	if(!options) options = {};
	options.mType = 'post';
	// 기존 중복된 form 제거.
	var $beforeForm = $('from[target='+name+']');
	if($beforeForm.length > 0){
		$beforeForm.remove();
	}
	// 기존 list 제거
	this.remove(name);
	
	// post전송을 위한 form 만들기.
	var $form = $('<form/>',{
		target: name,
		action: url,
		method: 'post',
		name: name,
		style: 'display:none;'
	})
	
	for(key in arg){
		var $input = $('<input/>',{
			type: 'text',
			name: key,
			value: arg[key]
		})
		$form.append($input);
	}
	$('body').append($form);
	// 팝업 생성
	var win = Popup.open(url, name, options);
	
	// 부모창에 데이터 전송할 콜백함수 셋팅
	win.fnCallback = fnCallback;

	// 팝업 onload 이벤트
	win.onload = function(e){
		// 팝업 리스트 등록
		_this.add(name, win);
		// 가운데 표출
		// TODO 멀티 화면일 경우 정렬에 대하여 에로사항이 있음.
		Popup.setAutoSize(win);
		win.document.body.scroll = "auto";
	}
	// 팝업 닫기전 실행 이벤트
	win.onbeforeunload = function(e){
		// 팝업 리스트 해당 정보 제거.
		_this.remove(name);
		$form.remove();
	}
	// 해당 팝업에 submit 결과 전송
	$form.submit();
}
//팝업 리스트 등록
Popup.prototype.add = function(name, win){
	this.list[name] = win;
}
//팝업 리스트 제거 (닫기 포함)
Popup.prototype.remove = function(name){
	if(this.list.hasOwnProperty(name)){
		var win = this.list[name];
		this.close(name);
		delete this.list[name];
	}
}
//팝업 닫기
Popup.prototype.close = function(name){
	if(this.list.hasOwnProperty(name)){
		var win = this.list[name];
		win.close();
	}
}

//팝업 사이즈 설정
Popup.setAutoSize = function(window){
	
	var document = window.document
	
	var thisX;
	var thisY;
	var maxThisX;
	var maxThisY;
	var marginY;
	
	thisX			= parseInt(document.body.scrollWidth);
	thisY			= parseInt(document.body.scrollHeight);
	maxThisX		= screen.width - 50;
	maxThisY		= screen.height - 50;
	marginY			= 0;
	
	// 브라우저별 높이 조절.
	if(navigator.userAgent.indexOf("MSIE 6") > 0){
		marginY		= 45;		// IE 6.x
	}else if(navigator.userAgent.indexOf("MSIE 7") > 0){
		marginY		= 75;		// IE 7.x
	}else if(navigator.userAgent.indexOf("Firefox") > 0){
		marginY		= 50;		// FF
	}else if(navigator.userAgent.indexOf("Opera") > 0){
		marginY		= 30;		// Opera
	}else if(navigator.userAgent.indexOf("Netscape") > 0){
		marginY		= -2;		// Netscape
	}

	if(thisX > maxThisX){
		window.document.body.scroll		= "yes";
		thisX							= maxThisX;
	}
	if (thisY > maxThisY - marginY){
		window.document.body.scroll		= "yes";
		thisX							+= 19;
		thisY							= maxThisY - marginY;
	}
	  
	window.resizeTo(thisX+10, thisY+marginY);

	  // 센터 정렬
	var windowX;
	var windowY;
	
	windowX			= (screen.width - (thisX+10))/2;
	windowY			= (screen.height - (thisY+marginY))/2 - 20;
	
	window.moveTo(windowX,windowY);
}
//팝업 가운데 설정
Popup.setCenter = function(window){
	var document = window.document
	
	var thisX;
	var thisY;
	var maxThisX;
	var maxThisY;
	var marginY;
	
	thisX			= parseInt(document.body.scrollWidth);
	thisY			= parseInt(document.body.scrollHeight);
	maxThisX		= screen.width - 50;
	maxThisY		= screen.height - 50;
	marginY			= 0;
	
	// 브라우저별 높이 조절.
	if (navigator.userAgent.indexOf("MSIE 6") > 0){
		marginY		= 45;		// IE 6.x
	}else if(navigator.userAgent.indexOf("MSIE 7") > 0){
		marginY		= 75;		// IE 7.x
	}else if(navigator.userAgent.indexOf("Firefox") > 0){
		marginY		= 50;		// FF
	}else if(navigator.userAgent.indexOf("Opera") > 0){
		marginY		= 30;		// Opera
	}else if(navigator.userAgent.indexOf("Netscape") > 0){
		marginY		= -2;		// Netscape
	}

	if (thisX > maxThisX){
		// window.document.body.scroll = "yes";
		thisX							= maxThisX;
	}

	if (thisY > maxThisY - marginY){
		// window.document.body.scroll = "yes";
		thisX							+= 19;
		thisY							= maxThisY - marginY;
	}

	// 센터 정렬
	var windowX;
	var windowY;

	windowX			= (screen.width - (thisX+10))/2;
	windowY			= (screen.height - (thisY+marginY))/2 - 20;
	
	window.moveTo(windowX,windowY);
}
//옵션 변경.
Popup.convtOptionToQuery = function(options){
	var query = '';
	if(!(options instanceof Object)) {
		console.log('popup of options type is wrong data')
		return query;
	}
	var keys = Object.keys(options);
	keys.pop('mType');
	if(keys.length > 0){
		query = keys.map(function(key,index,arr){
			return key+'='+options[key]
		}).join(',')
	}
	return query;
}
var popup = new Popup();






// ajax postJSON
$.postJSON = function(url, data, successCallback, errorCallback){
	if($.isFunction(data)){
		successCallback = data;
		errorCallback = successCallback;
		data = {};
	}
	
	if(typeof(data) == "object"){
		data = JSON.stringify(data);
	}

	if(url.indexOf('/rest') > -1){
		if(url.indexOf('?') > -1){
			url += Crt.Param.Get.progrmId('&');
		}else{
			url += Crt.Param.Get.progrmId();
		}
	}
	
	url = contextPath + url
	
	
	return $.ajax({
		url: url,
        type: "POST",
        contentType:"application/json; charset=utf-8",
        data: data,
        success: successCallback,
        error: errorCallback
	})
}


// 공통 코드...
var Code = function(){}
Code.Rest = function(){}
Code.Rest.Ok = '00000';
// 현재 페이지 정보
var Crt = function(){};
Crt.Page = function(){};
Crt.Page.Info = function(){
	return Utils.convtFormToObject($('#comnMenuInfo'));
}
Crt.Param = function(){};
Crt.Param.Get = function(){};
Crt.Param.Get.progrmId = function(prefixStr){
	var prefixStr = prefixStr || '?';
	var menuInfo = Utils.convtFormToObject($('#comnMenuInfo'));
	var getParam = '';
	if(menuInfo && menuInfo.progrmId){
		getParam = prefixStr+'progrmId='+menuInfo.progrmId;
	}
	return getParam;
}
//escapeHtml
function fnEscapeHtml (string) { 
	var entityMap = {
			'&' : '&amp;',
			'<' : '&lt;',
			'>' : '&gt;',
			'"' : '&quot;',
//			"'" : '&#39;',
			"'" : '&apos;',
			'/' : '&#x2F;',
			'`' : '&#x60;',
			'=' : '&#x3D;'
	};
	return String(string).replace(/[&<>"'`=\/]/g, function (s) { return entityMap[s]; }); 
}
// unescapeHtml
function fnUnescapeHtml (string) { 
	var entityMap = {
			'&amp;': '&', 
			'&lt;': '<', 
			'&gt;': '>', 
			'&quot;': '"', 
//			'&#39;': "'",
			'&apos;': "'",
			'&#x2F;': '/', 
			'&#x60;': '`', 
			'&#x3D;': '=' 
	};
	var resultStr = string;
	for(var escapeStr in entityMap){
		resultStr = resultStr.replace(new RegExp(escapeStr,'g'),entityMap[escapeStr]);
	}
	return resultStr;
}
//출발지 도착지 호출
function cityDom(type){
	$.ajax({
        type:"GET",
        url:"/get/city",
        dataType : "json",
        success: function(data){
            var countryList = data.jsonData;
            if(countryList.length > 0){
            	var $root = $('#countryList');
            	var $divLine = $('<div/>',{
            		'class' : 'line point_back'
            	});
            	var $divCity = $('<div/>',{
            		'class' : 'city'
            	});
            	var $rootUl = $('<ul/>',{});
            	$root.empty();
            	$root.append($divLine);
            	$root.append($divCity);
            	$divCity.append($rootUl);
            	for(var i =0; i < countryList.length; i++){
            		var $countryLi = $('<li/>',{});
            		var $p = $('<p/>',{
            			'text' : countryList[i].countryNm,
            			'id' : countryList[i].countryCd
            		});
            		var $ul = $('<ul/>',{
            			'class' : 'citylist'
            		});
            		$rootUl.append($countryLi);
            		$countryLi.append($p);
            		$countryLi.append($ul);
            		var cityList = countryList[i].cityList;
            		if(cityList.length > 0){
            			for(var j=0; j < cityList.length; j++){
            				var $cityLi = $('<li/>',{});
            				$ul.append($cityLi);
            				var $a = $('<a/>',{
            					'name' : cityList[j].cityCd,
            					'text' : cityList[j].cityNm +'('+ cityList[j].cityCd +')'
            				});
            				$a.click(function(){
            					var $city; 
            					if(type == 'stCity'){
            						$city = $("#stCity");
                				}else{
                					$city = $("#endCity");
                				}
            					$city.val(this.text);
            					$city.attr('name',this.name);
            				});
            				$cityLi.append($a);
            			}
            		}
            	}
            	var $div = $('<div/>',{
    				'class' : 'layer_btn'
    			});
    			var $okBtn = $('<button/>',{
    				'type' : 'button',
    				'id' : 'layer_close',
    				'class' : 'btn btn-sm pink_btn',
    				'text' : '확인'
    			});
    			var $nextBtn = $('<button/>',{
    				'type' : 'button',
    				'class' : 'btn btn-sm pink_btn',
    				'text' : '다음'
    			});
    			$okBtn.click(function(){
    				$('.layer_bg').hide();
    			   	$(".pa").css('overflow','initial');
    			   	$('.ticketing_wrap').removeClass('on');
    			   	$('.ticketing_layer').css('display','none');
    			});
    			$nextBtn.click(function(){
    				if(type == 'stCity'){
    					$("#stCity")
    					if($("#stCity").attr('name')==""){
    						alert("출발도시를 선택해 주세요");
    						return;
    					}else{
    						$("#endCity").trigger('click');
    					}
    				}else{
    					if($("#endCity").attr('name')==""){
    						alert("도착도시를 선택해 주세요");
    						return;
    					}else{
    						$("#search_checkin").trigger('click');
    					}
    				}
    			});
    			$root.append($div);
    			$div.append($okBtn);
    			$div.append($nextBtn);
            }
        },
        error: function(xhr, status, error) {
            alert(error);
        }  
    });
};