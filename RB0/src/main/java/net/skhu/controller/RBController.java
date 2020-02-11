package net.skhu.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping("/")
	public String front(Model model) {
		return "front";
	}

	@RequestMapping("/fuck")
	public String fTest(Model model) {
		return "";
	}

	@Autowired BookRepository bookRepository;
	@Autowired UserRepository userRepository;
	@Autowired RentRepository rentRepository;
	@Autowired LectureRepository lectureRepository;
	@Autowired DocumentRepository documentRepository;
	@Autowired DepartmentRepository departmentRepository;
	@Autowired DefectRepository defectRepository;

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

		if(pwc&&agree) {
			System.out.println("시발 뭔데");
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
	public String signupSG(Model model,@RequestParam("user")User user) {
		//		model.addAttribute(userRepository.getOne(201732009));
		System.out.println("SucG");
		System.out.println(user);
		//		User user=(User) model.getAttribute("user");
		return "user/signupsuc";
	}

	@RequestMapping(value="signups",method=RequestMethod.POST)
	public String signupSP(Model model, User user, 
			@RequestParam("departmentId")int dId,
			@RequestParam("confirm")boolean c) {
		System.out.println("SucP");
		//		userRepository.save(user);
		//		model.addAttribute("user",userRepository.getOne(201732009));
		user.setDepartment(departmentRepository.getOne(dId));
		System.out.println(user);
		if(c) {
			userRepository.save(user);
			return "front";
		}
		else {
			return "signup";
		}
	}

	//	@RequestMapping("rents")
	//	public List<Rent> rents(){
	//		return rentRepository.findAll();
	//	}

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