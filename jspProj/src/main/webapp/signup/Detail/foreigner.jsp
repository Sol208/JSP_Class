<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreigner</title>
</head>
<body>
<h1>foreigner</h1>
<form action="">
	<table border="">
		<tr>
			<td>이름</td>
			<td><input type="text" value="<%=request.getParameter("name")%>" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" /></td>
		</tr>
		<tr>
			<td>국적</td>
			<td><input type="text" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" />
			</td>
		</tr>
	</table>
</form>

</body>
</html>