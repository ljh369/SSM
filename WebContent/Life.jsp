<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.Video"%>
    <%@page import="java.util.List"%>
    <%@page import="entity.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
List<Video> video=(List)request.getAttribute("video");
User user=(User)request.getAttribute("usermessage");
String username=(String)session.getAttribute("username"); 
Integer usernameid=(Integer)session.getAttribute("usernameid");
System.out.println(username);
%>


<head lang="en">
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
	<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
    
    <title>滴答滴答 Life</title>

    <link href="themes/icon/favicon.png" type="image/x-icon" rel="icon">
    <link href="themes/icon/startup.png" rel="apple-touch-startup-image">
    <link href="themes/icon/touch-icon-iphone-retina.png" sizes="114x114" rel="apple-touch-icon-precomposed">
    <link href="themes/icon/touch-icon-ipad.png" sizes="72x72" rel="apple-touch-icon-precomposed">
    <link href="themes/icon/touch-icon-ipad-retina.png" sizes="144x144" rel="apple-touch-icon-precomposed">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.min.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui.info.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui-login.css">
    <link rel="stylesheet" type="text/css" href="themes/css/admin.css">
    <link rel="stylesheet" type="text/css" href="themes/css/azenui-us.css">

</head>
<body id="azen-user-bj">

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
                <li><a class="current" href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=2"  title="生活">生活</a></li>
                <li><a href="${pageContext.request.contextPath }/videofind.action?id=4&videoid=1" title="MAD/AMV">MAD/AMV</a></li>
                <li><a href="index1.jsp" title="首页">首页</a></li>
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
<section>
    <div id="azen-produc">
        <div class="clearfix">
            <ul class="azen-Newest fl">
                <li><a href="#" class="Recommend">推荐</a></li>
                <li><a href="#">最新</a></li>
                <li><a href="#">热门</a></li>
                <li><a href="#">源文件</a></li>
            </ul>
            <div class="notice fl">
                <ul id="jsfoot01" class="noticTipTxt">
                    <li><a href="#">欢迎来到滴答滴答 <img src="themes/img/icon/hot.gif" width="22" height="11" /></a></li>
                    <li><a href="#">欢迎来到滴答滴答</a></li>
                    <li><a href="#">欢迎来到滴答滴答</a></li>
                    <li><a href="#">欢迎来到滴答滴答</a></li>
                </ul>
            </div>
            <div >
               <a href="uploadvideo.jsp" style="float:left; block;margin-left:20px;padding:20px 40px;background-color: blue; ">上传作品</a>&nbsp;
            </div>
        </div>
         <ul class="azen-lister clearfix">
                   <%if(video.size()!=0){ 
                	for(int i=0;i<video.size();i++){
                		Video video1 =new Video(); //新建对象
                		video1 = video.get(i);   //每循环一次后将此时的值保存到对象里%>
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
                <dd><a href="http://www.bilibili.cpm/" target="_blank" title="bilibili">bilibili</a> </dd>
            </dl>
        </div>
    </div>
</section>
<div style="width:1003px; margin:0 auto; height:70px; padding-left:20px;" ><a href="http://webscan.360.cn/index/checkwebsite/url/azenui.com"><img border="0" style="height:40px;" src=""/></a>
</div>
<div class="bottom_tools">
    <a id="feedback" href="${pageContext.request.contextPath }/videofind.action?id=6&videoid=0" title="意见反馈" target="_blank">意见反馈</a> <a id="scrollUp" href="javascript:;" title="飞回顶部"></a> <img class="qr_img" src="themes/img/icon/qr_img.png" width="173" height="234"> </div>
<footer id="azen-footer">
    <div class="azen-footer">
        <div style="height:50px;"></div>
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
                <div class="fl">用户登录</div>
                <div class="fr">还没有账号<a href="member.jsp" target="_blank" title="立即注册" >立即注册</a></div>
            </div>
            <!-- <h3><span class="fl">用户名登录</span><span class="login_warning">用户名或密码错误</span> -->
                <div class="clear"></div>
            </h3>
            <form action="${pageContext.request.contextPath }/userlogin.action" method="post" id="login_form" onsubmit="return check()">
                <div class="logininput">
                    <input id="username" type="text" name="username" class="loginusername"  placeholder="用户名" />
                    <input id="password" type="password" name="password" class="loginuserpasswordt"  placeholder="密码" />
                   <!-- <input type="password" name="password" class="loginuserpasswordp" style="display:none" />-->
                    <!-- <input type="text" class="loginuserpasswordt" value="" placeholder="密码" /> -->
                    <span id="message">${msg}</span>
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
    var username = $("#username").val();
    var password = $("#password").val();
    if(username==""){
    	$("#message").text("账号不能为空！");
        return false;
    }else if(password==""){
    	$("#message").text("密码不能为空！");
    	return false;
    }else if($("#username").val().length<6){
    	$("#message").text("用户名不能小于6位");
    	return false;
    }else if($("#password").val().length<6){
    	$("#message").text("密码不能小于6位");
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
					$("#password").after("<label class='password_lable'><font>密码不能为空</font></label>");
				}else if(this.value.length<6){
					$("#password").after("<label class='password_lable'><font>密码不能小于不能小于6位</font></label>");
				}
			}		
		
		)
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
