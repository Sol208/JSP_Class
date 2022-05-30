<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>게시판 리스트 입니다.</h2>
<table border="">
	<tr>
		<td>id</td><td>${dto.id }</td>
	</tr>
	<tr>
		<td>제목</td><td>${dto.title }</td>
	</tr>
	<tr>
		<td>작성자</td><td>${dto.pname }</td>
	</tr>
	<tr>
		<td>작성일</td>
		<td>
		<fmt:formatDate value = "${dto.reg_date }" pattern="yy-MM-dd HH:mm:ss"/>
		</td>
	</tr>
	<tr>
		<td>조회수</td><td>${dto.cnt }</td>
	</tr>
	<tr>
						<!-- dto의 메서드도 사용 가능 -->
		<td>내용</td><td>${dto.contentBr }</td>
	</tr>
	<c:if test="${dto.upfile != null }">
	<tr>
		<td>파일</td>
		<td>
			<c:choose>
				<c:when test="${dto.img }">
					<img src="<c:url value="/bbb_fff/${dto.upfile }"/>" alt="" />
				</c:when>
				<c:otherwise>
					<a href="<c:url value="/board/FileDown?fname=${dto.upfile }"/>">${dto.upfile }</a> 
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	</c:if>
	<tr>
		<td colspan="5" align="right">
			<a href="<c:url value="/board/List?page=${nowPage }"/>">목록으로</a>
			<a href="<c:url value="/board/ModifyForm?id=${dto.id }&page=${nowPage }"/>">수정</a>
			<a href="<c:url value="/board/DeleteForm?id=${dto.id }&page=${nowPage }"/>">삭제</a>
		</td>
	</tr>
</table>