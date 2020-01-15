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
import net.skhu.domain.Document;
import net.skhu.domain.Lecture;
import net.skhu.domain.Rent;
import net.skhu.domain.User;
import net.skhu.model.Pagination;
import net.skhu.repository.BookRepository;
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
	@Autowired DocumentRepository documetRepository;
	@Autowired DepartmentRepository departmentRepository;

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
		System.out.println(userRepository.findAll().toString());
		return userRepository.findAll();
	}

	@RequestMapping(value="signup",method=RequestMethod.GET)
	public String signUpG(Model model) {
		model.addAttribute("deptList", departmentRepository.findAll());
		return "user/signup";
	}


	@RequestMapping(value="signup",method=RequestMethod.POST,produces="text/plain;charset=UTF-8")
	public String signUpP(Model model,@RequestParam(value="user_id")int id,
			@RequestParam(value="user_name")String name,@RequestParam(value="user_pw")String pw,
			@RequestParam(value="user_pwc")String pwc,@RequestParam(value="user_grade")int grade,
			@RequestParam(value="user_depart")int dept,@RequestParam(value="user_agree")int agree) {
		System.out.println("id: "+id);
		System.out.println("name: "+name);
		System.out.println("pw: "+pw);
		System.out.println("pwc: "+pwc);
		System.out.println("grade: "+grade);
		System.out.println("dept: "+dept);
		System.out.println("agree: "+(agree==1));
		model.addAttribute("deptList", departmentRepository.findAll());
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
		return documetRepository.findAll();
	}

}