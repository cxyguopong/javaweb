<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC表单处理</title>

<style>
.errorStyle {
    border: 1px solid #F44336;
    background: #f3cfcc;
    padding: 10px 20px;
}
</style>

</head>
<body>
<h2>Student Information</h2>
<form:form method="POST" commandName="student" action="student/add"> 
<form:errors path="*" cssClass="errorStyle" element="div" />
   <table>
    <tr>
        <td><form:label path="name">名字：</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="age">年龄：</form:label></td>
        <td><form:input path="age" /></td>
    </tr>
    <tr>
        <td><form:label path="id">编号：</form:label></td>
        <td><form:input path="id" /></td>
    </tr>
    
    <tr>
        <td><form:label path="subject">分类：</form:label></td>
        <td><form:checkboxes items="${subjectLists }" path="subject" /></td>
   </tr>
   
   <tr>
        <td>性别</td>
        <td>
            <form:radiobutton path="gender" value="M" label="男" />
			<form:radiobutton path="gender" value="F" label="女" />
        </td>
   </tr>
   
    
    <tr>
        <td colspan="2">
            <input type="submit" value="提交表单"/>
        </td>
    </tr>
</table>  
</form:form>



</body>
</html>