<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List,java.util.ArrayList" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %> 

<c:import url="../tmpl/header.jsp" />  

${param.user}

选择的是:${paramValues.affect[0]}${paramValues.affect[1]}${paramValues.affect[2]}${paramValues.affect[3]}  


<c:out value="paramValues.affect" />


<c:import url="../tmpl/footer.jsp" />