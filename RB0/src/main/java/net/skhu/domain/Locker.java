package net.skhu.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Locker {
	
	@Id
	int id;
	
	int hid;
	
	int fid;
	
	int lnum;
	
	int lcolumn;
	
	int lrow;
	
}
