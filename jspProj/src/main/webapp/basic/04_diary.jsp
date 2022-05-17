<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Calendar today = Calendar.getInstance();

	today.set(Calendar.DATE,1);
	int year = today.get(Calendar.YEAR);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_diary</title>
<link rel="stylesheet" href="../css/04_diary.css" type="text/css"/>
</head>

<body>
<h1>04_diary</h1>
<div id="year">
	<%for(int i = 0; i < 12; i++) {
		today.set(year,i,1);
		int month = i+1;
		int first = today.get(Calendar.DAY_OF_WEEK);
		int last = today.getActualMaximum(Calendar.DATE);
	%>
	<div id="month">
		<%-- <div><img src="../fff/f<%=month%>.jpg" alt="" /></div> --%>
		<div><%=year+"年" + month + "月" %></div>
		<div>
			<% for(char dd : "일월화수목금토".toCharArray()){ %>
				<div><%=dd %></div>
			<%} for(int j = 1; j<first; j++){ %>
				<div></div>
			<%} for(int k = 1; k<=last; k++){ %>
				<div><%=k %></div>
			<%} %>
		</div>
	</div>
	<%}%>
	
</div>

</body>
</html>