<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 rel="stylesheet" media="screen">
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
           if(${rentS}) {
        	   alert("교재 대여 신청이 완료되었습니다.");
           }
        </script>
<script type="text/javascript">
if(${assign}) {
	   alert("사물함 배정 신청이 완료되었습니다");
}
</script>
<title>성공회대학교 기자재대여시스템</title>
<style>

/*https: //coding-factory.tistory.com /187*/

#box0{
	border: 1px dotted #888;
	background-color: #334;
	padding: 10px 20px 10px 20px;
}

#box11 {
	background-color: #ccf;
	padding: 20px;
	border-right: 2px solid #fff;
}

#box1{
	background-color: #334;
	padding: 10px 15px 10px 15px;
}

#box2 {
	background-color: #bbf;
	padding: 10px 15px 10px 15px;
}

#box3 {
	border: 1px solid;
	background-color: #ccf;
	padding: 10px 15px 10px 15px;
}

#box4 {
	border: 1px solid #fff;
	background-color: #aaf;
	padding: 10px 15px 10px 15px;
}

#a0{
	margin-left:auto;
	margin-right:auto;
}

#tb_id{
	position: absolute;
	top: 150px;
	right: 50px;
	z-index: 1;
	border: 2px solid #668;
}

#tr_id {
	border: 1px dotted #888;
}

#hr_bottom {
	boder: 10px solid #334;
}

#t0{
	font-size: 10pt;
	background:#334;
	padding: 3px 10px 3px 10px;
	color:fff;
	float:right;
}

#tb00{
	position: absolute;
	top: 350px;
	right: 50px;
	z-index: 1;
}


#pd{
	font-family: 'Noto Serif KR';
	float:right;
	color: #fff;
	padding: 0px 20px 5px 35px;
	border-left: 2px #ccf solid;
	border-bottom-left-radius: 30px;
}

#divd{
	height: 850px;
	background: #223;
	border-bottom: 5px #ccf solid;
}

#sup_skhu{
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	margin: 0px;
	color: #fc0;
}

#sup_skhu:hover{
	color: #fe0;
}

#div00{
	position: absolute;
	top: 0;
	right: 0;
	z-index: 1;
	float: right;
	background: #2247;
	width:91.5%;
	height: 65px;
	overflow:hidden;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 250px;
}

#div01{
	position: absolute;
	top: 0;
	right: 0;
	z-index: 2;
	float: right;
	width: 90%;
	height: 65px;
    flex-direction: row;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 250px;
    overflow: hidden;
	background: #3337;
	padding: 0px 0px 10px 70px;
}

#div02{
	position: absolute;
	top: 25px;
	right: 0;
	z-index: 2;
	float: right;
}

#div03{
	position: absolute;
	top: 65px;
	right: 0;
	z-index: 2;
	float: right;
	width: 75%;
    flex-direction: row;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 150px;
    overflow: hidden;
	background: #3337;
	padding: 0px 0px 0px 15px;
	margin-left: 20px;
}

#pd0{
	margin: 15px 0px 0px 0px;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd0:hover{
	color: #fff;
}

#pd00 {
	background: #446;
	color: #ccc;
	font-size: 12pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.9%;
	float: left;
	padding: 5px 0px 5px 0px;
	margin-right: 0.1%;
	cursor: pointer;
	border-left: 5px solid #668;
	border-bottom: 2px solid #668;
	border-bottom-left-radius: 100px;
}

#pd00:hover {
	border-bottom: 1px solid #99b;
	border-left: 5px solid #99b;
	color: #fff;
}

#pd1 {
	background: #446;
	color: #ccc;
	font-size: 12pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.9%;
	float: left;
	padding: 5px 0px 5px 0px;
	margin-right: 0.1%;
	cursor: pointer;
	border-bottom: 2px solid #668;
}

#pd1:hover {
	border-bottom: 1px solid #99b;
	color: #fff;
}

#p01{
	font-family: 'Noto Serif KR';
	font-size: 7pt;
	background: #557c;
	border-left: 2px solid #ccf;
    border-bottom-left-radius: 60px;
    padding: 5px 10px 5px 25px;
	color: #ddd;
	float: right;
}
#p01:hover{
	cursor: pointer;
	background: #336c;
	color: #fff;
}

#p02{
	font-family: 'Noto Serif KR';
	font-size: 7pt;
	background: #557c;
	text-align: center;
	margin-left: 4px;
    padding: 5px 25px 5px 25px;
	color: #ddd;
	float: right;
}
#p02:hover{
	cursor: pointer;
	background: #336c;
	color: #fff;
}

</style>
</head>
<body style="background: #446; overflow: hidden; height:1080px;">

<form:form modelAttribute="loginuser" method="post">

	<div id="div00"></div>
	
	<div id="div01">
		<div>
		<p id="pd0"  onclick="location.href='/front'"><sup id="sup_skhu" onclick="location.href='www.skhu.ac.kr'">성공회대학교</sup> 기자재대여시스템</p>
			<p id="p02" onclick="location.href='http://sw.skhu.ac.kr'">성공회대학교 소프트웨어공학과</p>
			<p id="p02" onclick="location.href='http://report.skhu.net'">성공회대학교 과제제출시스템</p>
			<p id="p01" onclick="location.href='http://www.skhu.ac.kr'">성공회대학교 홈페이지</p>
			<div id="div02">
			<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
			<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
			</div>
		</div>
	</div>
	
	<div id="div03">
		<p id="pd00" onclick="location.href='/booksl'">교재 대여</p>
		<p id="pd1" onclick="location.href='/halls'">사물함 신청</p>
		<p id="pd1" onclick="location.href='/mypage'">마이페이지</p>
		<p id="pd1">.</p>
	</div>
	
	<div id="divd"></div>
	
</form:form>
</body>
</html>