<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberlist</title>
</head>
<body>
<h1>memberlist</h1>
<table border="">
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>이름</td>
		<td>나이</td>
		<td>결혼</td>
		<td>가입일</td>
	</tr>
	<c:forEach items="<%=new DBCP_DAO().list(1) %>" var="dto" varStatus="no">
	<c:choose>
		<c:when test="${dto.marriage == true }">
			<c:set var="res" value="기혼"/>
		</c:when>
		<c:when test="${dto.marriage == false }">
			<c:set var="res" value="미혼"/>
		</c:when>
	</c:choose>
	<fmt:formatDate var="reg" value="${dto.reg_Date }" pattern="yy-MM-dd a H:mm"/>
	<tr>
		<td>${no.index }</td>
		<td>${dto.pid }</td>
		<td><a href="<c:url value="/jstl/memberDetail.jsp?pid=${dto.pid }" />">${dto.pname }</a></td>
		<td>${dto.age }</td>
		<td>${res }</td>
		<td>${reg }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>