package net.skhu.domain;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
public class DefPK implements Serializable {
	
	@ManyToOne
	@JoinColumn(name="bid")
	Book book;
	
}
