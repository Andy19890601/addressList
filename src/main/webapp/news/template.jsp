<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<link rel="shortcut icon" href="../static/img/favicon32_32.ico" >
<link rel="stylesheet" type="text/css"
	href="../static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="../static/css/header_footer.css" />
<link rel="stylesheet" type="text/css" href="../static/css/template.css" />

<script type="text/javascript" src="../static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../static/js/search.js"></script>
<script type="text/javascript" src="../static/js/jquery.provincesCity.js"></script>
<script type="text/javascript" src="../static/js/provincesdata.js"></script>
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
			<a href="homepage.jsp"><img class="logo-img" src="../static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
		<div class="top-nav">
			<div id="navList" class="navlist-wrap">

				<div class="navlist clearfix">

					<a href="" class="nav-btn" id="findStu" data-device="">找同学<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="news.jsp" class="nav-btn_" id="findnews" data-device=""><span style="font-weight: bold;">新闻&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="findassociation" data-device="">校友会<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="findpic" data-device="">照片和视频<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="" class="nav-btn_" id="finddonate" data-device="">捐赠<span>&nbsp;&nbsp;&nbsp;</span></a>
				<span class="nav-home" ><a href="homepage.jsp">首页</a></span>
				<a href="showStudentInfo" class="usercenter" title="进入个人中心"><span class="nav-home" style=""><%//123=ss.getStudentID()%><span></span></span></a>
				<a href="newsCenter.jsp" class="mailscenter" title="进入消息中心 "><span></span>3</span></a>
				
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

		<div id="body">
                <div class="clear"></div>
                                                <!--left -->
<div id="main_left" style="background-color:#F8FCFF; ">
    
        <h3 style="color:#333;">怀进鹏校长会见张勇勤校友一行</h3>
    <div class="news_info">发布：2014-07-10 17:28:04&nbsp;&nbsp;&nbsp;&nbsp;来源：<a href="/aa/">校友总会</a>&nbsp;&nbsp;&nbsp;&nbsp;点击：57</div>
    <div class=" dotted_line" style="margin:0px 15px"></div>
    <div class="news_content" id="content">

        <p style="text-align:center"><img src="/static/upload/pic/201407/10/199320140710173026444_bmiddle.jpg" title="天津校友会筹备组访问母校"></p><p>7月9日下午，校友总会会长、校长怀进鹏院士亲切会见了天津校友会换届筹备组负责人、天津民航大学副校长董健康、天津市科委副主任张勇勤、天津嘉信有限公司董事长林守江校友等一行。校长助理、科研院院长唐文忠、校友总会、科研院等部门一同参加会见。</p><p>会谈中怀进鹏校长对董健康校友一行回访母校表示热烈的欢迎，张勇勤校友首先向怀进鹏校长汇报了天津市近几年来科技发展和产学研开展和京津冀高校国家重点实验室创新驱动区域发展论坛的筹备情况，并诚挚的表达了天津市要加强与母校深度合作的意向，为母校的建设发展贡献自己的力量，并邀请学校领导参加本周末在天津市组织的京津冀高校国家重点实验室创新驱动区域发展论坛。</p><p>校友董健康汇报了天津校友会正在筹备换届的情况，怀进鹏校长对天津校友不忘母校、关注母校、关心母校、支持母校发展的真诚情意和推动合作的精神表示感谢，并希望天津校友会要充分发挥作用，搭起与母校沟通、融合的桥梁作用，切实搭好校友与母校、校友与校友之间的平台，广泛合作，推进资源共享，实现校友与母校间的双赢，为母校的发展做出新的努力。同时也希望学校与天津市双方强化合作意识，找准合作项目、丰富合作类型，扎实开展工作，把合作真正落实到实处，为天津市的发展建设做出贡献。</p><p><br></p>


    </div>
    <div class=" dotted_line" style="margin:0px 15px"></div>
    <div class="tool_link"><a href="javascript:copyhttp()" id="copyhttp">复制网址</a> <a href="javascript:window.print()">打印本页</a></div>
    <div class=" dotted_line" style="margin:0px 15px"></div>
    <p class="related_title">相关新闻</p>
    <div id="related">
                    <span class="nodata">暂时还没有相关新闻</span>
            </div>
    <div id="scrollToComment" style="height:5px"></div>
    
    	<!-- 先期隐藏评论部分 -->
    	<div style="display: none;">
            <p class="comments_title">评论</p>
        <div style="padding:10px">
            <!--回复及评论 -->
            <div class="clear"></div>
<div id="get_comment_list" style="width:99%"><div id="comments_list">

            <div class="nodata" style="margin:15px 0" id="not_cmt">暂无任何讨论，去抢个沙发？</div>
        <div id="comment_page_box"></div>

    </div></div>
    <div class="notice">
        您还没有注册或登录，请<a href="javascript:;" onclick="loginForm('/news/view?id=152')"><b>登录</b></a> 后进行回帖或讨论。
    </div>

<script type="text/javascript">
            getCommentJson = {
                "page":1,
                'scrollTo': false,
                'uid': false,
                'query': 'news_id=152',
                'getUrl': '/comment/list'
            };
            setTimeout(function() {
                get_comment(getCommentJson);
            }, 200);
</script>


            <!--//回复及评论 -->
        </div>
        </div>
    
</div>
<!--//left -->

<!--right -->
<div id="view_right">
    <!-- 热门点击-->
    <p class="sidebar_title2"><span style="color:#c00">推荐</span>新闻</p>
    <div class="sidebar_box2">
                <ul class="con_small_list">
                            <li><a href="/news/view?id=149" title="与梦想一路同行——2014届本科生毕业典礼隆重举行">与梦想一路同行——2014..</a></li>
                            <li><a href="/news/view?id=150" title="广东校友会副会长李罡回访母校">广东校友会副会长李罡回访母..</a></li>
                            <li><a href="/news/view?id=151" title="校友捐赠致谢">校友捐赠致谢</a></li>
                            <li><a href="/news/view?id=152" title="怀进鹏校长会见张勇勤校友一行">怀进鹏校长会见张勇勤校友一..</a></li>
                    </ul>
    </div>
    <!-- //热门点击-->

</div>
<!--//right -->

<div class="clear"></div>
<script type="text/javascript">
    function copyhttp(){
        var clipBoardContent="";
        clipBoardContent+=this.location.href;
        //alert(clipBoardContent);
     	if(!window.clipboardData.setData("Text",clipBoardContent));
        {
        	alert("失败");
        }
     	$('#copyhttp').html('网址已经复制');
    }
</script>
                                                <div class="clear"></div>
            </div>			
		</div>
<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
	<!-- 代码 结束 -->

</body>
</html>
