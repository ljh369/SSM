<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta charset="utf-8">
    <title>管理员登录</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />   
</head>
<body>
<form action="${pageContext.request.contextPath}/adminlogin.action" method="post" onsubmit="return check()">
    <div class="main">
    	<div class="mainin">
        	<!-- <h1><img src=""></h1> -->
            <div class="mainin1">
            	<ul>
                	<li><span>管理员：</span><input name="adminname" type="text" id="loginName"  class="SearchKeyword"></li>
                    <li><span>密码：</span><input type="password" name="adminpassword" id="Possword"  class="SearchKeyword2"></li>
                    <li><span id="message">${msg}</span></li>
                    <li><input type="submit" value="提交" class="tijiao"></li>
                    
                </ul>
            </div>
            <div class="footpage">
        </div>
    </div>
    </form>

<div id="POPLoading" class="cssPOPLoading">
    <div style=" height:110px; border-bottom:1px solid #9a9a9a">
        <div class="showMessge"></div>
    </div>
    <div style=" line-height:40px; font-size:14px; letter-spacing:1px;">
        <a onclick="puc()">确定</a>
    </div>
</div>
<div style="text-align:center;">
</div>
</body>
</html>
<script type="text/javascript">
function check(){
    var username = $("#loginName").val();
    var password = $("#Possword").val();
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
	$("#loginName").blur(
		function(){
			$(".name_lable").empty();
			if(this.value==""){
				$("#loginName").after("<label class='name_lable'><font>用户名不能为空</font></label>");
			}else if(this.value.length<6){
				$("#loginName").after("<label class='name_lable'><font>用户名不能小于6位</font></label>");
			}
		}		
	)
	$("#Possword").blur(
		function(){
			$(".password_lable").empty();
			if(this.value==""){
				$("#Possword").after("<label class='password_lable'><font>密码不能为空</font></label>");
			}else if(this.value.length<6){
				$("#Possword").after("<label class='password_lable'><font>密码不能小于不能小于6位</font></label>");
			}
		}		
	
	)
</script>