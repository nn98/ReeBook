package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String signUpP(Model model,@RequestParam(value="user_id", required = false, defaultValue = "0")int id,
			@RequestParam(value="user_name", required = false, defaultValue = "D")String name,
			@RequestParam(value="user_pw", required = false, defaultValue = "D")String pw,
			@RequestParam(value="user_pwc", required = false, defaultValue = "D")String pwc,
			@RequestParam(value="user_grade", required = false, defaultValue = "0")int grade,
			@RequestParam(value="user_depart", required = false, defaultValue = "0")int dept,
			@RequestParam(value="user_agree", required = false, defaultValue = "0")int agree) {
		System.out.println("id:\t"+id);
		System.out.println("name:\t"+name);
		System.out.println("pw:\t"+pw);
		System.out.println("pc:\t"+pwc);
		System.out.println("pw c:\t"+pw.equals(pwc));
		System.out.println("grade:\t"+grade);
		System.out.println("dept:\t"+dept+"\t"+departmentRepository.findById(dept).get().getName());
		System.out.println("agree:\t"+(agree==1));
		User user=new User();
		user.setId(id);
		user.setName(name);
		if(pw.equals(pwc))user.setPassword(pw);
		user.setGrade(grade);
		user.setDepartment(departmentRepository.getOne(dept));
		user.setAgree(agree==1);
		model.addAttribute("deptList", departmentRepository.findAll());
		model.addAttribute(user);
		return "user/signup";
	}

	@RequestMapping("signupp")
	public String signInP() {
		return "user/signupp";
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