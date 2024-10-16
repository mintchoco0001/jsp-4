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
	<c:set var="itag">
		i tag is <i>italic</i>
	</c:set>
	<h3>normal use</h3>
	<c:out value="${itag }"/>
	
	<h3>escapeXml tag use</h3>
	<c:out value="${itag }" escapeXml="false"/>

	<h3>default tag use</h3>	
	<c:out value="${ param.name }" default="no name"/>
	<c:out value="" default="value of void text"></c:out>
</body>
</html>