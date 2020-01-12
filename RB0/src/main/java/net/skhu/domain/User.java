package net.skhu.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class User {

	@Id
	int sn;
	
	String name;
	
	int grade;
	
	@ManyToOne
	@JoinColumn(name="id")
	Department department;
	
}
