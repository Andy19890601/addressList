<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.edu.pku.residents.entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Student s = (Student)request.getAttribute("studentDetailInfo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人资料</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/studentedit.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/info-all-mini.css" />
	<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/static/js/studentedit.js"></script>
    <script  type="text/javascript" src="/static/js/jquery.provincesCity.js"></script>
    <script type="text/javascript" src="/static/js/provincesdata.js" ></script>
    <script type="text/javascript">
    $(function(){
    	
		$("#stuHomeTown").ProvinceCity();
		//$("#stuPresentAddress").ProvinceCity();
		
	});
    </script>
  </head>
  
  <body>
	  <div class="header">
			<!--	<h1 class="logo"><a href="http://www.lanrentuku.com" target="_blank"><img src="images/logo.jpg" alt="123"></a></h1>  -->
			<!--  	<h1>北京大学软件与微电子学院院友网</h1> -->
			<a href="homepage.jsp"><img class="logo-img" src="static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
		
		<div class="editContainDIV">
			<div class="headimgDIV">
				<div class="smallimgDIV">
					<img src="<%=s.getStudentPicturePath()%>" />			
				</div>
				<div class="headinfo_0">
					<span class="headspan0"><%=s.getStudentName()%></span>
				</div>
				<div class="Info_handerDIV">
				<a id="changInfoButton" href="studentUpdatingInfo">编辑个人信息
			<!-- 	<img src="/static/img/changeinfo.png" class="changeinfoImg" /> -->
				</a>	
				</div>
				<div class="headinfo_1">	
					<span class="headspan1">个人信息展示</span> 
				</div>
				
				<div class="headinfo_2">	
					<a href="homepage.jsp"><img class="backhomeImg" src="/static/img/backhome.jpg"><span class="headspan2">返回首页</span> </a>
				</div>
			</div>
			<div class="baseDIV info-section">
				<div class="info-section-head">
					<h4>
					<span class="icon-box"><img src="/static/img/base.png"></span><span>基本信息</span>
					</h4>
					
				</div>
				<div class="info-section-info" id="baseinfoDIV">
					<dl class="info">
					<dt>性别</dt>
					<dd><%=s.getStudentSex()%></dd>
					</dl>
					<dl class="info">
					<dt>生日</dt>
					<dd>
					<a stats="info_info" class="pop-module-mark" >1991</a> 年					
					<a stats="info_info" >1月 23日</a>
					</dd></dl>	
					<dl class="info">
					<dt>家乡</dt>
					<dd><%=s.getStudentHomeTown()%></dd>
					</dl>
				</div>
			</div>
			<div class="info-section clearfix workDIV" id="educationInfo">
				<div class="info-section-head">
				<h4>
				<span class="icon-box"><img src="/static/img/study.png"></span><span>在校信息</span>
				</h4>
				</div>
				<div class="info-section-info">
				<dl class="info">
				<dt>入学年份</dt>
				<dd>
				<a stats="info_info" ><%=s.getStudentEnrollment()%></a>
				</dd>
				</dl>
				<dl class="info">
				<dt>所在方向</dt>
				<dd>
				<a stats="info_info" ><%=s.getStudentMajor()%></a>
				</dl>
				<dl class="info">
				<dt>导师</dt>
				<dd><a stats="info_info" ><%=s.getStudentTutor()%></a>
				</dd>
				</dl>
				
				</div>
			</div>
			<div class="info-section clearfix" id="contactInfo">
				<div class="info-section-head">
				<h4><span class="icon-box"><img src="/static/img/contact.png"></span><span>联系方式</span></h4>
				
				</div>
				<div class="info-section-info">
				<dl class="info">
				<dt>手机</dt><dd><%=s.getStudentCall()%></dd>
				</dl>
				<dl class="info">
				<dt>QQ</dt><dd><%=s.getStudentQQ()%></dd>
				</dl>
				<dl class="info">
				<dt>微信</dt><dd><%=s.getStudentWeChat()%></dd>
				</dl>
				<dl class="info">
				<dt>微博 </dt><dd><a stats="info_info" href="http://"><%=s.getStudentWeiBo()%></a></dd>
				</dl>
				<dl class="info">
				<dt>现居地 </dt><dd><a stats="info_info"><%=s.getStudentPresentAddress()%></a></dd>
				</dl>
				</div>
			</div>
			<div class="info-section clearfix otherDIV	" id="personalInfo">
				<div class="info-section-head ">
				<h4>
				<span class="icon-box"><img src="/static/img/like.png"></span><span>其他信息</span>
				</h4>
				<!-- <a stats="info_edit" class="edit" href="" id="personalInfo_hander">编辑</a> -->
				</div>
				<div class="info-section-info">
					<dl class="info">
					<dt>工作单位</dt>
					<dd></dd>
					</dl>
					<dl class="info">
					<dt>职位</dt>
					<dd><%=s.getStudentGoodAt()%></dd>
					</dl>
					<dl class="info">
					<dt>自我描述</dt>
					<dd><%=s.getStudentDescription()%></dd>
					</dl>
				
				</div>
			</div>
			
			<div class="info-section clearfix extraDIV	" id="personalInfo">
				
				<a href="photoAndPassword.jsp">修改密码</a>&nbsp;&nbsp;
				<a href="modifyImage">修改头像</a>
				
			</div>
			
			<div class="baseDIV info-section" style="display:none;">
				<div class="info-section-head">
					<h4>
					<span class="icon-box"><img src="/static/img/base.png"></span><span>基本信息</span>
					</h4>
					<a stats="info_edit" class="edit" href="#nogo" id="basicInfo_hander_cancle" style="margin-right:55px;">取消</a>
					<a stats="info_edit" class="edit" href="#nogo" id="basicInfo_hander_save">保存</a>
				</div>
				<div class="info-section-info" id="baseinfoDIV">
				<form id="baseinfoform">
					<dl class="info">
					<dt>性别</dt>
					<dd>
						<input type="radio" name="studentSex" id="male" value=" " checked="checked"/><lable for="male">男</lable>
 						<input type="radio" name="studentSex" id="female" value=""/><lable for="female">女</lable><font style="color:red;"> *</font>
					</dd>
					</dl>  		
					<dl class="info">
					<dt>生日</dt>
					<dd id="birthdaydd">
					 <select size="1" name="year" id="year" style="width:70px" onfocus="years('year',new Date().getFullYear()),change_date()" onchange="change_date()"></select>年
  					 <select size="1" name="month" id="month" style="width:50px" onfocus="months(),change_date()" onchange="change_date()"></select>月
  					 <select size="1" name="date" id="date" style="width:50px" ></select>日
					</dd></dl>	
					<dl class="info" id="studentBirthdaydl">
					<dt>生日</dt>
					<dd>
					<input type="text" id="studentBirthday" name="studentBirthday" />
					</dd></dl>	
					<dl class="info">
					<dt>家乡</dt>
					<dd id="stuhometowndd">
					<div id="stuHomeTown"></div>		
 					<input maxlength="20" type="input" name="studentHomeTown" id="studentHomeTown"/>
 					</dd>
					</dl>
				</form>
				</div>
			</div>
			<div class="changepwdDIV">	</div>
			
		</div>
		<div class="footer_layout_container">
<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
</div>
  </body>
</html>
