<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDetail</title>
</head>
<body>
<h1>memberDetail</h1>
	<c:set var="dto" value="<%=new DBCP_DAO().detailId(request.getParameter(\"pid\")) %>"/>
	<c:choose>
		<c:when test="${dto.marriage}">
			<c:set var="res" value="기혼"/>
		</c:when>
		<c:otherwise>
			<c:set var="res" value="미혼"/>
		</c:otherwise>
	</c:choose>
<table border="">
	<tr>
		<td>아이디</td>
		<td>${dto.pid }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${dto.pname }</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${dto.age }</td>
	</tr>
	<tr>
		<td>결혼</td>
		<td>${res }</td>
	</tr>
	<tr>
		<td>가입일</td>
		<td>${dto.reg_Date }</td>
	</tr>
</table>
</body>
</html>