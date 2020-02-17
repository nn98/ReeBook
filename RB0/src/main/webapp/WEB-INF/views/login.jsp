<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 rel="stylesheet" media="screen">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
           if(${fail})
        	   alert("로그인 정보가 일치하지 않습니다.");
           else
        	   alert("로그인 시작");
        </script>
<title >Insert title here</title>
<title>Insert title here</title>
<style>
#div0 {
	padding: 5px 20px 25px 20px;
	width: 400px;
	height: auto;
	overflow:hidden;
	margin: 80px auto auto auto;
	background: #888;
}

#div1 {
	padding: 10px; float : left;
	background: #888;
	float: left;
}

#div2 {
	margin-top: 20px;
	padding: 10px;
	background: #777;
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
	border: 1px dotted #bbb;
}

td {
	font-family: Times New Roman;
	margin: 2px;
	border: 1px solid #fff;
	padding: 10px; background : #555;
	color: #fff;
	background: #555;
}

#button0 {
	margin-right: 38px;
	width:auto;
	border: 10px solid #777;
	float:right;
}

#button1 {
	width:auto;
	border: 10px solid #777;
	float:right;
}

h3{
	border: 2px solid #fff;
	padding: 20px 10px 20px 10px;
	background: #555;
	color: #fff;
	font-family: 함초롬바탕, serif;
	text-align: center;
}

</style>
</head>
<body style="background: #333;">
	<form:form method="post" modelAttribute="user" action="login">
		<div id="div0">
		<h3>성공회대학교 교재대여시스템</h3>
			<div id="div2">
			<table style="margin:20px auto 0px auto; border: 5px solid #999; width:auto; ">
				<tbody>
					<tr>
						<td>ID</td>
						<td><input name="id" type="number" id="input0"></td>
					</tr>
					<tr>
						<td>PW</td>
						<td><input name="password" type="password" id="input0"></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" id="button0">LogIn</button>
			<button type="submit" id="button1" formaction="signup" formmethod="get">SignUp</button>
			</div>
		</div>
	</form:form>
</body>
</html>