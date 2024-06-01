<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
String username=(String)session.getAttribute("username"); 
Integer usernameid=(Integer)session.getAttribute("usernameid");
String addvideo=(String)request.getAttribute("addvideo");
System.out.println(addvideo);
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
    <title>视频上传</title>

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
            <h1><a href="./" title="Azen UI">滴答滴答</a></h1>
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
            ${msg}
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
                <h3>视频上传 <img src="themes/img/icon/sc.png" width="17" height="23" title="" alt=""></h3>
                <p class="azen-titlep clearfix"><span class="fl">登录后上传你的视频吧。</span><i class="fa fa-edit"></i> </p>
                <p style="height:20px;"></p>
            </div>
            <div class="azen-doesis fr"></div>
        </div>
        <div class="azen-backgr">
            <div class="azen-texter azne-workss">
                <div><h2><i class="fa fa-edit" style="font-size:30px;"></i></h2></div>
                <div class="azen-fiform">
                    <fieldset>
                        <form action="${pageContext.request.contextPath }/multifile.action" method="post" enctype="multipart/form-data">
                            ${addvideo}
                            <p class="clearfix">
                                <label class="fl"><em> * </em></label>
                                <input id="azen-username" class="azen-username" value="<%=username %>" type="hidden" name="username">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>上传视频:</label>
                                <input id="azen-username" class="azen-username" type="file" name="myfile">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>上传图片:</label>
                                <input id="azen-username" class="azen-username" type="file" name="myfile">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>视频名称:</label>
                                <input id="azen-username" class="azen-username" type="text" name="description">
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>选择分区:</label>
                         		<label style="font-size: 30px"> <input id="type" class="type" type="radio" name="type" value="AMV/MAD" checked>MAD/AMV</label>&nbsp;&nbsp;
                              	<label style="font-size: 30px"> <input id="type" class="type" type="radio" name="type" value="生活" >生活</label>&nbsp;&nbsp;
                           		<label style="font-size: 30px"> <input id="type" class="type" type="radio" name="type" value="美食" >美食</label>&nbsp;&nbsp;
                            	<label style="font-size: 30px"> <input id="type" class="type" type="radio" name="type" value="音乐" >音乐</label>&nbsp;&nbsp;
                            	<label style="font-size: 30px"> <input id="type" class="type" type="radio" name="type" value="学习" >学习</label>&nbsp;&nbsp;
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>创作类型:</label>
                         		<label style="font-size: 30px"> <input id="1" class="1" type="radio" name="1" value="AMV/MAD" checked>转载</label>&nbsp;&nbsp;
                              	<label style="font-size: 30px"> <input id="1" class="1" type="radio" name="1" value="生活" >自制</label>&nbsp;&nbsp;
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
                                <button>上传</button>
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
    <!-- <div class="qr_tool">二维码</div> -->
    <a id="feedback" href="${pageContext.request.contextPath }/videofind.action?id=6&videoid=0" title="意见反馈" target="_blank">意见反馈</a> <a id="scrollUp" href="javascript:;" title="飞回顶部"></a> <img class="qr_img" src="themes/img/icon/qr_img.png"> </div>
<footer id="azen-footer">
    <div class="azen-footer">
        <div style="height:50px;"></div>
        <p></p>
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
            <form action="" method="post" id="login_form">
                <div class="logininput">
                    <input type="text" name="username" class="loginusername" value="" placeholder="邮箱/用户名" />
                    <input type="text" class="loginuserpasswordt" value="" placeholder="密码" />
                    <input type="password" name="password" class="loginuserpasswordp" style="display:none" />
                </div>
                <div class="loginbtn">
                    <div class="loginsubmit fl">
                        <input type="submit" value="登录" class="btn" />
                    </div>
                    <div class="fl" style="margin:26px 0 0 0;">
                        <input id="bcdl" type="checkbox" checked="true" />
                        保持登录</div>
                    <div class="fr" style="margin:26px 0 0 0;"><a href="resetpassword.html" target="_blank">忘记密码?</a></div>
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
              <!--   <li id="qql"><a href="#">QQ账号登录</a></li> -->
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
$(document).ready(function(){

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
    $(function(){
        $(".soft_con_icon ul li a").mouseover(function(){
            var id = $(this).attr("id");
            var x=$(this).parent().index();
            $(this).children("p").css({"color":"#008dd9"}).parent().parent().siblings().children().children("p").css({"color":"#333333"});
            var src1=id+"_icon/hover.gif"
            $(".soft_con_icon ul li a").each(function(index, element) {
                var other_id = $(this).attr("id");
                if(id == other_id){
                    $(this).children("img").attr("src","images/icon/"+src1);
                }else{
                    var src2 = other_id+".gif";
                    $(this).children("img").attr("src","images/icon/"+src2);
                }
            });
            if(x==0){
                $("#xzgl").css({"display":"block"}).siblings().css({"display":"none"});
                $(".soft_con1").css({"background":" url(theme/img/icon/line_select_001.gif)"});
            }else if(x==1){
                $("#crm").css({"display":"block"}).siblings().css({"display":"none"});
                $(".soft_con1").css({"background":"url(theme/img/icon/line_select_002.gif)"});
            }
        });
    });
    $(document).ready(function() {
        $("#memside").css("height",$(window).height());
    });

    $('.mem-Program li').hover(function(){
        $(this).children("div").children("div.mem-fa-upload").show();
    }, function(){
        $(this).children("div").children("div.mem-fa-upload").hide();
    });


    $('.mem-coreion li').hover(function(){
        $(this).children("div").children("div.mem-applition").show();
    }, function(){
        $(this).children("div").children("div.mem-applition").hide();
    });

    (function(a){
        a.fn.hoverClass=function(b){
            var a=this;
            a.each(function(c){
                a.eq(c).hover(function(){
                    $(this).addClass(b)
                },function(){
                    $(this).removeClass(b)
                })
            });
            return a
        };
    })(jQuery);

    $(function(){
        $("#navbox").hoverClass("currents");
    });

</script>
