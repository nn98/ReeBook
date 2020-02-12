package net.skhu.domain;

import javax.persistence.CascadeType;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Convert(converter = BooleanToYNConverter.class, attributeName = "agree")
public class User {

	@Id
	int id;
	
	String name;
	
	@JsonIgnore
	String password;
	
	String email;
	
	String hp;
	
	int grade;
	
//	@ManyToOne(cascade= {CascadeType.ALL})
//	@JoinColumn(name="id")
//	Department department;
	
//	ManyToOne의 JoinColumn에선 name이 이 테이블의 컬럼명?
//	@JsonIgnore
	@ManyToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="departmentId")
	Department department;
	
	boolean agree;
	
}
