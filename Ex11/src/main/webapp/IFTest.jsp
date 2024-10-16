
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
	<c:set var="age" value="40"/>

	<form method="post">
		<input type="text" name="name" value="${param.name}" placeholder="이름"> <br>
		<input type="number" name="age" value="${param.age}" placeholder="나이"> <br>
		<input type="submit">
	</form>
	<c:if test="${param.age ne null && param.age != '' && param.age ge age}">
		<h3>${param.name} 님은 청년층이 아닙니다</h3>
	</c:if>
	<c:if test="${param.age ne null && param.age != '' && param.age lt age}">
		<h3>${param.name} 님은 청년층입니다</h3>
	</c:if>
</body>
</html>