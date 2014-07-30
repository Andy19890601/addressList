$(function () {

	$('.toDetailDiv').click(function(){
		var index = $(this).attr('id');
		var ar = index.split('_');
		index = ar[1];
		//	alert('index='+index);
		$('.singleDetailDiv').css('display','none');
		$('#singleDetail_'+index).css('display','block');

	});


	$('.sendMessageDiv').click(function(){
		var index = $(this).attr('id');
		var ar = index.split('_');
		index = ar[1];		
		name =  $('#result_'+index+'_information #userNameDiv span:eq(0)').text();
		stuid =$('#result_'+index+'_information #userNameDiv span:eq(2)').text();
		//	alert('name='+ name+',id='+stuid);
		//	$('.singleDetailDiv').css('display','none');
		//    $('#singleDetail_'+index).css('display','block');
		$('.MessageContainerDIV').css('display','block');
		var windowWidth = $(window).width();
		var w = windowWidth -  $('.MessageDIV').width();
		w = w/2;
		$('.MessageDIV').css('margin-left',w);
		$('#messageForm span:eq(1)').text(name);
		$('#messageForm input:eq(1)').val(name);
		$('#messageForm input:eq(0)').val(stuid);
		return false;

	}); 

	$(window).scroll(function() { 
		var top = $(window).scrollTop(); 
		var left= $(window).scrollLeft(); 
		$(".MessageContainerDIV").css({ left:left + "px", top: top + "px" }); 

		//alert(h);
	});
	//取消发送
	$('#sendCancle').click(function(){
		$('.MessageContainerDIV').css('display','none');		
	});

	// 点击前一页，后一页
	$('#prePage').click(function(){
		var pageNum = $('#index').val();
		alert(pageNum);
		var pageNumTotal = $('#count').val();
		if(pageNum == 0)
			return false;
		pageNum--;
		$('#newForm').attr("action","/search?index="+pageNum);
		$('#newForm').submit();
	});
	$('#nextPage').click(function(){
		var pageNum = $('#index').val();
		var pageNumTotal = $('#count').val();
		if(pageNum == (pageNumTotal-1))
			return false;
		pageNum++;
		$('#newForm').attr("action","/search?index="+pageNum);

		$('#newForm').submit();
	});

	$('#pageNumSelect').change(function(){
		var pageNum = $('#pageNumSelect').val();
		$('#newForm').attr("action","/search?index="+pageNum);

		$('#newForm').submit();

	});
	
	$('.singleResultDiv .toDetailDiv').click(function(){
		var num = $('.singleResultDiv .toDetailDiv').index(this);
		alert($('#sendMsg_' + num).attr("title"));
		var stuName =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_stuName').text();
		var stuID =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_stuID').val();
		var newsID =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_newsID').val();
		
	});
	//	

//	$('.toDetailDiv:eq(0)').click(function(){
//	//alert($('.toDetailDiv').attr('id'));
//	//  alert($(this).html());

//	$('.singleDetailDiv').css('display','none');
//	$('#singleDetail_11').css('display','block');

//	});
//	$('.toDetailDiv:eq(1)').click(function(){
//	//alert($('.toDetailDiv').attr('id'));
//	$('.singleDetailDiv').css('display','none');
//	$('#singleDetail_12').css('display','block');


//	});
});
