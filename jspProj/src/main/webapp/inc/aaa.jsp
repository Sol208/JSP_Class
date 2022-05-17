<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//멤버
	int a = 10;
%>
<%
	//지역
	int b = 20;
%>
<!-- include는 컴파일 이후 결합되기때문에 멤버,지역 모두 알 수 없다. -->
<!-- 때문에 파라미터로 전달하는 방법을 사용할 수 있고, -->
<h2>aaa.jsp입니다.</h2>
a = <%=a%>, b = <%=b%><br>
pid = <%=request.getParameter("pid")%><br>
marriage = <%=request.getParameter("marriage")%><br>
pname = <%=request.getParameter("pname")%><br>
age = <%=request.getParameter("age")%><br>
kor = <%=request.getParameter("kor")%><br>
eng = <%=request.getParameter("eng")%><br>
mat = <%=request.getParameter("mat")%><br>
mem1 = <%=request.getAttribute("mem1")%><br>
mem2 = <%=request.getAttribute("mem2")%>