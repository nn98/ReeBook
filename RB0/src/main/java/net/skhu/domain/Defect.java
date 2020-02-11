package net.skhu.domain;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import lombok.Data;

@Data
@Entity
public class Defect implements Serializable {
	
	@EmbeddedId
	DefPK PKset_Book_Content;
	
//	@ManyToOne
//	@JoinColumn(name="id")
//	Book book;
//	
	String contents;
	
}
