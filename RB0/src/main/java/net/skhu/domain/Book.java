package net.skhu.domain;

import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
@Convert(converter = BooleanToYNConverter.class, attributeName = "agree")
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	String title;
	
	String author;
	
	String publisher;
	
	boolean available;
	
}