$(function () {

  //入学年份
	var currentYear = new Date().getFullYear();
    var select = document.getElementById("studentEnrollment");
    if(select!=null){
    	
    	  for (var i = 2002; i <= currentYear; i++) {
        var theOption = document.createElement("option");
        theOption.innerHTML = i + "年";
        theOption.value = i;
        select.appendChild(theOption);
        }
    	
    }
  
  //navlist
  $('.navList').on('click', '.nav-btn', function(event) {
	  //$('#expandZone').css('display','block');
	
    if($(this).hasClass('btn-active')){
      $('#expandZone #closeBtn').click();
      return false;
    }
    var curIndex = $(this).index();
        mlValue = '-' + curIndex * 100 + '%';
    if( $('#expandZone').hasClass('active') ){
      $('#expandZone .download').animate({marginLeft: mlValue});
    }
    else{
      $('#expandZone .download').css({marginLeft: mlValue});
    }
    var device = $(this).data('device');
    $(this).addClass('btn-active').siblings().removeClass('btn-active');
    $(device).addClass('item-active').siblings().removeClass('item-active');
    $('#expandZone').animate({height: '155px'}).addClass('active');
 //   $('.navlist-wrap').animate({height: '185px'});
    return false;
  });

  $('#expandZone #closeBtn').on('click', function() {
    $('#expandZone').animate({height: '0px'}, function () {
      $(this).removeClass('active');
      $('#navList .btn-active').removeClass('btn-active');
      $('.navlist-wrap').animate({height: '30px'})
    });
    return false;
  });
  
  $('#stuSearch').click(function(){	 
	  	var provience = $('select:eq(2)').val();
		var city = $('select:eq(3)').val();
		var county =  $('select:eq(4)').val();		
		var hometown = provience+','+city+','+county;
		if(provience=='请选择')
			hometown = '';
		$('#studentHomeTown').val(hometown);
		
		var provience2 = $('select:eq(5)').val();
		var city2 = $('select:eq(6)').val();
		var county2 =  $('select:eq(7)').val();
		var presentaddress = provience2+','+city2+','+county2;
		if(provience2=='请选择')
			presentaddress = '';
		$('#studentPresentAddress').val(presentaddress);	
	
	 	$('#findStu').trigger("click");	  
	 // return false;
  });
  
  
  $('.nav-home').click(function(){
	 window.location.href="homepage.jsp"
  });
});