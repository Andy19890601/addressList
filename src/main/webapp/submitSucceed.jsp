<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提交成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
		<meta http-equiv="description" content="提交成功">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="static/img/favicon32_32.ico"/>
	<script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		var timeOut = 5;
		function show(){
			var span = $('.succeedImgDIV span');
			span.html('提交成功，'+timeOut+'秒后返回主页面');
			timeOut --;
			if(timeOut == 0){
				window.opener = null;
				window.location.href = "homepage.jsp";
			}
			else{
				setTimeout("show()",1000);
			}
			
		}
	</script>
  </head>
  
  <body onload="show();">
    <div class="submitSucceedDIV" style="margin-top: 155px;">
    <div class="succeedImgDIV" style="width: 260px;margin-left: auto;margin-right: auto;">
    	<img src = "static/img/succeed.jpg" />
    	 <span></span>
    </div>
    
   
    
    </div>
  </body>
</html>
