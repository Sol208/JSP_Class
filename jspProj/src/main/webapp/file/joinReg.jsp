<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.MemberDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="join" class="jdbc_p.MemberDTO" />
    
    <jsp:setProperty property="*" name="join"/>
<%
	// request.setCharacterEncoding("UTF-8");
	
	//파일 저장 위치
	String ff = request.getRealPath("zzz");
	ff = "C:\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
			ff,	// 파일 저장 위치
			10*1024*1024,	// 최대 크기
			"UTF-8",	// 인코딩
			new DefaultFileRenamePolicy()	// 파일 이름 중복 정책
			);
	
	String msg = "사진 파일이 아닙니다.";
	String goUrl = "../index.jsp";
	
	
	MemberDTO dto = new MemberDTO();
	dto.setPid(mm.getParameter("pid"));
	dto.setPname(mm.getParameter("pname"));
	dto.setPw(mm.getParameter("pw"));
	dto.setAge(Integer.parseInt(mm.getParameter("age")));
	dto.setMarriage(Boolean.parseBoolean(mm.getParameter("marriage")));
	dto.setPic(mm.getFilesystemName("pic"));
	dto.setMyff(mm.getFilesystemName("myff"));
			
	new MemberDAO().insert(dto);
	
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		
<table border="">
	<tr>
		<td>아이디</td>
		<td><%=mm.getParameter("pid") %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=mm.getParameter("pname") %></td>
	</tr>
	<tr>
		<td>나이</td>
		<td><%=mm.getParameter("age") %></td>
	</tr>
	<tr>
		<td>결혼</td>
		<td><%=mm.getParameter("marriage") %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><%=mm.getFilesystemName("pic") %></td>
	</tr>
	<tr>
		<td>이력서</td>
		<td><%=mm.getFilesystemName("myff") %></td>
	</tr>
</table>
<script>
	alert("가입되었습니다.");
	location.href="../";
</script>
</body>
</html>