<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성공회대학교 과제제출시스템</title>
<!--
<link rel="stylesheet" type="text/css"
	href="./성공회대학교 과제제출시스템_files/main.css">
<link rel="stylesheet" type="text/css"
	href="./성공회대학교 과제제출시스템_files/RoundedButton.css">
<script language="javascript">
function trimSpace(S) { 
	var l = 0;
	var h = S.length - 1; 
	while(l <= h && S.charAt(l) <= ' ') l++; 
	while(l <= h && S.charAt(h) <= ' ') h--; 
	return S.substring(l, h + 1); 
}
function checkInput(form) {
	if(!form.user_id.value) {
		alert("사용자 ID를 입력하세요.");
		form.user_id.focus();
		return;
	}
	if(!IsID(form.user_id.name)) {
		alert("사용자 ID는 5~10자의 학번이어야 합니다.");
		form.user_id.focus();
		form.user_id.select();
		return;
	}
	if(!form.passwd.value) {
		alert("패스워드를 입력하세요.");
		form.passwd.focus();
		return;
	}
	if(!IsPW(form.passwd.name)) {
		alert("패스워드는 4~8자의 영문자나 숫자 또는 조합된 문자열이어야 합니다.");
		form.passwd.focus();
		form.passwd.select();
		return;
	}
	if(form.passwd.value != form.confirmpw.value) {
		alert("입력하신 패스워드가 일치하지 않습니다. \n 다시 확인하시고 입력하여 주십시오.");
		form.confirmpw.focus();
		form.confirmpw.select();
		return;
	}
	if(!form.name.value || !trimSpace(form.name.value)) {
		alert("이름을 입력하세요.");
		form.name.focus();
		return;
	}
	if(!IsInSpace(form.name.name)) {
		alert("이름에 공백문자는 허용하지 않습니다.");
		form.name.focus();
		form.name.select();
		return;
	}
	if(form.depart_no.value == 0) {
		alert("학과를 선택하세요.");
		form.depart_no.focus();
		return;
	}
	if(!form.phone1.value || !form.phone2.value || !form.phone3.value) {
		alert("연락처를 입력하세요");
		form.phone1.focus();
		return;
	}
	if(!IsNumber(form.phone1.value) || !IsNumber(form.phone2.value) || !IsNumber(form.phone3.value)) {
		alert("연락처에는 숫자를 입력하셔야 합니다.");
		form.phone1.focus();
		form.phone1.select();
		return;
	}
	if(!form.email.value || !trimSpace(form.email.value)) {
		alert("이메일 주소를 입력하세요.");
		form.email.focus();
		return;
	}
	if(!IsInSpace(form.email.name)) {
		alert("이메일 주소에 공백문자는 허용하지 않습니다.");
		form.email.focus();
		form.email.select();
		return;
	}
	if(!form.question.value || !trimSpace(form.question.value)) {
		alert("패스워드 재발급을 위한 질문을 입력하세요.");
		form.question.focus();
		return;
	}
	if(!form.answer.value || !trimSpace(form.answer.value)) {
		alert("패스워드 재발급을 위한 답을 입력하세요.");
		form.answer.focus();
		return;
	}
	if(!form.soft_passwd.value) {
		alert("고유 패스워드를 입력하세요.");
		form.soft_passwd.focus();
		return;
	}
	form.submit();
}
function IsID(formname) {
	var form = eval("document.register_form." + formname);
	if(form.value.length < 5 || form.value.length > 10) {
		return false;
	}
	for(var i = 0; i < form.value.length; i++) {
		var chr = form.value.substr(i, 1);
		if(chr < '0' || chr > '9') {
			return false;
		}
	}
	return true;
}
function IsPW(formname) {
	var form = eval("document.register_form." + formname);
	if(form.value.length < 4 || form.value.length > 8) {
		return false;
	}
	for(var i = 0; i < form.value.length; i++) {
		var chr = form.value.substr(i, 1);
		if((chr < '0' || chr > '9') && (chr < 'a' || chr > 'z') && (chr < 'A' || chr > 'Z')) {
			return false;
		}
	}
	return true;
}
function IsInSpace(formname) {
	var form = eval("document.register_form." + formname);
	for(var i = 0; i < form.value.length; i++) {
		var chr = form.value.substr(i, 1);
		if(chr == ' ')
			return false;
	}
	return true;
}
function IsNumber(value) {
	for(var i = 0; i < value.length; i++) {
		var chr = value.substr(i, 1);
		if(chr < '0' || chr > '9')
			return false;
	}
	return true;
}
</script>
-->
</head>
<body onload="script:document.register_form.user_id.focus()">
	<div id="div_layout">
		<!-- Start of Header -->
		<div id="header"
			style="height: 50px; background-color: #0c1d27; color: white">
			<div class="div_logo"></div>
		</div>
		<div id="div_top_header"></div>
		<div id="div_center_top"></div>
		<!-- End of Header -->
		<!-- Start of Content -->
		<div id="div_content">
			<!-- Start of Main Content -->
			<form name="register_form" method="post"http://report.skhu.net/student/register.php">
				<div id="div_tbl_container">
					<div class="title_mid">학생 등록</div>
					<table cellspacing="0" rules="all" id="tbl_detailsview2" border="1">
						<colgroup>
							<col width="150">
							<col width="250">
						</colgroup>
						<tbody>
							<tr>
								<td class="dv_fieldheader">사용자 ID</td>
								<td><input type="text" name="user_id" autocomplete="off"
									size="10" maxlength="10"></td>
								<td><font color="red">반드시 학번을 입력하세요. 예) 200532000</font></td>
							</tr>
							<tr>
								<td class="dv_fieldheader">패스워드</td>
								<td><input type="password" name="passwd" autocomplete="off"
									size="10" maxlength="8"></td>
								<td>패스워드는 4~8자의 영문자나 숫자 또는 조합된 문자열이어야 합니다.</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">패스워드 확인</td>
								<td><input type="password" name="confirmpw"
									autocomplete="off" size="10" maxlength="8"></td>
								<td>확인을 위해 한번 더 입력해 주세요.</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">이 &nbsp;&nbsp;&nbsp;름</td>
								<td><input type="text" name="name" size="10" maxlength="5"></td>
								<td>이름은 반드시 실명이어야 합니다.</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">학 &nbsp;&nbsp;&nbsp;과</td>
								<td><select name="depart_no" size="1" class="button">
										<option value="0">--학과선택--</option>
										<option value="29">IT융합자율학부&#65279;</option>
										<option value="4">경영학부</option>
										<option value="20">교육대학원</option>
										<option value="24">글로컬IT학과</option>
										<option value="6">디지털컨텐츠학과</option>
										<option value="28">미디어컨텐츠융합자율학부</option>
										<option value="12">사회과학부</option>
										<option value="11">사회복지학과</option>
										<option value="27">사회융합자율학부</option>
										<option value="22">소프트웨어공학과</option>
										<option value="18">시민사회복지대학원</option>
										<option value="13">신문방송학과</option>
										<option value="7">신학과</option>
										<option value="17">신학전문대학원</option>
										<option value="8">영어학과</option>
										<option value="26">인문융합자율학부</option>
										<option value="25">일반대학원 (IT학과)</option>
										<option value="14">일반대학원 (사회복지학과)</option>
										<option value="15">일반대학원 (사회학과)</option>
										<option value="16">일반대학원 (신학과)</option>
										<option value="9">일어일본학과</option>
										<option value="3">전산정보학과</option>
										<option value="19">정보과학대학원</option>
										<option value="23">정보통신공학과</option>
										<option value="2">정보통신학과</option>
										<option value="10">중어중국학과</option>
										<option value="21">컴퓨터공학과</option>
										<option value="1">컴퓨터정보공학부</option>
										<option value="5">컴퓨터정보학부</option>
								</select></td>
								<td></td>
							</tr>
							<tr>
								<td class="dv_fieldheader">학 &nbsp;&nbsp;&nbsp;년</td>
								<td>1 <input type="radio" name="year" value="1"
									class="none"> &nbsp; &nbsp; 2 <input type="radio"
									name="year" value="2" class="none"> &nbsp;&nbsp; 3 <input
									type="radio" name="year" value="3" checked="" class="none">
									&nbsp;&nbsp; 4 <input type="radio" name="year" value="4"
									class="none"></td>
								<td></td>
							</tr>
							<tr>
								<td class="dv_fieldheader">연 락 처</td>
								<td><input type="text" name="phone1" size="4" maxlength="4">
									- <input type="text" name="phone2" size="4" maxlength="4">
									- <input type="text" name="phone3" size="4" maxlength="4"></td>
								<td>연락가능한 핸드폰 번호나 집 전화번호</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">이메일 주소</td>
								<td><input type="text" name="email" maxlength="30"
									size="35"></td>
								<td>자주 사용하는 이메일</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">질문</td>
								<td><input type="text" name="question" maxlength="30"
									size="35"></td>
								<td>패스워드 재발급을 위한 질문 예) 가장 좋아하는 음식</td>
							</tr>
							<tr>
								<td class="dv_fieldheader">답</td>
								<td><input type="text" name="answer" maxlength="30"
									size="35"></td>
								<td>패스워드 재발급을 위한 답 &nbsp;&nbsp;&nbsp;예) 닭고기</td>
							</tr>
							<tr style="background-color: #5783A0; color: white">
								<td class="dv_fieldheader">학교 패스워드</td>
								<td><input type="password" name="soft_passwd"
									autocomplete="off" size="10" maxlength="10"></td>
								<td>성공회대학교 학생임을 인증하기 위한 고유의 패스워드</td>
							</tr>
						</tbody>
					</table>
					<div id="div_btn_container">
						<a class="btn" onclick="checkInput(register_form)"> <span><span>등록하기</span></span></a>
						<a class="btn" onclick="history.back(-1)"> <span><span>이전화면</span></span></a>
					</div>
					<div id="div_memo">
						<ol>
							<li>사용자 ID는 등록 후 수정할 수 없으며, 잘못 등록한 경우 새로운 ID로 다시 등록하고 <a
								href="mailto:">관리자에게 신청</a>하여 잘못 등록된 ID를 삭제하십시오.
							</li>
							<li>사용자 ID를 제외한 기타정보는 '내등록정보' 에서 수정이 가능합니다.</li>
							<li>'학교 패스워드' 는 외부인의 장난성 가입을 막기 위한 성공회대학교 내에서만 알려진 고유의
								패스워드이며, 잘못 입력된 경우 등록이 허용되지 않습니다.</li>
							<li>패스워드 분실시 등록된 질문과 답을 통해 사용자가 인증되면, 이메일 주소로 새 패스워드가 발급됩니다.</li>
						</ol>
					</div>
				</div>
			</form>
			<!-- End of Main Content -->
		</div>
		<!-- End of Content -->
		<!-- Start of Footer -->
		<div id="div_center_bottom"></div>
		<!-- End of Footer -->
	</div>


</body>
</html>