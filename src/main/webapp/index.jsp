<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Bootstrap 101 Template</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="北京大学,软件与微电子学院,校友墙">
	<meta http-equiv="description" content="北京大学软件与微电子学院校友墙">
	
		<!--[if lt IE 7 ]><html class="ie ie6" lang="zh"> <![endif]-->
<!--[if IE 7 ]>
<html class="ie ie7" lang="zh"> 
<![endif]-->
<!--[if IE 8 ]>
<html class="ie ie8" lang="zh">
 <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="not-ie" lang="zh">
<!--<![endif]-->
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dist/css/jumbotron.css" rel="stylesheet">
   
    <link href="dist/css/bootstrap-responsive.css" rel="stylesheet">
    
      <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: 40px;
        width:240px;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
	  .bottomShow{
	  margin-top:100px;
	  }
    </style>
  </head>
  
   <body>
	<div class="container-fluid" >
	<div class="row-fluid" style="margin-bottom:20px;">
		<div class="span12">
			<h3 class="text-center">
				欢迎访问北京大学软件与微电子学院校友墙
			</h3>
		</div>
	</div>
	 <div  id="loginDiv" style="width:300px;height:330px;position:relative;left:40%;margin-top:20px;">
	 <h2 class="form-signin-heading">Login In</h2>
      <form class="form-signin" method="post" name="loginForm">
       
       <label class="" contenteditable="true" for="inputEmail">ID</label>
        <input type="text" class="input-block-level" id="inputEmail" placeholder="学号或工号">
       
        <label class="" contenteditable="true" for="passWord">PassWord</label>
        <input type="password" class="input-block-level" id="passWord" placeholder="">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
	
		<div class="bottomShow">
			<hr />
			<p>
				联系方式：网络中心(010)61273562 (010)61273636
			</p>
			<p>
				Copyright  北京大学软件与微电子学院 2013 · 北京市大兴工业开发区金苑路24号 102600
			</p>
		</div>
	
</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="dist/js/jquery-1.11.0.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
     <script src="dist/js/bootstrap-transition.js"></script>
    <script src="dist/js/bootstrap-alert.js"></script>
    <script src="dist/js/bootstrap-modal.js"></script>
    <script src="dist/js/bootstrap-dropdown.js"></script>
    <script src="dist/js/bootstrap-scrollspy.js"></script>
    <script src="dist/js/bootstrap-tab.js"></script>
    <script src="dist/js/bootstrap-tooltip.js"></script>
    <script src="dist/js/bootstrap-popover.js"></script>
    <script src="dist/js/bootstrap-button.js"></script>
    <script src="dist/js/bootstrap-collapse.js"></script>
    <script src="dist/js/bootstrap-carousel.js"></script>
    <script src="dist/js/bootstrap-typeahead.js"></script>
  </body>
</html>
