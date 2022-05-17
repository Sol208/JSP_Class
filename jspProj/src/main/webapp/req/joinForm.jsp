<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
<link rel="stylesheet" href="../css/joinForm.css" type="text/css" />
</head>
<body>
<h1>joinForm</h1>
<form action="joinReg.jsp" method="post">
	<div>아이디<input type="text" name="pid" /></div>
	<div>암호<input type="text" name="pw" /></div>
	<div>이름<input type="text" name="pname" placeholder="이름써줘요" /></div>
	<div>전화번호
		<select name="tel0">
		<%for(String tt:"010,011,012,016,017,018,019".split(",")) {%>
			<option value="<%=tt%>"><%=tt%></option>
			<% } %>
		</select>-<input type="text"name="tel1" />-
		<input type="text" name = "tel2" /></div>
	<div>취미
		<input type="checkbox" name="hobby" value="cording" checked="checked"/>코딩
		<input type="checkbox" name="hobby" value="debug" checked="checked"/>디버깅
		<input type="checkbox" name="hobby" value="program"/>프로그램짜기
	</div>
	<div>성별
		<input type="radio" name="gender" value="m" checked="checked"/>남
		<input type="radio" name="gender" value="f"/>여
		<input type="radio" name="gender" value="it"/>it인
	</div>
	<div>남기실말 
		<textarea name="content" cols="30" rows="5">남겨요</textarea>
	</div>
	<div>
		<input type="submit" name="가입" />
		<input type="reset" name="초기화" />
		<a href="../index.jsp">뒤로</a>
	</div>
</form>

</body>
</html>