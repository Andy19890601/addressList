$(document).ready(function(){
var currentYear = new Date().getFullYear();
    var select = document.getElementById("stuEnrollment");
    var select_1 = document.getElementById("stuEnrollment_1");
    var select_2 = document.getElementById("stuEnrollment_2");
    var select_3 = document.getElementById("stuEnrollment_3");
    
    for (var i = 2002; i <= currentYear; i++) {
    	if(select!=null){
	    	var theOption = document.createElement("option");
	        theOption.innerHTML = i + "年";
	        theOption.value = i;
	        select.appendChild(theOption);
    	}
    	if(select_1!=null){
	    	var theOption_1 = document.createElement("option");
	       	theOption_1.innerHTML = i + "年";
	        theOption_1.value = i;
	        select_1.appendChild(theOption_1);
    	}
      if(select_2!=null){
	    	var theOption_2 = document.createElement("option");
	       	theOption_2.innerHTML = i + "年";
	        theOption_2.value = i;
	        select_2.appendChild(theOption_2);
    	}
      if(select_3!=null){
	    	var theOption_3 = document.createElement("option");
	       	theOption_3.innerHTML = i + "年";
	        theOption_3.value = i;
	        select_3.appendChild(theOption_3);
    	}
        }
    
    
//$("#topSubject").change(function(){
//$("#topSubject option").each(function(i,o){
//if($(this).attr("selected"))
//{
//$(".stuMajor").hide();
//$(".stuMajor").eq(i).show();
//}
//});
//});
//$("#topSubject").change(); 

     $('#stuEmail').blur(function(){
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;    
		var stuEmail = $('#stuEmail').val();
		if(!reg.test(stuEmail))
			{
				$('#error2').fadeIn(1000);
				setTimeout("$('#error2').fadeOut(1000);",2000);		
			}
		
	});		
    
$('#stuInfoSubmit').click(function(){
			
			var stuEmail = $('#stuEmail').val().replace(/\s+/g,"");
			if(stuEmail=="")
			{				
				$('#error1').fadeIn(1000);
				setTimeout("$('#error1').fadeOut(1000);",2000);				
				return false;
			}
			
		var provience = $('select:eq(2)').val();
		var city = $('select:eq(3)').val();
		var county =  $('select:eq(4)').val();		
		var hometown = provience+','+city+','+county;
		$('#studentHomeTown').val(hometown);
		
		var provience2 = $('select:eq(5)').val();
		var city2 = $('select:eq(6)').val();
		var county2 =  $('select:eq(7)').val();
		var presentaddress = provience2+','+city2+','+county2;
		$('#studentPresentAddress').val(presentaddress);	
		
		var value = $('#stuDescription').val();
		if(value=='填写擅长领域或求职、内推、招聘等信息140字以内'){
			$('#stuDescription').val('');
		}
		$('form[id=stuInfoForm]').submit();
		
		});

});

function textdown(e) {
    textevent = e;
    if (textevent.keyCode == 8) {
        return;
    }
    if (document.getElementById('stuDescription').value.length >= 140) {
        alert("已达到140字上限！")
        if (!document.all) {
            textevent.preventDefault();
        } else {
            textevent.returnValue = false;
        }
    }    
};
function textup() {
    var s = document.getElementById('stuDescription').value;
    //判断ID为text的文本区域字数是否超过100个 
    if (s.length > 140) {
        document.getElementById('textarea').value = s.substring(0, 100);
    }
}


