<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/examForm.css" type="text/css" />
</head>
<script>
	function frmGo(){
		document.frm.submit();
	}
	</script>
<body>
	<h1>ExamForm</h1>
	<%
		int no = 5;
		if(request.getParameter("no")!=null){
			no = Integer.parseInt(request.getParameter("no"));
		}
	%>
	<form name="frm" action="">
		<select name="no" id="" onchange="frmGo()">
		<%for(int i = 5; i<30; i+=5){ 
			String ss = "";
			if(i==no){
				ss="selected";
			}
		%>
			<option value="<%=i%>" <%=ss %>><%=i%></option>
		<%} %>
		</select>
	</form>
	<form action="examReg.jsp" method="post">
		<div>
			<div>이름</div>
			<div>국어</div>
			<div>영어</div>
			<div>수학</div>
		</div>
		<%for(int i = 0; i<no; i++){ %>
		<div>
			<div>
				<input type="text" name="pname" value="돌쇠<%=i+1%>" />
			</div>
			<div>
				<input type="text" name="kor" value="<%=(int)(Math.random()*60+40)%>"/>
			</div>
			<div>
				<input type="text" name="eng" value="<%=(int)(Math.random()*60+40)%>"/>
			</div>
			<div>
				<input type="text" name="mat" value="<%=(int)(Math.random()*60+40)%>"/>
			</div>
		</div>
		<%} %>
		<div>
			<div><input type="submit" value="입력" /></div>
		</div>
	</form>
	
</body>
</html>