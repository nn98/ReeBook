<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="net.skhu.domain.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
@import
	url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Noto+Serif+KR&display=swap')
	;

#h10 {
	color: #fff;
	font-family: serif;
	margin-left: 50px;
	margin-bottom: 20px;
	font-size: 20pt;
}

#table0 {
	width: 90%;
	border: 3px solid #66b;
	margin-left: auto;
	margin-right: auto;
}

#tr0 {
	
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
	padding: 10px;
	background-color: #aad;
	border: 1px solid #ddd;
}

#td1 {
	padding: 10px;
	background-color: #aad;
	border: 1px solid #ddd;
	text-align: center;
}

#span0 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left: 5px;
	color: #fff;
}

#span1 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left: 5px;
	color: #f55;
}

#span2 {
	font-family: 'Noto Serif KR';
	font-size: 12pt;
	padding: 0px 0px 0px 7px;
	color: #fff;
}

#span3 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
}

#pg0 {
	margin-left: 50px;
}

#button0 {
	margin-left: 5px;
}

#pd {
	font-family: 'Noto Serif KR';
	float: right;
	color: #fff;
	padding-right: 20px;
}

#pd0 {
	margin-left: 10px;
	font-family: 'Noto Serif KR';
	float: left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd1 {
	background: #334;
	text-align: center;
	width: 24.7%;
	font-family: 'Noto Serif KR';
	float: left;
	color: #ccc;
	padding: 5px 5px 13px 5px;
	font-size: 14pt;
	margin-left: 0.3%;
	cursor: pointer;
	border-bottom: 5px solid #668;
}

#pd1:hover {
	border-bottom: 5px solid #99b;
}

#div00 {
	background: #668;
	width: 100%;
	overflow: hidden;
}

#divd {
	background: #334;
	width: 100%;
	height: auto;
	padding: 10px;
	overflow: hidden;
}

#sup_skhu {
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	margin: 0px;
	color: #fc0;
}

#td00{
	padding: 10px;
	background-color: #88c;
	border: 2px solid #eee;
}

#span00 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left: 5px;
	color: #fff;
	font-weight: bold;
}

#div01{
	
}

#tb00{
	width: 40%;
	margin: 0px 0px 40px auto;
	border: 3px solid #66b;
	float: left;
}

#tb01{
	width: 40%;
	margin: 0px auto 40px 0px;
	border: 3px solid #66b;
	float: right;
}

</style>
</head>
<body style="background: #668">
	<form:form modelAttribute="loginuser" method="post">
		<div id="divd">
			<p id="pd0" onclick="location.href='/front'">
				<sup id=sup_skhu>����ȸ���б�</sup> ������뿩�ý���
			</p>
			<p id="pd">
				ID: ${ loginuser.id } �̸�: ${ loginuser.name } &nbsp; &nbsp;
				<button type="submit" formmethod="post"
					style="color: #aaf; margin-top: 5px" name="logOut"
					formaction="/logout">Log Out</button>
			</p>
		</div>
		<div id="div00">
			<p id="pd1" onclick="location.href='/booksl'">���� �뿩</p>
			<p id="pd1" onclick="location.href='/halls'">�繰�� ��û</p>
			<p id="pd1" onclick="location.href='/mypage'">����������</p>
			<p id="pd1"></p>
		</div>
		<div class="container">
			<h1 id="h10">����� ����</h1>
			<table id="tb00"><!-- 
				<thead>
					<tr id="tr0">
						<th id="th0"><span id="span2">ID</span></th>
						<th id="th0"><span id="span2">�̸�</span></th>
						<th id="th0"><span id="span2">�̸���</span></th>
						<th id="th0"><span id="span2">�ڵ���</span></th>
						<th id="th1"><span id="span2">�뿩��</span></th>
						<th id="th1"><span id="span2">�ݳ���</span></th>
					</tr>
				</thead>
				 -->
				<tbody>
						<tr>
							<td id="td00"><span id="span00">ID</span></td>
							<td id="td0"><span id="span0">${ loginuser.id }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�̸�</span></td>
							<td id="td0"><span id="span0">${ loginuser.name }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�̸���</span></td>
							<td id="td0"><span id="span0">${ loginuser.email }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�ڵ���</span></td>
							<td id="td0"><span id="span0">${ loginuser.hp }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�г�</span></td>
							<td id="td0"><span id="span0">${ loginuser.grade }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�Ҽ�</span></td>
							<td id="td0"><span id="span0">${ loginuser.department.name }</span></td>
						</tr>
				</tbody>
			</table>
			<table id="tb01" class="table table-bordered">
				<tbody>
						<tr>
							<td id="td00"><span id="span00">ID</span></td>
							<td id="td0"><span id="span0">${ loginuser.locker.id }</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�а�</span></td>
							<td id="td0"><span id="span0">ID</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">��</span></td>
							<td id="td0"><span id="span0">ID</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">�繰�� ��ȣ</span></td>
							<td id="td0"><span id="span0">ID</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">ID</span></td>
							<td id="td0"><span id="span0">ID</span></td>
						</tr>
						<tr>
							<td id="td00"><span id="span00">ID</span></td>
							<td id="td0"><span id="span0">ID</span></td>
						</tr>
				</tbody>
			</table>
			</div>
			<div>
			<h1 id="h10">���� ���</h1>
			<table id="table0" class="table table-bordered">
				<thead>
					<tr id="tr0">
						<th id="th0"><span id="span2">ID</span></th>
						<th id="th0"><span id="span2">����</span></th>
						<th id="th0"><span id="span2">����</span></th>
						<th id="th0"><span id="span2">���ǻ�</span></th>
						<th id="th1"><span id="span2">�뿩��</span></th>
						<th id="th1"><span id="span2">�ݳ���</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="book" items="${ list }">
						<tr>
							<td id="td0"><span id="span0">${book.id}</span></td>
							<td id="td0"><span id="span0">${book.title}</span></td>
							<td id="td0"><span id="span0">${book.author}</span></td>
							<td id="td0"><span id="span0">${book.publisher}</span></td>
							<td id="td0"><span id="span0">${book.rentdate}</span></td>
							<td id="td0"><span id="span0">${book.returndate}</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>