<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>게시판 리스트 입니다.</h2>
<table border="">
	<tr>
		<td>id</td><td>${dto.id }</td>
	</tr><tr>
		<td>제목</td><td>${dto.title }</td>
	</tr><tr>
		<td>작성자</td><td>${dto.pname }</td>
	</tr><tr>
		<td>작성일</td>
		<td>
		<fmt:formatDate value = "${dto.reg_date }" pattern="yy-MM-dd HH:mm:ss"/>
		</td>
	</tr><tr>
		<td>조회수</td><td>${dto.cnt }</td>
	</tr><tr>
		<td>내용</td><td>${dto.content }</td>
	</tr><tr>
		<td>파일</td><td>${dto.upfile }</td>
	</tr>
	
	

</table>