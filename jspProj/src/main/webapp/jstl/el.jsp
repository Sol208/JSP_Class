<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>
<h2>el</h2>
pid:<%=request.getParameter("pid") %>,${param.pid}<br>
age:<%=request.getParameter("age")+10 %>,${param.age+10 }<br>
marriage:<%-- <%=!request.getParameter("marriage") %> --%>,
${!param.marriage}<br>
<%
	pageContext.setAttribute("aa", 100);
	request.setAttribute("bb", 200);
	session.setAttribute("cc", 300);
	application.setAttribute("44", 400);
	
	// pageContext.setAttribute("qqq", 1000);
	request.setAttribute("qqq", 2000);
	session.setAttribute("qqq", 3000);
	application.setAttribute("qqq", 4000);
%>
	aa:<%=pageContext.getAttribute("aa") %>, ${aa+1 }<br>
	bb:<%=request.getAttribute("bb") %>,${bb+1}<br>
	cc:<%=session.getAttribute("cc") %>, ${cc+1 }<br>
	dd:<%=application.getAttribute("dd") %>${dd}+1<br>
---------------------------------------------------------><br>
	pageContext:<%=pageContext.getAttribute("qqq") %>, ${pageScope.qqq }<br>
	request:<%=request.getAttribute("qqq") %>,${requestScope.qqq}<br>
	session:<%=session.getAttribute("qqq") %>, ${srssionScope.qqq }<br>
	application:<%=application.getAttribute("qqq") %>${applicationsScope.qqq}<br>
---------------------------------------------------------><br>	
	${qqq }<br>
	<% request.removeAttribute("qqq"); %>
	${qqq }<br>
	<% session.removeAttribute("qqq"); %>
	${qqq }<br>
	<% application.removeAttribute("qqq"); %>
	${qqq }<br>
---------------------------------------------------------><br>	
	\${15+7} : ${15+7 }<br>
	\${15-7} : ${15-7 }<br>
	\${15*7} : ${15*7 }<br>
	\${15/7} : ${15/7 }<br>
	\${15%7} : ${15%7 }<br>
			<br>
	\${15>7} : ${15>7 }<br>
	\${15>=7} : ${15>=7 }<br>
	\${15<=7} : ${15<=7 }<br>
	\${15<7} : ${15<7 }<br>
	\${15== 7} : ${15==7 }<br>
	\${15!=7} : ${15!=7 }<br>
			<br>
	\${"장동겅">"장서건"} : ${"장동겅">"장서건" }<br>
	\${"장동겅">="장서건"} : ${"장동겅">="장서건" }<br>
	\${"장동겅"<="장서건"} : ${"장동겅"<="장장서건" }<br>
	\${"장동겅"<"장서건"} : ${"장동겅"<"장서건" }<br>
	\${"장동겅"=="장서건"} : ${"장동겅"=="장서건" }<br>
	\${"장동겅"!="장서건"} : ${"장동겅"!="장서건" }<br>
			<br>
	\${true&&true} : ${true&&true }<br>
	\${true&&false} : ${true&&false }<br>
	\${false&&false} : ${false&&false }<br>
	\${true||true} : ${true||true }<br>
	\${true||false} : ${true||false }<br>
	\${false||false} : ${false||false }<br>
	<%-- else or 는 안됨
	\${true^true} : ${true^true }<br>
	\${true^false} : ${true^false }<br>
	\${false^false} : ${false^false }<br>
	--%>
			<br>
	\${true? "참이지롱" : "거짓부렁" } : ${true? "참이지롱" : "거짓부렁" }<br>
	
	
</body>
</html>