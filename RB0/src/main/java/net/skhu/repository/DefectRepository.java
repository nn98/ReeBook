package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Defect;

public interface DefectRepository extends JpaRepository<Defect, Integer> {

}
