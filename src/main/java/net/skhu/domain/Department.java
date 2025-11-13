package net.skhu.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Department {
	
	@Id
	int id;
	
	String name;
}