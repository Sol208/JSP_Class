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
		Cookie cid = new Cookie("pid","");
		Cookie cpw = new Cookie("pw","");
	
		Cookie[] coo = request.getCookies();
		
		String id="";
		
		for(Cookie cc : coo){
			if(cc.getName().equals("pid")){
				id = cc.getValue();	
			}
		}
	    String msg = id+"님 로그아웃 되었습니다.";
	    cid.setMaxAge(0);
	    cpw.setMaxAge(0);
	    response.addCookie(cid);
	    response.addCookie(cpw);
	%>
	
<script>
	alert("<%=msg%>");
	location.href = "main.jsp";

</script>
</body>
</html>