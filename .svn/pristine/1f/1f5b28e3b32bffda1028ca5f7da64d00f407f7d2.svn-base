$(document).ready(function() {

	$.ajax({
        url:  '/rest/home/mmember/memberView',
        type: 'POST',
        success: function(result) {
        	console.log(result)
        		$('#id').val(result.id);
        		$('#password').val(result.password);
        		$('#phone').val(result.phone);
        		$('#sample6_postcode').val(result.address1);
        		$('#sample6_address').val(result.address2);
        		$('#sample6_detailAddress').val(result.address3);
        		$('#sample6_extraAddress').val(result.address4);


        },
        error: function(){
            alert("error");
        }
    });

});