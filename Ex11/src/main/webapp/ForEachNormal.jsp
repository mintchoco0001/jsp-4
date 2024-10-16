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
	<c:forEach begin="1" end="3" step="1" var="i">
		<p>반복 ${i} 입니다</p>
	</c:forEach>
	
	<c:forEach begin="1" end="100" step="1" var="j">
		<c:if test="${ j mod 3 eq 0 }">
			<c:set var="sum" value="${ sum + j }"/>
		</c:if>
	</c:forEach>
	<h3> 1~100의 3의 배수의 합 : ${sum} 입니다</h3>
</body>
</html>