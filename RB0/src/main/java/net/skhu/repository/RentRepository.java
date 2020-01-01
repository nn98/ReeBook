package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Rent;

public interface RentRepository extends JpaRepository<Rent, Integer> {

}
