<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
#div0{
	width:950px;
	height:430px;
	overflow:visible;
	margin: 0px auto 0px auto;
}
#img0{
	width:80%;
	height:auto;
	overflow:hidden;
}
#btn0{
	width:19%;
	margin-left:1%;
	float:right;
	height:20%;
}

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
<body>
<div id="divd">
	<p id="pd">ID: ${ loginuser.id } <br />이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="logout">Log Out</button></p>
	<p id="pd0"  onclick="location.href='/front'">성공회대학교 교재대여시스템</p>
</div>
<form:form method="post">
<div id="div0">
<img id="img0" alt="error" src="/image/6-1f.png">
<button id="btn0" type="submit" name="fid" value=1 formmethod="post">1층 미디어센터측 사물함</button>
</div>
</form:form>
</body>
</html>