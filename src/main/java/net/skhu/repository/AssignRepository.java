package net.skhu.repository;

import java.util.List;
import net.skhu.domain.Assign;
import net.skhu.domain.AssignPK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssignRepository extends JpaRepository<Assign, AssignPK> {

	List<Assign> findByUser_Id(Long userId);

	List<Assign> findByLocker_Id(Long lockerId);
}
