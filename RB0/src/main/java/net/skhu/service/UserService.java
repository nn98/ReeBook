package net.skhu.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.domain.User;
import net.skhu.model.UserRegistrationModel;
import net.skhu.repository.DepartmentRepository;
import net.skhu.repository.UserRepository;
@Service
public class UserService {
	
	@Autowired UserRepository userRepository;
	@Autowired DepartmentRepository departmentRepository;
	
	public List<User> findAll() {
		return userRepository.findAll();
	}
	
	public User createEntity(UserRegistrationModel userModel) {
		User user = new User();
		user.setId(Integer.parseInt(userModel.getId()));
		user.setName(userModel.getName());
		user.setPassword(userModel.getPw());
		user.setEmail(userModel.getEmail());
		user.setHp(userModel.getHp());
		user.setGrade(userModel.getGrade());
		user.setDepartment(departmentRepository.getOne(userModel.getDepartmentId()));
		user.setAgree(userModel.getAgree());
		return user;
	}
	
	public void save(UserRegistrationModel userModel) {
		User user = createEntity(userModel);
		userRepository.save(user);
	}
	
}