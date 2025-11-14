package net.skhu.repository;

import java.util.List;
import java.util.Optional;
import net.skhu.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findByEmail(String email);

	List<User> findByDepartment_Id(Long departmentId);

	List<User> findByLocker_Id(Long lockerId);
}
