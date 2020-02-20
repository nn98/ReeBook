package net.skhu.controller;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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

import net.skhu.domain.Book;
import net.skhu.domain.Defect;
import net.skhu.domain.Department;
import net.skhu.domain.Document;
import net.skhu.domain.Lecture;
import net.skhu.domain.Rent;
import net.skhu.domain.User;
import net.skhu.model.Pagination;
import net.skhu.repository.BookRepository;
import net.skhu.repository.DefectRepository;
import net.skhu.repository.DepartmentRepository;
import net.skhu.repository.DocumentRepository;
import net.skhu.repository.LectureRepository;
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

	@RequestMapping(value="/front", method=RequestMethod.POST)
//	unUse?
	public String frontP(Model model) {
		User user=(User) model.getAttribute("user");
		System.out.println("frontP:\t"+user);
		if(logInUser!=null)model.addAttribute("loginuser",logInUser);
		return "front";
	}
	
	@RequestMapping(value="/front", method=RequestMethod.GET)
	public String frontG(Model model) {
//		User user=(User) model.getAttribute("user");
//		User receive suc, all action -> redirect?
		System.out.println("frontG");
		if(logInUser!=null)model.addAttribute("loginuser",logInUser);
		System.out.println("LogInUser:\t"+logInUser);
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

	@RequestMapping("rent")
	public String rent(Model m) {
		System.out.println("RentG:\t");
		return "rent/rent";
	}

	@RequestMapping(value="rent", method=RequestMethod.POST)
	public String rentP(Model m, @RequestParam("bid") int bid) {
		System.out.println("RentP:\tbid:\t"+bid);
		m.addAttribute("book",bookRepository.getOne(bid));
		return "rent/rent";
	}
	
	@RequestMapping(value="rents", method=RequestMethod.POST)
	public String rnetS(Model m, @RequestParam("bid") int bid) {
//		Book book=(Book)m.getAttribute("book");
		Book book=bookRepository.getOne(bid);
		System.out.println("RentS:\t"+book);
		System.out.println("IsAvailable:\t"+book.isAvailable());
		if(book.isAvailable()) {
			book.setAvailable(false);
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
	public String list(Pagination pagination, Model model) {
		if(logInUser!=null)model.addAttribute("loginuser",logInUser);
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
			@RequestParam(value="user_agree", required = false, defaultValue = "false")boolean agree) 
					throws Exception{

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
			userRepository.save(user);
			return "login";
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
		System.out.println(55);
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

}