<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
String username=(String)session.getAttribute("username"); 
Integer usernameid=(Integer)session.getAttribute("usernameid");
%>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="Azen UI, zaenui.com" name="author">
    <title>意见反馈</title>

    <link href="themes/icon/favicon.png" type="image/x-icon" rel="icon">
    <link href="themes/icon/startup.png" rel="apple-touch-startup-image">
    <link href="themes/icon/touch-icon-iphone-retina.png" sizes="114x114" rel="apple-touch-icon-precomposed">
    <link href="themes/icon/touch-icon-ipad.png" sizes="72x72" rel="apple-touch-icon-precomposed">
    <link href="themes/icon/touch-icon-ipad-retina.png" sizes="144x144" rel="apple-touch-icon-precomposed">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.min.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.info.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui-login.css">


</head>
<body>
<header id="azen-header">
    <div class="azen-conter">
        <div class="azen-logoer fl">
            <h1><a href="./" title="Azen UI">azenui</a></h1>
        </div>
        <nav class="azen-navion fl">
            <ul>
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=5" title="学习">学习</a></li> 
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=4" title="音乐">音乐</a></li>
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=3" class="美食">美食</a></li>
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=2"  title="生活">生活</a></li>
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=1" title="MAD/AMV">MAD/AMV</a></li>
                <li><a class="current" href="index1.jsp" title="首页">首页</a></li>
            </ul>
        </nav>
         <form action="${pageContext.request.contextPath }/likevideo.action">
        	<input name="keywords" type="text" style="border:1px solid;float: left;height: 38px; line-height: 38px;
        		text-indent: 20px;width: 150px;font-size: 15px;margin-top: 10px">
        	<input type="submit" value="搜索" style="float:left;height: 40px;width:50px;margin-top: 10px ">
        </form>
        <div id="azen-logino">
         <ul class="login fr">
			<%
			if(username==null){
			%>
			<li class="openlogin"><a href="javascript:void(0);">登录</a></li>
            <li class="reg"><a href="member.jsp">注册</a></li>
			<%
			}else{%>
			<%
			}
			%>
            </ul> 
            <%
			if(username!=null){
			%>
        	<div class="azen-userimg">
                <ul>
                    <li>
                        <div class="menu" id="navbox"> <a href="${pageContext.request.contextPath }/listgerenzhongxin.action?username=<%=username %>" class="tit"><img src="themes/img/user/azenui.png" title="" alt=""/></a>
                            <div class="subnav">
                                <div class="mem-titleic"><h3><%=username %></h3></div>
                                <% if(usernameid.equals(1)){%>
                                <div> <a href="${pageContext.request.contextPath }/videofind.action?id=3">后台管理</a> </div>
                                <% }else if(usernameid.equals(2)){%>
                                 <div> <a href="${pageContext.request.contextPath }/listgerenzhongxin.action?username=<%=username %>">个人中心</a> </div>
                                <div> <a href="${pageContext.request.contextPath }/listuser.action?username=<%=username %>">修改资料</a> </div>
                                <% }%>
                               
                                <div class="mem-mnueic"> <a href="${pageContext.request.contextPath }/userout.action">退出</a> </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <%
			}%>
    </div>
</header>
<section id="azen-pagess">
    <div id="azen-produc">
        <div class="azen-tittop clearfix">
            <div class="azen-titles fl clearfix">
                <h3>意见反馈 <img src="themes/img/icon/sc.png" width="17" height="23" title="" alt=""></h3>
                <p class="azen-titlep clearfix"><span class="fl">如果您在使用中遇到什么问题、有什么建议和意见请向我们提交，我们的成长离不开每一位用户的助力。</span><i class="fa fa-edit"></i> </p>
                <p style="height:20px;"></p>
            </div>
            <div class="azen-doesis fr"></div>
        </div>
        <div class="azen-backgr">
            <div class="azen-texter azne-workss">
                <div><h2><i class="fa fa-edit" style="font-size:30px;"></i></h2></div>
                <div class="azen-fiform">
                    <fieldset>
                        <form action="${pageContext.request.contextPath }/userregister.action" method="post" onsubmit="return check()">
                            ${msg}
                            <p class="clearfix">
                                <label class="fl"><em> * </em>你的姓名:</label>
                                <input id="rusername" class="azen-username" type="text" name="username">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>联系邮箱:</label>
                                <input id="rpassword" class="azen-username" type="text" name="password">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>意见反馈:</label>
                                <textarea id="azen-contersi" name="youconter"></textarea>
                            </p>
                          <!--   <p class="clearfix">
                                <label class="fl"><em> * </em>电子邮箱:</label>
                                <input id="azen-username" class="azen-username" type="email" name="email">
                            </p> -->
                           <!--  <p class="clearfix">
                                <label class="fl"><em> * </em>验证码:</label>
                                <input id="azen-username" class="azen-username" style="width:120px;" type="email" name="yourname">
                                <img src="themes/img/icon/yzm.png" width="100" height="40" id="vdimgck" alt="看不清？点击更换" style="padding-left:10px;">
                            </p> -->
                            <p class="clearfix">
                                <button id="zhuce">注册</button>&nbsp;&nbsp;&nbsp;<span id="message">${msg}</span>
                            </p>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div id="azen-linker">
        <div class="azen-linker azen-jichen clearfix">
            <dl>
                <dt>友情链接：</dt>
                <dd><a href="http://bilibili.com/" target="_blank" title="bilibili">bilibili</a> </dd>
            </dl>
        </div>
    </div>
</section>
<div class="bottom_tools">
    <div class="qr_tool">二维码</div>
    <a id="feedback" href="pinion.html" title="意见反馈" target="_blank">意见反馈</a> <a id="scrollUp" href="javascript:;" title="飞回顶部"></a> <img class="qr_img" src="themes/img/icon/qr_img.png"> </div>
<footer id="azen-footer">
    <div class="azen-footer">
        <div style="height:50px;"></div>
        <p>Copyright (c) 2015 <a href="http://azenui.com" style="color:#f60; text-decoration:underline;">http://www.azenui.com</a> . All Rights Reserved  京ICP备15006025号-1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建议使用Chrome、Firefox、Safari、ie10版本浏览器。</p>
    </div>
</footer>



<div class="loginmask"></div>
<div id="loginalert">
    <div class="pd20 loginpd">
        <h3><i class="closealert fr"></i>
            <div class="clear"></div>
        </h3>
        <div class="loginwrap">
            <div class="loginh">
                <div class="fl">会员登录</div>
                <div class="fr">还没有账号<a href="member.html" target="_blank" title="立即注册">立即注册</a></div>
            </div>
            <h3><span class="fl">邮箱登录</span><span class="login_warning">用户名或密码错误</span>
                <div class="clear"></div>
            </h3>
            <form action="${pageContext.request.contextPath }/userlogin.action" method="post" id="login_form">
                <div class="logininput">
                    <input id="username" type="text" name="username" class="loginusername"  placeholder="用户名" />
                    <input id="password" type="password" name="password" class="loginuserpasswordt"  placeholder="密码" />
                   <!-- <input type="password" name="password" class="loginuserpasswordp" style="display:none" />-->
                    <!-- <input type="text" class="loginuserpasswordt" value="" placeholder="密码" /> -->
                    
                </div>
                <div class="loginbtn">
                    <div class="loginsubmit fl">
                        <input type="submit" value="登录" class="btn"  />
                    </div>
                    <div class="fl" style="margin:26px 0 0 0;">
                        <input id="bcdl" type="checkbox" checked="true" />
                        保持登录</div>
                    <div class="fr" style="margin:26px 0 0 0;"><a href="resetpassword.jsp" target="_blank">忘记密码?</a></div>
                    <div class="clear"></div>
                </div>
            </form>
        </div>
    </div>
    <div class="thirdlogin">
        <div class="pd50">
            <h4>其他登录</h4>
            <ul class="azen-thins">
                <li id="sinal"><a href="loginroot.jsp">管理员登录</a></li>
                <!-- <li id="qql"><a href="#">QQ账号登录</a></li> -->
            </ul>
            <div class="clear"></div>
        </div>
    </div>
</div>

</body>
</html>


<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="themes/js/jquery-banner.js"></script>
<script type="text/javascript" src="themes/js/jquery-top.js"></script>
<script type="text/javascript" src="themes/js/jquery-hot.js"></script>
<script type="text/javascript" src="themes/js/jquery.login.js"></script>
<script type="text/javascript">
function check(){
    var username = $("#rusername").val();
    var password = $("#rpassword").val();
    var repassword = $("#repassword").val();
    if(username==""){
    	$("#message").text("姓名不能为空！");
        return false;
    }else if(password==""){
    	$("#message").text("邮箱不能为空！");
    	return false;
    }else if(repassword==""){
    	$("#message").text("确认密码不能为空！");
    	return false;
    }else if($("#rusername").val().length<6){
    	$("#message").text("姓名不能小于3位");
    	return false;
    }else if($("#rpassword").val().length<6){
    	$("#message").text("邮箱格式错误");
    	return false;
    }else if($("#repassword").val().length<6){
    	$("#message").text("确认密码密码不能小于6位");
    	return false;
    }
    return true;
}
    $(document).ready(function(){
    	$("#username").blur(
    			function(){
    				$(".name_lable").empty();
    				if(this.value==""){
    					$("#username").after("<label class='name_lable'><font>用户名不能为空</font></label>");
    				}else if(this.value.length<6){
    					$("#username").after("<label class='name_lable'><font>用户名不能小于6位</font></label>");
    				}
    			}		
    	)
    	$("#password").blur(
    			function(){
    				$(".password_lable").empty();
    				if(this.value==""){
    					$("#password").after("<label class='password_lable'><font>用户名不能为空</font></label>");
    				}else if(this.value.length<6){
    					$("#password").after("<label class='password_lable'><font>用户名不能小于6位</font></label>");
    				}
    			}		
    	)
    	$("#rusername").blur(
    			function(){
    				$(".rname_lable").empty();
    				if(this.value==""){
    					$("#rusername").after("<label class='rname_lable'><font>姓名不能为空</font></label>");
    				}else if(this.value.length>3){
    					$("#rusername").after("<label class='rname_lable'><font>姓名不能大于3位</font></label>");
    				}
    			}		
    	)
    	$("#rpassword").blur(
    			function(){
    				$(".rpassword_lable").empty();
    				if(this.value==""){
    					$("#rpassword").after("<label class='rpassword_lable'><font>邮箱不能为空</font></label>");
    				}else if(this.value.length<6){
    					$("#rpassword").after("<label class='rpassword_lable'><font>邮箱格式错误</font></label>");
    				}
    			}		
    	)
    	$("#azen-contersi").blur(
 
    			function(){
    	   			var rpassword= $("#rpassword").val();
        			var repassword= $("#repassword").val();
    				$(".repassword_lable").empty();
    				$(".repassword1_lable").empty();
    				if(this.value==""){
    					$("#repassword").after("<label class='repassword_lable'><font>正文不能超过100 </font></label>");
    				}else if(this.value.length<6){
    					$("#repassword").after("<label class='repassword_lable'><font>密码不能小于6位</font></label>");
    				}
    			}		
    	)
    	
/*     	$("#zhuce").click(
    		function(){
    			alert("提交");	
    		}
    	) */
        /* 设置第一张图片 */
        $(".slider .bd li").first().before($(".slider .bd li").last());

        /* 鼠标悬停箭头按钮显示 */
        $(".slider").hover(function(){
            $(this).find(".arrow").stop(true,true).fadeIn(300)
        },function(){
            $(this).find(".arrow").fadeOut(300)
        });

        /* 滚动切换 */
        $(".slider").slide({
            titCell:".hd ul",
            mainCell:".bd ul",
            effect:"leftLoop",
            autoPlay:true,
            vis:3,
            autoPage:true,
            trigger:"click"
        });

    });

    if(document.getElementById("jsfoot01")){
        var scrollup = new ScrollText("jsfoot01");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 30;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "down"; //文字向下滚动
    }

    var k=!0;

    $(".loginmask").css("opacity",0.8);

    if($.browser.version <= 6){
        $('#reg_setp,.loginmask').height($(document).height());
    }

    $(".thirdlogin ul li:odd").css({marginRight:0});

    $(".openlogin").click(function(){
        k&&"0px"!=$("#loginalert").css("top")&& ($("#loginalert").show(),$(".loginmask").fadeIn(500),$("#loginalert").animate({top:0},400,"easeOutQuart"))
    });

    $(".loginmask,.closealert").click(function(){
        k&&(k=!1,$("#loginalert").animate({top:-600},400,"easeOutQuart",function(){$("#loginalert").hide();k=!0}),$(".loginmask").fadeOut(500))
    });


    $("#sigup_now,.reg a").click(function(){
        $("#reg_setp,#setp_quicklogin").show();
        $("#reg_setp").animate({left:0},500,"easeOutQuart")
    });

    $(".back_setp").click(function(){
        "block"==$("#setp_quicklogin").css("display")&&$("#reg_setp").animate({left:"100%"},500,"easeOutQuart",function(){$("#reg_setp,#setp_quicklogin").hide()})

    });

</script>
