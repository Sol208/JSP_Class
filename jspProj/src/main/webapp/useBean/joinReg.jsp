<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    
    <jsp:useBean id="join" class="jdbc_p.MemberDTO" />
    
    <jsp:setProperty property="*" name="join"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=join %>

<%int no = new MemberDAO().insert(join); %>
		
no:<%=no %>
<script>
	alert("가입되었습니다.");
	location.href="../";
</script>
</body>
</html>