package net.skhu.controller;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.skhu.domain.Assign;
import net.skhu.domain.AssignPK;
import net.skhu.domain.Book;
import net.skhu.domain.Defect;
import net.skhu.domain.Department;
import net.skhu.domain.Document;
import net.skhu.domain.Lecture;
import net.skhu.domain.Locker;
import net.skhu.domain.Rent;
import net.skhu.domain.User;
import net.skhu.model.Pagination;
import net.skhu.repository.AssignRepository;
import net.skhu.repository.BookRepository;
import net.skhu.repository.DefectRepository;
import net.skhu.repository.DepartmentRepository;
import net.skhu.repository.DocumentRepository;
import net.skhu.repository.LectureRepository;
import net.skhu.repository.LockerRepository;
import net.skhu.repository.RentRepository;
import net.skhu.repository.UserRepository;

//으아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ아당러ㅑㅐㄴㄷㄱ

@Controller
//@RequestMapping("rb")
public class RBController {
	
	static User logInUser=null;

	@RequestMapping("/")
	public String logIn() {
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String logInG(Model model) {
		return "login";
	}

	@RequestMapping(value="login", method=RequestMethod.POST)
	public String logInS(@ModelAttribute("user")User user , RedirectAttributes redirectAttributes, Model m) {
		User db=userRepository.findById(user.getId()).orElse(null);
		System.out.println("recive user:\t"+user);
		System.out.println("db user:\t"+db);
		if(db!=null) {
			int uId=user.getId(),dId=db.getId();
			String uPw=user.getPassword(),dPw=db.getPassword();
			boolean id=uId==dId,pw=uPw.equals(dPw),result=id&&pw;
			System.out.println(uId+"\t"+dId);
			System.out.println(uPw+"\t"+dPw);
			System.out.println("id:\t"+id+"\tpw:\t"+pw+"\tresult:\t"+result);
			if(result) {
//				return "front";
				redirectAttributes.addFlashAttribute("user",db);
				logInUser=db;
				return "redirect:front";
			}
//			System.out.println(user.getId()+" "+db.getId()+" "+(user.getId()==db.getId()));
//			System.out.println(user.getPassword()+" "+db.getPassword()+" "+user.getPassword().equals(db.getPassword()));
		}
		System.out.println("fail");
		m.addAttribute("fail",true);
		return "login";
	}

	@RequestMapping(value="/front", method=RequestMethod.GET)
	public String frontG(Model model, RedirectAttributes rm) {
		System.out.println("front:\tGet");
		System.out.println("logInUser:\t"+logInUser);
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		model.addAttribute("loginuser",logInUser);
//		System.out.println("LogInUser:\t"+logInUser);
		return "front";
	}

	@RequestMapping(value="/front", method=RequestMethod.POST)
	public String frontP(Model model, RedirectAttributes rm) {
		System.out.println("front:\tPost");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		if(logInUser!=null)model.addAttribute("loginuser",logInUser);
		return "front";
	}
	
	@RequestMapping("/logout")
	public String logOut() {
		logInUser=null;
		return "login";
	}

	@RequestMapping("/fuck")
	public String fTest(Model model) {
		return "";
	}

	@RequestMapping(value="rent", method=RequestMethod.GET)
	public String rent(Model m, RedirectAttributes rm) {
		System.out.println("rent:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		return "rent/rent";
	}

	@RequestMapping(value="rent", method=RequestMethod.POST)
	public String rentP(Model m, @RequestParam("bid") int bid, RedirectAttributes rm) {
		System.out.println("rent:\tPost\tbid:\t"+bid);
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		m.addAttribute("book",bookRepository.getOne(bid));
		m.addAttribute("loginuser",logInUser);
		return "rent/rent";
	}
	
	@RequestMapping(value="rents", method=RequestMethod.POST)
	public String rnetS(Model m, @RequestParam("bid") int bid, RedirectAttributes rm) {
		System.out.println("rents:\tPost");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		m.addAttribute("loginuser",logInUser);
		Book book=bookRepository.getOne(bid);
		System.out.println("RentS:\t"+book);
		System.out.println("IsAvailable:\t"+book.isAvailable());
		if(book.isAvailable()) {
			bookRepository.save(book);
			Rent rent=new Rent();
			rent.setUser(logInUser);
			rent.setUid(rent.getUser().getId());
			rent.setBook(book);
			rent.setBid(rent.getBook().getId());
			System.out.println("rent date:\t"+new Date());
			rent.setRentDate(new Date());
			Calendar cal=Calendar.getInstance();
			cal.set(2020,5,26);
			System.out.println("return date:\t"+cal.getTime());
			rent.setReturnDate(cal.getTime());
			System.out.println("rent:\t"+rent);
			rentRepository.save(rent);
			book.setAvailable(false);
			m.addAttribute("rentS",true);
			return "front";
		}else {
			System.out.println("fail");
			m.addAttribute("fail",true);
			return "rent/rent";
		}
	}

	@Autowired BookRepository bookRepository;
	@Autowired UserRepository userRepository;
	@Autowired RentRepository rentRepository;
	@Autowired LectureRepository lectureRepository;
	@Autowired DocumentRepository documentRepository;
	@Autowired DepartmentRepository departmentRepository;
	@Autowired DefectRepository defectRepository;
	@Autowired LockerRepository lockerRepository;
	@Autowired AssignRepository assignRepository;

	@Autowired JpaContext jpaContext;

	//	@RequestMapping("books")
	//	public List<Book> books(){
	//		System.out.println(bookRepository.findAll().toString());
	//		return bookRepository.findAll();
	//	}

	@RequestMapping(value="booksj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Book> booksJ(){
		System.out.println(bookRepository.findAll().toString());
		return bookRepository.findAll();
	}

	@RequestMapping("booksl")
	public String list(Pagination pagination, Model model, RedirectAttributes rm) {
		System.out.println("booksl:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		List<Integer> bilist=rentRepository.findAllBookId();
		List<Book> blist=bookRepository.findAll();
		for(Book b:blist) {
			if(bilist.contains(b.getId()))
				b.setAvailable(false);
			else
				b.setAvailable(true);
		}
		bookRepository.saveAll(blist);
		model.addAttribute("loginuser",logInUser);
//		List<Rent> rlist=rentRepository.findAll();
//		for(Rent r:rlist) {
//			Book book=bookRepository.getOne(r.getBid());
//			book.setAvailable(false);
//		}
		System.out.println("\tLogInUser:\t"+logInUser);
		List<Book> list = bookRepository.findAll(pagination);
		model.addAttribute("list", list);
		return "book/books";
	}

	//	@RequestMapping("users")
	//	public List<User> users(){
	//		return userRepository.findAll();
	//	}

	@RequestMapping(value="usersj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<User> usersJ(){
		//		System.out.println(userRepository.findAll().toString());
		//		return userRepository.findAll();
		return userRepository.findAllWithoutPW();
	}

	@RequestMapping(value="signup",method=RequestMethod.GET)
	public String signUpG(Model model) {
		User user=(User)model.getAttribute("user");
		System.out.println("SignUpG:\t"+user);
		//		model.addAttribute("user",new User());
		model.addAttribute("deptList", departmentRepository.findAll());
		return "user/signup";
	}


	@RequestMapping(value="signup",method=RequestMethod.POST,produces="text/plain;charset=UTF-8")
	public String signUpP(Model model,RedirectAttributes redirectAttributes,
			@RequestParam(value="user_id", required = false, defaultValue = "0")int id,
			@RequestParam(value="user_name", required = false, defaultValue = "D")String name,
			@RequestParam(value="user_pw", required = false, defaultValue = "D")String pw,
			@RequestParam(value="user_pwc", required = false, defaultValue = "D")String pc,
			@RequestParam(value="user_email", required = false, defaultValue = "D")String email,
			@RequestParam(value="user_hp", required = false, defaultValue = "D")String hp,
			@RequestParam(value="user_grade", required = false, defaultValue = "0")int grade,
			@RequestParam(value="user_depart", required = false, defaultValue = "0")int dId,
			@RequestParam(value="user_agree", required = false, defaultValue = "false")boolean agree,
			@RequestParam(value="login", required=false, defaultValue="false")boolean login
			)throws Exception{
		System.out.println("SignUpP");
		if(login) {
			model.addAttribute("deptList", departmentRepository.findAll());
			return "user/signup";
		}
		Department department=departmentRepository.getOne(dId);
		boolean pwc=pw.equals(pc);

		System.out.println("id:\t"+id);
		System.out.println("name:\t"+name);
		System.out.println("pw:\t"+pw);
		System.out.println("pc:\t"+pc);
		System.out.println("pw c:\t"+pwc);
		System.out.println("email:\t"+email);
		System.out.println("hp:\t"+hp);
		System.out.println("grade:\t"+grade);
		System.out.println("dept:\t"+dId+"\t"+department.getName());
		System.out.println("agree:\t"+agree);
		System.out.println("signup:\t"+(pwc&&agree));

		User user=new User();
		user.setId(id);
		user.setName(name);
		if(pwc)user.setPassword(pw);
		user.setGrade(grade);
		user.setDepartment(department);
		user.setAgree(agree);
		user.setEmail(email);
		user.setHp(hp);
//		System.out.println(user);

		if(pwc&&agree) {
			System.out.println("To suc:\t"+user);
			model.addAttribute("user",user);
			redirectAttributes.addFlashAttribute("user",user);
			redirectAttributes.addAttribute("user",user);
			//			return "redirect:./signups";
			//			return "user/signupsuc";
			return "redirect:signups";
		}
		else {
			model.addAttribute("deptList", departmentRepository.findAll());
			model.addAttribute(user);
			return "user/signup";
		}
	}

	@RequestMapping("signupp")
	public String signInP() {
		return "user/signupp";
	}

	@RequestMapping(value="signups",method=RequestMethod.GET)
	public String signupSG(Model model) {
		//		model.addAttribute(userRepository.getOne(201732009));
		User user=(User)model.getAttribute("user");
		System.out.println("SucG reciv:\t"+user);
		if(user==null) {
			System.out.println("SignUp:\t user is null");
//			model.addAttribute("deptList",departmentRepository.findAll());
			return "login";
		}
//		if(user==null)return "user/signup";
		//		User user=(User) model.getAttribute("user");
		return "user/signupsuc";
	}

	@RequestMapping(value="signups",method=RequestMethod.POST)
	public String signupSP(Model model, User user, RedirectAttributes rm,
			@RequestParam("departmentId")int dId,
			@RequestParam("confirm")boolean c) {
		System.out.println("SucP");
		//		userRepository.save(user);
		//		model.addAttribute("user",userRepository.getOne(201732009));
		user.setDepartment(departmentRepository.getOne(dId));
		System.out.println("SucP:\t"+user);
		if(c) {
			System.out.println(user);
			System.out.println(userRepository.findById(user.getId()));
			System.out.println(Optional.empty());
			if(userRepository.findById(user.getId()).equals(Optional.empty())) {
				userRepository.save(user);
				rm.addFlashAttribute("signup",true);
			} else {
				rm.addFlashAttribute("signup",false);
			}
			return "redirect:login";
		}
		else {
			System.out.println("sent "+user+"to RD signup");
			rm.addFlashAttribute("user", user);
			return "redirect:signup";
		}
	}

	//	@RequestMapping("rents")
	//	public List<Rent> rents(){
	//		return rentRepository.findAll();
	//	}

	@RequestMapping("query")
	public String query() {
		return "query";
	}
	
	@ResponseBody
	@RequestMapping("jpql")
	public Object jpql(@RequestParam("query")String q) {
		EntityManager manager = jpaContext.getEntityManagerByManagedType(User.class);
		Query query = manager.createQuery(q);
		Object r = query.getResultList();
		return r;
	}
	
	@RequestMapping("jquery")
	public String jquery(Model model) {
		User user=userRepository.getOne(201732009);
		user.setId(202032001);
		System.out.println(user);
//		userRepository.saveWithHashing(user);
//		userRepository.sav
		return "front";
	}
	
	@RequestMapping(value="jqueryuser",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<User> jqueryU(Model model) {
//		User user=userRepository.getOne(201732009);
		List<User> users=userRepository.findAll();
//		user.setId(202032001);
//		System.out.println(user);
//		userRepository.saveWithHashing(user);
//		userRepository.sav
		return userRepository.findAll();
	}

	@RequestMapping(value="rentsj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Rent> rentsJ(){
//		System.out.println(55);
		return rentRepository.findAll();
	}

	//	@RequestMapping("lectures")
	//	public List<Lecture> lectures(){
	//		return lectureRepository.findAll();
	//	}

	@RequestMapping(value="lecturesj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Lecture> lecturesJ(){
		return lectureRepository.findAll();
	}

	//	@RequestMapping("documents")
	//	public List<Document> documents(){
	//		return documetRepository.findAll();
	//	}

	@RequestMapping(value="documentsj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Document> documentsJ(){
		return documentRepository.findAll();
	}

	@RequestMapping(value="defectsj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Defect> defectsJ(){
		return defectRepository.findAll();
	}

	@RequestMapping(value="departmentsj",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Department> departmentsJ(){
		return departmentRepository.findAll();
	}

	/*	LockerAssignment	*/

	@RequestMapping("img")
	public String img() {
		return "imgtest";
	}

	@RequestMapping("halls")
	public String halls(Model m, RedirectAttributes rm) {
		System.out.println("halls:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		m.addAttribute("loginuser",logInUser);
		return "hall/halls";
	}
	
	@RequestMapping("it6")
	public String hall6(@RequestParam(value="hid", required = false, defaultValue = "0") int hid, 
			Model m, RedirectAttributes rm) {
		System.out.println("it6:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		System.out.println("hall 6/hid:\t"+hid);
		m.addAttribute("hid",hid);
		m.addAttribute("loginuser",logInUser);
		return "hall/IT6/floors";
	}
	
	@RequestMapping(value="it6/f1", method=RequestMethod.GET)
	public String it6F1(@RequestParam(value="fid", required = false, defaultValue = "0") int fid,
			@RequestParam(value="hid", required = false, defaultValue = "0") int hid, Model m, RedirectAttributes rm) {
		System.out.println("it6-f1:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		System.out.println("it6/f1/G");
		System.out.println("hid: "+hid);
		System.out.println("fid: "+fid);
		m.addAttribute("loginuser",logInUser);
		m.addAttribute("hid",hid);
		m.addAttribute("fid",fid);
		
		m.addAttribute("locker", new Locker());
		
		return "hall/IT6/floor1";
	}
	
	@RequestMapping(value="it6/f1", method=RequestMethod.POST)
	public String it6F1L(
			@RequestParam(value="lid", required = false, defaultValue = "0") int lid,
			@RequestParam(value="fid", required = false, defaultValue = "0") int fid,
			@RequestParam(value="hid", required = false, defaultValue = "0") int hid,
			@RequestParam(value="lnum", required = false, defaultValue = "0") int lnum, 
			
			@RequestParam(value="apply", required = false, defaultValue = "false") boolean apply,
			@RequestParam(value="clnum", required = false, defaultValue = "0") int clnum,
			@RequestParam(value="clcolumn", required = false, defaultValue = "0") int clcolumn,
			@RequestParam(value="clrow", required = false, defaultValue = "0") int clrow, 
			Model m, Locker locker, RedirectAttributes rdm) {
		System.out.println("it6-f1:\tPost");
		if(logInUser==null) {
			System.out.println("LogOut");
			rdm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		if(logInUser!=null)m.addAttribute("loginuser",logInUser);
		System.out.println("it6/f1/P");
		
		if(apply) {
			System.out.println("locker assign//");
			System.out.println("clnum:\t"+clnum);
			locker.setLnum(clnum%1000);
			locker.setLcolumn(clnum/100000);
			locker.setLrow(clnum%100000/1000);
			String sid=""+hid+fid+lid+clnum;
			locker.setId(Integer.parseInt(sid));
			System.out.println("applyed locker:\t"+locker);
			System.out.println("save locker...");
			lockerRepository.save(locker);
			System.out.println("OK");
			
			System.out.println("save assignment...\n");
			System.out.println("check user's assign");
			List<Assign> pAssign=assignRepository.findByUid(logInUser.getId());
			if(pAssign==null) System.out.println("not exist");
			else {
				System.out.println("exist");
				for(Assign a:pAssign)
					assignRepository.delete(a);
				System.out.println("delete existing assign");
			}
			Assign assign=new Assign();
			AssignPK assignPK=new AssignPK();
			assignPK.setLocker(locker);
			assignPK.setUser(logInUser);
			assign.setPKset_User_Locker(assignPK);
			assignRepository.save(assign);
			System.out.println("OK");
			
			System.out.println("save user...");
			logInUser.setLocker(locker);
			userRepository.save(logInUser);
			
			rdm.addFlashAttribute("assign", true);
			
//			return "redirect:/it6/f1";
			return "redirect:/front";
			
		}
		else System.out.println("not applied");
		
		System.out.println("hid:\t"+hid);
		System.out.println("fid:\t"+fid);
		System.out.println("lid:\t"+lid);
		System.out.println("lnum:\t"+lnum);
		System.out.println("column/lxid:\t"+lnum/100000);
		System.out.println("row/lyid:\t"+lnum%100000/1000);
		
		String alid="";
		if(lnum==0)System.out.println("\tno alid");
		else {
			alid=""+hid+fid+lid+lnum;
			System.out.println("\tAssignLockerId:\t"+alid);
		}
		
//		System.out.println(m.getAttribute("locker"));
		
		m.addAttribute("lid",lid);
		m.addAttribute("clnum", lnum);
		m.addAttribute("lnum", lnum%1000);
		m.addAttribute("lyid", lnum%100000/1000);
		m.addAttribute("lxid", lnum/100000);
		m.addAttribute("fid",fid);
//		if(lnum!=0)	m.addAttribute("alid",alid);
		
		System.out.println("locker:\t"+locker);
		
		System.out.println("check assigned locker...");
		List<Integer> llist=assignRepository.findExistId();
		System.out.println("done, list:\t"+llist);
		
		if(llist!=null)m.addAttribute("llist",llist);
		m.addAttribute("hid",hid);
		
		return "hall/IT6/floor1-"+lid;
	}
	
	@RequestMapping("imgtest")
	public String imgT(@RequestParam(value="fid", required = false, defaultValue = "0") int fid, 
			Model m, RedirectAttributes rm) {
		System.out.println("it6:\tGet");
		if(logInUser==null) {
			System.out.println("LogOut");
			rm.addFlashAttribute("logout", true);
			return "redirect:login";
		}
		System.out.println("fid: "+fid);
		return "hall/IT6/front";
	}

	@RequestMapping("def")
	public String def(Model m) {
		m.addAttribute("loginuser",logInUser);
		return "default";
	}

	@RequestMapping("mypage")
	public String mypage(Model m) {
		m.addAttribute("loginuser",logInUser);
		return "retrieve/mypage";
	}
	
}