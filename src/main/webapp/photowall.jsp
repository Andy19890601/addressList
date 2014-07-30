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
<link rel="stylesheet" type="text/css"
	href="/static/css/jquery.ui.all.css" />
<link rel="stylesheet" type="text/css" href="/static/css/header_footer.css" />
<link rel="stylesheet" type="text/css" href="/static/css/photowall.css" />
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
	<!-- 顶部校标logo栏 -->
	<div class="header">
			<a href="homepage.jsp"><img class="logo-img" src="/static/img/logo-v4.png"></a>
			<div>
				<a href="homepage.jsp"><h1>北京大学软件与微电子学院院友网</h1></a>
			</div>
		</div>
	<!-- // 校标logo栏 -->
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

		
                <div class="clear"></div>
                                                <!--main -->
		<div class="main_inside">
								<!--main nav left-->				
				<div class="main_nav">					
										
										<a  class="main_nav_link">照片和视频</a>
						<br>
							<a href="http://www.pku.org.cn/?cat=31" title="查看照片墙下的所有文章" class="on">照片墙</a><br>
															</div>		
				<!--main content-->		
				<div class="main_content">				
					<div class="path" style="display: block;"> </div>
		<div class="image_list masonry" style="position: relative; height: 611px;">
		<div class="image_item masonry-brick" style="position: absolute; top: 0px; left: 5px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3950" title="《金融时报》全球MBA百强排名出炉 北大光华MBA项目再次领跑大陆高校"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x97x214.jpg.pagespeed.ic.7yvLX8y0cv.jpg" width="200" height="96.888888888889"><span>《金融时报》全球MBA百强排名出炉 北大光华MBA项目再次领跑大陆高校</span><span>来源：北京大学新闻网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 0px; left: 215px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3930" title="校友郑俊荣、董广彬荣获2014年斯隆研究奖"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x121x512.jpg.pagespeed.ic.JRpskPn6tg.jpg" width="200" height="120.62663185379"><span>校友郑俊荣、董广彬荣获2014年斯隆研究奖</span><span>来源：北京大学校友网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 0px; left: 425px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3890" title="连战访问北京大学获授名誉教授称号"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x222.jpg.pagespeed.ic.DQWtEIGRZW.jpg" width="200" height="133.33333333333"><span>连战访问北京大学获授名誉教授称号</span><span>来源：北京大学新闻网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 0px; left: 635px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3881" title="北大光华携手Kellogg管理学院推出EMBA联合学位项目"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x113.jpg.pagespeed.ic.s8y5w334q9.jpg" width="200" height="133.33333333333"><span>北大光华携手Kellogg管理学院推出EMBA联合学位项目</span><span>来源：北京大学新闻网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 184px; left: 5px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3824" title="马踏早春 喜迎新年——北京大学江苏校友2014年迎新春联谊会成功举行"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/晚会.jpg" width="200" height="133.2"><span>马踏早春 喜迎新年——北京大学江苏校友2014年迎新春联谊会成功举行</span><span>来源：北京大学南京校友会</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 193px; left: 215px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3816" title="生命科学学院魏文胜实验室实现对TALE效应蛋白的完全解码"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x312.jpg.pagespeed.ic.mNkHzu1slL.jpg" width="200" height="133.33333333333"><span>生命科学学院魏文胜实验室实现对TALE效应蛋白的完全解码</span><span>来源：北京大学新闻网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 206px; left: 425px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3812" title="北京大学法学院金华校友2014年茶话会顺利进行"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x212.jpg.pagespeed.ic.bXZ6sOgp-5.jpg" width="200" height="133.2"><span>北京大学法学院金华校友2014年茶话会顺利进行</span><span>作者：吴昕颖</span><span>来源：北京大学法学院</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 206px; left: 635px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3799" title="林毅夫被授予塞内加尔国家功勋勋章"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x511.jpg.pagespeed.ic.hD4QRMwus2.jpg" width="200" height="132.88888888889"><span>林毅夫被授予塞内加尔国家功勋勋章</span><span>来源：北京大学新闻网</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 399px; left: 215px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3791" title="校友王长平任福建师范大学副校长（主持行政工作）"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x311.jpg.pagespeed.ic.eXENOmS1KV.jpg" width="200" height="133.2"><span>校友王长平任福建师范大学副校长（主持行政工作）</span><span>来源：福建师范大学</span></a>	</div>
		<div class="image_item masonry-brick" style="position: absolute; top: 405px; left: 5px;">
		<a target="_blank" href="http://www.pku.org.cn/?p=3788" title="校友唐显凯任中央统战部副秘书长兼政策研究室主任"><img src="http://www.pku.org.cn/wp-content/uploads/2014/02/200x133x211.jpg.pagespeed.ic.3kZZ4cnC7W.jpg" width="200" height="133.2"><span>校友唐显凯任中央统战部副秘书长兼政策研究室主任</span><span>来源：人民网</span></a>	</div>
	</div>						
					<div class="page_info" style="display:none;"> <a href="http://www.pku.org.cn/?cat=31&amp;paged=2">下一页 »</a> </div>							
				</div>
						
			</div>

       
    	
    <!--//校友总会 -->                                                <div class="clear"></div>
            </div>
<!--//right -->

			<div class="clear"></div>
         
         </div>			

<div class="footer_layout_container">
<div class="footer_layout">
</div>
</div>
	<!-- 代码 结束 -->

</body>
</html>
