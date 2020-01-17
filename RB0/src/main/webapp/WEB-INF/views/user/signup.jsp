<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
<!--
https: //coding-factory.tistory.com /187-->
        
        #box1 {
	background-color: #ddd;
	padding: 20px;
}

#box2 {
	background-color: #aaa;
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

#hr_bottom{
	boder: 10px solid #555;
}
</style>
</head>
<body style="background:#eee">
	<div class="container">
		<br />
		<h3 style="color: #777">학생 등록</h3>
		<br />
		<form method="get">
			<!-- <div  class="form-group" style="background-color:#ccc;padding:20;"ccf> -->
			<div id="box1">
				<!-- <table id="tbl_detailsview2" border="1" bordercolor="white"> -->
				<table id="tb_id">
					<colgroup>
						<col width="150">
						<col width="250">
						<col width="500">
					</colgroup>
					<tbody>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">사용자 ID</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66">반드시 학번을 입력하세요 예) 201732009</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">이름</td>
							<td id="box3"><input type="text" name="user_name"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66">시스템에 저장된 이름과 동일해야 합니다</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">암호</td>
							<td id="box3"><input type="password" name="user_pw"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">암호 확인</td>
							<td id="box3"><input type="password" name="user_pwc"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3" name="pwc_e"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">학년</td>
							<td id="box3">
								<input type="radio" name="user_grade" value="1" class="none"> 1 &nbsp;
								<input type="radio" name="user_grade" value="2" class="none"> 2 &nbsp;
								<input type="radio" name="user_grade" value="3" class="none"> 3 &nbsp;
								<input type="radio" name="user_grade" value="4" class="none"> 4 &nbsp;
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">소속</td>
							<td id="box3">
								<select name="user_depart" size="1.9" class="form-control">
									<% int i=1; %>
									<c:forEach items="${deptList}" var="dept">
									<option value="<%=i++%>">${dept.name}</option>
									</c:forEach>
								</select>
							</td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color:#777">
								<br/>
								<button type="submit" formmethod="post">회원가입</button>
							</td>
							<td id="box3" style="color:#f66">
							개인정보 수집 및 이용 동의
							</td>
							<td id="box3" style="color:#f66">
								<input type="radio" name="user_agree" value="1"> 예 &nbsp; &nbsp;
								<input type="radio" name="user_agree" value="0"> 아니오
							</td>
						</tr>
					</tbody>
				</table>
				<button type="submit">G회원가입</button>
				<!--
				<p style="color: #555">학번</p>
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
					<% i=0; %>
					<c:forEach items="${deptList}" var="dept">
						<option value="<%=i++%>">${dept.name}</option>
					</c:forEach>
				</select>
				<br/>
				<button type="submit">회원가입</button>
				-->
			</div>
		</form>
	</div>
	<hr style="border: solid 0.5px #aaa; width:90%;">
</body>
</html>