
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage 방식</title>
</head>
<body>
<h1>errorPage 방식</h1>
<%= exception.getMessage() %>

<!-- 익스플로러는 페이지의 내용을 513byte 이상 되어야 정상 처리함 -->
<!-- 아래는 513byte 이상을 만들기 위해 마구잡이로 넣은 주석 -->

<!-- jkfld;sajkfl;dsjkal;fjkdl;sajkfl;djskalf;jkldfdjhskalhfjdklsas;ajfkdl;sajfkld;sajfkdsa;jfkldsajfkdsa
fdksla;fjkdl;sajfkl;djsakfl;jdkls;aisel;fjiel;sajrfikel;sajkl;fesa
fjeklsa;fjkle;sa
fejksal;fhilr;ehautrnjkld;svhuridkl;safkjgdls;'afd
sarteijsolapfhjieropasjcnkl;4esaiejcil;errksiajtirl;sdankfl;dsa
dfdjkdl;sairthejklfs;nkesl -->

</body>
</html>