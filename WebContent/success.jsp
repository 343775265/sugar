<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>闲趣</title>
<style>
body 
{
    background-image:url(https://api.dujin.org/bing/1366.php);
    background-size: cover;
    background-color:gray;
}
h3{
	text-align:center;
	color:white;
	text-shadow:2px 2px 8px #000;}
p{
	text-align:center;
	color:white;
	text-shadow:2px 2px 8px #000;}
	 #game1{
            position: absolute;
            top: 60%;
            left:2%;
            text-decoration: none;
            font-size: 20px;
            color: pink;
        }
        #game2{
            position: absolute;
            top: 70%;
            left: 2%;
            text-decoration: none;
            font-size: 20px;
            color: pink;
        }
</style>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation" >
    <div class="container-fluid">
	<div>
        <ul class="nav navbar-nav">
        	<li><a  href="denglu.jsp">退出登录</a></li>
        </ul>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li><a target="_blank" href="guanyu.jsp">关于</a></li>
        </ul>
    <ul class="nav navbar-nav navbar-right">
            <p class="navbar-text">登陆用户：${xiaoxi}</p>
        </ul>
    </div>
    </div>
</nav>
<center>
            <h3>你好，${xiaoxi} <p></p>
                在这里，你可以享受轻音乐，观赏来自<a target="_blank" href="https://www.bing.com" style="color:white">必应全球</a>的精美照片。</h3>
                <p>背景图片来自网络（必应全球），加载速度视网络情况而定。</p>
            <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=450 src="//music.163.com//outchain/player?type=0&id=2622754271&auto=1&height=430">
            </iframe>
            
</center>
<a href="game1.jsp" id="game1">拼图小游戏</a>
<a href="game2.jsp" id="game2">解压小游戏</a>
</body>
</html>