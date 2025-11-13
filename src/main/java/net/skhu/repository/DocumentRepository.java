package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Document;

public interface DocumentRepository extends JpaRepository<Document, Integer> {
	
}