$(document).ready(function(){

$('#teaInfoSubmit').click(function(){
			
			var teaEmail = $('#teaEmail').val().replace(/\s+/g,"");
			if(teaEmail=="")
			{				
				$('#error1').fadeIn(1000);
				setTimeout("$('#error1').fadeOut(1000);",2000);				
				return false;
			}
			
		$('form[id=teaInfoForm]').submit();
		
		});

});

$('#teaEmail').blur(function(){
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;    
		var stuEmail = $('#stuEmail').val();
		if(!reg.test(stuEmail))
			{
				$('#error2').fadeIn(1000);
				setTimeout("$('#error2').fadeOut(1000);",2000);		
			}
		
	});	

function textdown(e) {
    textevent = e;
    if (textevent.keyCode == 8) {
        return;
    }
    if (document.getElementById('teaDescription').value.length >= 140) {
        alert("已达到140字上限！")
        if (!document.all) {
            textevent.preventDefault();
        } else {
            textevent.returnValue = false;
        }
    }    
};
function textup() {
    var s = document.getElementById('teaDescription').value;
    //判断ID为text的文本区域字数是否超过100个 
    if (s.length > 140) {
        document.getElementById('textarea').value = s.substring(0, 100);
    }
}