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
<title>����ȸ���б� ������뿩�ý���</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Noto+Serif+KR&display=swap')
	;

#h10 {
	font-family: 'Noto Serif KR';
	margin-left: 0px;
	color: #ddd;
	font-size: 14pt;
	border: 0xp;
	background: #334;
	padding: 5px 11px 8px 11px;
}

#h10:hover{
	color: #fff;
}

#table0 {
	border: 3px solid #334;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
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
	padding: 10px 20px 10px 10px;
	background-color: #aad;
	border: 1px solid #ddf;
}

#td1 {
	padding: 10px;
	background-color: #aad;
	border: 1px solid #ddd;
	text-align: center;
}

#td2 {
	padding: 10px 20px 10px 10px;
	background-color: #aad;
	border-bottom: 1px solid #ddf;
	font-size: 8pt;
}

#td3 {
	padding: 10px 6px 10px 12px;
	background-color: #aad;
	border-bottom: 1px solid #ddf;
	text-align: right;
}

#td00{
	padding: 10px;
	background-color: #88c;
	border-right: 1.5px solid #eee;
	border-bottom: 0.5px solid #99d;
	margin-left: auto;
	margin-right: auto;
}

#td01{
	padding: 10px 10px 10px 6px;
	background-color: #88c;
	border-left: 2px solid #aad;
	border-bottom: 0.5px solid #99d;
	margin-left: auto;
	margin-right: auto;
}

#span00 {
	font-family: 'Noto Serif KR';
	font-size: 12pt;
	padding: 3px 12px 3px 8px;
	color: #fff;
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
	font-size: 10pt;
	padding: 0px 0px 0px 7px;
	color: #fff;
}

#span3 {
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	color: #fff;
}

#span4 {
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	color: #fff;
}

#span5 {
	font-family: 'Noto Serif KR';
	font-size: 11pt;
	padding-left: 3px;
	color: #fff;
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

#pd0:hover{
	color: #fff;
}

#pd1 {
	background: #334;
	color: #ccc;
	font-size: 14pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.9%;
	float: left;
	padding: 5px 5px 13px 5px;
	margin-right: 0.1%;
	cursor: pointer;
	border-bottom: 5px solid #668;
}

#pd1:hover {
	border-bottom: 5px solid #99b;
	color: #fff;
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

#div01{
	float: top;
}

#tb00{
	width: auto;
	margin: 0px 0px 40px auto;
	border: 3px solid #337;
	float: left;
}

#tb01{
	width: auto;
	margin: 0px auto 40px 80px;
	border: 3px solid #337;
	float: left;
}

#btn0{
	font-family: 'Noto Serif KR';
	font-size: 10pt;
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
				 <caption><span id="h10">����� ����</span></caption>
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
						<tr>
							<td id="td00"><span id="span00">���� ����</span></td>
							<td id="td0"><button id="btn0" name="return" type="button" onclick="location.href='/signup'">��û</button></td>
						</tr>
				</tbody>
			</table>
			<table id="tb01" class="table table-bordered">
				 <caption><span id="h10">����� �繰�� ����</span></caption>
				<tbody>
						<tr>
							<td id="td3"><span id="span4">${ loginuser.locker.id }</span></td>
							<td id="td01"><span id="span00">ID</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.hid }</span></td>
							<td id="td01"><span id="span00">��</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.fid }</span></td>
							<td id="td01"><span id="span00">��</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.lid }</span></td>
							<td id="td01"><span id="span00">�� �繰��</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.lcolumn }</span></td>
							<td id="td01"><span id="span00">��</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.lrow }</span></td>
							<td id="td01"><span id="span00">��</span></td>
						</tr>
						<tr>
							<td id="td3"><span id="span0">${ loginuser.locker.lnum }</span></td>
							<td id="td01" style="border-bottom: 1px solid #bbd;"><span id="span00">�� ĭ</span></td>
						</tr>
						<tr>
							<td id="td01" colspan="2" style="text-align: center;">
							<span id="span4" style="padding-right: 10px">�繰�� ����</span>
							<button id="btn0" name="return" type="button" onclick="location.href='/halls'">��û</button>
							</td>
							
						</tr>
				</tbody>
			</table>
			</div>
			<div class="container" style="width: 95%;">
			<table id="table0" class="table table-bordered">
				 <caption><span id="h10">�뿩 ���� ���</span></caption>
				<thead>
					<tr id="tr0">
						<th id="th0"><span id="span2">ID</span></th>
						<th id="th0"><span id="span2">����</span></th>
						<th id="th0"><span id="span2">����</span></th>
						<th id="th0"><span id="span2">���ǻ�</span></th>
						<th id="th0"><span id="span2">�뿩��</span></th>
						<th id="th0"><span id="span2">�ݳ���</span></th>
						<th id="th1"><span id="span3">�ݳ�</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="rent" items="${ list }">
						<tr>
							<td id="td0"><span id="span5">${rent.book.id}</span></td>
							<td id="td0"><span id="span5">${rent.book.title}</span></td>
							<td id="td0"><span id="span5">${rent.book.author}</span></td>
							<td id="td0"><span id="span5">${rent.book.publisher}</span></td>
							<td id="td0"><span id="span5">${rent.rentDate.toString().replace("00:00:00.0","")}</span></td>
							<td id="td0"><span id="span5">${rent.returnDate.toString().replace("00:00:00.0","")}</span></td>
							<td id="td1"><button id="btn0" name="return" type="submit" onclick="location.href='/return'"value=${ rent.id }
							formmethod="get" formaction="/return" style="font-size:9pt">�ݳ�</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>