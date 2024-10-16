<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.Person"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>저장 된 값 : ${requestVar }</li>
		<li>매개변수1 : ${param.user_param1 }</li>
		<li>매개변수2 : ${param.user_param2 }</li>
	</ul>
	
</body>
</html>