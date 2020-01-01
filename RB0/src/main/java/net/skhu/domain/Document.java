package net.skhu.domain;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import lombok.Data;

@Data
@Entity
public class Document implements Serializable {
	
	@EmbeddedId
	DocPK PK;
	
//	@Id
//	@ManyToOne
//	@JoinColumn(name="id")
//	Book book;
//	
//	@Id
//	@ManyToOne
//	@JoinColumn(name="id")
//	Lecture lecture;
	
	String kind;
	
}
