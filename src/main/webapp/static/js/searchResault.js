$(function () {

	$('.toDetailDiv').click(function(){
		var index = $(this).attr('id');
		var ar = index.split('_');
		index = ar[1];
	//	alert('index='+index);
		$('.singleDetailDiv').css('display','none');
	    $('#singleDetail_'+index).css('display','block');
	  
  });
	
		$('#prePage').click(function(){
			var num = $('#pageNumCopyInput').val();
			var arr = num.split(",");
			var pageNum = arr[0];
			var pageNumTotal = arr[1];
			alert(pageNum+","+pageNumTotal);
			if(pageNum == 1)
				return false;
			pageNum--;
			$('#newForm').attr("action","/student/search?pageNum="+pageNum);
			
			$('#newForm').submit();
		});
		$('#nextPage').click(function(){
			var num = $('#pageNumCopyInput').val();
			var arr = num.split(",");
			var pageNum = arr[0];
			var pageNumTotal = arr[1];
			alert(pageNum+","+pageNumTotal);
			if(pageNum == pageNumTotal)
				return false;
			pageNum++;
			$('#newForm').attr("action","/student/search?pageNum="+pageNum);
			
			$('#newForm').submit();
		});
		
		$('#pageNumSelect').change(function(){
			alert($('#pageNumSelect').val());
			var pageNum = $('#pageNumSelect').val();
			$('#newForm').attr("action","/student/search?pageNum="+pageNum);
		
			$('#newForm').submit();
		
		});
	//	
	
//  $('.toDetailDiv:eq(0)').click(function(){
//	 	//alert($('.toDetailDiv').attr('id'));
//	//  alert($(this).html());
//	  
//	  $('.singleDetailDiv').css('display','none');
//	  $('#singleDetail_11').css('display','block');
//	  
//  });
//  $('.toDetailDiv:eq(1)').click(function(){
//	 	//alert($('.toDetailDiv').attr('id'));
//	   $('.singleDetailDiv').css('display','none');
//	   $('#singleDetail_12').css('display','block');
//	  
//	  
//  });
 });
  