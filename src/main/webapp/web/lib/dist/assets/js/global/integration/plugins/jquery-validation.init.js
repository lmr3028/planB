var valGetParentContainer = function(element) {
    var element = $(element);

    if ($(element).closest('.form-group-sub').length > 0) {
        return $(element).closest('.form-group-sub')
    } else if ($(element).closest('.bootstrap-select').length > 0) {
        return $(element).closest('.bootstrap-select')
    } else {
        return $(element).closest('.form-group');
    }
}

$.validator.setDefaults({
    errorElement: 'div', //default input error message container
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",  // validate all fields including form hidden input
    onkeyup: true,
    errorPlacement: function(error, element) { // render error placement for each input type
        var element = $(element);

        var group = valGetParentContainer(element);
        var help = group.find('.form-text');

        if (group.find('.valid-feedback, .invalid-feedback').length !== 0) {
            return;
        }

        element.addClass('is-invalid');
        error.addClass('invalid-feedback');

        if (help.length > 0) {
            help.before(error);
        } else {
            if (element.closest('.bootstrap-select').length > 0) {     //Bootstrap select
                element.closest('.bootstrap-select').wrap('<div class="bootstrap-select-wrapper" />').after(error);
            } else if (element.closest('.input-group').length > 0) {   //Bootstrap group
            	if(element.next('div').hasClass("input-group-append")){
            		element.next('div').after(error);
            	} else {
            		element.after(error);
            	}
            } else {                                                   //Checkbox & radios
                if (element.is(':checkbox')) {
                    element.closest('.kt-checkbox').find('> span').after(error);
                } else {
                	if(element.parent().hasClass('kt-radio')) {
                		element.parents('.form-group').after(error)
                	}else{
                		element.after(error);
                	}
                }
            }
        }
    },

//    highlight: function(element) { // hightlight error inputs
//        var group = valGetParentContainer(element);
//        group.addClass('validate');
//        group.addClass('is-invalid');
//        $(element).removeClass('is-valid');
//    },
//
//    unhighlight: function(element) { // revert the change done by hightlight
//        var group = valGetParentContainer(element);
//        group.removeClass('validate');
//        group.removeClass('is-invalid');
//        $(element).removeClass('is-invalid');
//    },
//
//    success: function(label, element) {
//        var group = valGetParentContainer(element);
//        group.removeClass('validate');
//        group.find('.invalid-feedback').remove();
//    }
});

$.validator.addMethod("email", function(value, element) {
    if (/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(value)) {
        return true;
    } else {
        return false;
    }
}, "이메일 형식이 옳바르지 않습니다.");

$.validator.addMethod("phone",  function( value, element ) {
	return this.optional(element) ||  /^(?([0-9]{3})\)?([ .-]?)([0-9]{4})\2([0-9]{4})/.test(value);
});