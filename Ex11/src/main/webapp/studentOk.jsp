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

	<c:set var="Stu" value="<%=new Student()%>" scope="request"/>
	<c:set target="${Stu }" property="name" value="${param.name }" />
	<c:set target="${Stu }" property="phone" value="${param.phone }" />
	<c:set target="${Stu }" property="age" value="${param.age}" />
	<h3>학생이름 : ${ Stu.name  }</h3>
	<h3>학생연락처 : ${ Stu.phone }</h3>
	<h3>학생나이 : ${ Stu.age }</h3>
</body>
</html>