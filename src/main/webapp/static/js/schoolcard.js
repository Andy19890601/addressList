(function($){
$.extend({
ms_DatePicker: function (options) {
            var defaults = {
                YearSelector: "#sel_year",
                MonthSelector: "#sel_month",
                DaySelector: "#sel_day",
                FirstText: "--",
                FirstValue: 0
            };
            var opts = $.extend({}, defaults, options);
            var $YearSelector = $(opts.YearSelector);
            var $MonthSelector = $(opts.MonthSelector);
            var $DaySelector = $(opts.DaySelector);
            var FirstText = opts.FirstText;
            var FirstValue = opts.FirstValue;

            // 初始化
            var str = "<option value=\"" + FirstValue + "\">" + FirstText + "</option>";
            $YearSelector.html(str);
            $MonthSelector.html(str);
            $DaySelector.html(str);

            // 年份列表
            var yearNow = new Date().getFullYear();
            for (var i = yearNow; i >= 1900; i--) {
                var yearStr = "<option value=\"" + i + "\">" + i + "</option>";
                $YearSelector.append(yearStr);
            }

            // 月份列表
            for (var i = 1; i <= 12; i++) {
                var monthStr = "<option value=\"" + i + "\">" + i + "</option>";
                $MonthSelector.append(monthStr);
            }

            // 日列表(仅当选择了年月)
            function BuildDay() {
                if ($YearSelector.val() == 0 || $MonthSelector.val() == 0) {
                    // 未选择年份或者月份
                    $DaySelector.html(str);
                } else {
                    $DaySelector.html(str);
                    var year = parseInt($YearSelector.val());
                    var month = parseInt($MonthSelector.val());
                    var dayCount = 0;
                    switch (month) {
                        case 1:
                        case 3:
                        case 5:
                        case 7:
                        case 8:
                        case 10:
                        case 12:
                            dayCount = 31;
                            break;
                        case 4:
                        case 6:
                        case 9:
                        case 11:
                            dayCount = 30;
                            break;
                        case 2:
                            dayCount = 28;
                            if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)) {
                                dayCount = 29;
                            }
                            break;
                        default:
                            break;
                    }

                    for (var i = 1; i <= dayCount; i++) {
                        var dayStr = "<option value=\"" + i + "\">" + i + "</option>";
                        $DaySelector.append(dayStr);
                    }
                }
            }
            $MonthSelector.change(function () {
                BuildDay();
            });
            $YearSelector.change(function () {
                BuildDay();
            });
        } // End ms_DatePicker
});
})(jQuery);

$(function(){
	var currentYear = new Date().getFullYear();
   
    var select_1 = document.getElementById("stuEnrollment_1");
    var select_2 = document.getElementById("stuEnrollment_2");
    var select_3 = document.getElementById("stuEnrollment_3");
    
    for (var i = 2002; i <= currentYear; i++) {
    	
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
	
	//***************************
	$('#stuEmail').blur(function(){
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;    
		var stuEmail = $('#stuEmail').val();
		if(!reg.test(stuEmail))
			{
				$('#error3').fadeIn(1000);
				setTimeout("$('#error3').fadeOut(1000);$('#stuEmail').val('');",500);	
				//setTimeout("",2000);	
				
			}
		
	});		
    //******************************
    
    
		$('#schoolCardFormSubmit').click(function(){

		//******将生日写入input**************//			
		var year = $('select:eq(0)').val();
		var month = $('select:eq(1)').val();
		var day =  $('select:eq(2)').val();		
		var birthday = year+','+month+','+day;
	//	alert(birthday);
		$('#stuBirthday').val(birthday);
		
			
		//*******检测必填项不为空**********
			
			var stuID = $('#stuID').val().replace(/\s+/g,"");
			var stuName = $('#stuName').val().replace(/\s+/g,"");
			var stuCompany = $('#stuCompany').val().replace(/\s+/g,"");
			var stuEmail = $('#stuEmail').val().replace(/\s+/g,"");
			var stuContactAddress = $('#stuContactAddress').val().replace(/\s+/g,""); 
			var stuPostalCode = $('#stuPostalCode').val().replace(/\s+/g,""); 
			var stuCall = $('#stuCall').val().replace(/\s+/g,"");  
			if((stuID=='')||(stuName='')||(stuCompany='')||(stuEmail='')||(stuContactAddress='')||(stuPostalCode='')||(stuCall=''))
				{
					if(stuID=="")
					{				
						$('#error0').fadeIn(1000);
						setTimeout("$('#error0').fadeOut(1000);",1000);	
					}
					if(stuName=="")
					{				
						$('#error1').fadeIn(1000);
						setTimeout("$('#error1').fadeOut(1000);",1000);	
					}
					if(stuCompany=="")
					{				
						$('#error2').fadeIn(1000);
						setTimeout("$('#error2').fadeOut(1000);",1000);	
					}					
					if(stuEmail=="")
					{				
						$('#error3').fadeIn(1000);
						setTimeout("$('#error3').fadeOut(1000);",1000);
					}
					if(stuContactAddress=="")
					{				
						$('#error5').fadeIn(1000);
						setTimeout("$('#error5').fadeOut(1000);",1000);	
					}
					if(stuPostalCode=="")
					{				
						$('#error6').fadeIn(1000);
						setTimeout("$('#error6').fadeOut(1000);",1000);	
					}
					if(stuCall=="")
					{				
						$('#error7').fadeIn(1000);
						setTimeout("$('#error7').fadeOut(1000);",1000);	
					}
				return false;
				}
			
	
		//return false;
		var submit = confirm("审核期间信息不能修改，确认无误提交？")
		if(submit!=true)
			{
			 return false;
			}
		$('form[id=schoolCardForm]').submit();
		
		});
	
});

