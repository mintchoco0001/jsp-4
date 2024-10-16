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
	<c:set var="number" value="100" />
	<c:set var="string" value="JSP" />

	<c:if test="${number mod 2 eq 0 }" var="result">
	${number }는 짝수입니다.
	</c:if>

	result : ${result }
	<br>

	<h3>문자 비교</h3>
	<c:if test="${string eq 'Java' }" var="result2">
		문자열을 Java 입니다.
	</c:if>
	<c:if test="${not result2}">
		문자열을 자바가 아닙니다.
	</c:if>
	<c:if test="${string eq 'JSP' }" var="result3">
		문자열을 JSP 입니다.
	</c:if>
	<br> result2 : ${result2 }
	<br> result3 : ${result3 }

</body>
</html>