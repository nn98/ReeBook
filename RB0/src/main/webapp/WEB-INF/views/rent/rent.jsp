<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 rel="stylesheet" media="screen">
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
           if(${fail}) {
        	   alert("대여 불가 상태의 교재입니다.");
        	   window.location.href = 'front';
           }
           else
        	   alert("교재 대여 오류 발생");
        </script>
<title >Insert title here</title>
<style>
	#div0{
		background:#222;
    margin-right:auto;
    margin-left:auto;
	}
  #tb0 {
  	margin-top: 20%;
    width: 40%;
    border-top: 1px solid #fff;
    border-left: 1px solid #fff;
    border-right: 1px solid #fff;
    border-collapse: collapse;
 	
    margin-right:auto;
    margin-left:auto;
  }
  #tb1 {
  	margin-top:-5px;
    width: 40%;
    border: 1px solid #fff;
    border-collapse: collapse;
    margin-right:auto;
    margin-left:auto;
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
	font-family: 'Noto Serif KR';
  border: 1px solid #fff; 
  background:#555;
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
		<form:form method="post" modelAttribute="book" action="rents">
		<h4 id="h40">대여 신청</h3>
		
		<table id="tb0">
		<thead>
		<tr>
		<th colspan="2"><strong>학생 정보</strong></th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td id="td0"><strong>학번</strong></td>
		<td><input type="hidden" name="bid" value=${book.id}>${loginuser.id}</td>
		</tr>
		<tr>
		<td id="td0"><strong>이름</strong></td>
		<td><input type="hidden" name="name" value=${book.author}>${loginuser.name}</td>
		</tr>
		<tr>
		<td id="td0"><strong>소속</strong></td>
		<td><input type="hidden" name="email" value=${book.publisher}>${loginuser.department.name}</td>
		</tr>
		</tbody>
		</table>
		
		<table id="tb1">
		<thead>
		<tr>
		<th colspan="2"><strong>교재 정보</strong></th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td id="td0"><strong>제목</strong></td>
		<td><input type="hidden" name="bid" value=${book.id}>${book.title}</td>
		</tr>
		<tr>
		<td id="td0"><strong>저자</strong></td>
		<td><input type="hidden" name="name" value=${book.author}>${book.author}</td>
		</tr>
		<tr>
		<td id="td0"><strong>출판사</strong></td>
		<td><input type="hidden" name="email" value=${book.publisher}>${book.publisher}</td>
		</tr>
		<tr>
		<td id="td1" colspan="2">위의 정보로 교재 대여를 신청합니다</td>
		</tr>
		<tr>
		<td id="td0"><strong>확인</strong></td>
		<td>
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