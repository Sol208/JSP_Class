<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("pname");
	int ssn1 = Integer.parseInt(request.getParameter("ssn1"));
	int ssn2 = Integer.parseInt(request.getParameter("ssn2"));
	String kind = request.getParameter("kind");
	
	response.sendRedirect("Detail/"+kind+".jsp?"+"name="+name);
	
%>