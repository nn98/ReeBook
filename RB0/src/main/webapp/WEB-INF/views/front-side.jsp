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
	padding: 5px 10px 5px 10px;
}

#box11 {
	background-color: #ccf;
	padding: 10px;
	border-right: 2px solid #fff;
}

#box1{
	background-color: #334;
	padding: 5px 10px 5px 10px;
}

#box2 {
	background-color: #bbf;
	padding: 5px 10px 5px 10px;
}

#box3 {
	border: 1px solid;
	background-color: #ccf;
	padding: 5px 10px 5px 10px;
}

#box4 {
	border: 1px solid #fff;
	background-color: #aaf;
	padding: 5px 10px 5px 10px;
}

#a0{
	margin-left:auto;
	margin-right:auto;
}

#tb_id{
	position: absolute;
	top: 200px;
	right: 40px;
	z-index: 1;
	border: 2px solid #668;
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
	position: absolute;
	top: 350px;
	right: 50px;
	z-index: 1;
}


#pd{
	font-family: 'Noto Serif KR';
	float:right;
	color: #fff;
	padding: 0px 20px 5px 35px;
	border-left: 2px #ccf solid;
	border-bottom-left-radius: 30px;
}

#divd{
	height: 850px;
	background: #223;
	border-bottom: 5px #ccf solid;
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

#div00{
	position: absolute;
	top: 0;
	right: 0;
	z-index: 2;
	float: right;
	background: #2247;
	width:91.5%;
	height: 65px;
	overflow:hidden;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 250px;
}

#div01{
	position: absolute;
	top: 0;
	right: 0;
	z-index: 3;
	float: right;
	width: 90%;
	height: 65px;
    flex-direction: row;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 250px;
    overflow: hidden;
	background: #3337;
	padding: 0px 0px 10px 70px;
}

#div02{
	position: absolute;
	top: 25px;
	right: 0;
	z-index: 2;
	float: right;
}

#div03{
	position: absolute;
	top: 65px;
	right: 0;
	z-index: 2;
	float: right;
	width: 75%;
    flex-direction: row;
    border-left: 5px solid #fff7;
    border-bottom-left-radius: 150px;
    overflow: hidden;
	background: #3337;
	padding: 0px 0px 0px 15px;
	margin-left: 20px;
}

#pd0{
	margin: 15px 0px 0px 0px;
	font-family: 'Noto Serif KR';
	float:left;
	color: #ccc;
	font-size: 16pt;
	cursor: pointer
}

#pd0:hover{
	color: #fff;
}

#pd00 {
	background: #446;
	color: #ccc;
	font-size: 12pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.9%;
	float: left;
	padding: 5px 0px 5px 0px;
	margin-right: 0.1%;
	cursor: pointer;
	border-left: 5px solid #668;
	border-bottom: 2px solid #668;
	border-bottom-left-radius: 100px;
}

#pd00:hover {
	border-bottom: 1px solid #99b;
	border-left: 5px solid #99b;
	color: #fff;
}

#pd1 {
	background: #446;
	color: #ccc;
	font-size: 12pt;
	font-family: 'Noto Serif KR';
	text-align: center;
	width: 24.9%;
	float: left;
	padding: 5px 0px 5px 0px;
	margin-right: 0.1%;
	cursor: pointer;
	border-bottom: 2px solid #668;
}

#pd1:hover {
	border-bottom: 1px solid #99b;
	color: #fff;
}

#p01{
	font-family: 'Noto Serif KR';
	font-size: 7pt;
	background: #557c;
	border-left: 2px solid #ccf;
    border-bottom-left-radius: 60px;
    padding: 5px 10px 5px 25px;
	color: #ddd;
	float: right;
}
#p01:hover{
	cursor: pointer;
	background: #336c;
	color: #fff;
}

#p02{
	font-family: 'Noto Serif KR';
	font-size: 7pt;
	background: #557c;
	text-align: center;
	margin-left: 4px;
    padding: 5px 25px 5px 25px;
	color: #ddd;
	float: right;
}
#p02:hover{
	cursor: pointer;
	background: #336c;
	color: #fff;
}

	#divs00{
		position: absolute;
		top: 10px;
		left: 0px;
		z-index: 0;
		float: left;
		background: #2287;
	    border-right: 3px solid #fff7;
    	border-bottom-right-radius: 25px;
    	border-top-right-radius: 25px;
	}
	#divs00:hover{
		background: #3358;
	    border-right: 3px solid #fffb;
		cursor: pointer;
	}
	#ps00{
		font-family: 'Noto Serif KR';
		color: #ccc;
		font-size: 8pt;
		padding: 5px 15px 5px 10px;
		
	}
		.sidenav {
			height:100%;
			width: 0;
			position: fixed;
			z-index:1;
			top: 0;
			left: 0;
			background-color: rgb(0,154,200);
			background: #04b5;
			overflow-x: hidden;
			transition:0.5s ease-in-out;
			padding-top: 160px;
		}
		.sidenav a {
			text-decoration: none;
			color: #fff;
			display: block;
			transition: 0.2s ease-in-out;
		}
		.sidenav a:hover, .offcanvas a:focus {
			color: #000;
		}
		#as00{
			font-family: 'Noto Serif KR';
			padding: 8px 8px 8px 32px;
			
		}
		.closebtn {
			position: absolute;
			top: 100px;
			right: 25px;
			font-size: 36px !important;
			margin-left: 50px;
		}
		.openmenu:hover {
			color:rgb(0,154,200);
			transition:0.5s ease-in-out;
		}
		.openmenu {
			font-size: 25px;
			cursor:pointer;
			transition:0.5s ease-in-out;
		}
		.openmenu > i {
			font-size: 30px;
		}
		/* 미디어쿼리 적용 */
		@media screen and (max-height:450px) {
			.sidenav {
				padding-top:15px;
			}
			.sidenav a {
				font-size: 18px;
			}
		}
</style>
</head>
<body style="background: #446; margin: 0; overflow: hidden; height:1080px;">
<form:form modelAttribute="loginuser" method="post">
	<div id="div00"></div>
	<div id="div01">
		<div>
		<p id="pd0"  onclick="location.href='/front'"><sup id="sup_skhu" onclick="location.href='www.skhu.ac.kr'">성공회대학교</sup> 기자재대여시스템</p>
			<p id="p02" onclick="location.href='http://sw.skhu.ac.kr'">성공회대학교 소프트웨어공학과</p>
			<p id="p02" onclick="location.href='http://report.skhu.net'">성공회대학교 과제제출시스템</p>
			<p id="p01" onclick="location.href='http://www.skhu.ac.kr'">성공회대학교 홈페이지</p>
			<div id="div02">
			<p id="pd">ID: ${ loginuser.id } 이름: ${ loginuser.name } &nbsp; &nbsp;
			<button type="submit" formmethod="post"  style="color:#aaf; margin-top:5px" name="logOut" formaction="/logout">Log Out</button></p>
			</div>
	
	</div>
	
		</div>
		<div id="div03">
		<p id="pd00" onclick="location.href='/booksl'">교재 대여</p>
	<p id="pd1" onclick="location.href='/halls'">사물함 신청</p>
	<p id="pd1" onclick="location.href='/mypage'">마이페이지</p>
	<p id="pd1">.</p>
		</div>
	<div id="divd">
	</div>
	<div id="mysidenav" class="sidenav">
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
	<td id="box11"><a href="/frontp">기존</a></td>
	</tr>
	</tbody>
	</table>
		<a id="as00" href="#" class="closebtn" onclick='closeNav()'>x</a>
		<a id="as00" href="#">About</a>
		<a id="as00" href="#">Services</a>
		<a id="as00" href="#">Clients</a>
		<a id="as00" href="#">Contact</a>
		<a id="as00" href="#">Portfolio</a>
	</div>
	<% boolean open=false; %>
	<span class="openmenu" onclick='openNav()'><i class="fa fa-angle-double-left fa-5" aria-hidden="true"></i> open</span>
	<div id="divs00" onclick='openNav()'>
	<p id="ps00">-<p/>-</p>
	</div>
	<script>
		function openNav() {
			if(open) closeNav();
			document.getElementById('mysidenav').style.width = '80%';
			open=!open;
		}
		function closeNav() {
			document.getElementById('mysidenav').style.width = '0';
		}
	</script>
	
</form:form>
</body>
</html>