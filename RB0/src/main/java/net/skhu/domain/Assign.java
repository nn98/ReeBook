package net.skhu.domain;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import lombok.Data;

@Data
@Entity
public class Assign implements Serializable {
	
	@EmbeddedId
	AssignPK PKset_User_Locker;
	
}
