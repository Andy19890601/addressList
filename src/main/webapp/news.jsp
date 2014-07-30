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
<link rel="shortcut icon" href="/static/img/favicon32_32.ico" >
<link rel="stylesheet" type="text/css"href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
<link rel="stylesheet" type="text/css" href="/static/css/news.css" />

<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
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
			<a href="homepage.jsp"><img class="logo-img" src="/static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
		<div class="top-nav">
			<div id="navList" class="navlist-wrap">

				
				<div class="navlist clearfix">

				<a href="" class="nav-btn" id="findStu" data-device="">找同学<span>&nbsp;&nbsp;&nbsp;</span></a>
				<a href="news.jsp" class="nav-btn_" id="findnews" data-device=""><span>新闻&nbsp;&nbsp;&nbsp;</span></a>
				<a href="aa.jsp" class="nav-btn_" id="findassociation" data-device=""><span>校友会&nbsp;&nbsp;&nbsp;</span></a>
				<a href="photowall.jsp" class="nav-btn_" id="findpic" data-device=""><span>照片墙&nbsp;&nbsp;&nbsp;</span></a>
				<a href="bbs.jsp" class="nav-btn_" id="finddonate" data-device=""><span>交流区&nbsp;&nbsp;&nbsp;</span></a>
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
                                                <!--body -->
<!--left -->
<div id="main_left">
    <div style="border-bottom:1px solid #960300">
		<img src="/static/img/news_zonghui.gif">
	</div>
    <div class="con_list a14">
	    	<ul>
	        	    <li><a href="/news/view?id=5124" target="_blank">校友总会秘书处关于暑期值班的公告</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-11</span></li>
	        	    <li><a href="/news/view?id=5117" target="_blank">北京大学海宁国际校区破土动工</a><span>2014-07-09</span></li>
	        	    <li><a href="/news/view?id=5112" target="_blank">科技与人文携手，诞生“文物诊所”</a><span>2014-07-07</span></li>
	        	    <li><a href="/news/view?id=5110" target="_blank">须臾且散，深情未央——记海洋学院2014届毕业生欢送会</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-04</span></li>
	        	    <li><a href="/news/view?id=5103" target="_blank">程志渊潘之杰加盟北大</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-30</span></li>
	        	    <li><a href="/news/view?id=5102" target="_blank">在中国 很世界——欧美金融城第二届北京大学校友创业大赛隆重开幕</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-30</span></li>
	        	    <li><a href="/news/view?id=5093" target="_blank">中国高教学会校友工作研究分会2014年第一次常务理事会议顺利举行</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-27</span></li>
	        	    <li><a href="/news/view?id=5092" target="_blank">老学长刘奎斗的家国情怀——刘奎斗先生诞辰100周年纪念座谈会札记</a><span>2014-06-27</span></li>
	        	    <li><a href="/news/view?id=5081" target="_blank">北京大学“百人计划”招聘启事</a><span>2014-06-24</span></li>
	        	    <li><a href="/news/view?id=5084" target="_blank">缅怀感人事迹 追忆赤子情怀——北大纪念刘奎斗校友诞辰100周年</a><span>2014-06-24</span></li>
	        	    <li><a href="/news/view?id=5079" target="_blank">校长林建华在北京大学2014届学生毕业典礼上的讲话</a><span>2014-06-23</span></li>
	        	    <li><a href="/news/view?id=5078" target="_blank">北京大学举行纪念刘奎斗校友诞辰100周年座谈会</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-23</span></li>
	        	    <li><a href="/news/view?id=5075" target="_blank">北大举行2014届学生毕业典礼</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-20</span></li>
	        	    <li><a href="/news/view?id=5074" target="_blank">陈征校友在北京大学2014届毕业典礼上寄语毕业生</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-20</span></li>
	        	    <li><a href="/news/view?id=5071" target="_blank">2014年度国家社会科学基金项目公布 我校立项数居C9高校前列</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-06-19</span></li>
	        	</ul>
    	<div class="more"> <p class="more" style="float:right;padding: 6px 10px 0 0"><a href="/news/list?aa_id=0">更多总会新闻»</a></p></div>
        </div>
        <div style="border-bottom:1px solid #E1ECFA;margin-top:20px"><img src="/static/img/news_difang.gif"> </div>
        <div class="con_list a14">
		    	<ul>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="杭州">[杭州]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=1&amp;nid=5145" target="_blank">审美教育与良善公民——启真读书会《杜尚之后的康德》...</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-15</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="管理学院">[管理学院]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=127&amp;nid=5144" target="_blank">北京大学管理学院-巴黎HEC商学院校友联谊酒会在京...</a><span>2014-07-15</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="杭州">[杭州]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=1&amp;nid=5143" target="_blank">为北京大学校友创业添砖加瓦——对话汉鼎集团创始人王...</a><span>2014-07-14</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="化学系">[化学系]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=144&amp;nid=5142" target="_blank">化学系80级校友举行毕业30周年同学会</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-14</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="杭州">[杭州]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=1&amp;nid=5141" target="_blank">求是雅集之博物馆建设分享会成功举办</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-14</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="杭州">[杭州]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=1&amp;nid=5140" target="_blank">北大校友创业项目闪耀外滩</a>&nbsp;<font><img src="/static/img/imgs.gif" title="图片新闻"></font><span>2014-07-14</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="管理学院">[管理学院]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=127&amp;nid=5139" target="_blank">管理学院2014届毕业研究生欢送会圆满举行</a><span>2014-07-12</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="管理学院">[管理学院]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=127&amp;nid=5138" target="_blank">北大管理学院党委书记包迪鸿一行走访潘晓波校友</a><span>2014-07-12</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="管理学院">[管理学院]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=127&amp;nid=5137" target="_blank">北京大学管理学院94春研究生班值年校友返校活动成功...</a><span>2014-07-12</span></li>
	    	    	    <li style="background:none;"><font style="font-size:14px;color:#999" title="管理学院">[管理学院]</font>&nbsp;&nbsp;<a href="/aa_home/newsDetail?id=127&amp;nid=5136" target="_blank">北大管理学院地方校友联谊会会长、秘书长联席会议顺利...</a><span>2014-07-12</span></li>
	    	    	</ul>
	    	<div class="more">
	    	    <p class="more" style="float:right;padding: 6px 10px 0 0"><a href="/news/list?aa_id=1">
	    		    更多地方新闻»</a>
	    	    </p></div>
	        </div>
	    </div>
	    <!--//left -->

	    <!--right -->
	    <div id="sidebar_right">


	        <!-- 热门点击-->
	        <p class="sidebar_title">热门点击</p>
	        <div class="sidebar_box">
					<ul class="ranking">
	    				    <li><a href="/news/view?id=5095" title="在中国 很世界——欧美金融城第二届北京大学校友创业大赛隆重开幕" target="_blank">在中国 很世界——欧美金融..</a></li>
	    				    <li><a href="/news/view?id=5097" title="我乐意为大家鼓掌喝彩——浙江省科技厅厅长周国辉寄语创业大赛" target="_blank">我乐意为大家鼓掌喝彩——浙..</a></li>
	    				    <li><a href="/news/view?id=5098" title="立足中国·面向世界——任少波副书记在欧美金融城第二届北京大学校友创业大赛上的致辞" target="_blank">立足中国·面向世界——任少..</a></li>
	    				    <li><a href="/news/view?id=5101" title="建工地产陈黎驹副总经理在欧美金融城第二届北京大学校友创业大赛启动仪式上的发言" target="_blank">建工地产陈黎驹副总经理在欧..</a></li>
	    				    <li><a href="/news/view?id=5096" title="吕建明会长在欧美金融城第二届北京大学校友创业大赛启动仪式上的致辞" target="_blank">吕建明会长在欧美金融城第二..</a></li>
	    				    <li><a href="/news/view?id=5069" title="校友总会致2014届毕业生的一封信" target="_blank">校友总会致2014届毕业生..</a></li>
	    				    <li><a href="/news/view?id=5060" title="五百余名毕业生受聘2014届校友班级联络员" target="_blank">五百余名毕业生受聘2014..</a></li>
	    				    <li><a href="/news/view?id=5075" title="北大举行2014届学生毕业典礼" target="_blank">北大举行2014届学生毕业..</a></li>
	    				    <li><a href="/news/view?id=5078" title="北京大学举行纪念刘奎斗校友诞辰100周年座谈会" target="_blank">北京大学举行纪念刘奎斗校友..</a></li>
	    				</ul>
				        </div>
			        <!-- //热门点击-->

			        <!-- 热门点击-->
			        <p class="sidebar_title" style="margin-top:-1px">投票调查</p>
			        <div class="sidebar_box">
						<p class="nodata">暂无投票调查</p>
						<ul class="con_small_list">
	    	</ul>
    </div>
    <!-- //热门点击-->

</div>
<!--//right -->

<div class="clear"></div>
<!--//body -->                                                <div class="clear"></div>
            </div>
		</div>
<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
	<!-- 代码 结束 -->

</body>
</html>
