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
           if(${fail})
        	   alert("로그인 정보가 일치하지 않습니다.");
        </script>
 <script type="text/javascript">
           if(${signup})
        	   alert("회원가입에 성공했습니다.\n등록된 아이디로 로그인하세요.");
           else
        	   alert("회원가입에 실패했습니다.\n등록된 아이디인지 확인하세요.");
        </script>
 <script type="text/javascript">
           if(${logout})
        	   alert("로그인 세션이 종료되었습니다.\n다시 로그인해주세요");
        </script>
<title>성공회대학교 기자재대여시스템</title>
<style>
#div0 {
	width: 550px;
	height: auto;
	overflow: hidden;
	float: right;
	padding: 0px 0px 50px 10px;
	background: #2225;
    border-left: 5px solid #1129;
    border-bottom-left-radius: 200px;
}

#div01{
	background: #223;
	margin: 0px 0px 0px 0px;
	padding: 10px 0px 100px 0px;
	height: 900px;
	width: 100%;
	border-bottom: 5px #ccf solid;
}

#div1 {
	padding: 10px; float : left;
	background: #888;
	float: left;
}

#div02{
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
	background: #445;
	padding: 20px;
	overflow: visible;
}

#div03{
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
	background: #667;
	text-align: center;
	padding: 10px;
	float: left;
}

#div04{
	background: #556;
	text-align: center;
	padding: 5px;
}

#div05{
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
	background: #556;
	text-align: center;
	padding: 10px;
	float: right;
}


#div06{
	float: right;
    display: flex;
    flex-direction: row;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 50px;
    overflow: hidden;
	background: #3337;
	padding: 0px 0px 10px 100px;
}

#p01{
	font-family: 'Noto Serif KR';
	font-size: 9pt;
	background: #446c;
    border-bottom-left-radius: 40px;
    padding: 5px 10px 5px 50px;
	color: #fff;
	float: right;
}
#p01:hover{
	cursor: pointer;
	background: #557c;
}

#p02{
	font-family: 'Noto Serif KR';
	font-size: 9pt;
	background: #446c;
	text-align: center;
	margin-left: 5px;
    padding: 5px 30px 5px 30px;
	color: #fff;
	float: right;
}
#p02:hover{
	cursor: pointer;
	background: #557c;
}

#div2-p {
	margin-top: 20px;
	padding: 10px;
	background: #99b;
	width: auto;
	height: auto;
	overflow:hidden;
}

#h60 {
	float: left;
}

#input0 {
	color:#000;
	margin-top: auto;
	margin-bottom: auto;
	float: left;
}

tr {
}

td {
	font-family: Times New Roman;
	margin: 2px;
	padding: 12px 5px 12px 10px;
	color: #fff;
	background: #334;
}

#button0 {
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	width:auto;
	padding: 2px 10px 2px 10px;
	color: #000;
	margin-left: 20px;
}

#button1 {
	font-family: 'Noto Serif KR';
	font-size: 10pt;
	width:auto;
	padding: 2px 10px 2px 10px;
	color: #000;
	float: right;
}

h3{
	padding: 20px 10px 20px 10px;
	color: #fdf2f3;
	font-family: 함초롬바탕, serif;
	text-align: center;
}

#sup_skhu{
	font-family: 함초롬바탕, serif;
	font-size: 10pt;
	margin: 0px;
	color: #fc0;
}

td{
	background: #2232;
 padding: 15px;
}

#td00{
	padding: 10px 25px 10px 10px;
}
</style>
</head>
<body style="background: #334; margin: 0; overflow: hidden; height:1080px;">
	<div id="div06">
		<div id="div07">
			<p id="p02" onclick="location.href='http://sw.skhu.ac.kr'">성공회대학교 소프트웨어공학과</p>
			<p id="p02" onclick="location.href='http://report.skhu.net'">성공회대학교 과제제출시스템</p>
			<p id="p01" onclick="location.href='http://www.skhu.ac.kr'">성공회대학교 홈페이지</p>
		</div>
	</div>
	<form:form method="post" modelAttribute="user" action="login">
	<div id="div01">
		<div id="div0">
		<h3 style="font-family: 'Noto Serif KR'; padding-left: 100px"><sup id="sup_skhu">성공회대학교</sup> 기자재대여시스템</h3>
			<div id="div2">
			<table style="margin:0px 70px 60px auto; width:auto; ">
				<tbody>
					<tr>
						<td style="font-family: 'Noto Serif KR';">ID</td>
						<td id="td00"><input name="id" type="number" id="input0"></td>
					</tr>
					<tr>
						<td style="font-family: 'Noto Serif KR';">PW</td>
						<td id="td00"><input name="password" type="password" id="input0"></td>
					</tr>
					<tr>
					<td></td>
					<td id="td00">
					<button type="submit" id="button0">LogIn</button>
					<button type="submit" id="button1" formaction="signup" name="login" value="true">SignUp</button>
					</td>
					</tr>
				</tbody>
			</table>
			</div>
		</div>
	</div>
	</form:form>
</body>
</html>