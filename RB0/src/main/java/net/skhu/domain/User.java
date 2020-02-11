package net.skhu.domain;

import javax.persistence.CascadeType;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
@Convert(converter = BooleanToYNConverter.class, attributeName = "agree")
public class User {

	@Id
	int id;
	
	String name;
	
	String password;
	
	int grade;
	
//	@ManyToOne(cascade= {CascadeType.ALL})
//	@JoinColumn(name="id")
//	Department department;
	
//	ManyToOne의 JoinColumn에선 name이 이 테이블의 컬럼명?
	@ManyToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="departmentId")
	Department department;
	
	boolean agree;
	
}
