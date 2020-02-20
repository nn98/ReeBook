<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="net.skhu.domain.*" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
@import url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Noto+Serif+KR&display=swap');
#h10 {
	font-family: 함초롬바탕;
	margin-left: 50px;
	margin-bottom: 20px;
	font-size:20pt;
}

#table0 {
	width: 90%;
	border: 3px solid #444;
	margin-left: auto;
	margin-right: auto;
}

#tr0{
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
	font-family: 함초롬바탕, cursive;
	font-size: 13pt;
	padding-left:5px;
	color: #fff;
}

#span1{
	font-family: 함초롬바탕, serif;
	font-size: 15pt;
	padding-left:5px;
	color:#f00;
}

#span2{
	font-family: 함초롬바탕, serif;
	font-size: 15pt;
	padding: 0px 0px 0px 7px;
	color:#fff;
}

#span3{
	font-family: 함초롬바탕, serif;
	font-size: 11pt;
}

#pg0 {
	margin-left: 50px;
}

#button0{
	margin-left:5px;
}

#divd{
	background: #334;
	width:100%;
	height:auto;
	padding: 10px;
	overflow:hidden;
}

#pd0{
	margin-left:10px;
	font-family: 함초롬바탕;
	float:left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd{
	font-family: 함초롬바탕;
	float:right;
	color: #fff;
	padding-right: 20px;
}
	
</style>
</head>
<body>
	<form:form modelAttribute="loginuser">
			<div id="divd">
	<p id="pd0"  onclick="location.href='front'">성공회대학교 교재대여시스템</p>
	<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="logout">Log Out</button></p>
	</div>
		<div class="container">
			<h1 id="h10">교재 목록</h1>
			<form action="/">
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
								<td id="td0"><span id="span0">${book.id}</span></td>
								<td id="td0"><span id="span0">${book.title}</span></td>
								<td id="td0"><span id="span0">${book.author}</span></td>
								<td id="td0"><span id="span0">${book.publisher}</span></td>
								<!-- <td id="td0"><span id="span0">${book.available}</span></td> -->
								<td id="td0">
									<% Book book=(Book)pageContext.getAttribute("book"); %> <% if(book.isAvailable()) {%>
									<button id="button0" type="submit" name="bid"
										value=${ book.id } formmethod="post" formaction="rent">
										<span id="span3">신청</span>
									</button> <% } else { %> <span id="span1">불가</span> <% } %>
								</td>
								<!-- <td id="td0"><c:out value="${book.available?book.available:\"<p>test</p>\"}"></c:out></td> -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			<div style="margin-left: 50px">
				<my:pagination pageSize="${ pagination.sz }"
					recordCount="${ pagination.recordCount }" queryStringName="pg" />
			</div>
		</div>
	</form:form>
</body>
</html>