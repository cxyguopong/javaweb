<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="prefix" value="/WEB-INF/view/" />

<c:import url="${prefix }tmpl/header.jsp" />
    
<h3>${docName }</h3>
<p>Site Prefix : ${sitePrefix }</p>
<p>language : ${language }</p>
<p>ID : ${id }</p>
<p>Natural Text : ${naturalText }</p>
    
<c:import url="${prefix }tmpl/footer.jsp" />