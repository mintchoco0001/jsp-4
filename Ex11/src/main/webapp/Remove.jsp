<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="scopeVar" value="Page Value"/>
	<c:set var="scopeVar" value="Reqeest Value" scope="request"/>
	<c:set var="scopeVar" value="Session Value" scope="session"/>
	<c:set var="scopeVar" value="Application Value" scope="application"/>
	
	<h3>출력하기</h3>
	<ul>
		<li>${scopeVar}</li>
		<li>${requestScope.scopeVar}</li>
	</ul>
	
	<c:remove var="scopeVar" scope="request"/>
	
	<h3>출력하기</h3>
	<ul>
		<li>${scopeVar }</li>
		<li>${requestScope.scopeVar }</li>
	</ul>
	
</body>
</html>