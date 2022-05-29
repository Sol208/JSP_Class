<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>학점을 보고싶은 학생의 이름을 클릭 해주세요.</h2>
<table border="">
	<tr>
		<td>no</td>
		<td>이름</td>
		<td>학번</td>
		<td>전공</td>
		<td>필수 과목</td>
	</tr>
	<c:forEach var="dto" items="${listData }" varStatus = "no">
	<tr>
		<td>${no.index+1 }</td>
		<td><a href="Detail?stuid=${dto.stuid }">${dto.pname }</a></td>
		<td>${dto.stuid }</td>
		<td>${dto.major }</td>
		<td>${dto.subject }</td>
	</tr>
	</c:forEach>
	<tr>
	<td colspan="5" align="right"><a href="/School/">뒤로가기</a></td>
	</tr>
</table>