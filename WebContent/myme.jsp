<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.Video"%>
    <%@page import="java.util.List"%>
    <%@page import="entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
List<Video> video=(List)request.getAttribute("video");
List<Video> fvideo=(List)request.getAttribute("fvideo");
List<Video> Uploader=(List)request.getAttribute("Uploader");
User user=(User)request.getAttribute("usermessage");
String username=(String)session.getAttribute("username"); 
System.out.println(video);
System.out.println("fvideo:"+fvideo);
System.out.println("Uploader:"+Uploader);
System.out.println("user:"+user);
System.out.println(username);

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
    <title>个人中心--滴答滴答</title>

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
        ${msg}
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
                                <div> <a href="${pageContext.request.contextPath }/listgerenzhongxin.action?username=<%=username %>">个人中心</a> </div>
                                <div> <a href="${pageContext.request.contextPath }/listuser.action?username=<%=username %>">修改资料</a> </div>
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
                <h3>个人中心 <img src="themes/img/icon/sc.png" width="17" height="23" title="" alt=""></h3>
                <p class="azen-titlep clearfix"><span class="fl"><b>我的空间</b> --- 暂无详细的资料, 请在修改资料中填写您的详细信息, 并可以让更多的朋友了解和认识你!</span><i class="fa fa-edit"></i> </p>
                <p style="height:20px;"></p>
            </div>
            <div class="azen-doesis fr"></div>
        </div>

    </div>
    <div class="azen-backgr azen-cleras">

        <!-- 个人中心 beigin-->
        <div class="azen-contre">
            <div class="fl">
                <div class="azen-usereide fl">
                    <h1>
                        <a href="love/niu.html" target="_blank" title=""><img src="<%=user.getUserimgurl() %>"></a>
                    </h1>
                </div>
                <div class="azen-jiahuali fl">
                    <h2><%=username %></h2>
                    <h5>这个人很懒什么都没有...</h5>
                </div>
                <div class="azen-idinfor fl">
                    <h5>ID管理</h5>
                    <a href="${pageContext.request.contextPath }/listuser.action?username=<%=username %>" ><i class="fa fa-eye"></i> 修改密码</a>
                    <a href="${pageContext.request.contextPath }/listuserhead.action?username=<%=username %>" ><i class="fa fa-eye"></i> 修改头像</a>
                </div>
                <!-- <div class="azen-idinfor fl">
                    <h5>语言选择</h5>
                    <a href="#"><i class="fa fa-smile-o"></i> 简体中文</a>
                </div>
                <div class="azen-idinfor fl">
                    <h5>分享平台</h5>
                    <a href="#"><i class="fa fa-weibo"></i> 新浪微博</a>
                </div> -->
                <div class="azen-idinfor fl">
                    <h5>退出</h5>
                    <a href="#"><i class="fa fa-power-off"></i> 退出当前账户</a>
                </div>
            </div>
        </div>


        <div class="azen-boxche">
           <div class="azen-workss">
               <h3>作品</h3>
               <p>我的最近作品</p>
           </div>
            <div class="azen-production">
                <ul class="azen-lister clearfix">
                   <%if(Uploader.size()!=0){ 
                	for(int i=0;i<Uploader.size();i++){
                		Video video1 =new Video(); //新建对象
                		video1 = Uploader.get(i);   //每循环一次后将此时的值保存到对象里%>
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
                    <li>
                    <a  href="${pageContext.request.contextPath }/deletevideo.action?videoid=<%=video1.getVideoid() %>&id=1&username=<%=username %>" style="display: block;margin-top:30px;margin-left:15px;background-image: url('themes/img/icon/删除.png');height: 105px;width: 195px"></a>
                    </li>
                <%	}
                }
                %>
                </ul>
            </div>
            <div class="azen-more"><a href="#">查看更多</a></div>
        </div>
        <div class="azen-boxche">
            <div class="azen-workss">
                <h3>收藏</h3>
                <p>我收藏的作品</p>
            </div>
            <div class="azen-production">
                <ul class="azen-lister clearfix">
                     <%if(fvideo.size()!=0){ 
                	for(int i=0;i<fvideo.size();i++){
                		Video video2 =new Video(); //新建对象
                		video2 = fvideo.get(i);   //每循环一次后将此时的值保存到对象里%>
                	 <li>
                        <div><a about="" title="" target="_blank" href="${pageContext.request.contextPath }/videofind.action?videoid=<%= video2.getVideoid()%>&id=2&pageview=<%= video2.getPageview() %>"><img width="230" height="188" alt="" title="" src="<%= video2.getImgurl()%>"></a></div>
                        <div>
                            <ul class="azen-viewit list-viewit">
                                <li class="viewit"><a href="#"><%= video2.getType()%></a> </li>
                                <li class="likeit"><a href="#"><%= video2.getPageview()%></a> </li>
                                <!-- <li class="luatio"><a href="#">暂无评论</a> </li> -->
                            </ul>
                            <div class="azen-paddin"><a target="_blank" href="${pageContext.request.contextPath }/videofind.action?videoid=<%= video2.getVideoid()%>&id=2"><%= video2.getVideoname()%></a> </div>
                        </div>
                     </li>
                     <li><% %>
                    <a  href="${pageContext.request.contextPath }/deletefvideo.action?videoid=<%=video2.getVideoid() %>&username=<%=username %>" style="display: block;margin-top:30px;margin-left:15px;background-image: url('themes/img/icon/删除.png');height: 105px;width: 195px"></a>
                    </li>
                <%	}
                }
                %>
                </ul>

            </div>
            <div class="azen-more"><a href="#">查看更多</a></div>
        </div>
        <!-- <div class="azen-boxche">
            <div class="azen-workss">
                <h3>动态</h3>
                <p>我发布的动态</p>
            </div>
            <div class="azen-production">
                <h4><b>come </b> 最近没有动态！ 快叫朋友喂你点东西，</h4>

            </div>

        </div> -->
        <!-- <div class="azen-boxche">
            <div class="azen-workss">
                <h3>留言</h3>
                <p>我最近收到留言</p>
            </div>
            <div class="azen-production">
                <h4><b>come </b> 最近没有留言！ 快叫朋友喂你点东西，</h4>
            </div>

        </div> -->

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
   <!--  <div class="qr_tool">二维码</div> -->
    <a id="feedback" href="${pageContext.request.contextPath }/videofind.action?id=6&videoid=0" title="意见反馈" target="_blank">意见反馈</a> <a id="scrollUp" href="javascript:;" title="飞回顶部"></a> <img class="qr_img" src="themes/img/icon/qr_img.png"> </div>
<footer id="azen-footer">
    <div class="azen-footer">
        <div style="height:50px;"></div>
        <p></p>
    </div>
</footer>


</body>
</html>


<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="themes/js/jquery-top.js"></script>
<script type="text/javascript" src="themes/js/Carousel.js"></script>
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