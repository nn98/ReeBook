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
<title>����ȸ���б� ����뿩�ý���</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Noto+Serif+KR&display=swap');

#h10 {
	font-family: 'Noto Serif KR';
	margin-left: 0px;
	color: #ddd;
	font-size: 14pt;
	border: 0xp;
	background: #334;
	padding: 5px 15px 8px 15px;
}

#table0 {
	width: 90%;
	border: 3px solid #334;
	margin-left: auto;
	margin-right: auto;
}

#tr0{
}

#th0 {
	background-color: #88c;
	border: 2px solid #ccc;
}

#th1 {
	background-color: #88c;
	border: 2px solid #ccc;
	text-align: center;
}

#td0 {
	padding:10px;
	background-color: #aad;
	border: 1px solid #ddd;
}

#td1 {
	padding:10px;
	background-color: #aad;
	border: 1px solid #ddd;
	text-align: center;
}

#span0 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left:5px;
	color: #fff;
}

#span1{
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left:5px;
	color:#f55;
}

#span2{
	font-family: 'Noto Serif KR';
	font-size: 12pt;
	padding: 0px 0px 0px 7px;
	color:#fff;
}

#span3{
	font-family: 'Noto Serif KR';
	font-size: 11pt;
}

#pg0 {
	margin-left: 50px;
}

#button0{
	margin-left:5px;
}

#pd{
	font-family: 'Noto Serif KR';
	float:right;
	color: #fff;
	padding-right: 20px;
}

#pd0{
	margin-left:10px;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd0:hover{
	color: #fff;
}

#pd1 {
	background: #334;
	color: #ccc;
	font-size: 14pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.7%;
	float: left;
	padding: 5px 5px 13px 5px;
	margin-left: 0.3%;
	cursor: pointer;
	border-bottom: 5px solid #668;
}

#pd1:hover {
	border-bottom: 5px solid #99b;
	color: #fff;
}

#div00{
	background: #668;
	width:100%;
	overflow:hidden;
}

#divd{
	background: #334;
	width:100%;
	height:auto;
	padding: 10px;
	overflow:hidden;
}

#sup_skhu{
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	margin: 0px;
	color: #fc0;
}

</style>
</head>
<body style="background:#668">
<form:form modelAttribute="loginuser" method="post">
	<div id="divd">
	<p id="pd0"  onclick="location.href='/front'"><sup id=sup_skhu>����ȸ���б�</sup> ������뿩�ý���</p>
	<p id="pd">ID: ${ loginuser.id } �̸�: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
	</div>
	<div id="div00">
	<p id="pd1" onclick="location.href='/booksl'">���� �뿩</p>
	<p id="pd1" onclick="location.href='/halls'">�繰�� ��û</p>
	<p id="pd1" onclick="location.href='/mypage'">����������</p>
	<p id="pd1"></p>
	</div>
		<div class="container">
			<form action="/">
				<table id="table0" class="table table-bordered">
				<caption><span id="h10">���� ���</span></caption>
					<thead>
						<tr id="tr0">
							<th id="th0"><span id="span2">ID</span></th>
							<th id="th0"><span id="span2">����</span></th>
							<th id="th0"><span id="span2">����</span></th>
							<th id="th0"><span id="span2">���ǻ�</span></th>
							<th id="th1"><span id="span2">�뿩</span></th>
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
								<td id="td1">
									<% Book book=(Book)pageContext.getAttribute("book"); %> <% if(book.isAvailable()) {%>
									<button id="button0" type="submit" name="bid"
										value=${ book.id } formmethod="post" formaction="rent">
										<span id="span3">��û</span>
									</button> <% } else { %> <span id="span1">�Ұ�</span> <% } %>
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