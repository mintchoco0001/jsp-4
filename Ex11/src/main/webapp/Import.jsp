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
<c:set var="requestVar" value="MustHave" scope="request"/>
<c:import url="OtherPage.jsp" var="contents">
	<c:param name="user_param1" value="JSP"></c:param>
	<c:param name="user_param2" value="기본서"></c:param>
</c:import>

<h4> 다른 문서 삽입하기</h4>
${ contents }

<h4>외부 파일 삽입하기</h4>
<iframe src="GoldPage.jsp" style="width: 100%;height: 600px;"></iframe>
</body>
</html>