<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>资料完善界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="dist/css/login/ie8.css"/>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
	<link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
	<link rel="stylesheet" type="text/css" href="dist/css/jquery.ui.all.css"/>
	<link rel="stylesheet" type="text/css" href="dist/css/teaInformation.css"/>
	<style type="text/css">
 	</style>
	<script type="text/javascript" src="dist/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="dist/js/login/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="dist/js/teaInformation.js"></script>  
  </head>
  
  <body >
    <div class="header">
	<img class="logo-img" src="dist/img/logo-v4.png">
	<div><h1>北京大学软件与微电子学院院友网</h1></div>
	</div>
    <div class="teaInfoDiv">
    <h2>请先完善您的资料</h2>
    <hr/>
    <div id="teaInfoDivData" >
    <form id="teaInfoForm" method="post"">
    <fieldset>
 		<lable for="teaID">工号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
 		<input maxlength="20" type="input" name="pk_teacherId" id="teaID"/><font style="color:red;">*</font>
 		<br>
 		<lable for="teaName">姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
 		<input maxlength="20" type="input" name="teacherName" id="teaName"/><font style="color:red;">*</font>
 		<br>
 		<lable for="teaSex">性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
 		<input type="radio" name="teacherSex" id="male" value=" " checked="checked"/><lable for="male">男</lable>
 		<input type="radio" name="teacherSex" id="female" value=""/><lable for="female">女</lable><font style="color:red;"> *</font>
  		<br>
  		
		<lable>Email&nbsp;&nbsp;&nbsp;&nbsp;</lable>
 		<input type="input" name="teacherEmail" id="teaEmail" style=""/><font style="color:red;">*</font>
		<span id="error1" style="color:red;display:none;">邮箱不能为空</span>
		<br>
		<lable>办公电话</lable>
		<input maxlength="20" type="input" name="teacherOfficeCall" id="teaOfficeCall"/>
		<br>
		<lable>手机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
		<input maxlength="20" type="input" name="teacherPhone" id="teaPhone"/>
		<br>
		
		
		<lable for="teaTitle">职称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
 		<input maxlength="20" type="input" name="teacherTitle" id="teaTitle"/>
		<br>
		
		<lable for="teaDepartment">所属部门</lable>
 		<input maxlength="20" type="input" name="teacherDepartment" id="teaDepartment"/>
		<br>
		
		<lable for="teaResearchDirection">研究方向</lable>
 		<input maxlength="20" type="input" name="teacherResearchDirection" id="teaResearchDirection"/>
		<br>
		
		<lable for="teaCourse">所教课程</lable>
 		<input maxlength="20" type="input" name="teacherCourse" id="teaCourse"/>
		<br>
		
		<lable for="teaDescription">自由描述</lable>
 		<textarea  name="teacherDescription" id="teaDescription" cols="60" rows="5" onKeyDown="textdown(event)"
    	onKeyUp="textup()" onfocus="if(value=='请在140字以内'){value=''}"
    	onblur="if (value ==''){value='请在140字以内'}">请在140字以内</textarea>
		<br>
		
		<input type="submit" id="teaInfoSubmit" value="  下一步  " style="height:30px;margin-left:400px;" class="ui-button ui-widget ui-state-default ui-corner-all" role="button">
 	</fieldset>	
    </form>
    </div>
    </div>
    
    <div class="footer_layout">
		</div>
  </body>
</html>
