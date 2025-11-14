package net.skhu.repository;

import java.util.List;
import net.skhu.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {

	List<Book> findByTitleContainingIgnoreCase(String keyword);
}
