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
           if(${rentS}) {
        	   alert("교재 대여 신청이 완료되었습니다.");
           }
        </script>
<title>Test_0101_0212</title>
<style>

/*https: //coding-factory.tistory.com /187*/

#box0{
	border: 1px dotted #fff;
	background-color: #888;
	padding: 5px 10px 5px 10px;
}

#box11 {
	background-color: #ddd;
	padding: 20px;
}

#box1{
	background-color: #888;
	padding: 5px 10px 5px 10px;
}

#box2 {
	background-color: #ccc;
	padding: 5px 10px 5px 10px;
}

#box3 {
	border: 1px solid;
	background-color: #ddd;
	padding: 5px 10px 5px 10px;
}

#box4 {
	padding: 5px 10px 5px 10px;
	border: 2px solid #fff;
	background-color: #aaf;
}

#a0{
	margin-left:auto;
	margin-right:auto;
}

#tb_id {
	margin: 0px auto 0px auto;
	border: 5px solid #888;
}

#tr_id {
	border: 1px dotted #bbb;
}

#hr_bottom {
	boder: 10px solid #555;
}

#divd{
	background: #445;
	width:100%;
	height:auto;
	padding: 10px;
	overflow:hidden;
}

#div00{
	background: #445;
	width:100%;
	overflow:hidden;
}

#pd{
	font-family: 함초롬바탕;
	float:right;
	color: #fff;
	padding-right: 20px;
}

#t0{
	font-size: 10pt;
	background:#ccc;
	padding: 3px 10px 3px 10px;
	color:fff;
	float:right;
}

#tb00{
	margin: 10px auto 0px auto;
}

#pd0{
	margin-left:10px;
	font-family: 함초롬바탕;
	float:left;
	color: #ccc;
	font-size: 16pt;
}

#pd1{
	text-align:center;
	width:25%;
	font-family: 함초롬바탕;
	float:left;
	color: #ccc;
	padding: 5px;
	font-size: 14pt;
	border-right: 5px solid #aaa;
}

</style>
</head>
<body>
<form:form modelAttribute="loginuser" method="post">
	<div id="divd">
	<p id="pd0">성공회대학교 교재대여시스템</p>
	<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="logout">Log Out</button></p>
	</div>
	<div id="div00">
	<p id="pd1">교재 대여</p>
	</div>
	<h1>css Test</h1>
	<p>실행 테스트1</p>
	<p>실행 테스트2</p>
	<p>${ loginuser.name }</p>
	<table id="tb_id">
		<colgroup>
		</colgroup>
		<tbody>
			<tr id="tr_id">
				<td id="box0" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">USER</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">BOOK</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">RENT</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">DEFECT</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">LECTURE</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">DOCUMENT</td>
				<td id="box0" class="dv_fieldheader" style="color: #fff">DEPARTMENT</td>
			</tr>
			<tr id="tr_id">
				<td id="box1" class="dv_fieldheader" style="color: #fff">JSON</td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="usersj">User</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="booksj">Book</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="rentsj">Rent</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="defectsj">Defect</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="lecturesj">Lecture</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="documentsj">Document</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="departmentsj">Department</a></td>
			</tr>
			<tr id="tr_id">
				<td id="box1" class="dv_fieldheader" style="color: #fff">LIST</td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="booksl">BookList</a></td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box3" class="dv_fieldheader" style="color: #fff"></td>
				<!-- 
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="usersj">User</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="booksj">Book</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="rentsj">Rent</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="defectsj">Defect</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="lecturesj">Lecture</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="documentsj">Document</a></td>
				<td id="box2" class="dv_fieldheader" style="color: #fff"><a href="departmentsj">Department</a></td>
				 -->
			</tr>
			<tr id="tr_id">
				<td id="box1"></td>
				<td id="box1"></td>
				<td id="box1"></td>
				<td id="box1"></td>
				<td id="box1"></td>
				<td id="box1"></td>
				<td id="box4" style="margin-right:2px"><a id="a0" href="login">Change ID</a></td>
				<td id="box4" class="dv_fieldheader" style="color: #fff"><a id="a0" href="signup">Sign Up</a></td>
			</tr>
		</tbody>
	</table>
	<table id="tb00">
	<tbody>
	<tr>
	<td id="box11">test</td>
	</tr>
	</tbody>
	</table>
</form:form>
</body>
</html>