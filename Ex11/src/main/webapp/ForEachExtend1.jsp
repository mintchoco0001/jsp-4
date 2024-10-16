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
	<%
	String rgba[] = { "red", "green", "blue", "black" };
	%>

	<c:forEach items="<%=rgba%>" var="c">
		<span style="color:${c}">${c }</span>
	</c:forEach>

	<h3>List Collection 사용하기</h3>
	<%
		ArrayList<Person> list = new ArrayList<Person>(); 
		list.add(new Person("장동건", 52));
		list.add(new Person("원빈", 46));
		list.add(new Person("진", 33));
	%>
	
	<c:set var="lists" value="<%= list %>"/>
	<c:forEach items="${lists}" var="list">
		<h3>이름 : ${list.name}</h3>
		<h3>나이 : ${list.age}</h3>
		<h3>-----------------------------</h3>
	</c:forEach>
</body>
</html>