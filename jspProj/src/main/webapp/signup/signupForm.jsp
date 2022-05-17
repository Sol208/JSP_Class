<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signupForm</title>
</head>
<body>
<h1>signupForm</h1>
	<form action="signupReg.jsp">
		<table border="">
			<tr>
				<td>이름</td>
				<td colspan="2"><input type="text" name="pname" /></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td colspan="2">
					<input type="password" name="ssn1" /> -
					<input type="password" name="ssn2"/>
				</td>
			</tr>
			<tr>
				<td>회원종류</td>
				<td colspan="2">
				<input type="radio" name="kind" value="minor" />미성년자
				<input type="radio" name="kind" value="adult" />성인
				<input type="radio" name="kind" value="foreigner" />외국인
				</td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="회원가입정보 입력"/></td>
			</tr>
		</table>
	</form>
</body>
</html>