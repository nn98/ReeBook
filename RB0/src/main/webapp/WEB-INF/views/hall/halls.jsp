<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 rel="stylesheet" media="screen">
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>성공회대학교 기자재대여시스템</title>
<style>

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
	cursor: pointer;
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

a{
	padding: 10px;
	background: #99b;
	color: #fff;
}

#div01{
	background-image: url("/image/campus.png");
	width: 1097px;
	height: 775px;
	overflow: visible;
	cursor: pointer;
	border: 5px solid #334;
	margin: 10px auto 0px auto;
}

#div01:hover{
	background-image: url("/image/campus-6.png");
}

#h100{
	font-family: 'Noto Serif KR';
	font-size: 20pt;
	text-align: center;
	background: #ccfb;
	color: #fff;
	padding: 15px 0px 15px 0px;
}

</style>
</head>
<body style="background:#668">
<form:form modelAttribute="loginuser" method="post">
	<div id="divd">
	<p id="pd0"  onclick="location.href='/front'"><sup id=sup_skhu>성공회대학교</sup> 기자재대여시스템</p>
	<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
	</div>
	<div id="div00">
	<p id="pd1" onclick="location.href='/booksl'">교재 대여</p>
	<p id="pd1" onclick="location.href='/halls'">사물함 신청</p>
	<p id="pd1" onclick="location.href='/mypage'">마이페이지</p>
	<p id="pd1"></p>
	</div>
	<div id="div01" onclick="location.href='/it6?hid=6'">
	<h1 id="h100">성공회대학교 캠퍼스</h1>
	</div>
	<a href="it6?hid=6" style="float: bottom">6관</a>
</form:form>
</body>
</html>