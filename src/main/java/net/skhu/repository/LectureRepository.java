package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Lecture;

public interface LectureRepository extends JpaRepository<Lecture, Integer> {

}
