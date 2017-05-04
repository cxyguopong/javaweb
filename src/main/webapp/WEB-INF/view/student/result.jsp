<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Spring MVC表单处理</title>
</head>
<body>

<h2>提交的学生信息如下 - </h2>
   <table>
    <tr>
        <td>名称：</td>
        <td>${stu.name}</td>
    </tr>
    <tr>
        <td>年龄：</td>
        <td>${stu.age}</td>
    </tr>
    <tr>
        <td>编号：</td>
        <td>${stu.id}</td>
    </tr>
    <tr>
        <td>学习的框架</td>
        <td>
            <c:forEach var="item" items="${stu.subject }">
            <span class="text-primary">${item }</span>
            </c:forEach>
        </td>
    </tr>
    
    <tr>
        <td>性别</td>
        <td>
            ${stu.gender.charAt(0)=="M".charAt(0) ? "male":"remale"} 
        </td>
    </tr>
    <tr><td colspan="2" style="text-align:center">${zz }</td></tr>
    
    
</table>  
</body>
</html>