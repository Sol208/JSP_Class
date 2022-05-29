<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="">
	<tr>
		<td>이름</td>
		<td>${dto.pname }</td>
	</tr>
	<tr>
		<td>학번</td>
		<td>${dto.stuid }</td>
	</tr>
	<tr>
		<td>필수 과목</td>
		<td>${dto.subject }</td>
	</tr>
	<tr>
		<td>국어점수</td>
		<td>${dto.kor } : ${dto.korGrade }</td>
	</tr>
	<tr>
		<td>수학점수</td>
		<td>${dto.mat } : ${dto.matGrade }</td>
	</tr>
</table>
<a href="List">뒤로가기</a>