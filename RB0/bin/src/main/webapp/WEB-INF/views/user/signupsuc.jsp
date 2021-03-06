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
<style>
	#div0{
		background:#222;
    margin-right:auto;
    margin-left:auto;
	}
  table {
    width: 40%;
    border: 1px solid #fff;
    border-collapse: collapse;
  margin-top: 20%;
    margin-right:auto;
    margin-left:auto;
    margin-bottom: 30%;
  }
  th {
  text-align: center;
  	border-top: 2px solid #aaa;
    border-bottom: 2px solid #aaa;
    background:#555;
    color: #fff;
    padding: 10px;
  }
  td {
  text-align: center;
  color:#eee;
  	background:#888;
    border-bottom: 1px dotted #444444;
    border-right: 1px solid #aaa;
    padding: 10px;
  }
  #td0 {
  text-align:right;
  color:#eee;
  	background:#888;
    border-bottom: 1px dotted #444444;
    border-right: 1px solid #aaa;
  	padding: 10px 30px 10px 0px;
  }
  #td1 {
  	border: 1px solid #fff;
  }
  title {
  margin-right:auto;
    margin-left:auto;
  }
  #h40 {
  color:#fff;
  font-family: 함초롬바탕;
  border: 1px solid #fff; 
  background:#888;
  width:80%;
  text-align: right;
  padding: 10px 30px 15px 10px;
  margin-left:auto;
  margin-right:auto;
  }
  #btn0{
  align:right;
  	color: #777;
  margin-left:auto;
  margin-right:auto;
  }
</style>
</head>
<body style="background:#222">
	<div class="container" id="div0">
		<br />
		<br />
		<form:form method="post" modelAttribute="user">
		<h4 id="h40">회원가입</h3>
		<table>
		<thead>
		<tr>
		<th colspan="2"><strong>학생 정보</strong></th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td id="td0"><strong>학번</strong></td>
		<td><input type="hidden" name="id" value=${user.id}>${user.id}</td>
		</tr>
		<tr>
		<td id="td0"><strong>이름</strong></td>
		<td><input type="hidden" name="name" value=${user.name}>${user.name}</td>
		</tr>
		<tr>
		<td id="td0"><strong>이메일</strong></td>
		<td><input type="hidden" name="email" value=${user.email}>${user.email}</td>
		</tr>
		<tr>
		<td id="td0"><strong>연락처</strong></td>
		<td><input type="hidden" name="hp" value=${user.hp}>${user.hp}</td>
		</tr>
		<tr>
		<td id="td0"><strong>학년</strong></td>
		<td><input type="hidden" name="grade" value=${user.grade}>${user.grade}</td>
		</tr>
		<tr>
		<td id="td0"><strong>학부/학과</strong></td>
		<td><input type="hidden" name="departmentId" value=${user.department.id}>${user.department.name}</td>
		</tr>
		<tr>
		<td id="td1" colspan="2">위의 정보로 회원가입을 신청합니다</td>
		</tr>
		<tr>
		<td id="td0"><input type="hidden" name="password" value=${user.password}><strong>확인</strong></td>
		<td>
		<input type="hidden" name="agree" value=${user.agree}>
		<button type="submit" name="confirm" value="1" formmethod="post" style="color:#777">예</button>
		<button type="submit" name="confirm" value="0" formmethod="post" style="color:#777">아니오</button>
		</td>
		</tr>
		</tbody>
		</table>
		
		</form:form>
	</div>
</body>
</html>