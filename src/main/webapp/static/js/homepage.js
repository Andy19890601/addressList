$(function () {
	
  //--------------ͼƬ�ֲ� start---------------------
  var sWidth = $("#focus").width(); //��ȡ����ͼ�Ŀ�ȣ���ʾ�����
	var len = $("#focus ul li").length; //��ȡ����ͼ����
	var index = 0;
	var picTimer;
	
	//���´���������ְ�ť�Ͱ�ť��İ�͸������������һҳ����һҳ������ť
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.5);

	//ΪС��ť�����껬���¼�������ʾ��Ӧ������
	$("#focus .btn span").css("opacity",0.4).mouseover(function() {
		index = $("#focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	//��һҳ����һҳ��ť͸���ȴ���
	$("#focus .preNext").css("opacity",0.2).hover(function() {
		$(this).stop(true,false).animate({"opacity":"0.5"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.2"},300);
	});

	//��һҳ��ť
	$("#focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//��һҳ��ť
	$("#focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//����Ϊ���ҹ�����������liԪ�ض�����ͬһ�����󸡶�������������Ҫ�������ΧulԪ�صĿ��
	$("#focus ul").css("width",sWidth * (len));
	
	//��껬�Ͻ���ͼʱֹͣ�Զ����ţ�����ʱ��ʼ�Զ�����
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000); //��4000�����Զ����ŵļ������λ������
	}).trigger("mouseleave");
	
	//��ʾͼƬ���������ݽ��յ�indexֵ��ʾ��Ӧ������
	function showPics(index) { //��ͨ�л�
		var nowLeft = -index*sWidth; //����indexֵ����ulԪ�ص�leftֵ
		$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //ͨ��animate()����ulԪ�ع������������position
		//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //Ϊ��ǰ�İ�ť�л���ѡ�е�Ч��
		$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //Ϊ��ǰ�İ�ť�л���ѡ�е�Ч��
	}
   //----------------------ͼƬ�ֲ�����------------------------------------
  
	//**********��js�ÿ�ܾ���*************
		var width = $(window).width();
		var div_width = $('.center_position').width();
		var w = (width-div_width)/2;
		$('.center_position').css('margin-left',w);
	
	  //**********************************
	//****�ط�У�ѻᡢרҵ�ֻᡢ�����л�*****
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
	//----�ط�Ժ�ѻ����------
		
			$("#scr1").marquee({
            auto: true,
            interval: 2500,
            showNum: 6,
            stepLen: 2,
            type: 'vertical'
        });  
	//----����ͼƬ����-----
			$(".picContainer").marquee({
            auto: true,
            interval: 1000,
            showNum: 7.5,
            stepLen: 1,
            type: 'horizontal'
        });  
	//---��������---
			$("#marquee2").marquee({
            auto: true,
            interval: 2500,
            showNum: 13,
            stepLen: 3,
            type: 'vertical'
        });  
	// ----��ʾ��ͬ����Ƭ-----
	$('#photo1').mouseover(function(){
		$('#photocontent_photo2').css('display','none');	
		$('#photocontent_photo1').css('display','block');		
	});
	$('#photo2').mouseover(function(){
		$('#photocontent_photo1').css('display','none');	
		$('#photocontent_photo2').css('display','block');		
	});
			
	//---�л�������Ϣ�� ������Ϣ
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
