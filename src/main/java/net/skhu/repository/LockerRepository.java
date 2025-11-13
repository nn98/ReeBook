package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.domain.Locker;

public interface LockerRepository extends JpaRepository<Locker, Integer> {

}