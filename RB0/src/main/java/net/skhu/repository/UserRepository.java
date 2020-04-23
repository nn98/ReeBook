package net.skhu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fasterxml.jackson.annotation.JsonIgnore;

import net.skhu.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	public default List<User> findAllWithoutPW(){
		List<User> l=this.findAll();
		for(User u:l)u.setPassword("UNSATISFIED");
		return l;
	}
	
//	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
//	@JsonIgnore
//	public User getOne(Integer id);
	
//	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
//	@JsonIgnore
//	public List<User>findAll();
	
//	@Query("insert into user(id,name,password,departmentid,grade,agree) values(%?1%,%?2%,%?3%,%?4%,%?5%,%?6%)")
	
//	@Query("insert into user(id,name,password,departmentid,grade,agree) "
//			+ "values(#{user.id},#{user.name},#{user.password},#{user.department.id},#{user.grade},#{user.agree}")
	
//	@Query("insert into user(id,name,password,departmentid,grade,agree) "
//			+ "values(${user.id},${user.name},${user.password},${user.department.id},${user.grade},${user.agree}")
//	public void saveWithHashing(@Param("user") User user);
	
//	@Query("insert into user(id,name,password,departmentid,grade,agree) "
//			+ "values(#{user.id},#{user.name},#{user.password},#{user.department.id},#{user.grade},#{user.agree}")
//	void saveWithHashing(@Param("user") User user);
	
	
}
