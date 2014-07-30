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
<link rel="stylesheet" type="text/css" href="/static/css/aa.css" />
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
				<a href="photowall.jsp" class="nav-btn_" id="findpic" data-device=""><span >照片墙&nbsp;&nbsp;&nbsp;</span></a>
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
                                                <!--main -->

<p><img src="/static/img/aa_title.gif"></p>

<div class="blue_tab" style="margin: 15px 20px; display:none;">
    <ul>
	<li><a href="/aa" id="one1" class="cur">校友总会</a></li>
	<li><a href="/aa/branch" id="one2">地方校友会</a></li>
	<li><a href="/aa/institute" id="one3">院系分会</a></li>
	<li><a href="/aa/club" id="one4">俱乐部</a></li>
                <li><a href="/aa/association" id="one5">学生协会</a></li>

    </ul>
</div>
<!--校友总会 -->
<hr style="border-color: #960300;" size="1">
<div id="con_one_1" class="tab_content">

    <div>

	<div style="width:650px;float:left">

	    <div id="intro" style="line-height:1.7em;color:#333">
<h3 id="title_name" style="font-size: 1.5em;">北京大学校友总会简介</h3><p>　　经国务院批准，同根同源的原北京大学、杭州大学、浙江农业大学、浙江医科大学于1998年9月15日合并组建成为新的“北京大学”。 原四校校友都成为了新北京大学的校友，总数达50万。广大校友纷纷为母校办学献计献策、牵线搭桥、慷慨解囊,对学校的建设与发展作出了重要的贡献。<br>　　学校领导和各地校友都十分关心校友会组织的建设。北京大学校友总会在1999年5月经国家教育部、1999年12月经民政部审查同意重新登记，完成了登记注册工作。在此基础上，经过学校领导和各地校友会、广大校友以及学校各部门、各学院的努力下，新北京大学首届校友代表大会暨北京大学校友总会成立大会于2000年1月16日隆重召开，会议通过了北京大学校友总会章程，选举产生了校友总会领导机构，正式宣告北京大学校友总会成立。2013年4月，经国家民政部评估，北京大学校友总会被评为AAAA级社会组织。　　<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前，遍布北美、欧洲、澳洲、东南亚等十几个国家及国内31个省市、港澳台地区的140个地方校友会，活跃在全球各地，并越来越成为广大求是学子在各地的家，充分发挥着凝聚校友、服务母校、回报社会的作用。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>　　<strong>地址：</strong>杭州西湖区余杭塘路866号北京大学校友活动中心（李摩西楼）&nbsp;&nbsp;&nbsp;&nbsp;邮编：310058&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>　　<strong>电话：</strong>0571-88981225&nbsp;&nbsp;88208656&nbsp; 88208986&nbsp; 88208981&nbsp;&nbsp;纪念品部：0571-88981065<br>　　<strong>传真：</strong>0571-88208981&nbsp;&nbsp;87951019&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>　　<strong>E-mail：</strong><a href="mailto:zuaa@zju.edu.cn">zuaa@zju.edu.cn</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>　　<strong>网站：</strong>zuaa.zju.edu.cn<br>　　<strong>手机版：</strong>m.zuaa.com<br>　　<strong>微博：</strong>weibo.com/zjuaa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span"><strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 校长助理、副会长</strong><br>　　　张美凤　　　　　　电话：0571-88206029　　E-mail：<a href="mailto:zhangmf@zju.edu.cn">zhangmf@zju.edu.cn</a><br>&nbsp;&nbsp;&nbsp;　<strong>秘书长&nbsp;</strong><br>　　　金海燕　　　　　　电话：0571-87953345　　E-mail：<a href="mailto:jinhy123@zju.edu.cn">jinhy123@zju.edu.cn</a><br>　　<strong style="FONT-WEIGHT: bold">副秘书长</strong><br>　　　吴　晨　　　　　　电话：0571-88208598　　E-mail：<a href="mailto:wuchen@zju.edu.cn">wuchen@zju.edu.cn</a><br>　　　顾玉林　　　　　　电话：0571-88208588　　E-mail：<a href="mailto:guyl@zju.edu.cn">guyl@zju.edu.cn</a>　　　　<br>　　<strong>秘书处办公室主任</strong><br>　　　楼华梁　　　　　　电话：0571-88981225　　E-mail：<a href="mailto:lhl1978@zju.edu.cn">lhl1978@zju.edu.cn</a><br>　　<strong>秘书处办公室副主任</strong><br>　　　张灿燕　　　　　　电话：0571-88208656　　E-mail：<a href="mailto:zhangcy@zju.edu.cn">zhangcy@zju.edu.cn</a>　<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 鲁小双(兼)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 电话：0571-88981347　　E-mail：<a href="mailto:lxsh@zju.edu.cn">lxsh@zju.edu.cn</a> <br>　　　陈振华(兼) 　　　　电话：0571-88981155　　E-mail：<a href="mailto:chenzh@zju.edu.cn">chenzh@zju.edu.cn</a>　</span><span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span">　　　<br>　　　徐瑞君(兼) 　　　　电话：0571-88208600　　E-mail：<a href="mailto:xurj@zju.edu.cn">xurj@zju.edu.cn</a>　<span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span">　　　<br></span>　　　庄代波(兼) 　　　　电话：0571-88208578　　E-mail：<a href="mailto:zhuangdb@zju.edu.cn">zhuangdb@zju.edu.cn</a>　　　　　　　　　<br>　　<strong>办公室人员</strong>　<br>　　　徐函英　　　　　　电话：0571-88208870　　E-mail：<a href="mailto:xuhy@zju.edu.cn">xuhy@zju.edu.cn</a> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 姚文和　　　　　　电话：0571-88981155　　E-mail：<a href="mailto:yaowenhe@zju.edu.cn">yaowenhe@zju.edu.cn</a> <br>　　　杨　捷　　　　　　电话：0571-88208986　　E-mail：<a href="mailto:yangj@zju.edu.cn">yangj@zju.edu.cn</a><br>　　　蒋庆荣　　　　　　电话：0571-88981461　　E-mail：<a href="mailto:jiangqingrong@zju.edu.cn">jiangqingrong@zju.edu.cn</a><br>　　　周陈伟　　　　　　电话：0571-88981225　　E-mail：<a href="mailto:zhoucw@zju.edu.cn">zhoucw@zju.edu.cn</a><br>　　　彭真丹　　　　　　电话：0571-88981461　　E-mail：<a href="mailto:zhendan@zju.edu.cn">zhendan@zju.edu.cn</a><br>　　　刘艳舞　　　　　　电话：0571-88208656　　E-mail：<a href="mailto:liuyanwu@zju.edu.cn">liuyanwu@zju.edu.cn</a><br><span style="FONT-FAMILY: arial,helvetica,sans-serif; COLOR: #000000">　　　</span></span><span style="FONT-FAMILY: arial,helvetica,sans-serif">郑昕鹏　　　　　　电话：0571-88208981　　E-mail：<a href="mailto:zhengxp@zju.edu.cn">zhengxp@zju.edu.cn</a><br>　　　汪旭仲　　　　　　电话：0571-88208981　　E-mail：<a href="mailto:wangxzh@zju.edu.cn">wangxzh@zju.edu.cn</a></span><span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span"><br>　　　孙惠红　　　　　　电话：0571-88981347　　E-mail：<a href="mailto:shh@zju.edu.cn">shh@zju.edu.cn</a><br>　　　周爱华　　　　　　电话：0571-88208578　　E-mail：<a href="mailto:zhouah@zju.edu.cn">zhouah@zju.edu.cn</a><br>　　　毛黎华　　　　　　电话：0571-88208578　　E-mail：<a href="mailto:maolh@zju.edu.cn">maolh@zju.edu.cn</a><br>　　　刘　敏　　　　　　电话：0571-88206090　　E-mail：<a href="mailto:liumin0214@zju.edu.cn">liumin0214@zju.edu.cn</a><br>　　　胡维佳　　　　　　电话：0571-88206364　　E-mail：<a href="mailto:huwj@zju.edu.cn">huwj@zju.edu.cn</a><br>　　　王　一　　　　　　电话：0571-88206364　　E-mail：<a href="mailto:wangyizd@zju.edu.cn">wangyizd@zju.edu.cn</a><br>　　　宋丽丽　　　　　　电话：0571-88206090　　E-mail：<a href="mailto:lsong1030@zju.edu.cn">lsong1030@zju.edu.cn</a><br>　　　曾岳艳　　　　　　电话：0571-88981073　　E-mail：<a href="mailto:zeng9865@zju.edu.cn">zeng9865@zju.edu.cn</a><br>　　　张　丽　　　　　　电话：0571-88981073　　E-mail：<a href="mailto:zhanglil@zju.edu.cn">zhanglil@zju.edu.cn</a><br></span><span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span">　　　王惠英　　　　　　电话：0571-88981073　　E-mail：<a href="mailto:Wang050316@zju.edu.cn">Wang050316@zju.edu.cn</a><br>　　　赵　佳　　　　　　电话：0571-88981283　　E-mail：<a href="mailto:zhaojia@zju.edu.cn">zhaojia@zju.edu.cn</a><br>　　　梁　洁　　　　　　电话：0571-88981283　　E-mail：<a href="mailto:liangjie@zju.edu.cn">liangjie@zju.edu.cn</a><br></span>　　<span style="FONT-FAMILY: arial,helvetica,sans-serif">　华　骁　　　　　　电话：0571-88206564　　E-mail：<a href="mailto:huaxiaowww@zju.edu.cn">huaxiaowww@zju.edu.cn</a><br>　　　张巧琼　　　　　　电话：0571-88206564　　E-mail：<a href="mailto:zhqq@zju.edu.cn">zhqq@zju.edu.cn</a></span></p><p>&nbsp;</p><p style="TEXT-INDENT: 2em"><span style="FONT-FAMILY: arial, 新宋体, sans-serif, 宋体; COLOR: #000000" class="Apple-style-span"></span></p></div>
	</div>
	<div style="width:200px;float:right;border:1px solid #E3EEF8;padding:10px;">
            <ul id="aa_info">
                <li><a href="/aa" class="cur">北京大学校友总会简介</a></li>
                <li><a href="/aa/constitution">北京大学校友总会章程</a></li>
                <li><a href="/aa/organization">北京大学校友总会理事会</a></li>
    		          <li><a href="/aa/memorabilia">北京大学校友总会大事记</a></li>
            </ul>

            </div>

    	<div class="clear"></div>
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
