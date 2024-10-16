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

	<c:choose>
		<c:when test="${number mod 2 eq 0 }">
		${number } (은)는 짝수입니다.
		</c:when>
		<c:otherwise>
		${number } (은)는 홀수입니다.
		</c:otherwise>
	</c:choose>
	<br>
	
	<form>
		중간고사 : <input type="text" name="mid"> <br>
		기말고사 : <input type="text" name="fin"> <br>
		조별과제 : <input type="text" name="rep"> <br>
		<input type="submit" value="학점 구하기" >
	</form>
	
	<c:if test="${ not (empty param.mid or empty param.fin or empty param.rep) }">
		<c:set var="avg" value="${(param.mid * 0.3 + param.fin * 0.5 + param.rep * 0.2)}"/>
		평균 점수는 ${avg }으로
		<c:choose>
			<c:when test="${avg ge 90 }"> A </c:when>
			<c:when test="${avg ge 80 }"> B </c:when>
			<c:otherwise> F </c:otherwise>
		</c:choose>
	</c:if>
	
</body>
</html>