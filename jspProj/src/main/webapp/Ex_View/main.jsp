<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String main = "info";
	if(request.getParameter("main")!=null){
		main = request.getParameter("main");  
	}
  	String mainUrl ="menu/"+main+".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="css/top.css" />
<link rel="stylesheet" href="css/section.css" />
</head>
<body>
<header>
<jsp:include page="top.jsp"></jsp:include>
</header>
<section>
	<div id="menu">
		<jsp:include page="<%=mainUrl%>"></jsp:include>
	</div>
	<div id="main">
		메인
	</div>
</section>
<footer>
<jsp:include page="<%=mainUrl%>"></jsp:include>
</footer>
</body>
</html>