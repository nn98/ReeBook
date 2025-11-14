package net.skhu.repository;

import java.util.List;
import net.skhu.domain.Rent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RentRepository extends JpaRepository<Rent, Long> {

	List<Rent> findByUser_Id(Long userId);

	List<Rent> findByBook_Id(Long bookId);
}
