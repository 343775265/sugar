<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>管理员模式</title>
</head>
<body>
 <nav class="navbar navbar-default" role="navigation" >
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
            <p class="navbar-text">登陆用户：管理员</p>
        </ul>
    </div>
    </div>
</nav>
<center>
<div class="alert alert-warning fade in" style="margin-left:300px;margin-right:300px;">
	<a href="#" class="close" data-dismiss="alert">
		&times;
	</a>
	${xiaoxi}
</div>
 <h4>您已进入管理员模式，以下是用户列表，您可以在文本框内直接修改信息。</h4> 
  <table  width="600" border="1" cellpadding="0" >  
        <tr>  
            <th>ID</th>  
            <th>用户</th>   
            <th>密码</th>  
            <th>签名</th>  
            <th>操作</th>  
        </tr>  
     <c:forEach var="U" items="${userAll}"  >   
      <form action="UpdateServlet" method="post">   
       <tr>  
           <td><input type="text" value="${U.id}" name="id" ></td>  
           <td><input type="text" value="${U.name}" name="name"></td>  
           <td><input type="text" value="${U.pwd}" name="pwd"></td>  
           <td><input type="text" value="${U.info}" name="info"></td>  
           <td><a href="DeleteServlet?id=${U.id}">删除</a> <input type="submit" value="更新"></td>  
       </tr>  
    </form>   
    </c:forEach>    
    </table> <br>
 </center>
</body>
</html>