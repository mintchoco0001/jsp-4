<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.Student"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<label>이름 <input type="text" name="name" value="${ param.name} "></label> <br> 
		<label>연락처	<input type="text" name="phone" value="${ param.phone}"></label> <br> 
		<label>나이 <input type="number" name="age" value="${ param.age}"></label><br>
		<input type="submit" value="전송">
	</form>
	
	
	<h3>학생이름 : ${ param.name  }</h3>
	<h3>학생연락처 : ${ param.phone }</h3>
	<h3>학생나이 : ${ param.age }</h3>

</body>
</html>