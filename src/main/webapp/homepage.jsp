<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎进入北京大学软件与微电子学院校友网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
<link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
<link rel="stylesheet" type="text/css"
	href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="/static/css/homepage.css" />
<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />

<link rel="stylesheet" type="text/css"
	href="/static/css/homePagePic.css" />
<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/static/js/homepage.js"></script>
<script type="text/javascript" src="/static/js/search.js"></script>

<script type="text/javascript" src="/static/js/jquery.provincesCity.js"></script>
<script type="text/javascript" src="/static/js/provincesdata.js"></script>

<script type="text/javascript">
	//调用插件
	$(function() {
		$("#stuHomeTown").ProvinceCity();
		$("#stuPresentAddress").ProvinceCity();

	});
</script>

</head>
<body style="margin: 0 !important">
	<!-- 代码 开始 -->
	
		<div class="header">
			<!--	<h1 class="logo"><a href="http://www.lanrentuku.com" target="_blank"><img src="images/logo.jpg" alt="123"></a></h1>  -->
			<!--  	<h1>北京大学软件与微电子学院院友网</h1> -->
			<img class="logo-img" src="/static/img/logo-v4.png">
			
				<h1>北京大学软件与微电子学院院友网</h1>
			
		</div>
		<div class="top-nav">
			<div id="navList" class="navlist-wrap">

				<div class="navlist clearfix">

					<a href="" class="nav-btn" id="findStu" data-device="">找同学<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="findnews" data-device="">新闻<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="findassociation" data-device="">校友会<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="findpic" data-device="">照片和视频<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="finddonate" data-device="">捐赠<span>&nbsp;&nbsp;&nbsp;</span></a>
				<span class="nav-home">首页</span>
				<a href="showStudentInfo" class="usercenter" title="进入个人中心"><span class="nav-home">刘波<span></span></span></a>
				<a href="" class="mailscenter" title="进入消息中心 "><span></span>3</span></a>
				
				<a href="" class="exit" title="退出"><span class="nav-home">退出</span></a>
		
				</div>
				<div id="expandZone" class="expand active">
				<div class="download">
					<div id="" class="item">
						<div class="download-list">


							<form name="searchForm" id="searchForm" method="post"
								action="/search">
								<div class="searchFromDiv1">
									<div style='float: left;'>
										<lable for="studentName">姓名</lable>
										<input name="studentName" id="stuName" style="width: 100px;" />
										 <span>&nbsp;&nbsp;</span>
										<lable for="studentEnrollment">入学年份</lable>

										<select name="studentEnrollment" id="stuEnrollment">
											<option value="">--请选择--</option>
										</select> <span>&nbsp;&nbsp;</span>
										<lable for="studentMajor">专业</lable>
										<select name="studentMajor" id="stuMajor">
											<option value="">--请选择--</option>
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
										</select><span>&nbsp;&nbsp;</span>
										<lable for="studentTutor">导师</lable>
										<input name="studentTutor" id="stuTutor" style="width: 100px;">
										<span>&nbsp;&nbsp;</span>
										<lable for="studentCompany">工作单位</lable>
										<input name="studentCompany" id="stuCompany"
											style="width: 100px;"> <span>&nbsp;&nbsp;</span>
									</div>
									<div id="selectAddressDiv">
										<div id="studentHomeTown">
											<lable for="studentHomeTown">籍贯</lable>
										</div>
										<input maxlength="20" type="input" name="studentHomeTown"
											id="studentHomeTown" />
										<div id="stuPresentAddress">
											<lable for="stuPresentAddress">现居地</lable>
										</div>
										<input maxlength="20" type="input"
											name="studentPresentAddress" id="studentPresentAddress" />
									</div>

									<br>
									<div id="starSearchDiv">
										<input type="submit" id="stuSearch" value=" 开始搜索  "
											style="height: 30px; margin-top: 20px; cursor: pointer;"
											class="ui-button ui-widget ui-state-default ui-corner-all"
											role="button">
									</div>
								</div>
							</form>




							<!-- 
						<a href="http://www.lanrentuku.com/" target="_blank" class="btn zj" id="download-link"><span class="icon"></span><span class="text">直接下载安装包</span></a>
						<a href="http://www.lanrentuku.com/" target="_blank" class="btn sjgj" id="tencent_app_assistant_btn"><span class="icon"></span><span class="text">手机管家一键下载</span></a>
						<a href="http://www.lanrentuku.com/" target="_blank" class="btn wdj"><span class="icon"></span><span class="text">豌豆荚一键下载</span></a>
						 -->
						
					</div>
				</div>
				
			</div>
			<div id="closeBtn" class="close-btn"></div>
		</div>
		</div>

			
			<!-- 	<div class="nav-bottom-bg"></div> -->
		

		<div class="pivDIV">
<img src="/static/img/xiaoyoupic2.jpg" />
</div> 


						<div class="slogan-img">
							<img src="/static/img/slogan.png" style="background-color: #FFFFFF;">
						</div>
						<div  class="dpart-box">
								<div id="dpart-00" class="dpart-div">
									<ul class="top-dp-ls">
										<li class="odd"><a id="dpart-01-link" href="/index.php/education/department/department-stse">告示</a></li>
										<li class="even"><a id="dpart-02-link" href="/index.php/education/department/department-mees">通知</a></li>
										<li class="odd"><a id="dpart-03-link" href="/index.php/education/department/department-fimt">告示</a></li>
										<li class="even"><a id="dpart-04-link" href="/index.php/education/department/department-nids">通知</a></li>
									</ul>
								</div>
						</div>
						
			
</div >
<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
	<!-- 代码 结束 -->

</body>
</html>
