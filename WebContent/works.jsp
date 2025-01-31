<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.Video"%>
    <%@page import="java.util.List"%>
    <%@page import="entity.User"%>
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
    <meta content="azenui, 设计素材, 素材, PSD, 矢量, AI, 模板, 设计, PSD源文件" name="keywords">
    <meta content="azenui，azenui原创素材共享平台，图片素材图库提供海量原创素材，设计素材。PSD源文，高清图片下载。" name="description">
    <meta content="Azen UI, zaenui.com" name="author">
    <title>文章分享--爱UI 专注UI设计圈 专业的界面设计开发</title>

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
                <li><a href="pages.jsp" title="学习">学习</a></li> 
                <li><a href="pages.jsp" title="音乐">音乐</a></li>
                <li><a href="pages.jsp" class="美食">美食</a></li>
                <li><a href="pages.jsp"  title="生活">生活</a></li>
                <li><a href="pages.jsp" title="MAD/AMV">MAD/AMV</a></li>
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
                <h3>BESD:功能与用户体验哪个更重要 <img src="themes/img/icon/sc.png" width="17" height="23" title="" alt=""></h3>
                <p class="azen-titlep">作品分类：<a href="#">经验/文章 / 原创作品</a> <span class="azen-commen"><i></i> 2015-01-20 09:10</span> </p>
                <ul class="azen-viewit list-viewit azen-titleu">
                    <li class="viewit"><a href="#">778</a> </li>
                    <li class="likeit"><a href="#">918</a> </li>
                    <li class="luatio"><a href="#">120</a> </li>
                </ul>
            </div>
            <div class="azen-doesis fr"></div>
        </div>
        <div class="azen-backgr">
            <div class="azen-texter azne-workss">
                <div><h2>BESD:功能与用户体验哪个更重要<i class="fa fa-file-powerpoint-o"></i></h2></div>
                <ul>
                    <li>
                        <div><p>昨天下午，在我们实验室旗下的开源项目ICECSS的用户体验群中，有个用户提出了这么一个问题：“功能的实现和用户体验哪个更重要”？</p></div>
                        <div>
                            <p>这是一个非常难以回答的问题，在现在大家都在讲用户体验的年代，很多人都认为功能需求已经不再重要。</p>
                        </div>
                    </li>
                    <li>
                        <div><p>我相信一千个人眼中有一千个哈姆雷特，在不同的职位上大家都有不一样的看法。</p></div>
                        <div>
                            <p>在设计和开发BESD实验室网站的时候我们就一直在思考究竟应该怎么去设计这个网站？究竟是应该以功能为主还是以用户体验为主，这个问题甚至一直持续到我开发ICECSS的时候。</p>
                        </div>
                        <div>
                            <p>推荐阅读：<a href="#">BESD实验室设计及开发总结 <i class="fa fa-file-text-o" title="article"></i></a> </p>
                        </div>
                    </li>
                    <li>
                        <div><p>昨天下午，在我们实验室旗下的开源项目ICECSS的用户体验群中，有个用户提出了这么一个问题：“功能的实现和用户体验哪个更重要”？</p></div>
                        <div>
                            <p>这是一个非常难以回答的问题，在现在大家都在讲用户体验的年代，很多人都认为功能需求已经不再重要。</p>
                        </div>
                    </li>
                    <li>
                        <div><p>那段时间我一直在思考这个问题，如何衡量功能与设计？或者说如何衡量功能需求与用户体验。</p></div>
                        <div>
                            <p>我们先来整理下思考，了解下用户体验是什么。</p>
                        </div>
                        <div>
                            <p>“用户体验（User Experience，简称UE/UX）是一种纯主观在用户使用产品过程中建立起来的感受。但是对于一个界定明确的用户群体来讲，其用户体验的共性是能够经由良好设计实验来认识到。”</p>
                        </div>
                    </li>
                    <li>
                        <div><p>简单来说用户体验分为三个阶段：能用、好用、爱用。一个能够基本满足用户需求的我们可以把它划分到能用中；一个不仅能够满足用户需求还用起来更加得心应手的便是好用；而不仅实现了需求、用起来还好用的、用来还特别爽的我们可以划分到爱用。</p></div>
                        <div>
                            <p>后面我们根据我们的思考提取出了<a href="#">FSD设计理论<i class="fa fa-file-text-o" title="article"></i></a>也就是功减设计。什么是功减设计呢，功减设计是以产品、事物的功能为主体进行的设计，舍弃与所要表达和达成的目标无关的设计与视觉效果，保持简约的同时保证传达的意思完整性。所需要实现的功能应当是必须的、愉悦的、具有前瞻性的。</p>
                        </div>
                    </li>
                    <li>
                        <div><p>我们在昨天也与我们的订阅号的粉丝们一起讨论了这个问题，看看大家都是怎么认为的。</p></div>
                        <div>
                            <p>功能更重要，用户体验是在功能的基础上的升华。如果功能相似，用户体验的优势才能发挥更大的作用。 ---- 张子萱 </p>
                            <p>用户体验可以更好的留住客户，增加口碑，也会使用户量上升。功能固然重要，但是体验更重要。 ---- 张子萱</p>
                            <p>功能是基础 用户体验是提升 就像造房子地基和楼层的关系。 ---- 张子萱</p>
                        </div>
                    </li>
                    <li>
                        <div><p>我们这里只是摘录了部分粉丝的回答，从粉丝的回答中也可以看出大家也都思考过这个问题。功能与用户体验哪个更重要对大公司来说可能还好一些，但对创业公司来说却是一道坎。</p></div>
                        <div>
                            <p>创业公司早期一般都需要快速的实现计划中的功能，这时功能的取舍会影响到用户体验。有些功能在整个业务逻辑中，也许是创业者眼中的鸡肋，但是没经过市场检验的产品都不能确定。</p>
                            <p>我们认为这个问题可以通过迭代的方式来解决，根据产品发布后的市场情况、用户调研、访谈来决定一些功能是否增加或者减少，不核心但又有需要的功能是否应该降低优先级等等。</p>
                            <p>言归正传这个问题吧，功能与用户体验哪个更重要。我们是这么认为的，功能与用户体验同等重要，但是功能会影响用户体验，而用户体验却不能影响功能。用户体验是建立在一个实现了需求的功能之上，这个功能多快实现、多轻松实现、多好的实现等等就构成了用户体验。</p>
                            <p>那么谁来负责功能的制定，又该由谁来与用户沟通呢？</p>
                            <p>在一个业务逻辑中分为需求提出者、功能制定者、产品开发者、产品设计者。需求提供者一般是用户，功能制定者一般都是产品经理或者项目经理，他们需要将用户的需求取舍并转换为功能。 </p>
                            <p>不好取舍功能的话，不妨试试我前面提出的迭代方法。</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="azen-bancks azen-zhizuo">
                <h3>文章摘自于: 新锐设计</h3>
                <p>AZEN UI 更多有趣研究和翻译可以关注我们的官方微信哦！！！</p>
                <a href="#">Azen UI</a> </div>
            <div class="azen-bancks">
                <ul class="azen-viewit list-viewit azen-titleu azen-bancul">
                    <li class="viewits"><i class="fa fa-tags"></i><a href="#">UI</a> </li>
                    <li class="viewits"><i class="fa fa-magnet"></i><a href="#">设计</a> </li>
                    <li class="viewits"><i class="fa fa-tags"></i><a href="#">经验</a> </li>
                    <li class="viewits"><i class="fa fa-user"></i><a href="#">用户体验</a> </li>
                    <li class="viewits"><i class="fa fa-share-square-o"></i><a href="#">分享</a> </li>
                </ul>
            </div>
        </div>
        <div class="azen-pinlun clearfix">
            <ul>
                <li class="azen-clearin">
                    <div class="azen-shareic clearfix"> <a href="#" class="share-weibo">微博</a> <a href="#" class="share-douban">豆瓣</a> <a href="#" class="share-huaban">花瓣</a> <a href="#" class="share-tengxn">腾讯</a> </div>
                </li>
                <li><a href="#" class="azen-Collection"><i class="fa fa-star"></i>&nbsp;&nbsp;收藏</a></li>
                <li><a href="#" class="azen-Praise"><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;送赞</a></li>
            </ul>
        </div>
    </div>
</section>
<section>
    <div id="azen-linker">
        <div class="azen-linker azen-jichen clearfix">
            <dl>
                <dt>友情链接：</dt>
                <dd><a href="http://j-ui.com/" target="_blank" title="DWZ富客户端框架">JUI框架</a> </dd>
                <dd><a href="http://aoliandong.com/" target="_blank" title="北京奥利安东生物科技有限公司">奥利安东</a> </dd>
                <dd><a href="http://www.maogongding.com/" target="_blank" title="毛公鼎碱性锅">毛公鼎</a> </dd>
                <dd><a href="http://xinruidesign.cn/" target="_blank" title="北京新锐设计">新锐设计</a> </dd>
                <dd><a href="http://shop108012643.taobao.com/" target="_blank" title="暿哈杂货铺">暿哈杂货铺</a> </dd>
                <dd><a href="default/yshow.html" target="_blank" title="歪秀">歪秀</a> </dd>
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