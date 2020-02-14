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
<title >Insert title here</title>
<title>Insert title here</title>
<style>
#div0 {
	padding: 20px;
	width: 35%;
	height: auto;
	overflow:hidden;
	margin : auto;
	background: #888;
	margin: auto;
}

#div1 {
	padding: 10px; float : left;
	background: #888;
	float: left;
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
	margin: 2px;
	border: 1px solid #fff;
	padding: 10px; background : #555;
	color: #fff;
	background: #555;
}

#button0 {
	width:20%;
	border: 5px solid #999;
	float:right;
}

</style>
</head>
<body>
	<form:form method="post" modelAttribute="user" action="login">
		<div id="div0">
			<table style="margin-top:20px; border: 5px solid #999; width:100%; ">
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
		</div>
	</form:form>
</body>
</html>