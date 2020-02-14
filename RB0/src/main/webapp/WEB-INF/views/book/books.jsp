<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="net.skhu.domain.*" %>
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
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap');
#h10 {
	font-family: 휴먼모음T;
	margin-left: 50px;
}

#table0 {
	width: 90%;
	border: 3px solid #444;
	margin-left: auto;
	margin-right: auto;
}

#tr0{
	padding: 3px 3px 0px 0px;
}

#th0 {
	background-color: #555;
	border: 2px solid #aaa;
}

#td0 {
	background-color: #888;
	border: 1px solid #ddd;
}

#span0 {
	font-family: 'Noto Serif KR', serif;
	font-size: 13pt;
	padding-left:5px;
	color: #fff;
}

#span1{
	padding-left:5px;
	color:#f00;
}

#span2{
	padding-left:5px;
	color:#fff;
}

#pg0 {
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="container">
		<h1 id="h10">교재 목록</h1>
		<table id="table0" class="table table-bordered">
			<thead>
				<tr id="tr0">
					<th id="th0"><span id="span2">ID</span></th>
					<th id="th0"><span id="span2">제목</span></th>
					<th id="th0"><span id="span2">저자</span></th>
					<th id="th0"><span id="span2">출판사</span></th>
					<th id="th0"><span id="span2">대여</span></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${ list }">
					<tr>
						<td id="td0"><span style="color: #fff">${book.id}</span></td>
						<td id="td0"><span id="span0">${book.title}</span></td>
						<td id="td0"><span id="span0">${book.author}</span></td>
						<td id="td0"><span id="span0">${book.publisher}</span></td>
						<!-- <td id="td0"><span id="span0">${book.available}</span></td> -->
						<td id="td0">
						<% Book book=(Book)pageContext.getAttribute("book"); %>
						<% if(book.isAvailable()) {%>
						<input type="submit" value="신청">
						<% } else { %>
						<span id="span1">불가</span>
						<% } %>
						</td>
						<!-- <td id="td0"><c:out value="${book.available?book.available:\"<p>test</p>\"}"></c:out></td> -->
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<my:pagination pageSize="${ pagination.sz }"
			recordCount="${ pagination.recordCount }" queryStringName="pg" />
	</div>
</body>
</html>