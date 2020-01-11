package net.skhu.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class User {

	@Id
	int sn;
	
	String name;
	
	int grade;
	
	
	
}
