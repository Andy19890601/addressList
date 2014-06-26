<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.edu.pku.residents.entity.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	Student stuInfo = (Student)request.getAttribute("stuInfo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>资料完善界面</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="校友墙,北京大学,软件与微电子学院">
<meta http-equiv="description" content="北京大学软件与微电子学院校友网">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
<link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
<link rel="stylesheet" type="text/css"
	href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css"
	href="/static/css/stuInformation.css" />
<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="/static/css/login/ie8.css"/>
	<![endif]-->

<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="/static/js/login/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/static/js/stuInformation.js"></script>
<script type="text/javascript" src="/static/js/jquery.provincesCity.js"></script>
<script type="text/javascript" src="/static/js/provincesdata.js"></script>
<script>
	$(function() {
		$("#stuHomeTown").ProvinceCity();
		$("#stuPresentAddress").ProvinceCity();

	});
</script>
</head>

<body>
	<div class="header">
		<img class="logo-img" src="/static/img/logo-v4.png">
		<div>
			<h1>北京大学软件与微电子学院院友网</h1>
		</div>
	</div>
	<div class="stuInfoDiv">
		<h2>请先完善您的资料</h2>
		<hr />
		<div id="stuInfoDivData">
			<form id="stuInfoForm" method="post" action="updateStudentInfo">
				<input name="id" value="stuInfo.getId()" type="hidden" />
				<fieldset>
					<lable for="stuID">学号</lable>
					<input  readonly="readonly" maxlength="20" type="input" name="studentID" id="stuID" value="<%=stuInfo.getStudentID()%>" /><font
						style="color: red;">*</font> <br>
					<lable for="stuName">姓名</lable>
					<input  readonly="readonly" maxlength="20" type="input" name="studentName" id="stuName" value="<%=stuInfo.getStudentName()%>"/><font
						style="color: red;">*</font> <br>
					<lable for="stuSex">性别</lable>
					<input type="radio" name="studentSex" id="male" value=" "
						checked="checked"/>
					<lable for="male">男</lable>
					<input type="radio" name="studentSex" id="female" value="" />
					<lable for="female">女</lable>
					<font style="color: red;"> *</font> <br>
					<lable for="stuEnrollment">入学年份</lable>
					<select name="studentEnrollment" id="stuEnrollment">
						<option value="">--请选择--</option>
					</select><font style="color: red;">*</font> <br>

					<lable for="stuMajor">专业方向</lable>
					<select name="studentMajor" id="stuMajor" class="stuMajor" value="<%=stuInfo.getStudentMajor()%>" />
					<option>--请选择--</option>
					<option>软件开发</option>
					<option>软件测试与质量保证</option>
					<option>软件工程管理</option>
					<option>电子服务技术</option>
					<option>网络与系统安全</option>
					<option>云安全技术</option>
					<option>金融信息技术</option>
					<option>数字媒体技术</option>
					<option>互联网信息挖掘与处理</option>
					<option>网络系统管理与应用</option>
					<option>软件应用技术</option>
					<option>数据挖掘与商务智能</option>
					<option>电子商务与物流</option>
					<option>物联网技术及应用</option>
					<option>嵌入式软件</option>
					<option>智能移动终端技术</option>
					<option>微纳电子</option>
					<option>通信与应用电子</option>
					<option>光电子与物理电子</option>
					<option>嵌入式系统设计</option>
					<option>LED照明</option>
					<option>太阳能光电</option>
					<option>低碳技术</option>
					<option>IT项目管理</option>
					<option>IT服务营销管理</option>
					<option>创新与创业投资管理</option>
					<option>金融信息服务</option>
					<option>计算机辅助翻译</option>
					<option>数字艺术</option>
					<option>数字媒体</option>
					</select><font style="color: red;">*</font> <br>

					<lable for="stuTutor">导师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input type="input" name="studentTutor" id="stuTutor" value="<%=stuInfo.getStudentTutor()%>"/><font
						style="color: red;">*</font> <br>

					<!--
		<lable for="stuGoodAt">擅长领域</lable>
 		<textarea  name="stuGoodAt" id="stuGoodAt" cols="30" rows="5" value="<%=stuInfo.getStudentGoodAt()%>"/></textarea>
		<br> -->

					<lable>Email&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input type="input" name="studentEmail" id="stuEmail" style="" value="<%=stuInfo.getStudentEmail()%>"/><font
						style="color: red;">*</font> <span id="error1"
						style="color: red; display: none;">邮箱不能为空</span> <span id="error2"
						style="color: red; display: none;">邮箱格式不正确</span> <br>
					<lable>电话&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input maxlength="20" type="input" name="studentCall" id="stuCall" value="<%=stuInfo.getStudentCall()%>" />
					<br>
					<lable>QQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input maxlength="20" type="input" name=studentQQ id="stuEmail" value="<%=stuInfo.getStudentEmail()%>" />
					<br>
					<lable>微信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input maxlength="20" type="input" name="studentWeChat"
						id="stuWeChat" value="<%=stuInfo.getStudentWeChat()%>" /> <br>
					<lable for="stuHomeTown">籍贯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<div id="stuHomeTown"></div>
					<input maxlength="20" type="input" name="studentHomeTown"
						id="studentHomeTown" />

					<lable for="stuPresentAddress">现居地&nbsp;&nbsp;&nbsp;</lable>
					<div id="stuPresentAddress"></div>
					<input maxlength="20" type="input" name="studentPresentAddress"
						id="studentPresentAddress" /> <br>

					<lable for="stuCompany">工作单位</lable>
					<input maxlength="20" type="input" name="studentCompany" value="<%=stuInfo.getStudentCompany()%>" 
						id="stuCompany" /> <br>

					<lable for="stuPost">职位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
					<input maxlength="20" type="input" name="studentPost" id="stuPost" value="<%=stuInfo.getStudentPost()%>" />
					<br>

					<lable for="stuDescription">自由描述</lable>
					<textarea name="studentDescription" id="stuDescription" cols="60"
						rows="5" onKeyDown="textdown(event)" onKeyUp="textup()"
						onfocus="if(value=='填写擅长领域或求职、内推、招聘等信息140字以内'){value=''}"
						onblur="if (value ==''){value='填写擅长领域或求职、内推、招聘等信息140字以内'}">填写擅长领域或求职、内推、招聘等信息140字以内</textarea>
					<br> <input type="submit" id="stuInfoSubmit" value=" 下一步  "
						style="height: 30px; margin-left: 400px;"
						class="ui-button ui-widget ui-state-default ui-corner-all"
						role="button">
				</fieldset>
			</form>
		</div>
	</div>

	<div class="footer_layout">
		</div>
</body>
</html>
