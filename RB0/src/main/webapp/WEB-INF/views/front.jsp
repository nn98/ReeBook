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

#tb_id {
	margin: 20px auto 0px auto;
	border: 5px solid #445;
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
	margin: 10px auto 0px auto;
}


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
	width: 24.6%;
	float: left;
	padding: 5px 5px 13px 5px;
	margin-right: 0.4%;
	cursor: pointer;
	border-bottom: 5px solid #668;
}

#pd1:hover {
	border-bottom: 5px solid #99b;
	color: #fff;
}

#div00{
	background: #222;
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

#sup_skhu:hover{
	color: #fe0;
}

</style>
</head>
<body style="background:#222">
<form:form modelAttribute="loginuser" method="post">
	<div id="divd">
	<p id="pd0"  onclick="location.href='/front'"><sup id="sup_skhu" onclick="location.href='www.skhu.ac.kr'">성공회대학교</sup> 기자재대여시스템</p>
	<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
	</div>
	<div id="div00">
	<p id="pd1" onclick="location.href='/booksl'">교재 대여</p>
	<p id="pd1" onclick="location.href='/halls'">사물함 신청</p>
	<p id="pd1" onclick="location.href='/mypage'">마이페이지</p>
	<p id="pd1"></p>
	</div>
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
	<td id="box11"><a href="/it6/f1">6관</a></td>
	</tr>
	</tbody>
	</table>
</form:form>
</body>
</html>