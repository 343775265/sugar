<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于</title>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style>
body 
{
    background-image:url(img/about.jpg);
    background-size: cover;
    
}
a{
color:white;
text-shadow:0 0 4px #000;
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
            <li class="active"><a href="game.jsp">游戏</a></li>
        </ul>
    </div>
    </div>
</nav>
<a href="game1.jsp">拼图游戏</a>
<a href="game2.jsp">解压游戏</a>
</body>
</html>