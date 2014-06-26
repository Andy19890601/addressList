<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人照片和密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="/static/css/login/ie8.css"/>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
	  <link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
	<link rel="stylesheet" type="text/css" href="/static/css/jquery.ui.all.css"/>
	<link rel="stylesheet" type="text/css" href="/static/css/photoAndPwdForm.css"/>
	<style type="text/css">
  body {
	font: 10px 'Source Sans Pro',Arial,Helvetica,sans-serif;
	color: #585754;
	font-family: "Microsoft YaHei","Helvetica Neue", Helvetica, Arial, sans-serif,TrueType;
	}
	
	</style>
	
	<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/static/js/login/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="/static/js/photoAndPassword.js"></script>
  </head>
  
  <body>
   <div class="header">
	<img class="logo-img" src="/static/img/logo-v4.png">
	<div><h1>北京大学软件与微电子学院校友网</h1></div>
   </div>
   <div class="papDIV">
   <fieldset>
   <form id="photoAndPwdForm" method="post" action="changePWD">
   
   <lable>修改原始密码</lable>
   <div id="changePwdDiv">
   <lable for="newPwd">新密码&nbsp;&nbsp;&nbsp;</lable>
   <input type="password" id="newPwd" name="password">
   <br>
   <lable for="newPwd">密码确认</lable>
   <input type="password" id="confirmPwd" >
   <span id="error" style="color:red;display:none;">两次密码不一致</span>
   <span id="error1" style="color:red;display:none;">密码和确认密码不能为空</span>
   <br>
   <input type="checkbox" id="changePwdCheckBox" name="changePwdCheckBox"><lable for="changePwdCheckBox">暂不修改</lable>
   <br>
   <input type="submit" id="photoAndPwdSubmit" value=" 确认 " style="height:30px;margin-left:300px;" class="ui-button ui-widget ui-state-default ui-corner-all" role="button">
   </div>
   
   </form>
   </fieldset>
   </div>
    <div style="text-align:center;">
	   	<a href="uploadingImage.jsp?back=1"><span>返回上一步</span></a>
	   </div>
   <div class="footer_layout">
   </div>
   
  </body>
</html>
