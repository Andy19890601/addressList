<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.edu.pku.residents.vo.*"%>
<%@ page language="java" import="cn.edu.pku.residents.util.*"%>
<%@ page language="java" import="cn.edu.pku.residents.entity.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	StudentSession ss = (StudentSession) session
			.getAttribute("studentSession");
	List<Message> list = (List<Message>) request
			.getAttribute("msgList");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>信息中心</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="/static/css/login/ie8.css"/>
	<![endif]-->
<link rel="stylesheet" type="text/css"
	href="/static/css/header_footer.css" />
<link rel="shortcut icon" href="/static/img/favicon32_32.ico">
<link rel="stylesheet" type="text/css"
	href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="/static/css/newsCenter.css" />
<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/static/js/newsCenter.js"></script>
</head>

<body>
	<div class="header">
		<a href="homepage.jsp"><img class="logo-img"
			src="/static/img/logo-v4.png"></a>
		<div>
			<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
		</div>
	</div>

	<div class="topList-wrap">
		<div class="topList_left">
			<a href="home"><span class="nav-home">首页</span></a>
		</div>
		<div class="topList_right">

			<a href="showStudentInfo" class="topList_usercenter" title="进入个人中心"><span
				class="nav-home" style=""><%=ss.getStudentID()%>刘波</span></a> <a href=""
				class="topList_mailscenter" title="进入消息中心 "><span></span></a> <a
				href="" class="topList_exit" title="退出"><span class="nav-home">退出</span></a>

		</div>
	</div>

	</div>
	<div class="nav_left">
		<!-- 	<div class="left_div0">
 			<a href="newsCenter.jsp"><span class="span_0">消息中心</span></a>
 		</div>
		<div class="left_div1">
			<a href="homepage.jsp"><img class="backhomeImg" src="/static/img/backhome.jpg">
			<span class="span_1">返回首页</span> 
			</a>
		</div> -->
	</div>
	<div class="news_containerDIV">

		<div class="container_left">
			<div>
				<ul>
					<a href="listUnReadMsg"><li>未读信息</li></a>
					<a id="actionUrl" href="listReadMsg"><li
						style="color: crimson;">已读信息</li></a>
					<a href="listSendedMsg"><li>已发送</li></a>
				</ul>
			</div>
		</div>
		<!-- TODO -->
		<div class="container_right">

			<%
				if (list.size() <= 0) {
			%>
			<div class="noNewsDIV">

				<div>
					<span>...该栏暂无信息...</span>
				</div>

			</div>
			<%
				} else {

					for (int i = 0; i < list.size(); i++) {
						Message msg = list.get(i);
			%>

			<div id="newsDivId_<%=i%>" class="newsDIV">
				<div class="topLineDIV">
					<div class="mailIconDIV"></div>
					<div class="userFromDIV">
						<span>来自：</span><span id="userFromDivName"
							class='userFromDIV_stuName'><%=msg.getSenderName()%></span> <input
							id="userFromDivID" type='input'
							class='fromStuId userFromDIV_stuID' value='<%=msg.getSender()%>'
							style='display: none;'> <input type='input'
							class='newsID userFromDIV_newsID' value='<%=msg.getId()%>'
							style='display: none;'>

					</div>
				</div>
				<div class="textContainerDIV">
					<span><%=msg.getContent()%></span>
					<div class="bottomLineDIV">
						<div>
							<span class="bottomLineSpan mark" style="display:none">标记为已读</span> <span
								class="bottomLineSpan reply">回复</span> <span
								class="bottomLineSpan delete">删除</span>
						</div>
					</div>
				</div>
			</div>

			<%
				}
				}
			%>

			<div id='pageTurnDIv'>
				<%
					Page pageUtil = (Page) request.getAttribute("pageUtil");
					int pageNum = pageUtil.getIndex(); //页的编号
					int pageNumTotal = -1;
					if (pageUtil.getCount() % pageUtil.getSize() == 0)
						pageNumTotal = pageUtil.getCount() / pageUtil.getSize(); //页数
					else {
						pageNumTotal = pageUtil.getCount() / pageUtil.getSize() + 1;
					}
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
			<!-- 下面的 div用来隐式记录翻页情况 -->
			<div name="newDIV" style="display: none">
				<form id="newForm" method="post">
					<input name="index" type="text" id="indexInput"
						value="<%=pageUtil.getIndex()%>" /> <input name="count"
						type="text" id="countInput" value="<%=pageUtil.getCount()%>" /> <input
						name="pageNumTotal" type="text" id="pageNumTotalInput"
						value="<%=pageNumTotal%>" /> <input name="studentID" type="text"
						id="stuIDInput" value="<%=ss.getStudentID()%>" />
				</form>
			</div>
			<!-- ****************************** -->


		</div>
	</div>

	<!-- 下面的 div用来提交要标记为已读的信息的id -->

	<div style='display: none'>

		<div>
			<form action="markMsg" id="markMessageForm">

				<input name="newsID" type='input' />

			</form>
		</div>

	</div>

	<!-- ****************************** -->

	<!-- *************下面的 div用来显示回复框******************** -->
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
	<!-- ****************************** -->
	<!-- 下面的 div用来删除某条私信 -->

	<div style='display: none'>

		<div>
			<form action="deleteMsg" id="deleteMessageForm" method='post'>

				<input name="newsID" type='input' />

			</form>
		</div>

	</div>

	<!-- ****************************** -->


</body>
</html>
