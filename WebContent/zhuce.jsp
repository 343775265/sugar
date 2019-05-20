<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册新用户</title>
<style>
body 
{
    background-image:url(img/zhuce.jpg);
    background-size: cover;
}
h2{
	text-align:center;
	color:white;
	text-shadow:2px 2px 8px #000;}
h4{
	text-align:center;
	color:white;
	text-shadow:0 0 3px #000;
	margin-bottom:15px;}
input{
	box-shadow:0 0 4px #000;}
</style>
</head>

<body>
<center>
  <nav class="navbar navbar-inverse" role="navigation" >
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="denglu.jsp">闲趣</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li><a href="denglu.jsp">登录</a></li>
            <li class="active"><a href="zhuce.jsp">注册</a></li>
            <li><a href="guanyu.jsp">关于</a></li>
        </ul>
    </div>
    </div>
</nav>
<div class="container" style="margin-top:100px;">
<h2>欢迎新用户！</h2>
<h4>注册成功后会自动跳转至主页</h4> 
  <form action="ZhuceServlet" method="post" style="padding-top:-700px;" > 
          <div class="input-group" style="padding: 0px 300px;">
          <span class="input-group-addon">账户</span><input type="text" name="name"value="" placeholder="请输入用户名" class="form-control"  autofocus > 
        </div><br>
        <div class="input-group" style="padding: 0px 300px;">
          <span class="input-group-addon">密码</span><input type="password" name="pwd"value="" placeholder="请输入密码" class="form-control">
        </div>  <br>
        <div class="input-group" style="padding: 0px 300px;">
          <span class="input-group-addon">个性签名</span>
          <input type="text" name="info" value="" placeholder="随便说点啥......" class="form-control">
        </div>  
        <br>
        <div class="btn-group">
        <input type="submit"value="注册" class="btn btn-info">
        <input type="reset"value="重置" class="btn btn-danger">
      </div> 
   </form>  
</div>
 </center>
</body>
</html>