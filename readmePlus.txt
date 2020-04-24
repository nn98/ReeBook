02/11

- 복합키, 외래키 to 기본키
  - http://woowabros.github.io/experience/2019/01/04/composit-key-jpa.html
  - https://jistol.github.io/java/2017/03/24/jpa-troubleshooting-no-indentifier-entity/
  - https://dkfkslsksh.tistory.com/64
- DB PW
  - https://blog.habonyphp.com/213
  - https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html#function_password
- TODO issue
  - PW
    - in Spring?
    - in DB?

02/12
- JSP/JSTL Mix
  - https://tonyne.jeju.onl/2016/04/21/jsp-jstl-variation-cross-use/
  - JAVA>JSTL>HTML>Javascript 
- User Accept the Terms add
  - http://wonwoo.ml/index.php/post/995

- !!! fucking redirect data transfer
  - jsp>controller>jsp redirect>recive
  - https://gdtbgl93.tistory.com/108
  - http://noveloper.github.io/blog/spring/2015/02/16/how-transport-parateter-when-redirect.html
  - https://m.blog.naver.com/PostView.nhn?blogId=allkanet72&logNo=220964699929&proxyReferer=https%3A%2F%2Fwww.google.com%2F
- SignUp last
  - https://kutar37.tistory.com/entry/%ED%95%9C%EA%B0%9C%EC%9D%98-Form%EC%97%90%EC%84%9C-%EC%97%AC%EB%9F%AC%EA%B0%9C-Submit-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0
- SignUp Layout
  - https://www.codingfactory.net/10510



Signup Delete part
<!--
				으악 뭘해야되냐
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
					<% //i=0; %>
					<c:forEach items="${deptList}" var="dept">
						<option value="<%=//i++%>">${dept.name}</option>
					</c:forEach>
				</select>
				<br/>
				<button type="submit">회원가입</button>
				-->
<!-- 
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">사용자 ID</td>
							<td id="box3"><input type="text" name="user_id"
								autocomplete="off" size="15" maxlength="10" value=${ user.id }></td>
							<td id="box3"><font color="#f66">반드시 학번을 입력하세요 예) 201732009</font></td>
						</tr>
						<tr id="tr_id">
							<td id="box2" class="dv_fieldheader" style="color: #fff">이름</td>
							<td id="box3"><input type="text" name="user_name"
								autocomplete="off" size="15" maxlength="10" value=${ user.name }></td>
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
									<%// int i=1; %>
									<c:forEach items="${deptList}" var="dept">
									<option value="<%//=i++%>">${dept.name}</option>
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
						 -->

SignUpSuc del
		<input type="hidden" name="id" value=${user.id}>
		<input type="hidden" name="name" value=${user.name}>
		<input type="hidden" name="password" value=${user.password}>
		<input type="hidden" name="grade" value=${user.grade}>
		<input type="hidden" name="department" value=${user.department}>
		<input type="hidden" name="agree" value=${user.agree}>

SignUp Upgrade

controller 
@RequestMapping(value="signup",method=RequestMethod.GET)
	public String signUpG(Model model) {
		//		model.addAttribute("user",new User());
		model.addAttribute("userRegistrationModel", new UserRegistrationModel());
		model.addAttribute("deptList", departmentRepository.findAll());
		return "user/signup";
	}


	@RequestMapping(value="signup",method=RequestMethod.POST,produces="text/plain;charset=UTF-8")
	public String signUpP(@Valid UserRegistrationModel userModel, RedirectAttributes redirectAttributes,
			BindingResult bindingResult, Model model) throws Exception{
		
		System.out.println(userModel);
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("deptList", departmentRepository.findAll());
			model.addAttribute("userRegistrationModel", userModel);
			return "user/signup";
		}
		
		userModel.setPwc(userModel.getPw().equals(userModel.getPc()));
		
		if(userModel.getAgree()&&userModel.getPwc()) {
			model.addAttribute("user",userModel);
			redirectAttributes.addFlashAttribute("user",userModel);
			redirectAttributes.addAttribute("user",userModel);
			//			return "redirect:./signups";
			//			return "user/signupsuc";
			return "redirect:signups";
		}
		else {
			model.addAttribute("deptList", departmentRepository.findAll());
			model.addAttribute(userModel);
			return "user/signup";
		}
	}

jsp
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

개같은 에러체크는 나중으로
현재 동일 아이디 save되는 형식.

- JSTL > JSP / JSP > JSTL
  - https://intro0517.tistory.com/129										!

- H/P input type
  - http://magic.wickedmiso.com/61 

- 현재 과제제출시스템
  - 학번/이름 ... 양식 제약 없음
  - 학번 중복은 확인

- 쿼리 만들어서 PW 암호화 시도 - 실패.
  - http://wonwoo.ml/index.php/post/1004

- TODO password hashing

- #3 rent
- jsp style
  - https://www.codingfactory.net/10561
  - https://fonts.google.com/?subset=korean&selection.family=East+Sea+Dokdo

0214
- #3 
- jsp
  - https://cpdev.tistory.com/25
  - https://hongku.tistory.com/123 modelAttribute
  - https://jootc.com/p/201807211394 alert
- jsp style
  - https://zzaps.tistory.com/68
  - http://uxuiz.cafe24.com/wp/archives/1445
  - <link rel="stylesheet" href="res/common.css">
  - direction = main/~
- jpa
  - entity compare:
    - https://stackoverflow.com/questions/49561425/cant-use-findone-in-my-code-with-jparepository 
  - redirect:
    - https://m.blog.naver.com/PostView.nhn?blogId=allkanet72&logNo=220964699929&proxyReferer=https%3A%2F%2Fwww.google.com%2F

0218
- jsp
  - https://blog-pleur.tistory.com/36	table column
  - https://www.codingfactory.net/10691	js redirection
- jpa
  - https://jistol.github.io/java/2017/02/03/jpa-datetype/	date class
  - https://anddev.tistory.com/85	date set(Calendar)

0221
- jsp
  - #1: onclick	https://wallel.com/onclick-%EB%A7%81%ED%81%AC-%EC%83%88%EC%B0%BD%ED%8C%9D%EC%97%85%ED%98%84%EC%9E%AC%EC%B0%BD%ED%94%84%EB%A0%88%EC%9E%84/
  - #1: cursor	https://ofcourse.kr/css-course/cursor-%EC%86%8D%EC%84%B1
  - #1: hover	https://www.w3schools.com/csSref/sel_hover.asp

- DB
  - update book set available='Y' where id=?;
  - delete from rent where bid=?;

0303 ~
0304
- Project
Locker00 >> RB0
project absorption, add locker assignment category to titlebar, layout setting

/* * *
trans from Locker //
0303

	- Unknown column 'user0_.department_id' in 'field list'
Caused:
	@ManyToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="departmentId")	<-- departmentId > department_id.
	Department department;
	
Solve 1:
	int departmentId;	// err
	int departmentid;	// suc

Solve:
	@ManyToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="departmentid")	<-- change
	Department department;

시벌 내가 이전프로젝트를 어케해놓은건지 문제없이 돌아가다가 옮겨서쓰니까 에러나네

나중에 통합하면될덧

지금할까
* * */

#2 
그냥 모델에 로커 넣고 넘기니까 지알아서 채워지긴 하는데 그거에 맞춰서 수정하기 귀찮으니까 그냥 숨긴 인풋태그로 ㄱ

html/jsp layout
  - center align: https://jhnyang.tistory.com/170

0305

- JSP user manual class
  - https://kmj1107.tistory.com/entry/jsp%EC%97%90%EC%84%9C-%EC%9E%90%EA%B8%B0%EA%B0%80-%EB%A7%8C%EB%93%A0-class-import-%ED%95%98%EA%B8%B0
- JSTL > JSP / JSP > JSTL
  - https://rwd337.tistory.com/41

0307

- JSP Error Solve
  - 개같이 페이지 양쪽에 공백생기던거
    - <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" media="screen"> 이게 해답
    - ??

-- 0308 ~ 0312 Format

0312
- Git 
  - 포맷하고 그냥 커밋했더니 외부유저커밋으로뜨네 시부럴
  - Global 설정하고 커밋.

0314
- html
  - table caption
  - https://www.codingfactory.net/11002

0327
- html/jsp
  - side navigation 
  - https://webruden.tistory.com/94

0408
- html/jsp
  - user button	http://rwdb.kr/interactionbutton/
  - before <button id=<%= C?"albtn":"lbtn" %> type="submit" name="lnum" value=<%= i*100000+j*1000+c %> <%= C?"disabled":"" %>><%= c++ %></button>

0424
- javaScript
  - var counter	https://www.phpschool.com/gnuboard4/bbs/board.php?bo_table=qna_html&wr_id=91173

0425
- git
  - 뭐지 레포바꾸면서 경로가 갈렸나