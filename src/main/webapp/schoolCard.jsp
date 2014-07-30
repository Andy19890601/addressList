<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园卡申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="北京大学,校园卡,校友">
	<meta http-equiv="description" content="北京大学毕业生校友卡申请">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="static/css/header_footer.css" />
	<link rel="shortcut icon" href="static/img/favicon32_32.ico" >
	<link rel="stylesheet" type="text/css"
		href="static/css/jquery.ui.all.css" />
	<link rel="stylesheet" type="text/css"
		href="static/css/stuInformation.css" />
	<link rel="stylesheet" type="text/css" href="static/css/schoolCard.css" />
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" href="static/css/login/ie8.css"/>
		<![endif]-->
	
	<script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="static/js/login/jquery.easing.1.3.js"></script>

	<script type="text/javascript" src="static/js/schoolcard.js"></script>
	<script type="text/javascript" src="static/js/jquery.provincesCity.js"></script>
	<script type="text/javascript" src="static/js/provincesdata.js"></script>
	<script>
		$(function() {
			$("#stuHomeTown").ProvinceCity();
			$("#stuPresentAddress").ProvinceCity();
			
			 // 出生年月插件
	        $.ms_DatePicker({
	            YearSelector: ".sel_year",
	            MonthSelector: ".sel_month",
	            DaySelector: ".sel_day"
	        });
	
		});
	</script>
  </head>
  
  <body>
 <div class="header">
		<a href="homepage.jsp"><img class="logo-img" src="static/img/logo-v4.png"></a>
		<div>
			<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
		</div>
	</div>
	<div class="stuInfoDiv">
		<h2>申请校友卡需完善以下资料</h2>
		<hr />
		<div id="stuInfoDivData">
			<form id="schoolCardForm" method="post" action="schoolCard">
				<input name="id" value="stuInfo.getId()" type="hidden" />
				<fieldset>
					<label for="stuID">学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input   maxlength="20" type="input" name="studentID" id="stuID" value="<%//123.getStudentID()%>" /><font
						style="color: red;">*</font>
					 <span id="error0"
						style="color: red; display: none;">学号不能为空</span>
						 <br>
					<label for="stuName">姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input  maxlength="20" type="input" name="studentName" id="stuName" value="<%//123.getStudentName()%>"/><font
						style="color: red;">*</font> 
						 <span id="error1"
						style="color: red; display: none;">姓名不能为空</span>
						<br>
					<label for="stuSex">性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input type="radio" name="studentSex" id="male" value=" "
						checked="checked"/>
					<label for="male">男</label>
					<input type="radio" name="studentSex" id="female" value="" />
					<label for="female">女</label>
					<font style="color: red;"> *</font> <br>
					

                <label class="label">生日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <select class="sel_year">
                </select>年
                <select class="sel_month">
                </select>月
                <select class="sel_day">
                </select>日
				<input type="input" style="display:none;" name="studentBirthday" id="stuBirthday">
				<br>
				 
				<label for="stuHomeTown">籍贯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<div id="stuHomeTown"></div>
					<input maxlength="20" type="input" name="studentHomeTown" id="studentHomeTown" />
				<br>
				
				<label for="stuCompany">工作单位</label>
					<input maxlength="20" type="input" name="studentCompany" value="<%//123.getStudentCompany()%>" 
						id="stuCompany" /><font style="color: red;">*</font> 
						<span id="error2"
						style="color: red; display: none;">工作单位不能为空</span> 
						<br>
				
				<label for="stuEmail">Email&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input type="input" name="studentEmail" id="stuEmail" style="" value="<%//123.getStudentEmail()%>"/><font
						style="color: red;">*</font> <span id="error3"
						style="color: red; display: none;">邮箱不能为空</span> <span id="error4"
						style="color: red; display: none;">邮箱格式不正确</span> <br>
				

				<label for="stuContactAddress">通讯地址</label>
					<input maxlength="" type="input" name="studentPresentAddress"
						id="stuContactAddress" /><font style="color: red;">*</font>
						<span id="error5"
						style="color: red; display: none;">通讯地址不能为空</span>
						<br>
				
				<label for="stuPostalCode">邮政编码</label>
					<input maxlength="6" type="input" name="studentPostalCode" value="<%%>" 
						id="stuPostalCode" /><font style="color: red;">*</font> 
						<span id="error6"
						style="color: red; display: none;">邮政编码不能为空</span>
						<br>
						
				<label for="stuOfficeCall">办公电话</label>
					<input maxlength="15" type="input" name="studentOfficeCall" id="stuOfficeCall" value="<%//123.getStudentCall()%>" />
					<br>
				<label for="stuHomeCall">家庭电话</label>
					<input maxlength="15" type="input" name="studentHomeCall" id="stuHomeCall" value="<%//123.getStudentCall()%>" />
					<br>
				<label for="stuCall">手机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input maxlength="15" type="input" name="studentCall" id="stuCall" value="<%//123.getStudentCall()%>" />
					<font style="color:red;">*</font>
					<span id="error7"
						style="color: red; display: none;">手机号码不能为空</span>
					<br>
				<label for="stuQQ">QQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input maxlength="20" type="input" name=studentQQ id="stuQQ" value="<%//123.getStudentEmail()%>" />
					<br>
				<label for="stuWeChat">微信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input maxlength="20" type="input" name="studentWeChat"
						id="stuWeChat" value="<%//123.getStudentWeChat()%>" /> <br>
						
				<label for="stuDegree_1">北大学历</label>
					<select name="studentDegree_1" id="stuDegree_1" class="stuDegree_1" value="" />
					<option>--请选择--</option>
					<option>--本科--</option>
					<option>--硕士--</option>
					<option>--博士--</option>
					</select>
				<label for="stuEnrollment_1"> 入学年份</label>
				<select name="studentEnrollment_1" id="stuEnrollment_1">
						<option value="">--请选择--</option>
				</select>
				<label for="stuGraduateSchool_1"> 毕业院系</label>
				<input type="input" name="studentGraduateSchool_1" id="stuGraduateSchool_1"/>
				<br>
				
				<label for="stuDegree_2">北大学历</label>
					<select name="studentDegree_2" id="stuDegree_2" class="stuDegree_2" value="" />
					<option>--请选择--</option>
					<option>--本科--</option>
					<option>--硕士--</option>
					<option>--博士--</option>
					</select>
				<label for="stuEnrollment_2"> 入学年份</label>
				<select name="studentEnrollment_2" id="stuEnrollment_2">
						<option value="">--请选择--</option>
				</select>
				<label for="stuGraduateSchool_2"> 毕业院系</label>
				<input type="input" name="studentGraduateSchool_2" id="stuGraduateSchool_2"/>
				<br>
				
				<label for="stuDegree_3">北大学历</label>
					<select name="studentDegree_3" id="stuDegree_3" class="stuDegree_3" value="" />
					<option>--请选择--</option>
					<option>--本科--</option>
					<option>--硕士--</option>
					<option>--博士--</option>
					</select>
				<label for="stuEnrollment_3"> 入学年份</label>
				<select name="studentEnrollment_3" id="stuEnrollment_3">
						<option value="">--请选择--</option>
				</select>
				<label for="stuGraduateSchool_3"> 毕业院系</label>
				<input type="input" name="studentGraduateSchool_3" id="stuGraduateSchool_3"/>
				<br>
								
					<br> <input type="submit" id="schoolCardFormSubmit" value=" 提交 "
						style="height: 30px; margin-left: 400px;"
						class="ui-button ui-widget ui-state-default ui-corner-all"
						role="button">
				</fieldset>
			</form>
		</div>
	</div>

<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
</body>
</html>
