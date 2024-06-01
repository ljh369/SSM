<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.Video"%>
    <%@page import="entity.User"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
List<Video> likevideo=(List)request.getAttribute("likevideo");
String username=(String)session.getAttribute("username"); 
User user=(User)request.getAttribute("usermessage");
Integer usernameid=(Integer)session.getAttribute("usernameid");
System.out.println("likevideo"+likevideo);
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
    <title>滴答滴答-搜索</title>

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
                        <div class="menu" id="navbox"> <a href="${pageContext.request.contextPath }/listgerenzhongxin.action?username=<%=username %>" class="tit"><img src="<%=user.getUserimgurl() %>" width="26px" height="26px"/></a>
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
<!-- banner 隐藏
<section>
    <div class="slider">
        <div class="bd">
            <ul>
                <li><a href="#"><img src="themes/img/banner/banner1.png" /></a></li>
                <li><a href="#"><img src="themes/img/banner/2.jpg" /></a></li>
                <li><a href="#"><img src="themes/img/banner/3.jpg" /></a></li>
                <li><a href="#"><img src="themes/img/banner/4.jpg" /></a></li>
            </ul>
        </div>
        <div class="hd">
            <ul>
            </ul>
        </div>
        <div class="pnBtn prev"><span class="blackBg"></span><a class="arrow" href="javascript:void(0)"></a></div>
        <div class="pnBtn next"><span class="blackBg"></span><a class="arrow" href="javascript:void(0)"></a></div>
    </div>
</section>
-->
<section>
   <div style="border-bottom:1px solid #ebeaea; border-top:1px solid #ebeaea; height:20px; margin-top:20px;"></div>
</section>
<section>
    <div id="azen-produc">
        <ul class="azen-lister clearfix">
            <%if(likevideo.size()!=0){ 
                	for(int i=0;i<likevideo.size();i++){
                		Video video1 =new Video(); //新建对象
                		video1 = likevideo.get(i);   //每循环一次后将此时的值保存到对象里%>
                	 <li>
                        <div><a about="" title="" target="_blank" href="${pageContext.request.contextPath }/videofind.action?videoid=<%= video1.getVideoid()%>&id=2&pageview=<%= video1.getPageview() %>"><img width="230" height="188" alt="" title="" src="<%= video1.getImgurl()%>"></a></div>
                        <div>
                            <ul class="azen-viewit list-viewit">
                                <li class="viewit"><a href="#"><%= video1.getType()%></a> </li>
                                <li class="likeit"><a href="#"><%= video1.getPageview()%></a> </li>
                                <!-- <li class="luatio"><a href="#">暂无评论</a> </li> -->
                            </ul>
                            <div class="azen-paddin"><a target="_blank" href="${pageContext.request.contextPath }/videofind.action?videoid=<%= video1.getVideoid()%>&id=2&pageview=<%= video1.getPageview() %>"><%= video1.getVideoname()%></a> </div>
                        </div>
                    </li>

                <%	}
                }
                %>
        </ul>
    </div>
</section>

<section>
    <div id="azen-linker">
        <div class="azen-linker clearfix">
            <dl>
                <dt>友情链接：</dt>
            </dl>
        </div>
    </div>
</section>
<div class="bottom_tools">
    <!-- <div class="qr_tool">二维码</div> -->
    <a id="feedback" href="${pageContext.request.contextPath }/videofind.action?id=6&videoid=0" title="意见反馈" target="_blank">意见反馈</a> <a id="scrollUp" href="javascript:;" title="飞回顶部"></a> <img class="qr_img" src="themes/img/icon/qr_img.png" width="173" height="234"> </div>
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
                <div class="fr">还没有账号<a href="member.html" target="_blank" title="立即注册" >立即注册</a></div>
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
            <h4>用第三方帐号直接登录</h4>
            <ul class="azen-thins">
                <li id="sinal"><a href="#">微博账号登录</a></li>
                <li id="qql"><a href="#">QQ账号登录</a></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div id="reg_setp">
    <div class="back_setp">返回</div>
    <div class="blogo"></div>
    <div id="setp_quicklogin">
        <h3>您可以选择以下第三方帐号直接登录Azen UI，一分钟完成注册</h3>
        <ul class="quicklogin_socical">
            <li class="quicklogin_socical_weibo"><a href="#">微博帐号注册</a></li>
            <li class="quicklogin_socical_qq" style="margin:0;"><a href="#">QQ帐号注册</a></li>
        </ul>
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
</script>

