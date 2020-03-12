package net.skhu.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Rent;

public interface RentRepository extends JpaRepository<Rent, Integer> {
	
	default List<Integer> findAllBookId(){
		List<Rent> rlist=this.findAll();
		List<Integer> blist=new ArrayList();
		for(Rent r:rlist) blist.add(r.getBid());
		return blist;
	}

}
