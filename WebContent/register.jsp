<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
${msg}
	<form action="${pageContext.request.contextPath }/register.action" method="post">
		设置用户名：<input id="username" type="text" name="username"><br>
		设置密码：<input id="password" type="password" name="password"><br>
		重复输入密码：<input id="repassword" type="password" name="repassword"><br>
		<input type="submit" value="注册">
		<input type="reset" value="清空">
	</form>
</html>