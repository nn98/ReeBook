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
<title>학생 등록</title>
<script>
function inputPhoneNumber(obj) {

    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
    
}
</script>
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
		<form:form method="post" modelAttribute="user">
			<!-- <div  class="form-group" style="background-color:#ccc;padding:20;"ccf> -->
			<div id="box1">
				<!-- <table id="tbl_detailsview2" border="1" bordercolor="white"> -->
				<table id="tb_id">
					<colgroup>
						<col width="150">
						<col width="200">
						<col width="500">
					</colgroup>
					<tbody>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">사용자 ID</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="on" size="20" maxlength="9" value=${ user.id==0?"":user.id }></td>
							<td id="box3"><font color="#f66">반드시 학번을 입력하세요 예) 201732009</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">이름</td>
							<td id="box3"><input type="text" name="user_name"
								autocomplete="on" size="20" maxlength="20" value=${ user.name.equals("D")?"":user.name }></td>
							<td id="box3"><font color="#f66">시스템에 저장된 이름과 동일해야 합니다</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">암호</td>
							<td id="box3"><input type="password" name="user_pw"
								autocomplete="on" size="20" maxlength="20"></td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">암호 확인</td>
							<td id="box3"><input type="password" name="user_pwc"
								autocomplete="on" size="20" maxlength="20"></td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">이메일</td>
							<td id="box3">
								<form name="user_email">
								<input type="email" name="user_email" autocomplete="on" size="20"
								 maxlength="30" value=${ user.email.equals("D")?"":user.email }>
								<!-- @<input type="email" name="user_email" autocomplete="on" size="15" maxlength="30"> -->
								</form>
							</td>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">연락처</td>
							<td id="box3">
								<input type="text" name="user_hp" onKeyup="inputPhoneNumber(this);"
								size="20" autocomplete="on" maxlength="13" value=${ user.hp.equals("D")?"":user.hp }><!-- style="text-align:center;" -->
							</td>
							<td id="box3"><font color="#f66">- 없이 입력</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">학년</td>
							<td id="box3">
								<% int i=0; pageContext.setAttribute("index",i); %>
								<c:forEach var="i" begin="1" end="4" step="1">
								<input type="radio" name="user_grade" value=<%=++i%> class="none" ${ user.grade==i?"checked":"" }> <%= i %> &nbsp;
								</c:forEach>
							<td id="box3"><font color="#f66"></font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">소속</td>
							<td id="box3">
								<select name="user_depart" size="1.9" class="form-control">
									<c:forEach items="${deptList}" var="dept">
									<option value=${ dept.id } ${dept.id==user.department.id?"selected":""}>${dept.name}</option>
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
								<input type="radio" name="user_agree" value="1" ${ user.agree?"checked":"" }> 예 &nbsp; &nbsp;
								<input type="radio" name="user_agree" value="0" ${ user.agree?"":"checked" }> 아니오
							</td>
						</tr>
					</tbody>
				</table>
				<!-- <button type="submit">G회원가입</button> -->
			</div>
		</form:form>
	</div>
	<hr style="border: solid 0.5px #aaa; width:85%;">
</body>
</html>