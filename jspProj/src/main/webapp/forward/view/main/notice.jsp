<%@page import="jdbc_p.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/notice.css" type="text/css" />
    <table>
		<tr>
			<th class="notice_no">번호</th>
			<th class="notice_title">제목</th>
			<th class="notice_datetime">생성일자</th>
			<th class="notice_view">조회수</th>
		</tr>
<%
	ArrayList<NoticeDTO> noArr = (ArrayList<NoticeDTO>)request.getAttribute("notice");
	
	for(NoticeDTO dto : noArr){%>
		<tr>
			<td class="notice_no"><%=dto.getNo()%></td>
			<td class="notice_title"><%=dto.getTitle()%></td>
			<td class="notice_datetime"><%=dto.getDate()%></td>
			<td class="notice_view"><%=dto.getView()%></td>
		</tr>
	<%}%>
	</table>