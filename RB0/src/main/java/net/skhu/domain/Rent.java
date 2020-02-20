package net.skhu.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.Data;

@Data
@Entity
public class Rent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	@OneToOne
	@JoinColumn(name="id")
	User user;
	
	@Column(name="uid")
	int uid;
	
	@OneToOne
	@JoinColumn(name="id")
	Book book;

	@Column(name="bid")
	int bid;
	
//	private DateFormat format = new SimpleDateFormat("YYYY-MM-dd");
	
	Date rentDate;
	
	Date returnDate;
	
}
