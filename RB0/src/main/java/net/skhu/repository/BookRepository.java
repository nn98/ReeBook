package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Book;
import net.skhu.model.Pagination;

public interface BookRepository extends JpaRepository<Book, Integer> {

	public Page<Book> findAll(Pageable pageable);
	public default List<Book> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "id"));
		Page<Book> page = findAll(pageable);
		pagination.setRecordCount((int)page.getTotalElements());
		return page.getContent();
	}

}
