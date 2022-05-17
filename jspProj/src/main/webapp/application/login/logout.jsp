<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<h1>logout</h1>
	<%
		MemberDTO dto = (MemberDTO)application.getAttribute("inUser");
	    String msg = dto.getPname()+"님 로그아웃 되었습니다.";
		application.removeAttribute("inUser");
	%>
	
<script>
	alert("<%=msg%>");
	location.href = "main.jsp";

</script>
</body>
</html>