<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.edu.pku.residents.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	StudentSession ss = (StudentSession)session.getAttribute("studentSession");
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
<link rel="stylesheet" type="text/css"
	href="/static/css/header_footer.css" />


<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.marquee.js"></script>
<script type="text/javascript" src="/static/js/homepage.js"></script>
<script type="text/javascript" src="/static/js/search.js"></script>

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

	<div class="header">
		<!--	<h1 class="logo"><a href="http://www.lanrentuku.com" target="_blank"><img src="images/logo.jpg" alt="123"></a></h1>  -->
		<!--  	<h1>北京大学软件与微电子学院院友网</h1> -->
		<a href="homepage.jsp"><img class="logo-img"
			src="/static/img/logo-v4.png"></a>
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
				<span class="nav-home" id="nav-home"><a href="homepage.jsp">首页</a></span>
				<a href="showStudentInfo" class="usercenter" title="进入个人中心"><span
					class="nav-home" style=""><%=ss.getStudentID()%><span></span></span></a>
				<a href="msgCenter" class="mailscenter" title="进入消息中心 "><span></span>3</span></a>

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

		<div class="top_0 center_position">
			<div class="pivDIV">
				<div class="roll-news">
					<div class="roll-news-image" style="background-color: white;">
						<img src="/static/img/homepagepic_1.jpg"> <img
							src="/static/img/homepagepic_2.jpg" style="display: none">
						<img src="/static/img/homepagepic_3.jpg" style="display: none">
					</div>
					<div class="roll-news-index">
						<ul>
							<li class="roll-news-index-hover">1</li>
							<li>2</li>
							<li>3</li>
						</ul>
					</div>
					<div class="roll-news-title">
						<a href="" target="_blank">图片1：点击后跳转</a> <a href=""
							target="_blank" style="display: none">图片2：点击后跳转</a> <a href=""
							target="_blank" style="display: none">图片3：点击后跳转</a>
					</div>
				</div>
			</div>

			<div class="slogan-img">
				<img src="/static/img/slogan2.png"
					style="background-color: #FFFFFF;">
			</div>
			<!--  	<div  class="dpart-box">
								<div id="dpart-00" class="dpart-div">
									<ul class="top-dp-ls">
										<li class="odd"><a id="dpart-01-link" href="/index.php/education/department/department-stse">告示</a></li>
										<li class="even"><a id="dpart-02-link" href="/index.php/education/department/department-mees">通知</a></li>
										<li class="odd"><a id="dpart-03-link" href="/index.php/education/department/department-fimt">告示</a></li>
										<li class="even"><a id="dpart-04-link" href="/index.php/education/department/department-nids">通知</a></li>
									</ul>
								</div>
						</div> -->
			<div id="login" class="div_border">
				<p class="title">登录校友网</p>
				<div style="margin: 10px 20px;" id="user_login">
					<form id="userLogin" action="/user/login" method="post">
						<p>
							邮箱&nbsp;:&nbsp;<input type="text" name="account" value=""
								class="input_text" tabindex="1" style="width: 150px">
						</p>
						<p>
							密码&nbsp;:&nbsp;<input type="password" name="password"
								class="input_text" tabindex="2" style="width: 150px;">
						</p>
						<p style="padding: 10px 0px 0px 32px;">
							<input type="hidden" name="rememberme" value="0"> <input
								id="rememberme" type="checkbox" name="rememberme" value="1">
							<label for="rememberme"
								style="font-weight: normal; font-size: 12px; color: #666">记住我</label>
							<input type="submit" value="登录" class="button_green"
								id="home_login_button" onclick="home_login();return false;">
						</p>
						<p style="padding: 10px 0px 0px 32px;">
							<a href="/user/register">立即注册</a>&nbsp;&nbsp;<a
								href="/help/forgetAccount" style="color: #999">找回密码</a>
						</p>
					</form>
				</div>
			</div>

		</div>

		<div class="top_1 center_position">
			<div class="leftPart div_border">
				<div class="div_title">
					<ul>
						<li><a href="">地方校友会</a></li>
						<li><a href="">专业分会</a></li>
						<li><a href="">社团</a></li>
					</ul>
				</div>
				<div id="aa_club_content_one1" class="tab_content"
					style="display: block;">

					<div id="marquee">
						<div id="scr1">
							<ul>
								<li><a href="/aa_home?id=30" target="'_blank">温州校友会</a><span></span></li>
								<li><a href="/aa_home?id=49" target="'_blank">福建校友会</a><span></span></li>
								<li><a href="/aa_home?id=22" target="'_blank">苏州校友会</a><span></span></li>
								<li><a href="/aa_home?id=64" target="'_blank">湖北校友会</a><span></span></li>
								<li><a href="/aa_home?id=37" target="'_blank">金华校友会</a><span></span></li>
								<li><a href="/aa_home?id=1" target="'_blank">杭州校友会</a><span></span></li>
								<li><a href="/aa_home?id=14" target="'_blank">上海校友会</a><span></span></li>
								<li><a href="/aa_home?id=26" target="'_blank">北京校友会</a><span></span></li>
								<li><a href="/aa_home?id=16" target="'_blank">江苏(南京)校友会</a><span></span></li>
								<li><a href="/aa_home?id=28" target="'_blank">宁波校友会</a><span></span></li>
								<li><a href="/aa_home?id=19" target="'_blank">无锡校友会</a><span></span></li>
								<li><a href="/aa_home?id=36" target="'_blank">绍兴校友会</a><span></span></li>
								<li><a href="/aa_home?id=55" target="'_blank">山东校友会</a><span></span></li>
								<li><a href="/aa_home?id=72" target="'_blank">广州校友会</a><span></span></li>
								<li><a href="/aa_home?id=73" target="'_blank">深圳校友会</a><span></span></li>
							</ul>
						</div>
					</div>
					<p class="more">
						<a href="/aa/branch">&gt;&gt;更多</a>
					</p>
				</div>
				<div id="aa_club_content_one2" class="tab_content"
					style="display: none;">
					<ul style="margin: 4px 8px">
						<li><a href="/aa_home?id=150" target="'_blank">化学工程与生物工程学系(筹)校友会</a><span></span></li>
						<li><a href="/aa_home?id=129" target="'_blank">计算机科学与技术学院校友会</a><span></span></li>
						<li><a href="/aa_home?id=127" target="'_blank">管理学院校友会</a><span></span></li>
						<li><a href="/aa_home?id=162" target="'_blank">医学院校友会</a><span></span></li>
						<li><a href="/aa_home?id=155" target="'_blank">信息与电子工程学系校友会</a><span></span></li>
						<li><a href="/aa_home?id=147" target="'_blank">机械工程学系校友会</a><span></span></li>
					</ul>
					<p class="more">
						<a href="/aa/club">&gt;&gt;更多</a>
					</p>
				</div>
				<div id="aa_club_content_one3" class="tab_content"
					style="display: none;">
					<ul>
						<li><a href="/club_home?id=35" target="_blank">北大海创校友俱乐部</a></li>
						<li><a href="http://www.zuef.zju.edu.cn/hotelClub/"
							target="_blank">北大校友酒店俱乐部</a></li>
					</ul>
					<p class="more">
						<a href="/aa/">&gt;&gt;更多</a>
					</p>
				</div>
				<p class="sidebar_title" style="border-width: 1px 0">推荐活动</p>
				<div style="padding: 5px 13px; min-height: 140px;">
					<div class="one_event" style="padding-bottom: 0">
						<div class="left">
							<img src="../img/event/zaec.png" width="35" height="36">
						</div>
						<div class="right">
							<a href="/event/view?id=3308" target="'_blank">第二届软微校友创业大..</a><br>
							<span style="color: #666">7月25日 - 杭州校友会</span>

						</div>
					</div>
					<div class="one_event no_bg" style="padding-bottom: 0">
						<div class="left">
							<img src="../img/event/party.png" width="35" height="36">
						</div>
						<div class="right">
							<a href="/event/view?id=3596" target="'_blank">竺院成立30周年庆典活动..</a><br>
							<span style="color: #666">9月27日 - 竺可桢学院校友会</span>

						</div>
					</div>
					<p class="more">
						<a href="/event">&gt;&gt;更多</a>
					</p>
				</div>
				<div style="padding: 10px 13px; border-top: 1px solid #BCDDEA">
					<div style="text-align: center; float: left; color: #666">
						<a href="http://e.weibo.com/zjuaa" target="_blank"><img
							src="/static/images/sina_weibo.jpg" width="75px" height="75px"></a>
						<div style="margin-top: 5px">
							北京大学校友总会<br>新浪微博
						</div>
					</div>
					<div
						style="text-align: center; float: left; margin-left: 10px; color: #666">
						<a href="http://zuaa.zju.edu.cn/news/view?id=4205"><img
							src="/static/images/weixinlogo.jpg" width="75px" height="75px"></a>
						<div style="margin-top: 5px">
							北京大学校友总会<br>官方微信
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div id="news" class="centerPart">

				<h2>
					<a href="/news/view?id=5069" title="校友总会致2014届毕业生的一封信"
						target="_blank" style="">校友总会致2014届毕业生的一封信</a>
				</h2>

				<div class="des">
					简述：亲爱的2014届毕业生：&nbsp; 你好！&nbsp;
					在这个万物争荣的季节里，羽翼丰满的你们将如雄鹰展翅般飞向更为广阔的天地，放飞梦想，挥洒..&nbsp;&nbsp;<a
						href="/news/view?id=5069" style="color: #666">全文</a>
				</div>
				<div class="con_list a14">
					<ul>
						<li><a href="/news/view?id=5124" title="校友总会秘书处关于暑期值班的公告"
							target="_blank" style="">校友总会秘书处关于暑期值班的公告</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>7-11</span></li>
						<li><a href="/news/view?id=5117" title="北京大学海宁国际校区破土动工"
							target="_blank" style="">北京大学海宁国际校区破土动工</a><span>7-09</span></li>
						<li><a href="/news/view?id=5116"
							title="外语学院2000级英本2班校友返校举行毕业十周年同学会" target="_blank" style="">外语学院2000级英本2班校友返校举行毕业十周..</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>7-09</span></li>
						<li><a href="/news/view?id=5110"
							title="须臾且散，深情未央——记海洋学院2014届毕业生欢送会" target="_blank" style="">须臾且散，深情未央——记海洋学院2014届毕业..</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>7-04</span></li>
						<li><a href="/news/view?id=5103" title="程志渊潘之杰加盟北大"
							target="_blank" style="">程志渊潘之杰加盟北大</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-30</span></li>
						<li><a href="/news/view?id=5102"
							title="在中国 很世界——欧美金融城第二届北京大学校友创业大赛隆重开幕" target="_blank" style="">在中国
								很世界——欧美金融城第二届北京大学校友..</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-30</span></li>
						<li><a href="/news/view?id=5093"
							title="中国高教学会校友工作研究分会2014年第一次常务理事会议顺利举行" target="_blank" style="">中国高教学会校友工作研究分会2014年第一次常..</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-27</span></li>
						<li><a href="/news/view?id=5092"
							title="老学长刘奎斗的家国情怀——刘奎斗先生诞辰100周年纪念座谈会札记" target="_blank" style="">老学长刘奎斗的家国情怀——刘奎斗先生诞辰100..</a><span>6-27</span></li>
						<li><a href="/news/view?id=5081" title="北京大学“百人计划”招聘启事"
							target="_blank" style="">北京大学“百人计划”招聘启事</a><span>6-24</span></li>
						<li><a href="/news/view?id=5084"
							title="缅怀感人事迹 追忆赤子情怀——北大纪念刘奎斗校友诞辰100周年" target="_blank" style="">缅怀感人事迹
								追忆赤子情怀——北大纪念刘奎斗校..</a><span>6-24</span></li>
						<li><a href="/news/view?id=5079"
							title="校长林建华在北京大学2014届学生毕业典礼上的讲话" target="_blank" style="">校长林建华在北京大学2014届学生毕业典礼上的..</a><span>6-23</span></li>
						<li><a href="/news/view?id=5078"
							title="北京大学举行纪念刘奎斗校友诞辰100周年座谈会" target="_blank" style="">北京大学举行纪念刘奎斗校友诞辰100周年座谈会</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-23</span></li>
						<li><a href="/news/view?id=5075" title="北大举行2014届学生毕业典礼"
							target="_blank" style="">北大举行2014届学生毕业典礼</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-20</span></li>
						<li><a href="/news/view?id=5074"
							title="陈征校友在北京大学2014届毕业典礼上寄语毕业生" target="_blank" style="">陈征校友在北京大学2014届毕业典礼上寄语毕业..</a>&nbsp;<font><img
								src="/static/img/imgs.gif" title="图片新闻"></font><span>6-20</span></li>
						<li><a href="/news/view?id=5071"
							title="2014年度国家社会科学基金项目公布 我校立项数居C9高校前列" target="_blank" style="">2014年度国家社会科学基金项目公布
								我校立项..</a>&nbsp;<font><img src="/static/img/imgs.gif"
								title="图片新闻"></font><span>6-19</span></li>
					</ul>
					<p class="more" style="margin: 10px 0">
						<a href="/news">&gt;&gt;更多</a>
					</p>
				</div>
			</div>
			<div id="xiaoyou" class="rightPart div_border">
				<p class="sidebar_title"
					style="border-width: 1px 0; border-top: 0 !important;">软微校友</p>
				<div class="one_xiaoyou">
					<a href="/people/aView?id=170" target="'_blank"><img
						src="/static/upload/people/20130102135408.jpg"
						style="width: 83px; float: left"></a> <a
						href="/people/aView?id=170" style="font-weight: bold"
						target="'_blank">吴文俊</a><br> 数学家,
					1919年5月12日生于上海。1940年毕业于上海交通大学。1949年获法国国家科学博士学位。1957年被选聘为中国科学院学部委员(院士)。1991年当选为第三世界科学院...
					<div class="clear"></div>
					<p class="more" style="margin: 5px 0">
						<a href="/people">&gt;&gt;更多</a>
					</p>
				</div>
				<div class="clear"></div>

				<p class="sidebar_title" style="border-width: 1px 0">主题活动</p>

				<div style="padding: 10px">

					<div id="xiaoyouqiye" style="height: 240px; overflow: hidden">
						<ul>
							<li><a href="http://www.zaec.cn" target="_blank"><img
									src="/static/upload/event_static/20140701144311.pjpeg"
									width="220" height="70" style="margin-bottom: 10px"></a></li>
							<li><a href="http://zuaa.zju.edu.cn/news/view?id=4105"
								target="_blank"><img
									src="/static/upload/event_static/20131031105337.pjpeg"
									width="220" height="70" style="margin-bottom: 10px"></a></li>
							<li><a href="http://zuaa.zju.edu.cn/donate/annual"
								target="_blank"><img
									src="/static/upload/event_static/20110413161808.gif"
									width="220" height="70" style="margin-bottom: 10px"></a></li>
						</ul>
					</div>

					<p class="more" style="margin: 5px 0">
						<a href="/event">&gt;&gt;更多</a>
					</p>
				</div>

			</div>
		</div>
		<div class="top_2 center_position ">

			<div class="big_tab_title first_line div_border" id="photo_tabs">
				<ul>
					<li tag="pic"><a href="javascript:void(0)" id="photo1"
						class="">校园追忆</a></li>
					<li tag="pic"><a href="javascript:void(0)" id="photo2"
						class="cur">活动照片</a></li>
					<li
						style="color: #487EB2; line-height: 25px; padding: 0px 50px 0 20px; margin-right: 50px; font-size: 10px"><marquee
							style="width: 400px;" scrollamount="2">一个镜头记录一个瞬间，一张照片留存一段记忆。让我们再次重温求是园里久违的片段，分享那些过往的故事…</marquee></li>
				</ul>
				<p
					style="text-align: right; padding: 15px 20px 0px 0px; color: rgb(95, 155, 214); display: none;"
					id="morephoto1">
					<a href="/album/uploadPic?id=59&amp;enc=MTU==" target="_blank">上传照片</a>
					| <a href="/album/picIndex?id=59" target="_blank">更多...</a>
				</p>
				<p
					style="text-align: right; padding: 15px 20px 0px 0px; color: rgb(95, 155, 214);"
					id="morephoto2"></p>
			</div>
			<div class="tab_content_photo second_line" id="photocontent_photo1"
				style="display: block;">

				<div class="picContainer">
					<div class="ul" id="memory_pic" style="">
						<div class="li ">
							<a href=""><img src="/static/img/01.jpg" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>

					</div>
				</div>

			</div>

			<div class="tab_content_photo second_line" id="photocontent_photo2"
				style="display: none;">

				<div class="picContainer">
					<div class="ul" id="memory_pic" style="">
						<div class="li ">
							<a href=""><img src="/static/img/02.jpg" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>
						<div class="li ">
							<a href=""><img src="" /></a>
						</div>

					</div>
				</div>

			</div>

		</div>
		<div class="top_3 center_position">
			<div class="leftPart div_border">
				<p class="sidebar_title"
					style="border-width: 1px 0; border-top: 0px !important;">最新加入校友</p>
				<div id="new_alumni">
					<div class="a_alumni ">
						<div class="left">
							<a href="/user_home?id=50591" target="'_blank"><div
									class="user_avatar" style="width: 48px">
									<img src="/static/upload/avatar/48/face_madam.jpg"
										style="height: 48px; width: 48px; border-width: 0">
								</div></a>
						</div>
						<div class="right">
							<a href="/user_home?id=50591" target="'_blank">戴怡</a> <span
								class="gray"><br>2012级中国现当代文... <br>2小时前&nbsp;南昌</span>
						</div>
					</div>
					<div class="a_alumni ">
						<div class="left">
							<a href="/user_home?id=50590" target="'_blank"><div
									class="user_avatar" style="width: 48px">
									<img src="/static/upload/avatar/48/face_madam.jpg"
										style="height: 48px; width: 48px; border-width: 0">
								</div></a>
						</div>
						<div class="right">
							<a href="/user_home?id=50590" target="'_blank">阮敏</a> <span
								class="gray"><br>2000级材料科学与工... <br>2小时前&nbsp;杭州</span>
						</div>
					</div>
					<div class="a_alumni ">
						<div class="left">
							<a href="/user_home?id=50589" target="'_blank"><div
									class="user_avatar" style="width: 48px">
									<img src="/static/upload/avatar/48/50589.jpg"
										style="height: 48px; width: 48px; border-width: 0">
								</div></a>
						</div>
						<div class="right">
							<a href="/user_home?id=50589" target="'_blank">孟枭</a> <span
								class="gray"><br>2009级化工 <br>3小时前&nbsp;上海</span>
						</div>
					</div>
					<div class="a_alumni no_line">
						<div class="left">
							<a href="/user_home?id=50588" target="'_blank"><div
									class="user_avatar" style="width: 48px">
									<img src="/static/upload/avatar/48/face_man.jpg"
										style="height: 48px; width: 48px; border-width: 0">
								</div></a>
						</div>
						<div class="right">
							<a href="/user_home?id=50588" target="'_blank">相学平</a> <span
								class="gray"><br>2004级中药学 <br>3小时前&nbsp;杭州</span>
						</div>
					</div>
					<p class="more" style="margin: 10px 0">
						<a href="/alumni">&gt;&gt;更多</a>
					</p>
				</div>
			</div>

			<div class="fcenter centerPart">
				<div id="bbs_tabs">
					<ul>
						<li><a href="javascript:void(0)" id="bbstab1" class="cur">最新话题</a></li>
						<li>/</li>
						<li><a href="javascript:void(0)" id="bbstab2" class="">热门话题</a></li>
					</ul>
				</div>
				<div id="bbscontent_bbstab1" style="height: 330px; display: block;">
					<table border="0" id="home_bbs" width="100%" cellspacing="0"
						cellpadding="0">
						<tbody>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=13344" target="_blank"
									title="近期部分校友职位调任情况" class="unit_title">近期部分校友职位调任情况</a></td>
								<td class="center">周陈伟</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=13136" target="_blank"
									title="转发山东校友会向王心法老学长捐款的倡议书" class="unit_title">转发山东校友会向王心法老学长捐款的倡...</a></td>
								<td class="center">浙江大.</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=12940" target="_blank"
									title="【转发】有你的帮助才有我的明天——临床1007班全体求助" class="unit_title">【转发】有你的帮助才有我的明天——临...</a></td>
								<td class="center">浙江大.</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12893" target="_blank"
									title="【启真读书会】《论语》；2014北大学生学术最高奖--姚锦云等四位嘉宾" class="unit_title">【启真读书会】《论语》；2014北大...</a></td>
								<td class="center">刘萧</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12859" target="_blank"
									title="【求是金融汇】第40期公开课：苏浙模式之辩" class="unit_title">【求是金融汇】第40期公开课：苏浙模...</a></td>
								<td class="center">吴璐缤</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12818" target="_blank"
									title="#亲子俱乐部# 国画、水彩、软陶、拼贴、综合材料制作、版画、动画等等" class="unit_title">#亲子俱乐部#
										国画、水彩、软陶、拼...</a></td>
								<td class="center">刘萧</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12801" target="_blank"
									title="【创业课堂】刘筵丰：黄帝内经与现代养生智慧" class="unit_title">【创业课堂】刘筵丰：黄帝内经与现代养...</a></td>
								<td class="center">马骏</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12800" target="_blank"
									title="TEDxZJU2014夏季大会——“热”" class="unit_title">TEDxZJU2014夏季大会——“...</a></td>
								<td class="center">周玲娇</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12714" target="_blank"
									title="#北大讲座# 6月21、22日--新自然主义与人文科学高端论坛" class="unit_title">#北大讲座#
										6月21、22日--新...</a></td>
								<td class="center">刘萧</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=12334" target="_blank"
									title="学长学姐们~北大的学弟学妹们在等着你们一起来一场西藏益行！" class="unit_title">学长学姐们~北大的学弟学妹们在等着你...</a></td>
								<td class="center">杭颖颖</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12245" target="_blank"
									title="【人文讲堂】陈履安谈“禅修与觉性科学”" class="unit_title">【人文讲堂】陈履安谈“禅修与觉性科学...</a></td>
								<td class="center">刘建斌</td>
							</tr>
						</tbody>
					</table>

				</div>
				<div id="bbscontent_bbstab2" style="height: 330px; display: none;">
					<table border="0" id="home_bbs" width="100%" cellspacing="0"
						cellpadding="0">
						<tbody>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12818" target="_blank"
									title="#亲子俱乐部# 国画、水彩、软陶、拼贴、综合材料制作、版画、动画等等" class="unit_title">#亲子俱乐部#
										国画、水彩、软陶、...</a></td>
								<td class="center"><span style="color: #009900">47</span>/2047</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12827" target="_blank"
									title="【环湖党】灵隐峡谷-北高峰—户外俱乐部固定活动2014年第25期" class="unit_title">【环湖党】灵隐峡谷-北高峰—户外俱...</a></td>
								<td class="center"><span style="color: #009900">44</span>/724</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12966" target="_blank"
									title="【户外俱乐部】远足4期：象山住佛院 观海景---修心之旅 时间未定" class="unit_title">【户外俱乐部】远足4期：象山住佛院...</a></td>
								<td class="center"><span style="color: #009900">35</span>/658</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12859" target="_blank"
									title="【求是金融汇】第40期公开课：苏浙模式之辩" class="unit_title">【求是金融汇】第40期公开课：苏浙...</a></td>
								<td class="center"><span style="color: #009900">25</span>/713</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12954" target="_blank"
									title="【讲座&amp;音乐会】郑云飞——浙派古琴代表性传承人" class="unit_title">【讲座&amp;音乐会】郑云飞——浙派古琴...</a></td>
								<td class="center"><span style="color: #009900">22</span>/532</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12893" target="_blank"
									title="【启真读书会】《论语》；2014北大学生学术最高奖--姚锦云等四位嘉宾" class="unit_title">【启真读书会】《论语》；2014浙...</a></td>
								<td class="center"><span style="color: #009900">22</span>/518</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12817" target="_blank"
									title="【求是观影会•东横电影之约】《After life》南特三大洲影展最佳电影奖"
									class="unit_title">【求是观影会•东横电影之约】《Af...</a></td>
								<td class="center"><span style="color: #009900">17</span>/321</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list?aid=1">杭州</a>]
								</span><a href="/bbs/viewPost?id=12862" target="_blank"
									title="【房地产俱乐部】№6：十年之后，再无开发—从重资产开发到轻资产运营（地址变更）"
									class="unit_title">【房地产俱乐部】№6：十年之后，再...</a></td>
								<td class="center"><span style="color: #009900">14</span>/187</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=13344" target="_blank"
									title="近期部分校友职位调任情况" class="unit_title">近期部分校友职位调任情况</a></td>
								<td class="center"><span style="color: #009900">7</span>/382</td>
							</tr>
							<tr class="two">
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=12940" target="_blank"
									title="【转发】有你的帮助才有我的明天——临床1007班全体求助" class="unit_title">【转发】有你的帮助才有我的明天——...</a></td>
								<td class="center"><span style="color: #009900">4</span>/663</td>
							</tr>
							<tr>
								<td><span class="aa_bbs">[<a href="/bbs/list">公共</a>]
								</span><a href="/bbs/viewPost?id=13136" target="_blank"
									title="转发山东校友会向王心法老学长捐款的倡议书" class="unit_title">转发山东校友会向王心法老学长捐款的...</a></td>
								<td class="center"><span style="color: #009900">0</span>/444</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p class="more" style="margin: 10px">
					<a href="/bbs/list">&gt;&gt;更多</a>
				</p>
				<!--//bbs-->
			</div>

			<div class="rightPart div_border">
				<p class="sidebar_title"
					style="border-width: 1px 0; border-top: 0px !important;">年度捐赠鸣谢</p>
				<div class="sidebar_box" style="background: #F6FAFB">
					<div id="marquee2">
						<ul class="donate_tks" style="margin-top: 0px;">
							<li><a style="float: left">徐保义</a><span
								style="float: right;">50.00元</span></li>
							<li><a style="float: left">金姝阳</a><span
								style="float: right;">60.00元</span></li>
							<li><a style="float: left">李素莹</a><span
								style="float: right;">60.00元</span></li>
							<li><a style="float: left">史宗法</a><span
								style="float: right;">30.00元</span></li>
							<li><a style="float: left">孙威</a><span style="float: right;">100.00元</span></li>
							<li><a style="float: left">万怀</a><span style="float: right;">50.00元</span></li>
							<li><a style="float: left">吕超</a><span style="float: right;">200.00
									元</span></li>
							<li><a style="float: left">鲁小双</a><span
								style="float: right;">117.00元</span></li>
							<li><a style="float: left">徐瑞君</a><span
								style="float: right;">117.00元</span></li>
							<li><a style="float: left">龚利汀</a><span
								style="float: right;">1983.00元</span></li>
							<li><a style="float: left">陈宜张</a><span
								style="float: right;">1000.00元</span></li>
							<li><a style="float: left">谢彬</a><span style="float: right;">100.00元</span></li>
							<li><a style="float: left">林强</a><span style="float: right;">200.00元</span></li>
							<li><a style="float: left">张敬严</a><span
								style="float: right;">200.00元</span></li>
							<li><a style="float: left">59级电器专业返...</a><span
								style="float: right;">2000.00元</span></li>
							<li><a style="float: left">盛名良</a><span
								style="float: right;">50.00元</span></li>
							<li><a style="float: left">江西校友会</a><span
								style="float: right;">1000.00元</span></li>
							<li><a style="float: left">方德豪</a><span
								style="float: right;">200.00元</span></li>
							<li><a style="float: left">顾玉林</a><span
								style="float: right;">117.00元</span></li>
							<li><a style="float: left">耿磊</a><span style="float: right;">500.00
									元</span></li>
							<li><a style="float: left">国立英士大学杭州...</a><span
								style="float: right;">5543.00元</span></li>
							<li><a style="float: left">杨成林</a><span
								style="float: right;">25.00元</span></li>
							<li><a style="float: left">蒋飚</a><span style="float: right;">600.00
									元</span></li>
							<li><a style="float: left">项文余</a><span
								style="float: right;">50.00元</span></li>
							<li><a style="float: left">林京往</a><span
								style="float: right;">100.00元</span></li>
							<li><a style="float: left">陈丽英</a><span
								style="float: right;">300.00元</span></li>
							<li><a style="float: left">方德豪</a><span
								style="float: right;">100.00元</span></li>
							<li><a style="float: left">姚春林</a><span
								style="float: right;">100.00元</span></li>
							<li><a style="float: left">祝跃龙</a><span
								style="float: right;">50.00元</span></li>
							<li><a style="float: left">赵宏宇</a><span
								style="float: right;">100.00元</span></li>
						</ul>
					</div>
					<p class="more" style="margin-top: 10px">
						<a href="/donate/thanks">&gt;&gt;更多</a>
					</p>
				</div>
			</div>
		</div>


		<div class="top_4 center_position">
			<div id="more_links">
				<div class="logo">
					支持单位： <a href="http://www.zuef.zju.edu.cn/" target="_blank"><img
						src="/static/upload/logo/27.jpg" class="img_boder"
						style="margin-right: 6px; vertical-align: middle"></a> <a
						href="http://www.tangfoundation.org.cn/" target="_blank"><img
						src="/static/upload/logo/36.jpg" class="img_boder"
						style="margin-right: 6px; vertical-align: middle"></a> <a
						href="http://www.insigma.com.cn/" target="_blank"><img
						src="/static/upload/logo/28.jpg" class="img_boder"
						style="margin-right: 6px; vertical-align: middle"></a> <a
						href="http://zuaa.zju.edu.cn/card" target="_blank"><img
						src="/static/upload/logo/37.jpg" class="img_boder"
						style="margin-right: 6px; vertical-align: middle"></a> <a
						href="http://www.usho.cn/" target="_blank"><img
						src="/static/upload/logo/38.jpg" class="img_boder"
						style="margin-right: 6px; vertical-align: middle"></a>
				</div>
				<div class="text">
					校内链接：<a href="http://www.zju.edu.cn" target="_blank">北京大学</a>&nbsp;|&nbsp;<a
						href="http://www.acv.zju.edu.cn" target="_blank">北京大学档案馆</a>&nbsp;|&nbsp;<a
						href="http://www.news.zju.edu.cn/" target="_blank">求是新闻网</a>&nbsp;|&nbsp;<a
						href="http://www.qsc.zju.edu.cn/" target="_blank">求是潮</a>&nbsp;|&nbsp;<a
						href="http://grs.zju.edu.cn/" target="_blank">北京大学研究生院</a>&nbsp;|&nbsp;<a
						href="http://www.zucc.edu.cn/" target="_blank">北京大学城市学院</a>&nbsp;|&nbsp;<a
						href="http://www.career.zju.edu.cn/" target="_blank">北京大学就业指导网与服务中心</a>&nbsp;|&nbsp;<a
						href="http://bgpt.zdzsc.zju.edu.cn/" target="_blank">北京大学本科生招生网</a>&nbsp;|&nbsp;<a
						href="http://zdgh.zju.edu.cn/" target="_blank">北京大学工会</a>&nbsp;|&nbsp;
					<br> 校外链接：<a href="http://www.chinanpo.gov.cn/"
						target="_blank">中国社会组织网</a>&nbsp;|&nbsp;<a
						href="http://www.alumni-cn.org/" target="_blank">中国高等教育学会校友工作研究分会</a>&nbsp;|&nbsp;<a
						href="http://www.pku.edu.cn/" target="_blank">北京大学</a>&nbsp;|&nbsp;<a
						href="http://www.tsinghua.edu.cn/qhdwzy/index.jsp" target="_blank">清华大学</a>&nbsp;|&nbsp;<a
						href="http://www.fudan.edu.cn/" target="_blank">复旦大学</a>&nbsp;|&nbsp;<a
						href="http://www.nankai.edu.cn/" target="_blank">南开大学</a>&nbsp;|&nbsp;<a
						href="http://www.xmu.edu.cn/" target="_blank">厦门大学</a>&nbsp;|&nbsp;<a
						href="http://www.sjtu.edu.cn/" target="_blank">上海交通大学</a>&nbsp;|&nbsp;<a
						href="http://www.tju.edu.cn/" target="_blank">天津大学</a>&nbsp;|&nbsp;<a
						href="http://www.nju.edu.cn/cps/site/newweb/foreground/"
						target="_blank">南京大学</a>&nbsp;|&nbsp;<a
						href="http://www.sdu.edu.cn/" target="_blank">山东大学</a>&nbsp;|&nbsp;<a
						href="http://alumni.sysu.edu.cn/suaa/" target="_blank">中山大学</a>&nbsp;|&nbsp;
				</div>
			</div>
		</div>

	</div>
	<div class="footer_layout_container">
		<div class="footer_layout"></div>
	</div>
	<!-- 代码 结束 -->

</body>
</html>
