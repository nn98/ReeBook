<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 style="font-family: 휴먼모음T">교재 목록</h1>
		<table id="articles" class="table table-bordered">
			<thead>
				<tr>
					<th bgcolor="#555" bordercolor="#aaa"><span style="color:#fff">ID</span></th>
					<th bgcolor="#555" bordercolor="#aaa"><span style="color:#fff">제목</span></th>
					<th bgcolor="#555" bordercolor="#aaa"><span style="color:#fff">저자</span></th>
					<th bgcolor="#555" bordercolor="#aaa"><span style="color:#fff">출판사</span></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${ list }">
					<tr>
						<td bgcolor="#888" bordercolor="#aaa"><span style="color:#fff">${book.id}</span></td>
						<td bgcolor="#888" bordercolor="#aaa"><span style="color:#fff">${book.title}</span></td>
						<td bgcolor="#888" bordercolor="#aaa"><span style="color:#fff">${book.author}</span></td>
						<td bgcolor="#888" bordercolor="#aaa"><span style="color:#fff">${book.publisher}</span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<my:pagination pageSize="${ pagination.sz }"
			recordCount="${ pagination.recordCount }" queryStringName="pg" />
	</div>
</body>
</html>