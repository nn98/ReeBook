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
        </script>
 <script type="text/javascript">
           if(${signup})
        	   alert("회원가입에 성공했습니다.\n등록된 아이디로 로그인하세요.");
           else
        	   alert("회원가입에 실패했습니다.\n등록된 아이디인지 확인하세요.");
        </script>
<title >Insert title here</title>
<title>Insert title here</title>
<style>
#div0 {
	padding: 5px 20px 25px 20px;
	width: 470px;
	height: auto;
	overflow:hidden;
	margin: 40px auto auto auto;
	padding: 10px 10px 50px 10px;
	background: #4c586f;
}

#div1 {
	padding: 10px; float : left;
	background: #888;
	float: left;
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
	background: #4c586f;
}

#button0 {
	margin-right: 100px;
	width:auto;
	border: 10px solid #4c586f;
	float:right;
	padding: 2px 10px 2px 10px;
}

#button1 {
	width:auto;
	border: 10px solid #4c586f;
	float:right;
	padding: 2px 10px 2px 10px;
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

</style>
</head>
<body style="background: #ebeced;">
	<form:form method="post" modelAttribute="user" action="login">
		<div id="div0">
		<h3><sup id="sup_skhu">성공회대학교</sup> 기자재대여시스템</h3>
			<div id="div2">
			<table style="margin:20px auto 0px auto; width:auto; ">
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
			<button type="submit" id="button1" formaction="signup" name="login" value="true">SignUp</button>
			</div>
		</div>
	</form:form>
</body>
</html>