<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎登陆北京大学软件与微电子学院校友网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="校友墙,北京大学,软件与微电子学院">
	<meta http-equiv="description" content="北京大学软件与微电子学院校友网">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="static/js/login/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="static/js/login/login.js"></script>

  <script type="text/javascript" >


  </script>
  <link rel="shortcut icon" href="static/img/favicon32_32.ico" >
  <link rel="stylesheet" type="text/css" href="static/css/header_footer.css" />
  
<link rel="stylesheet" type="text/css" href="static/css/loginPage.css"/>
<link rel="stylesheet" type="text/css" href="static/css/footer.css"/>
<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="static/css/login/ie8.css"/>
<![endif]-->
<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="static/css/login/ie8.css"/>
<![endif]-->

</head>

<body onload="loadPage()">

<div id="header" >
	<img class="logo-img" src="static/img/logo-v4.png">
	
	<h1>欢迎登陆北京大学软件与微电子学院校友网</h1>
    <div id="login"> 
        <a href="#" id="link" class="signin">Login</a> 
        <form class="drop" action="/doLogin" method="post" id="loginForm" name="longinForm" style="">
            <label for="userID">UserID:</label>
            <input type="text" name="userID" id="userID" class="required" placeholder="学号或工号"/>
         
            <label for="passWord">Password:</label>
            <input id="passWord" type="password" name="password" />
            <br>
            <input type="radio" name="radio_userType" value="1" id="radio_student" style="width:15px;margin-left:90px;" checked="checked"/><lable for="radio_student">学生</lable>
 			<input type="radio" name="radio_userType" value="2" id="radio_teacher" style="width:15px;margin-left:10px;"/><lable for="radio_teacher">教师</lable>
            <p><span id="error0" style="color:red;display:none;">用户名或密码不能为空</span></p>
            
            <p class="remember"><input type="checkbox" class="checkbox"/>Remember Me</p>
            <input type="submit" class="submit" id="submitConfirm" value="Login" />
           
            <p><a href="#" class="tooltip">Forgot Password?<span>Click To Reset Your Password</span></a></p>
        </form>
    </div> 

</div>
<div class="bgpicDIV">
<img src="static/img/loginbackground.jpg" class="bgpicIMG" />
</div>
  <div id="footer" class="footer">
      <div class="container">
          <div class="row-fluid">
            <div>
              <a id="backtotop" href="#" class="back2top pull-right" title="返回顶部">&#9650;<br/>Top</a>
            </div>
              <div class="slogan-div pull-left">
                    <blockquote class="slogan">
                      <h3>开拓&nbsp;&nbsp;求实&nbsp;&nbsp;创业&nbsp;&nbsp;严谨&nbsp;&nbsp;进取&nbsp;&nbsp;育人
                    </blockquote>
                </div>
            </div>
            <hr class="soften" />
            <div class="row">
              <div class="span12 copyright">
                <p style="font-size:12px;margin-top:2px;">Copyright &copy; 北京大学软件与微电子学院 2014&nbsp;&nbsp;·&nbsp;&nbsp;北京市大兴工业开发区金苑路24号&nbsp;&nbsp;102600</p>   
              </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    jQuery("#backtotop").click(function(){
      jQuery('body,html').animate({scrollTop:0},1000);
      return false;
    });
    </script>
</body>
</html>
