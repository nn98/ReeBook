<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	<form action="logins" method="post">
		<div id="div0">
			<table style="margin-top:20px; border: 5px solid #999; width:100%; ">
				<tbody>
					<tr>
						<td>ID</td>
						<td><input name="id" type="text"></td>
					</tr>
					<tr>
						<td>PW</td>
						<td><input name="pw" type="text"></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" id="button0">LogIn</button>
		</div>
	</form>
</body>
</html>