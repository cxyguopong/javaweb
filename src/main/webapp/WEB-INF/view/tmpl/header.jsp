<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>spring-mvc-3 test</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.css">
<script src="<%=request.getContextPath() %>/static/js/jquery-1.12.0.js"></script>

<style>
    body {
        background:#eee;
    }
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
    
    .content {
        min-height:500px;
        padding: 20px 10px;
        background:#fff;
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

<div class="container content">

