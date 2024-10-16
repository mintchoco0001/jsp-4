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
	<c:set var="directVar" value="100"/>
	<c:set var="elVar" value="${directVar mod 5 }"/>
	<c:set var="expVar" value="<%= new Date() %>"/>
	<c:set var="betweenVar">변수값 요렇게 설정</c:set>
	
	<h4>EL을 이용해 변수 출력</h4>
	<ul>
		<li>directVar : ${ pageScope.directVar }</li>
		<li>elVar : ${ pageScope.elVar }</li>
		<li>expVar : ${ pageScope.expVar }</li>
		<li>betweenVar : ${ pageScope.betweenVar }</li>
	</ul>
	
	<h3>자바 빈즈 생성</h3>
	<c:set var="personVar1" value='<%=new Person("박문수",50) %>' scope="request"/>
	
	<h3>이름 : ${ personVar1.name}</h3>
	<h3>나이 : ${ personVar1.age}</h3>
	
	<h3>자바 빈즈 생성 2</h3>
	<c:set var="personVar2" value='<%=new Person() %>' scope="request"/>
	<c:set target="${personVar2 }" property="name" value="정약용"/>
	<c:set target="${personVar2 }" property="age" value="60"/>
	<h3>이름 : ${ personVar2.name}</h3>
	<h3>나이 : ${ personVar2.age}</h3>
	
	
</body>
</html>