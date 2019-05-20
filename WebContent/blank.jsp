<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆失败</title>
<style>
body 
{
    background-image:url(img/index.jpg);
    background-size: cover;
}
h3{
	display:inline-block;
	color:white;
	text-shadow:2px 2px 8px #000;
	margin-top:150px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation" >
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="denglu.jsp">闲趣</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li><a href="denglu.jsp">登录</a></li>
            <li><a href="zhuce.jsp">注册</a></li>
            <li><a href="guanyu.jsp">关于</a></li>
        </ul>
    </div>
    </div>
</nav>

<center><h3 >
账户或密码不能为空！<a href="denglu.jsp" style="color:white">点击返回</a>
</h3></center>
</body>
</html>