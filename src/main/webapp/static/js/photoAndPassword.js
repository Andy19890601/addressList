$(document).ready(function(){
	
	$('#photoAndPwdSubmit').click(function(){	
		
		if( $('#changePwdCheckBox').is(':checked'))
			{
				window.location.href="homepage.jsp";
			//	return;
			}
		
		var newPwd = $('#newPwd').val();
		var confirmPwd = $('#confirmPwd').val();
		if(newPwd==''||confirmPwd=='')
			{				
				$('#error1').fadeIn(1000);
				setTimeout("$('#error1').fadeOut(1000)",2000);
				return false;
			}
		if(newPwd!=confirmPwd)
			{
				
				$('#error').fadeIn(1000);
				setTimeout("$('#error').fadeOut(1000)",2000);
				return false;
			}
	});
	
	$('#changePwdCheckBox').click(function(){
		
		
		if($('#changePwdCheckBox').is(":checked") == true)
			{
				$('#newPwd').attr("disabled","disabled");
				$('#confirmPwd').attr("disabled","disabled");
			}
		else{
			$('#newPwd').removeAttr("disabled");
				$('#confirmPwd').removeAttr("disabled");
			}
		
	});
	
});