<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<h1>foreach</h1>
<%
	String[] arr = {"정우성","정좌성","정남성","정중성","정북두신성","정성"};
	int[] arri = {11,45,32,67,88,93,25,89,23};
%>
<c:forEach var="i" begin="3" end="20" step="2" varStatus="no">
${i } - ${no.index }<br>

</c:forEach>
----------------------------------------------------------<br>
<c:forEach var="tt" items="<%=arr %>" varStatus="no">
${no.index } - ${tt }<br>
</c:forEach>


----------------------------------------------------------<br>
11,45,32,67,88,93,25,89,23의 짝수번째 합을 구하시오<br>
<c:set var="tot" value="0"/>
<c:forEach var="aa" items="<%=arri%>" varStatus="no">
	<c:if test="${aa%2 == 0 }">
		<c:set var = "tot" value="${tot+aa }"/>
	</c:if>
</c:forEach>

total:${tot }


<br>
<h2>forTokens</h2>


<c:forTokens items="현빈, 원빈,투빈,골빈_자바빈.장희빈,젤리빈_커피빈" delims=",._" var="tt" varStatus="no">
	${no.index }-${tt }<br>
</c:forTokens>
----------------------------------------------------------<br>

<c:forTokens items="11,45,32,67,88,93,25,89,23" delims="," var="tt" varStatus="no">
	${no.index }-${tt }, ${tt%2 }<br>
</c:forTokens>
----------------------------------------------------------<br>
<c:set var="aa" value="0"/>
<c:set var="aaVV" value="0"/>
<c:set var="bb" value="0"/>
<c:set var="bbVV" value="0"/>
<c:forTokens items="a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88" 
			delims="," var="tt" varStatus="no">
			>>>>> ${tt }<br>
	<c:forTokens items="${tt }" 
			delims="_" var="dd" varStatus="no">
		<c:choose>
		<c:when test="${no.index = 0; ]">
			<c:set var= "ban" value="${dd }"/>
		</c:when>
		</c:choose>
	</c:forTokens>
</c:forTokens>
----------------------------------------------------------<br>
${aa } : ${aaVV }, ${bb }:${bbVV }
</body>
</html>