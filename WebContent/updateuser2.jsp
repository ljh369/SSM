<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.Video"%>
    <%@page import="java.util.List"%>
    <%@page import="entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String username=(String)session.getAttribute("username"); 
User usermessage=(User)request.getAttribute("usermessage");
Integer usernameid=(Integer)session.getAttribute("usernameid");
System.out.println(usermessage);

%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta content="Azen UI, zaenui.com" name="author">
    <title>修改个人信息</title>

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
                        <div class="menu" id="navbox"> <a href="${pageContext.request.contextPath }/listgerenzhongxin.action?username=<%=username %>" class="tit"><img src="<%=usermessage.getUserimgurl() %>" width="26px" height="26px"/></a>
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
    </div>
</header>
<section id="azen-pagess">
    <div id="azen-produc">
        <div class="azen-tittop clearfix">
            <div class="azen-titles fl clearfix">
                <h3>修改信息 <img src="themes/img/icon/sc.png" width="17" height="23" title="" alt=""></h3>
                <p class="azen-titlep clearfix"><span class="fl">更改个人信息</span><i class="fa fa-edit"></i> </p>
                <p style="height:20px;"></p>
            </div>
            <div class="azen-doesis fr"></div>
        </div>
        <div class="azen-backgr">
            <div class="azen-texter azne-workss">
                <div><h2><i class="fa fa-edit" style="font-size:30px;"></i></h2></div>
                <div class="azen-fiform">
                    <fieldset>
                        <form action="${pageContext.request.contextPath }/updateuser.action" method="post" onsubmit="return check()">
                            ${updateusermessage}
                            <!-- <p class="clearfix">
                                <label class="fl"><em> * </em>上传图片:</label>
                                <input id="azen-username" class="azen-username" type="file" name="myfile">
                            </p> -->
                            <p class="clearfix">
                                <label class="fl"><em> * </em>用户名:</label>
                                <input id="azen-username" class="azen-username" type="hidden" name="username" value="<%=usermessage.getUsername() %>"><%=usermessage.getUsername() %>
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>原密码:</label>
                                <input id="oldpassword" class="azen-username" type="password" name="oldpassword" >
                                <!-- <label>原密码不能小于6位</label> -->
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>新密码:</label>
                                <input id="newpassword" class="azen-username" type="password" name="password">
                               <!--  <label>新密码不能小于6位</label> -->
                            </p>
                            <p class="clearfix">
                                <label class="fl"><em> * </em>确认密码:</label>
                                <input id="repassword" class="azen-username" type="password" name="repassword">
                                <!-- <label>两次输入密码不同</label> -->
                            </p>
	       
                            <p class="clearfix">
                                <label class="fl"><em> * </em>性别:</label>
                                <% if(usermessage.getSex().equals("男")){%>
                               	<label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="男" checked>男</label>&nbsp;&nbsp;
                              	<label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="女" >女</label>
                                <%}else if(usermessage.getSex().equals("女")){%>
                                <label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="男" >男</label>&nbsp;&nbsp;
                              	<label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="女" checked>女</label>
                                <%}else{%>
                                <label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="男" >男</label>&nbsp;&nbsp;
                              	<label style="font-size: 30px"> <input id="sex" class="sex" type="radio" name="sex" value="女" >女</label>
                                <%}%>
                            </p> 
                           <!--  <p class="clearfix">
                                <label class="fl"><em> * </em>验证码:</label>
                                <input id="azen-username" class="azen-username" style="width:120px;" type="email" name="yourname">
                                <img src="themes/img/icon/yzm.png" width="100" height="40" id="vdimgck" alt="看不清？点击更换" style="padding-left:10px;">
                            </p> -->
                            <p class="clearfix">
                                <button>提交</button>
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
    var oldpassword = $("#oldpassword").val();
    var password = $("#password").val();
    if(username==""){
    	$("#message").text("账号不能为空！");
        return false;
    }else if(oldpassword==""){
    	$("#message").text("旧密码不能为空！");
    	return false;
    }else if(password==""){
    	$("#message").text("新密码不能为空！");
    	return false;
    }else if(repassword==""){
    	$("#message").text("确认密码不能为空！");
    	return false;
    }else if($("#rusername").val().length<6){
    	$("#message").text("用户名不能小于6位");
    	return false;
    }else if($("#rpassword").val().length<6){
    	$("#message").text("密码不能小于6位");
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
	$("#oldpassword").blur(
			function(){
				$(".oldpassword_lable").empty();
				if(this.value==""){
					$("#oldpassword").after("<label class='oldpassword_lable'><font>旧密码不能为空</font></label>");
				}else if(this.value.length<6){
					$("#oldpassword").after("<label class='oldpassword_lable'><font>旧密码不能小于6位</font></label>");
				}
			}		
	)
	$("#newpassword").blur(
			function(){
				$(".newpassword_lable").empty();
				if(this.value==""){
					$("#newpassword").after("<label class='newpassword_lable'><font>新密码不能为空</font></label>");
				}else if(this.value.length<6){
					$("#newpassword").after("<label class='newpassword_lable'><font>新密码不能小于6位</font></label>");
				}
			}		
	)
	$("#repassword").blur(
			function(){
	   			var newpassword= $("#newpassword").val();
    			var repassword= $("#repassword").val();
				$(".repassword_lable").empty();
				$(".repassword1_lable").empty();
				if(this.value==""){
					$("#repassword").after("<label class='repassword_lable'><font>确认密码不能为空</font></label>");
				}else if(this.value.length<6){
					$("#repassword").after("<label class='repassword_lable'><font>确认密码不能小于6位</font></label>");
				}
				if(newpassword!=repassword){
					$("#repassword").after("<label class='repassword1_lable'><font>两次密码输入不相同&nbsp</font></label>");
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
