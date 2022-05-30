<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>글 수정 폼</h2>
<form action="ModifyReg" method="post">
	<input type="hidden" name="id" value="${dto.id}" />
	<table border="">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${dto.title }" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="pname" value="${dto.pname }" /></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="30" rows"5" >${dto.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="<c:url value="/board/Detail?id=${dto.id }&page=${nowPage }"/>">뒤로</a>
				<input type="reset" name="취소" />
				<input type="submit" name="수정" />
			</td>
			
		</tr>
	</table>
</form>