package net.skhu.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Defect {
	
	@ManyToOne
	@JoinColumn(name="id")
	Book book;
	
	String contents;
	
}
