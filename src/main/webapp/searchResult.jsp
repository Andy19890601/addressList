<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.edu.pku.residents.entity.*"%>
<%@ page language="java" import="cn.edu.pku.residents.vo.*"%>
<%@ page language="java" import="cn.edu.pku.residents.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	StudentSession ss = (StudentSession) session
			.getAttribute("studentSession");
	Page pageUtil = (Page) request.getAttribute("pageUtil");
	int pageNum = pageUtil.getIndex(); //页的编号
	int pageNumTotal = -1;
	if (pageUtil.getCount() % pageUtil.getSize() == 0)
		pageNumTotal = pageUtil.getCount() / pageUtil.getSize(); //页数
	else {
		pageNumTotal = pageUtil.getCount() / pageUtil.getSize() + 1;
	}
	//int pageNumTotal = 4;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%//123=basePath%>">

<title>欢迎进入北京大学软件与微电子学院校友网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
<link rel="shortcut icon" href="/static/img/favicon32_32.ico">
<link rel="stylesheet" type="text/css"
	href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="/static/css/homepage.css" />
<link rel="stylesheet" type="text/css" href="/static/css/searchResault.css" />
<link rel="stylesheet" type="text/css"
	href="/static/css/header_footer.css" />


<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.marquee.js"></script>
<script type="text/javascript" src="/static/js/homepage.js"></script>
<script type="text/javascript" src="/static/js/search.js"></script>
<script type="text/javascript" src="/static/js/searchResault.js"></script>

<script type="text/javascript" src="/static/js/jquery.provincesCity.js"></script>
<script type="text/javascript" src="/static/js/provincesdata.js"></script>
<script type="text/javascript" src="/static/js/dynamicImgs.js"></script>
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
	<div class="wrap">
		<div class="header">
			<!--	<h1 class="logo"><a href="http://www.lanrentuku.com" target="_blank"><img src="images/logo.jpg" alt="123"></a></h1>  -->
			<!--  	<h1>北京大学软件与微电子学院院友网</h1> -->
			<a href="homepage.jsp"><img class="logo-img"
				src="static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
		<div class="top-nav">
			<div id="navList" class="navlist-wrap">


				<div class="navlist clearfix">

					<a href="" class="nav-btn" id="findStu" data-device="">找同学<span>&nbsp;&nbsp;&nbsp;</span></a>
					<a href="news.jsp" class="nav-btn_" id="findnews" data-device=""><span>新闻&nbsp;&nbsp;&nbsp;</span></a>
					<a href="aa.jsp" class="nav-btn_" id="findassociation"
						data-device=""><span>校友会&nbsp;&nbsp;&nbsp;</span></a> <a
						href="photowall.jsp" class="nav-btn_" id="findpic" data-device=""><span>照片墙&nbsp;&nbsp;&nbsp;</span></a>
					<a href="bbs.jsp" class="nav-btn_" id="finddonate" data-device=""><span>交流区&nbsp;&nbsp;&nbsp;</span></a>
					<span class="nav-home"><a href="homepage.jsp">首页</a></span> <a
						href="showStudentInfo" class="usercenter" title="进入个人中心"><span
						class="nav-home" style=""> <%
 	//123=ss.getStudentID()
 %><span></span>
					</span></a> <a href="newsCenter.jsp" class="mailscenter" title="进入消息中心 "><span></span>3</span></a>

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
											<input name="studentTutor" id="stuTutor"
												style="width: 100px;"> <span>&nbsp;&nbsp;</span>
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
			<%
				List<Student> list = (List) request.getAttribute("studentList");
				List<Student> listDetail = list;
			%>
			<div id="showResultDiv">
				<div id="baseInforDiv">
					<%
						if (list.size() != 0) {
							int index = 0;
							for (int i = 0; i < list.size(); i++) {
								Student s = (Student) list.get(i);
					%>
					<div id="result_<%=index%>" class="singleResultDiv">
						<div id="result_<%=index%>_img" class="userHeadImg">
							<img src="<%=s.getStudentPicturePath()%>" alt="头像">
						</div>
						<div id="result_<%=index%>_information"
							class="baseUserInformation">
							<div id="userNameDiv">
								<span><%=s.getStudentName()%></span><span><img
									src="/static/img/star.gif"></span>
							</div>
							<div id="userBaseInforDiv">
								<span class="userProperty">入学年月： </span><span><%=s.getStudentEnrollment()%></span>
								<span class="userProperty">专业方向： </span><span><%=s.getStudentMajor()%></span>
								<span class="userProperty">导师姓名： </span><span><%=s.getStudentTutor()%></span>
								<span class="userProperty">Email： </span><span><%=s.getStudentEmail()%></span>
							</div>

							<div id="toDetailDiv_<%=i%>" class="toDetailDiv">
								<a id="sendMsg_<%=i%>" href="#" class="sendMsg" title="发送私信<%=i%>"></a> <a
									id='toDetail_<%=index%>'>详细>></a>
							</div>
						</div>
					</div>
					<%
						index++;
							}
						
					%>
					<div id='pageTurnDIv'>
						<%
							if (pageNum <= 0) {
						%>
						<script>
							$(function() {

								$('#prePage').removeAttr('href');
								$('#prePage span').css('color', 'black');
								$('#prePage span').css('cursor', 'auto');
							});
						</script>
						<%
							}
								if (pageNum >= pageNumTotal) {
						%>
						<script>
							$(function() {

								$('#nextPage').removeAttr('href');
								$('#nextPage span').css('color', 'black');
								$('#nextPage span').css('cursor', 'auto');
							});
						</script>
						<%
							}
						%>
						<span class="turnPageSpan" id="prePage">上一页</span><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span class="turnPageSpan" id="nextPage">下一页</span><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span>跳转到</span>
						<select id='pageNumSelect'>
							<%
								for (int i = 0; i < pageNumTotal; ++i) {
										if (i == pageNum) {
							%>
							<option selected="selected" value="<%=(i)%>">第<%=(i + 1)%>页
							</option>

							<%
								} else {
							%>
							<option value="<%=(i)%>">第<%=(i + 1)%>页
							</option>
							<%
								}
									}
							%>
						</select>
					</div>
					<%
						} else {
					%>
					<!-- 在此处增加代码判断，若无搜索结果则显示下面这个div -->
					<div class="singleResultDiv" id="noSearchResultDIV">
						<div>
							<span>..无搜索结果，请更改搜索条件后查询..</span>
						</div>
					</div>


					<%
						}
					%>



				</div>
				<%
					int index = 0;
					if (listDetail.size() > 0) {
						for (int i = 0; i < listDetail.size(); i++) {
							Student s = listDetail.get(i);
				%>
				<div id="singleDetail_<%=index%>" class="singleDetailDiv">
					<table id="basicInforTable" border=0>
						<tr>
							<td rowspan=3><div class="userHeadDiv">
									<img class="userHeadImgInTable" src="/static/img/testHead.jpg"
										alt="头像" height="100px">
								</div></td>
							<td><span>姓名:&nbsp;<%=s.getStudentName()%></span></td>
							<td><span>性别 :&nbsp;<%=s.getStudentSex()%></span></td>
						</tr>
						<tr>
							<td><span>入学 :&nbsp;<%=s.getStudentEnrollment()%>&nbsp;&nbsp;
							</span></td>
							<td><span>专业 :&nbsp;<%=s.getStudentMajor()%></span></td>
						</tr>
						<tr>
							<td><span>导师:&nbsp;<%=s.getStudentTutor()%></span></td>
							<td><span>Email:&nbsp;<%=s.getStudentEmail()%></span></td>
						</tr>
						<tr>
							<td width="50%" colspan="2"><span>QQ:&nbsp;<%=s.getStudentQQ()%></span></td>
							<td><span>微博:&nbsp;无</span></td>
						</tr>
						<tr>
							<td width="50%" colspan="2"><span>家乡 :&nbsp;<%=s.getStudentHomeTown()%></span></td>
							<td><span>现居地:&nbsp;<%=s.getStudentPresentAddress()%></span></td>
						</tr>
						<tr>
							<td width="50%" colspan="2"><span>工作单位 :&nbsp;<%=s.getStudentCompany()%></span></td>
							<td><span>职位:&nbsp;<%=s.getStudentPost()%></span></td>
						</tr>
						<tr>
							<td width="100%" height="" colspan="3"><span>自由描述
									:&nbsp;<%=s.getStudentDescription()%></span></td>
						</tr>
					</table>

				</div>
				<%
					index++;
						}
					}
				%>

			</div>
		</div>
	</div>
	
	<!-- 代码 结束 -->
	<%
		StudentQueryRestrictions restrictions = (StudentQueryRestrictions) request
				.getAttribute("studentQueryRestrictions");
	%>
	<div name="newDIV" style="display: none">
		<form id="newForm" method="post">
			<input name="index" type="text" id="index"
				value="<%=pageUtil.getIndex()%>" /> <input name="count" type="text"
				id="count" value="<%=pageUtil.getCount()%>" /> <input
				name="pageNumTotal" type="text" id="pageNumTotal"
				value="<%=pageNumTotal%>" /> <input name="studentName" type="text"
				value="<%=restrictions.getStudentName()%>" /> <input
				name="studentEnrollment" type="text"
				value="<%=restrictions.getStudentEnrollment()%>" /> <input
				name="studentMajor" type="text"
				value="<%=restrictions.getStudentMajor()%>" /> <input
				name="studentTutor" type="text"
				value="<%=restrictions.getStudentTutor()%>" /> <input
				name="studentCompany" type="text"
				value="<%=restrictions.getStudentCompany()%>" /> <input
				name="studentHomeTown" type="text"
				value="<%=restrictions.getStudentHomeTown()%>" /> <input
				name="studentPresentAddress" type="text"
				value="<%=restrictions.getStudentPresentAddress()%>" />
		</form>
	</div>
	
	<!-- 下面的form表用来发送私信 -->
	<div class="MessageContainerDIV">
		<div class="MessageDIV">
			<div>
				<span></span>
			</div>
			<div class="replyMessageDIV">
				<form action="replyMsg" id="replyMessageForm">
					<input name="studentID" style="display: none;" /><br> <input
						name="studentName" style="display: none;" /> <input name="newsID"
						style="display: none;" /> <span>回复给：</span><span
						id='replyNameSpan'></span><span>(140字以内)</span><br>
					<textarea maxlength='140' name="sendContent" id="msgReplyContent"
						style="width: 525px; height: 140px; margin-top: 10px;">
				</textarea>
					<br> <input type="submit" value="发送 " id="sendCommit">
					<input type="button" value="取消" id="sendCancle">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
