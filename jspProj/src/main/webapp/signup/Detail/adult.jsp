<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adult</title>
</head>
<body>
<h1>adult</h1>
<form action="">
	<table border="1">
		<tr>
			<td>이름</td>
			<td><input type="text" value="<%=request.getParameter("name")%>" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" /></td>
		</tr>
		<tr>
			<td>회사명</td>
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