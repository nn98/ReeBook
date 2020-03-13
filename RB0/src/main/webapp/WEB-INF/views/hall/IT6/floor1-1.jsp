<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
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
	margin: 20px auto 0px auto;
	border: 5px solid #888;
}

#tr_id {
	border: 1px dotted #bbb;
}

#hr_bottom {
	boder: 10px solid #555;
}

#div00{
	background: #668;
	width:100%;
	overflow:hidden;
}

#pd1{
	background: #334;
	text-align:center;
	width:24.7%;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	padding: 5px 5px 13px 5px;
	font-size: 14pt;
	margin-left:0.3%;
	cursor: pointer;
	border-bottom:5px solid #668;
}

#pd1:hover{
	border-bottom:5px solid #99b;
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

#divd{
	background: #334;
	width:100%;
	height:auto;
	padding: 10px;
	overflow:hidden;
}

#pd0{
	margin-left:10px;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd{
	font-family: 'Noto Serif KR';
	float:right;
	color: #fff;
	padding-right: 20px;
}
#div0 {
	width: 950px;
	height: 430px;
	overflow: visible;
	margin: 0px auto 0px auto;
}

#div1 {
	float:right;
	width: 19%;
	margin-left: 1%;
	height: 100%;
	background:#ccf;
	text-align: center;
}

#img0 {
	width: 80%;
	height: auto;
	overflow: hidden;
}

#btn0 {
	width:180.5px;
	padding: 10px 0px 10px 0px;
	font-size: 11pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	color: #fff;
	margint: 0px auto 0px auto;
}

#h00{
	font-size: 9pt;
	color: #88f;
}

#tb0 {
	width:90%;
	height: auto;
	margin: 0px auto 20px auto;
}

#td0{
	text-align:center;
	font-size: 9pt;
	font-family: 'Noto Serif KR';
	padding:5px;
	border-bottom: 1px dotted #fff;
	color:#fff;
}

#td1{
	text-align:center;
	font-size: 9pt;
	font-family: 'Noto Serif KR';
	padding:5px;
	border-bottom: 1px dotted #fff;
	color:#fff;
}

#p0{
	font-size: 8pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	color: #fff;
	margint: 0px auto 0px auto;
	background: #aaf;
	padding: 2px 0px 2px 0px;
	margin: 0px 10px 0px 10px;
}

#div2{
	width: 950px;
	height: auto;
	overflow: visible;
	margin: 0px auto 0px auto;
	padding: 10px 0px 10px 25px;
}

#lbtn{
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
	font-size: 9pt;
	font-family: 휴먼모음T;
	text-align: center;
    color: #fff;
	width:37px;
	height:37px;
    background: #99f;
	margin: 2px;
}

#lbtn:hover{
	background: #77f;
}

#albtn{
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
	font-size: 9pt;
	font-family: 휴먼모음T;
	text-align: center;
	color: #f00;
	width:37px;
	height:37px;
	background: #666;
	margin: 2px;
}

#p_hint{
	font-size: 8pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	color: #fff;	
}

#btn_apply{
	font-size: 9pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	color: #777;
	width:90%;
	height: auto;
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

#pd1{
	background: #334;
	text-align:center;
	width:24.7%;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	padding: 5px 5px 13px 5px;
	font-size: 14pt;
	margin-left:0.3%;
	cursor: pointer;
	border-bottom:5px solid #668;
}

#pd1:hover{
	border-bottom:5px solid #99b;
}

#div00{
	background: #668;
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

</style>
</head>
<body style="background:#668">
<form:form modelAttribute="loginuser" method="post">
	<div id="divd">
	<p id="pd0"  onclick="location.href='/front'"><sup id=sup_skhu>성공회대학교</sup> 기자재대여시스템</p>
	<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
	<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
	</div>
	<div id="div00">
	<p id="pd1" onclick="location.href='/booksl'">교재 대여</p>
	<p id="pd1" onclick="location.href='/halls'">사물함 신청</p>
	<p id="pd1">여</p>
	<p id="pd1">백</p>
	</div>
	<div id="div0">
			<img id="img0" alt="error" src="/image/6-1f-1.png">
			<div id="div1">
			<h3 id="btn0"><sup id="h00">${ fid }층</sup>미디어센터측 사물함</h3>
			<p id="p0">학생 정보</p>
			<input name="fid" value=${ fid } type="hidden">
			<input name="lid" value=${ lid } type="hidden">
			<table id="tb0">
				<tbody>
					<tr>
						<td id="td0">학번</td>
						<td id="td0">${ loginuser.id }</td>
					</tr>
					<tr>
						<td id="td0">이름</td>
						<td id="td0">${ loginuser.name }</td>
					</tr>
					<tr>
						<td id="td0">소속</td>
						<td id="td1">${ loginuser.department.name }</td>
					</tr>
					<tr>
						<td id="td0">사물함</td>
						<td id="td0">${ loginuser.locker.id }</td>
					</tr>
				</tbody>
			</table>
			<p id="p0">사물함 정보</p>
			<input name="clnum" type="hidden" value=${ clnum }>
			<input name="clcolumn" type="hidden" value=${ lxid }>
			<input name="clrow" type="hidden" value=${ lyid }>
			<table id="tb0">
				<tbody>
					<tr>
						<td id="td0">사물함 번호</td>
						<td id="td0">${ lnum==0?"":lnum }</td>
						
					</tr>
					<tr>
						<td id="td0">행</td>
						<td id="td0">${ lxid==0?"":lxid }</td>
					</tr>
					<tr>
						<td id="td0">열</td>
						<td id="td0">${ lyid==0?"":lyid }</td>
					</tr>
				</tbody>
			</table>
			<button id="btn_apply" type="submit" name="apply" value="true">사물함 배정신청</button>
			<!-- <p id="p_hint">관/층/사물함/번호<br/>0/00/000</p> -->
			</div>
		</div>
		<div id="div2">
		<c:set var="hid" value="${ hid }"/>
		<c:set var="fid" value="${ fid }"/>
		<c:set var="lid" value="${ lid }"/>
		<c:set var="llist" value="${ llist }"/>
		<% 
			int i=1,j,c=1;
			String meta=""+pageContext.getAttribute("hid")+pageContext.getAttribute("fid")+pageContext.getAttribute("lid");
			Object o=pageContext.getAttribute("llist");
			List<Integer>llist=new ArrayList();
			if(o!=null)llist=(List)o;
		%>
		<% for(;i<5;i++) { %>
			<% for(j=1;j<21;j++) { %>
				<% 
					String confirm=meta+(i*100000+j*1000+c); 
					boolean C=llist.contains(Integer.parseInt(confirm));
				%>
				<button id=<%= C?"albtn":"lbtn" %> type="submit" name="lnum" value=<%= i*100000+j*1000+c %> <%= C?"disabled":"" %>><%= c++ %></button>
			<% } %>
			<br/>
		<% } %>
		</div>
</form:form>
</body>
</html>