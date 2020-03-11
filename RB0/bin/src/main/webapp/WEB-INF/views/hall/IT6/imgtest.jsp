<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
body {top-margin:0; bottom-margin:0; left-margin:0; right-margin:0; padding:0px;}
#divd{
	background: #334;
	width:100%;
	padding: 10px;
	overflow:hidden;
}

#pd0{
	margin-left:10px;
	font-family: 함초롬바탕;
	float:right;
	color: #ccc;
	font-size: 12pt;
	cursor: pointer;
	margin-right: 10px;
}

#pd{
	font-family: 함초롬바탕;
	float:right;
	color: #fff;
	padding-right: 20px;
}

</style>
<title>Insert title here</title>
</head>
<body style="background:#bbb; padding:-5px;">
<div id="divd">
	<p id="pd">ID: ${ loginuser.id } <br />이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="logout">Log Out</button></p>
	<p id="pd0"  onclick="location.href='/front'">성공회대학교 교재대여시스템</p>
</div>
</body>
</html>