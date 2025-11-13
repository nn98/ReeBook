package net.skhu.domain;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.Data;

@Data
public class AssignPK implements Serializable {
	
	@OneToOne
	@JoinColumn(name="uid")
	User user;
	
	@OneToOne
	@JoinColumn(name="lid")
	Locker locker;
	
}
