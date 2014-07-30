<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传头像</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
	<link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
	<link rel="stylesheet" type="text/css" href="/static/css/uploadingImage.css">
	<link rel="stylesheet" type="text/css" href="/static/css/jquery.ui.all.css">
	<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="/static/js/uploadingImage.js"></script>

	
  </head>
  
  <body>
    <div class="header">			
			<a href="homepage.jsp"><img class="logo-img" src="static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
   
   <div style="min-height: 388px;">
   
	   <div style="width:600px;margin-left:auto;margin-right:auto;margin-top:10px;">
	   <div style="text-align:center;margin-bottom:5px;"><span style="font: 20px/1.125 Arial,Helvetica,sans-serif;text-align:center;">请上传自己的真实头像</span></div>
		   <form  action="uploadImg" method="POST" enctype="multipart/form-data">
			 <fieldset>    
			     	
			     	<div style="width:150px;float:left;">
			     		<img id="userHeadImg" src="/static/img/testHead.jpg" style="height:150px;width:150px;"/>
			     	</div>
			       	<div style="width:200px;float:left;margin-top:120px;margin-left:20px;">	
			       	<img id="loadingImg" style="display:none" src="/static/img/loading.gif" />
			       	<span style="color:red;display:none;" id="error0" >只能上传jpg、png和gif格式图片</span>
			       	<input id="uploadImgInput" class="uploadImgInput" style="width:200px;" name="file" type="file" />
			       	</div>
			       	<div class="div_1">
			       	<input type="submit" value="上传" id="uploadButton" class = "" style="height:30px;width:55px;" />
			       	</div>
			       	<div style="width:100px;float:right;margin-top:120px;">
			      <input type="button"  id="nextStepButton" class="" style="height:30px;width:75px;float:right;" value='下一步' />
			 		<div>
			 </fieldset>      	 
		   </form>
	   </div>
	   <div style="text-align:center;">
	   	<a href="stuInformation.jsp?back=1"><span>返回上一步</span></a>
	   </div>
   </div>	
<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
 </body>
   
  </body>
</html>
