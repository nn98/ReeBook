package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.skhu.domain.Book;
import net.skhu.domain.Document;
import net.skhu.domain.Lecture;
import net.skhu.domain.Rent;
import net.skhu.domain.User;
import net.skhu.model.Pagination;
import net.skhu.repository.BookRepository;
import net.skhu.repository.DocumentRepository;
import net.skhu.repository.LectureRepository;
import net.skhu.repository.RentRepository;
import net.skhu.repository.UserRepository;

@Controller
@RequestMapping("rb")
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

	@RequestMapping("books")
	public List<Book> books(){
		System.out.println(bookRepository.findAll().toString());
		return bookRepository.findAll();
	}

	@RequestMapping(value="booksJ",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<Book> booksJ(){
		System.out.println(bookRepository.findAll().toString());
		return bookRepository.findAll();
	}

	@RequestMapping("booksL")
	public String list(Pagination pagination, Model model) {
		List<Book> list = bookRepository.findAll(pagination);
		model.addAttribute("list", list);
		return "book/books";
	}

	@RequestMapping("users")
	public List<User> users(){
		return userRepository.findAll();
	}
	
	@RequestMapping(value="usersJ",produces="application/json",method=RequestMethod.GET)
	@ResponseBody
	public List<User> usersJ(){
		System.out.println(userRepository.findAll().toString());
		return userRepository.findAll();
	}
	
	@RequestMapping("signIn")
	public String signIn() {
		return "user/signIn";
	}

	@RequestMapping("rents")
	public List<Rent> rents(){
		return rentRepository.findAll();
	}

	@RequestMapping("lectures")
	public List<Lecture> lectures(){
		return lectureRepository.findAll();
	}

	@RequestMapping("documents")
	public List<Document> documents(){
		return documetRepository.findAll();
	}

}
