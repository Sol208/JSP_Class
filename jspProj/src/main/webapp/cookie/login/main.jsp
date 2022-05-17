<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Main</title>
</head>
<body>
<h1>메인페이지</h1>

<%
	Cookie[] coo = request.getCookies();
	String id = "";
	
	for(Cookie cc : coo){
		if(cc.getName().equals("pid")){
			id = cc.getValue();
		}
	}%>
	
	<% if(!id.equals("")){%>
			<%=id %>님 안녕하세요
			<a href="logout.jsp">로그아웃</a>
	<%}else{%>
			<form action="logReg.jsp">
				ID<input type="text" name="pid" />
				PW<input type="password" name="pw" />
				<input type="submit" value="로그인" />
			</form>
	<%}%>
</body>
</html>