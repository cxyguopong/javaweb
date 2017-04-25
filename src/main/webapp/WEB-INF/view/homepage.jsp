<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>

<link rel="stylesheet" href="<%=basePath %>static/css/bootstrap.css">

<style>
    .navbar.cus-navbar {
        background:#009688;
    }
    .navbar.cus-navbar a {
        color:#FFF;
    }
    
    .cus-navbar .nav > li > a {
        border-top:2px solid #009688;
        background-color:#009688;
        opacity:0.85;
    }
    
    .cus-navbar .nav > li.active > a {
        border-color:#FFF;
    }
    
    .cus-navbar .nav > li > a:hover {
        opacity:1;    
    }
    
</style>

</head>
<body>
    <header class="navbar navbar-static-top cus-navbar">
        <div class="container">
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
			        <li>
			          <a href="javascript:">导航一</a>
			        </li>
			        <li class="active">
			          <a href="javascript:">导航二</a>
			        </li>
			        <li>
                      <a href="javascript:">导航三</a>
                    </li>
                 </ul>
            </div>
        </div>
    </header>
    
    <div class="col-xs-offset-1 col-xs-10">
        <div class="alert alert-success">This is HomePage !</div>
    </div>
    
<script src="<%=basePath%>static/js/jquery-1.12.0.js"></script>
    
</body>
</html>