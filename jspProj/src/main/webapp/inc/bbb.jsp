<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//멤버
	int c = 300;
%>
<%
	//지역
	int d = 400;
%>        
<h2>bbb.jsp입니다.</h2>
c = <%=c%>, d = <%=d%><br>
pid = <%=request.getParameter("pid")%><br>
marriage = <%=request.getParameter("marriage")%><br>
pname = <%=request.getParameter("pname")%><br>
age = <%=request.getParameter("age")%><br>
<%=request.getAttribute("mem1")%><br>
<%=request.getAttribute("mem2")%>

<%
request.setAttribute("mem2", new MemberDTO("정남성",30,true));
%>