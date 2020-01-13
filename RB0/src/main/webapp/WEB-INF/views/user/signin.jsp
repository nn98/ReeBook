<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>학생 등록</title>
</head>
<body>
	<div class="container" >
		<h1>학생 등록</h1>
		<hr />
		<form method="get">
			<div class="form-group" style="background-color:#ccf;">
				<table id="tbl_detailsview2" border="1" bordercolor="white">
					<colgroup>
						<col width="150">
						<col width="250">
						<col width="500">
					</colgroup>
					<tbody>
						<tr>
							<td class="dv_fieldheader" style="color:#fff">사용자 ID</td>
							<td><input type="text" name="user_id" autocomplete="off"
								size="10" maxlength="10"></td>
							<td><font color="red">반드시 학번을 입력하세요.예) 200532000</font></td>
						</tr>
					</tbody>
				</table>

				<p>학번</p>
				<input type="text" name="sn"></input>
				<p>암호</p>
				<input type="password" name="pw"></input>
				<p>암호 확인</p>
				<input type="password" name="pwc"></input>
				<p>이름</p>
				<input type="text" name="name"></input>
				<p>학년</p>
				<input type="radio" name="year" value="1" class="none"> 1 <input
					type="radio" name="year" value="2" class="none"> 2 <input
					type="radio" name="year" value="3" class="none"> 3 <input
					type="radio" name="year" value="4" class="none"> 4
				<p>소속</p>
				<select name="depart_no" size="1.9" class="form-control">
					<% int i=0; %>
					<c:forEach items="${deptList}" var="dept">
						<option value="<%=i++%>">${dept.name}</option>
					</c:forEach>
				</select> <br /> <br />
				<button type="submit">회원가입</button>
			</div>

		</form>
	</div>
</body>
</html>