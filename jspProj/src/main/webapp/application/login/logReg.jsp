<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<h1>로그인 처리</h1>
<%
	List<MemberDTO> users = new ArrayList<MemberDTO>();
	users.add(new MemberDTO("aa", "1111", "이효리"));
	users.add(new MemberDTO("bb", "2222", "삼효리"));
	users.add(new MemberDTO("cc", "3333", "사효리"));
	users.add(new MemberDTO("dd", "4444", "오효리"));
	users.add(new MemberDTO("ee", "5555", "육효리"));
	String msg = "로그인 실패";
	for(int i = 0; i<users.size(); i++){
		if(users.get(i).getPid().equals(request.getParameter("pid")) &&
				users.get(i).getPw().equals(request.getParameter("pw"))
				){
				msg = "로그인 성공";
				
				
				application.setAttribute("inUser", users.get(i));
					
			}
	}


%>
<script>
	alert("<%=msg%>");
	location.href = "main.jsp";

</script>

</body>
</html>