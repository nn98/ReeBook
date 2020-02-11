<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Test_0101_0212</title>
<style>
<!--
https: //coding-factory.tistory.com /187-->
        
        #box1 {
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
	background-color: #ddd;
	padding: 5px 10px 5px 10px;
}

#box4 {
	background-color: yellow;
	margin: 10px 10px 10px 10px; /* 위쪽 오른쪽 아래쪽 왼쪽 마진속성 한번에 주기 */
	padding: 10px 10px 10px 10px; /* 위 오른쪽 아래쪽 왼쪽 패딩속성 한번에 주기 */
}

#tb_id {
	border: 5px solid #888;
}

#tr_id {
	border: 1px dotted #bbb;
}

#hr_bottom {
	boder: 10px solid #555;
}
</style>
</head>
<body>
	<p>실행 테스트1</p>
	<p>실행 테스트2</p>
	<table id="tb_id">
		<colgroup>
		</colgroup>
		<tbody>
			<tr id="tr_id">
				<td id="box1" class="dv_fieldheader" style="color: #fff"></td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">USER</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">BOOK</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">RENT</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">DEFECT</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">LECTURE</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">DOCUMENT</td>
				<td id="box1" class="dv_fieldheader" style="color: #fff">DEPARTMENT</td>
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
				<td id="box3" class="dv_fieldheader" style="color: #fff"><a href="signup">로그인</a></td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>