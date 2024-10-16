<%@page import="java.sql.*"%>
<%@ page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");

MemberDAO dao = new MemberDAO();
int re = dao.addMemberDTO(id, password, name);
dao.close();

/* if (re == 1) {
	out.println("<script>alert('회원가입완료');</script>");
	out.println("<script>location.href='welcome.jsp'</script>");
} else if (re == 2) {
	out.println("<script>alert('아이디가 중복되었습니다');</script>");
	out.println("<script>location.href='addMember.jsp'</script>");
} */
%>

<c:set var="re" value="<%=re%>" />
<c:choose>
	<c:when test="${re eq 1}">
		<script>
			alert("회원가입완료");
		</script>
		<script>
			location.href = "welcome.jsp"
		</script>
	</c:when>
	<c:when test="${re eq 2}">
		<script>
			alert("아이디가 중복되었습니다");
		</script>
		<script>
			location.href = "addMember.jsp"
		</script>
	</c:when>
</c:choose>

