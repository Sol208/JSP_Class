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
	users.add(new MemberDTO("aa", "이효리", "1111"));
	users.add(new MemberDTO("bb", "삼효리", "2222"));
	users.add(new MemberDTO("cc", "사효리", "3333"));
	users.add(new MemberDTO("dd", "오효리", "4444"));
	users.add(new MemberDTO("ee", "육효리", "5555"));
	String msg = "로그인 실패";
	for(int i = 0; i<users.size(); i++){
		if(users.get(i).getPid().equals(request.getParameter("pid")) &&
				users.get(i).getPw().equals(request.getParameter("pw"))
				){
				Cookie coo1 = new Cookie("pid",request.getParameter("pid"));
				Cookie coo2 = new Cookie("pw",request.getParameter("pw"));
				response.addCookie(coo1);
				response.addCookie(coo2);
				msg = "로그인 성공";
				
			}
	}


%>
<script>
	alert("<%=msg%>");
	location.href = "main.jsp";

</script>

</body>
</html>