<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="today" value="<%=new java.util.Date() %>"/>
	
	<h4>날자 포멧</h4>
	full : <fmt:formatDate value="${today }" type="date" dateStyle="full"/> <br>
	short : <fmt:formatDate value="${today }" type="date" dateStyle="short"/> <br>
	long : <fmt:formatDate value="${today }" type="date" dateStyle="long"/> <br>
	default : <fmt:formatDate value="${today }" type="date" dateStyle="default"/> <br>
	
	<h4>시간 포멧</h4>
	full : <fmt:formatDate value="${today }" type="time" dateStyle="full"/> <br>
	short : <fmt:formatDate value="${today }" type="time" dateStyle="short"/> <br>
	long : <fmt:formatDate value="${today }" type="time" dateStyle="long"/> <br>
	default : <fmt:formatDate value="${today }" type="time" dateStyle="default"/> <br>
	
	<h4>날자 / 시간 포멧</h4>
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/> <br>
	<fmt:formatDate value="${today }" type="both" pattern="yyyy-MM-dd hh:mm:ss" timeStyle="full"/> <br>
	
	<h4>타임존 설정</h4>
	<fmt:timeZone value="GMT">
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/> <br>
	</fmt:timeZone>
	<fmt:timeZone value="America/Chicago">
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/> <br>
	</fmt:timeZone>
	
</body>
</html>