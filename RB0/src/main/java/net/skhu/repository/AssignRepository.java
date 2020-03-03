package net.skhu.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Assign;

public interface AssignRepository extends JpaRepository<Assign, Integer> {
	default List<Assign> findByUid(int uid) {
		List<Assign> list=this.findAll(), rlist=null;
		for(Assign a:list)
			if(a.getPKset_User_Locker().getUser().getId()==uid)
				if(rlist==null) {
					rlist=new ArrayList();
					rlist.add(a);
				}
				else
					rlist.add(a);
		return rlist;
	}
}