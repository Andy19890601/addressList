$(function(){
	var windowWidth = $(window).width();
	//alert(windowWidth);
	var left = windowWidth - $('.news_containerDIV').width();
	left = left/2;
	$('.news_containerDIV').css('margin-left',left);


	$('#prePage').click(function(){
		var urlstr = window.location.href;
		var requestUrl = "";
		var startIndex = urlstr.lastIndexOf('/');
		var endIndex = urlstr.indexOf('?');
		if(endIndex != -1)
			requestUrl = urlstr.substring(startIndex+1, endIndex);
		else{
			var arr = urlstr.split('/');
			requestUrl = arr[3];
		}
		var pageNum = $('#indexInput').val();
		var pageNumTotal = $('#pageNumTotalInput').val();
//		alert(pageNum+","+pageNumTotal);
		var action = $('#actionUrl').attr("href");
		//	alert(action);
		if(pageNum == 0)
			return false;
		pageNum--;
		var actionUrl = "/" + requestUrl + "?index=" + pageNum;
		$('#newForm').attr("action", actionUrl);		
		$('#newForm').submit();
	});
	$('#nextPage').click(function(){
		var urlstr = window.location.href;
		var requestUrl = "";
		var startIndex = urlstr.lastIndexOf('/');
		var endIndex = urlstr.indexOf('?');
		if(endIndex != -1)
			requestUrl = urlstr.substring(startIndex+1, endIndex);
		else{
			var arr = urlstr.split('/');
			requestUrl = arr[3];
		}
		var pageNum = $('#indexInput').val();
		var pageNumTotal = $('#pageNumTotalInput').val();
		//	alert(pageNum+","+pageNumTotal);
		if(pageNum == (pageNumTotal-1))
			return false;
		pageNum++;
		var actionUrl = "/" + requestUrl + "?index=" + pageNum;
		$('#newForm').attr("action", actionUrl);
		$('#newForm').submit();
	});

	$('#pageNumSelect').change(function(){
		//	alert($('#pageNumSelect').val());
		var urlstr = window.location.href;
		var requestUrl = "";
		var startIndex = urlstr.lastIndexOf('/');
		var endIndex = urlstr.indexOf('?');
		if(endIndex != -1)
			requestUrl = urlstr.substring(startIndex+1, endIndex);
		else{
			var arr = urlstr.split('/');
			requestUrl = arr[3];
		}
		var pageNum = $('#pageNumSelect').val();
		alert('pageNum=' + pageNum);
		var actionUrl = "/" + requestUrl + "?index=" + pageNum;
		$('#newForm').attr("action", actionUrl);
		$('#newForm').submit();
	});
	//*****************************************

	$(".bottomLineDIV span").click(function(){
		var num = $('.bottomLineDIV span').index(this);
		// mark
		var divTagNum = Math.floor(num/3);
		var stuName =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_stuName').text();
		var stuID =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_stuID').val();
		var newsID =  $('#newsDivId_'+divTagNum+' .topLineDIV .userFromDIV .userFromDIV_newsID').val();
		if(num % 3 == 0){
			$('#markMessageForm input').val(newsID);
			$.post($('#markMessageForm').attr('action'), $('#markMessageForm').serialize(), function(data,status){
				$('#newsDivId_'+divTagNum).fadeOut(1000);		
			});
		}
		// reply
		if(num % 3 == 1){
			$('#replyMessageForm input:eq(2)').val(newsID);
			$('#replyNameSpan').text(stuName);
			$('#replyMessageForm input:eq(1)').val(stuName);
			//设置用户的ID号
			$('#replyMessageForm input:eq(0)').val(stuID);
			$('.MessageContainerDIV').css('display','block');
			var windowWidth = $(window).width();
			var w = windowWidth -  $('.MessageDIV').width();
			w = w/2;
			$('.MessageDIV').css('margin-left',w);		
		}
		// delete
		if(num % 3 == 2){
			//alert(newsID);
			var del = confirm("删除后无法找回，确认要删除吗？");
			if(del==false)
			{
				return false;
			}
			//alert(newsID);
			$('#deleteMessageForm input').val(newsID);
			$.post($('#deleteMessageForm').attr('action'), $('#deleteMessageForm').serialize(), function(data,status){
				$('#newsDivId_'+divTagNum).fadeOut(1000);		
			});
		}
	});


//	$('.bottomLineDIV span:eq(1)').click(function(){
//	var arr = $('.bottomLineDIV span:eq(1)').attr("id").split('_');
//	var replyId = arr[1];
//	var replyName = $("#userFromDivName").text();
//	var replyUserId = $("#userFromDivID").text();
//	$('#replyMessageForm input:eq(2)').val(replyId);
//	$('#replyNameSpan').text(replyName);
//	$('#replyMessageForm input:eq(1)').val(replyName);
//	//设置用户的ID号
//	$('#replyMessageForm input:eq(0)').val(replyUserId);
//	$('.MessageContainerDIV').css('display','block');
//	var windowWidth = $(window).width();
//	var w = windowWidth -  $('.MessageDIV').width();
//	w = w/2;
//	$('.MessageDIV').css('margin-left',w);		
//	});

//	$('.bottomLineDIV span:eq(2)').click(function(){
//	var del = confirm("删除后无法找回，确认要删除吗？");
//	if(del==false)
//	{
//	return false;
//	}
//	var arr = $('.bottomLineDIV span:eq(2)').attr("id").split('_');
//	var deleteId = arr[1];
//	$('#deleteMessageForm input').val(deleteId);
//	//	alert($('#deleteMessageForm input').val());
//	$.post($('#deleteMessageForm').attr('action'), $('#deleteMessageForm').serialize(), function(data,status){
//	$('#newsDivId_'+deleteId).fadeOut(1000);		
//	});
//	});

//	$('.bottomLineSpan reply').click(function(){
//	alert("reply");
//	});

//	$('.bottomLineSpan delete').click(function(){
//	alert("delete");
//	});


//	$('.bottomLineSpan').click(function(){
//	var index = $(this).attr('id');
//	var arr = index.split('_');

//	var num = arr[1];
//	var stuName =  $('#newsDivId_'+num+' .topLineDIV .userFromDIV .userFromDIV_stuName').text();
//	var stuID =  $('#newsDivId_'+num+' .topLineDIV .userFromDIV .userFromDIV_stuID').val();
//	var newsID =  $('#deleteId').val();
//	alert(newsID);
//	if(arr[0]=='reply'){
//	$('#replyMessageForm input:eq(0)').val(stuID);
//	$('#replyMessageForm input:eq(1)').val(stuName);
//	$('#replyMessageForm input:eq(2)').val(newsID);
//	$('#replyNameSpan').text(stuName);
//	$('.MessageContainerDIV').css('display','block');
//	var windowWidth = $(window).width();
//	var w = windowWidth -  $('.MessageDIV').width();
//	w = w/2;
//	$('.MessageDIV').css('margin-left',w);				
//	}
//	else if(arr[0]=='delete'){
//	var del = confirm("删除后无法找回，确认要删除吗？");
//	if(del==false)
//	{
//	return false;
//	}
//	$('#deleteMessageForm input').val(newsID);
//	//	alert($('#deleteMessageForm input').val());
//	$.post($('#deleteMessageForm').attr('action'), $('#deleteMessageForm').serialize(), function(data,status){
//	//	alert(data);
//	//	$('#newsDivId_'+num).css('display','none');
//	$('#newsDivId_'+num).fadeOut(1000);		
//	});

//	return false;
//	}
//	else if(arr[0]=='mark'){
//	$('#markMessageForm input').val(newsID);

//	$.post($('#markMessageForm').attr('action'), $('#markMessageForm').serialize(), function(data,status){
//	//	alert(data);

//	//	$('#newsDivId_'+num).css('display','none');
//	$('#newsDivId_'+num).fadeOut(1000);		
//	});

//	return false;
//	}

//	});

	$('#sendCancle').click(function(){
		$('.MessageContainerDIV').css('display','none');	


	});

	$('#sendCommit').click(function(){
		$('.MessageContainerDIV').css('display','none');
		var newsID = $('#replyMessageForm input:eq(2)').val();
		var studentID = $('#replyMessageForm input:eq(0)').val();
		var sendContent = $('#msgReplyContent').val();
		$.ajax({
			url: "replyMsg",
			dataType: "json",
			data: {
				sendContent:sendContent,
				studentID:studentID,
				newsID:newsID
			},
			success:function(data){
				alert(data);
			}
		});
	});

//	// reply message to sb.
//	$('#sendCommit').click(function(){
//	var sendContent = $('.sendContent').val();
//	var studentID = $('#replyMessageForm input:eq(0)').val();
//	var newsID = $('#replyMessageForm input:eq(2)').val();
//	$.ajax({
//	url: "replyMsg",
//	dataType: "json",
//	data: {
//	sendContent:sendContent,
//	studentID:studentID,
//	newsID:newsID
//	},
//	success:function(data){
//	alert(data.status);
//	}
//	});
//	});


});