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

/* button up */

.wrap {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.button {
  width: 38px;
  height: 27px;
	font-family: 'Noto Serif KR';
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
	font-size: 9pt;
	font-family: 'Noto Serif KR';
	margin: 8px 2px 8px 2px;
  }

.button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY( -4px );
}

.abutton {
  width: 38px;
  height: 27px;
	font-family: 'Noto Serif KR';
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #f88;
  background-color: #1df28c;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
	font-size: 9pt;
	font-family: 'Noto Serif KR';
	margin: 8px 2px 8px 2px;
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
<a href="it6/f1?fid=1&hid=${ hid }">1층</a>
<a href="imgtest?fid=1" formmethod="post">wtf</a>
</form:form>
</body>
</html>