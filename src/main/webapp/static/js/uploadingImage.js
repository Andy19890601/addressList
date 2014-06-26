$(function(){
	

	
	$('#uploadImgForm').submit(function(){
		
		var picname = $('#uploadImgInput').val().toLowerCase();
		
		var regJPG=/.*\.jpg$|.*\.png$|.*\.gif$/ ; /* Jquery正则表示*/
	
		if(!regJPG.test(picname))
			{	
				$('#error0').fadeIn(1000);
				setTimeout("$('#error0').fadeOut(1000);",2000);
				$('#uploadImgInput').val("");
				return false;
			}
		  // alert( $('#uploadImgForm').serialize());
			$('#uploadImgInput').css("display","none");
			$('#loadingImg').css("display","block");
			$.post($('#uploadImgForm').attr('action'), $('#uploadImgForm').serialize(), function(data,status){
			//	alert(data);
				$('#userHeadImg').attr("src",data);
				$('#uploadImgInput').css("display","block");
				$('#loadingImg').css("display","none");
				
				});
			return false;//千万别忘了这句话啊..因为是异步调用所以要return false
			});
});