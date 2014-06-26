$(document).ready(function(){
   
    $('.signin').click(function(){
    	
      if ($(".drop").is(':hidden')) {    	  
        $(".drop").slideDown().animate({height:'250px'},{queue:false, duration:600, easing: 'easeOutBounce'}),
        $('#link').removeClass('signin').addClass('signinclick');
      }
      else {
        $('.drop').slideUp(),
        $('#link').removeClass('signinclick').addClass('signin');
      }      
      return false;
    });
    $('.drop').click(function(e) {
      e.stopPropagation();
    });
    $(document).click(function() {
      $('.drop').fadeOut('fast'),
      $('#link').removeClass('signinclick').addClass('signin');
    });
    
    $('#submitConfirm').click(function(){
			 var username = $('#userID').val().replace(/\s+/g,"");
			var password = $('#passWord').val().replace(/\s+/g,"");
			
		//	alert("username="+username);
		//	alert("password="+password);
			if(username==""||password=="")
			{
				if(username==""||password=="")
				{
					$('#error0').fadeIn(1000);
					setTimeout("$('#error0').fadeOut(1000);",2000);
				}
				
				return false;
			}
			
		//	isRightCode(0);
		$('form[id=loginForm]').submit();
		
		});
    

});
 function loadPage(){
	$('.signin').trigger("click");}
