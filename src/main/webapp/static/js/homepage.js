$(function () {
	
  //--------------图片轮播 start---------------------
  var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
	var len = $("#focus ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.5);

	//为小按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus .btn span").css("opacity",0.4).mouseover(function() {
		index = $("#focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	//上一页、下一页按钮透明度处理
	$("#focus .preNext").css("opacity",0.2).hover(function() {
		$(this).stop(true,false).animate({"opacity":"0.5"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.2"},300);
	});

	//上一页按钮
	$("#focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//下一页按钮
	$("#focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus ul").css("width",sWidth * (len));
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000); //此4000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
		//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
		$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
	}
   //----------------------图片轮播结束------------------------------------
  
	//**********用js让框架居中*************
		var width = $(window).width();
		var div_width = $('.center_position').width();
		var w = (width-div_width)/2;
		$('.center_position').css('margin-left',w);
	
	  //**********************************
	//****地方校友会、专业分会、社团切换*****
	  	$('.div_title ul li:eq(0)').mouseover(function(){
	  		$('#aa_club_content_one3').css('display','none');
	  		$('#aa_club_content_one2').css('display','none');
	  		$('#aa_club_content_one1').css('display','block');	  		
	  	});
		$('.div_title ul li:eq(1)').mouseover(function(){
	  		$('#aa_club_content_one1').css('display','none');
	  		$('#aa_club_content_one3').css('display','none');
	  		$('#aa_club_content_one2').css('display','block');	  		
	  	});
		$('.div_title ul li:eq(2)').mouseover(function(){
	  		$('#aa_club_content_one1').css('display','none');
	  		$('#aa_club_content_one2').css('display','none');
	  		$('#aa_club_content_one3').css('display','block');	  		
	  	});
	//----地方院友会滚动------
		
			$("#scr1").marquee({
            auto: true,
            interval: 2500,
            showNum: 6,
            stepLen: 2,
            type: 'vertical'
        });  
	//----回忆图片滚动-----
			$(".picContainer").marquee({
            auto: true,
            interval: 1000,
            showNum: 7.5,
            stepLen: 1,
            type: 'horizontal'
        });  
	//---捐赠滚动---
			$("#marquee2").marquee({
            auto: true,
            interval: 2500,
            showNum: 13,
            stepLen: 3,
            type: 'vertical'
        });  
	// ----显示不同的照片-----
	$('#photo1').mouseover(function(){
		$('#photocontent_photo2').css('display','none');	
		$('#photocontent_photo1').css('display','block');		
	});
	$('#photo2').mouseover(function(){
		$('#photocontent_photo1').css('display','none');	
		$('#photocontent_photo2').css('display','block');		
	});
			
	//---切换最新消息和 最热消息
	$('#bbstab1').mouseover(function(){
			$('#bbstab2').css('color','#999');
			$('#bbscontent_bbstab2').css('display','none');
			$('#bbstab1').css('color','#960300');
			$('#bbstab1').css('font-weight','bold');
			$('#bbscontent_bbstab1').css('display','block');			
		
	});
	$('#bbstab2').mouseover(function(){
			$('#bbstab1').css('color','#999');
			$('#bbscontent_bbstab1').css('display','none');
			$('#bbstab2').css('color','#960300');
			$('#bbstab2').css('font-weight','bold');
			$('#bbscontent_bbstab2').css('display','block');			
		
	});
});
