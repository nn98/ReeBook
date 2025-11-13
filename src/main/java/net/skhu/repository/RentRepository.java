package net.skhu.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Rent;

public interface RentRepository extends JpaRepository<Rent, Integer> {
	
	default List<Integer> findAllBookId(){
		List<Rent> rlist=this.findAll();
		List<Integer> blist=new ArrayList();
		for(Rent r:rlist) blist.add(r.getBook().getId());
		return blist;
	}

	default List<Rent> findByUserId(int id){
		List<Rent> re=new ArrayList();
		for(Rent r:this.findAll())
			if(r.getUser().getId()==id)
				re.add(r);
		return re;
	}
}
