<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String subUrl = "sub1.jsp"	;
	int a = 10;
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브</title>
</head>
<body>
<!-- 문자열이 상수 여야한다, 파라미터접근이 불가능 하다, 컴파일 이전이기때문에 메서드 또는 변수를 공유 할 수있다., 에러인지 아닌지 구분하기 어렵다. -->
<h1>include 디렉티브</h1>
big2<%=request.getParameter("pid")%>,
<%=request.getParameter("marriage")%>,
<%=a %>
<br><br>
<%-- <%@ include file="sub1.jsp?pname=edc" %> --%>
<%-- <%@ include file="<%=subUrl %>" %> --%>
<%-- <%@ include file="subUrl" %> --%>
<%-- <%@ include file=subUrl %> --%>
<%@ include file="sub1.jsp" %>
<br><br>
<%@ include file="sub2.jsp" %>
</body>
</html>