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
<title>�л� ���</title>
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
	margin: 10px 10px 10px 10px; /* ���� ������ �Ʒ��� ���� �����Ӽ� �ѹ��� �ֱ� */
	padding: 10px 10px 10px 10px; /* �� ������ �Ʒ��� ���� �е��Ӽ� �ѹ��� �ֱ� */
}

#tb_id {
	border: 5px solid #888;
}

#tr_id {
	border: 1px dotted #bbb;
}
</style>
</head>
<body style="background:#eee">
	<div class="container">
		<br />
		<h3 style="color: #777">�л� ���</h3>
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
							<td id="box2" class="dv_fieldheader" style="color: #fff">�����
								ID</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66">�ݵ�� �й��� �Է��ϼ��� ��) 201732009</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">�̸�</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66">�ý��ۿ� ����� �̸��� �����ؾ� �մϴ�</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">��ȣ</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">��ȣ Ȯ��</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10"></td>
							<td id="box3" name="pwc_e"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">�г�</td>
							<td id="box3">
								<input type="radio" name="year" value="1" class="none"> 1 &nbsp;
								<input type="radio" name="year" value="2" class="none"> 2 &nbsp;
								<input type="radio" name="year" value="3" class="none"> 3 &nbsp;
								<input type="radio" name="year" value="4" class="none"> 4 &nbsp;
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">�Ҽ�</td>
							<td id="box3">
								<select name="depart_no" size="1.9" class="form-control">
									<% int i=0; %>
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
								<button type="submit">ȸ������</button>
							</td>
							<td id="box3" style="color:#f66">
							�������� ���� �� �̿� ����
							</td>
							<td id="box3" style="color:#f66">
								<input type="radio" name="yes"> �� &nbsp; &nbsp;
								<input type="radio" name="no"> �ƴϿ�
							</td>
						</tr>
					</tbody>
				</table>
				<!--
				<p style="color: #555">�й�</p>
				<input type="text" name="sn"></input>
				<p>��ȣ</p>
				<input type="password" name="pw"></input>
				<p>��ȣ Ȯ��</p>
				<input type="password" name="pwc"></input>
				<p>�̸�</p>
				<input type="text" name="name"></input>
				<p>�г�</p>
				<input type="radio" name="year" value="1" class="none"> 1 <input
					type="radio" name="year" value="2" class="none"> 2 <input
					type="radio" name="year" value="3" class="none"> 3 <input
					type="radio" name="year" value="4" class="none"> 4
				<p>�Ҽ�</p>
				<select name="depart_no" size="1.9" class="form-control">
					<% i=0; %>
					<c:forEach items="${deptList}" var="dept">
						<option value="<%=i++%>">${dept.name}</option>
					</c:forEach>
				</select>
				<br/>
				<button type="submit">ȸ������</button>
				-->
			</div>

		</form>
	</div>
</body>
</html>