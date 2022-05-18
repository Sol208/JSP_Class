<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam</title>
</head>
<body>
<h1>exam</h1>
이름 : ${param.pid }<br>
국어 : ${param.kor }<br>
영어 : ${param.eng }<br>
수학 : ${param.mat }<br>
총점 : ${param.kor + param.eng + param.mat }<br>
평균 : ${(param.kor + param.eng + param.mat)/3 }<br>

<cc:set var="pid" value="asdf"/>
<cc:set var="kor" value="${param.kor }"/>
<cc:set var="eng" value="${param.eng }"/>
<cc:set var="mat" value="${param.mat }"/>
<cc:set var="tot" value="${param.kor + param.eng + param.mat }"/>
<cc:set var="evg" value="${tot/3 }"/>
<cc:choose>
	<cc:when test="${evg >= 90 }">
		<cc:set var = "grade" value="수"/>
	</cc:when>
	<cc:when test="${evg >= 80 }">
		<cc:set var = "grade" value="우"/>
	</cc:when>
	<cc:when test="${evg >= 70 }">
		<cc:set var = "grade" value="미"/>
	</cc:when>
	<cc:when test="${evg >= 60 }">
		<cc:set var = "grade" value="양"/>
	</cc:when>
	<cc:otherwise>
		<cc:set var = "grade" value="가"/>
	</cc:otherwise>
</cc:choose>
<br>
---------------------------------------------------------------------------------------------<br>
<table border="">
	<tr>
		<td>아이디</td>
		<td>${pid }</td>
	</tr>
	<tr>
		<td>국어</td>
		<td>${kor }</td>
	</tr>
	<tr>
		<td>영어</td>
		<td>${eng }</td>
	</tr>
	<tr>
		<td>수학</td>
		<td>${mat }</td>
	</tr>
	<tr>
		<td>총점</td>
		<td>${tot}</td>
	</tr>
	<tr>
		<td>평균</td>
		<td>${evg }</td>
	</tr>
	<tr>
		<td>등급</td>
		<td>${grade }</td>
	</tr>
</table>

</body>
</html>