<%@page import="jdbc_p.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setAttribute("notice", new NoticeDAO().selectAll());
    request.setAttribute("main",  "notice" );
    %>
<jsp:forward page="view/template.jsp"/>