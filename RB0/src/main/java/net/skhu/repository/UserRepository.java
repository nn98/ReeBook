package net.skhu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	public default List<User> findAllWithoutPW(){
		List<User> l=this.findAll();
		for(User u:l)u.setPassword("UNSATISFIED");
		return l;
	}

}
