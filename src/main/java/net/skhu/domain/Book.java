package net.skhu.domain;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "title", nullable = false, length = 200)
	private String title;

	@Column(name = "author", length = 200)
	private String author;

	@Column(name = "publisher", length = 200)
	private String publisher;

	@Column(name = "volume")
	private Integer volume;

	@Column(name = "rented")
	private Integer rented;

	@Convert(converter = BooleanToYNConverter.class)
	@Column(name = "available")
	private Boolean available;

	public Long getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}

	public String getPublisher() {
		return publisher;
	}

	public Integer getVolume() {
		return volume;
	}

	public Integer getRented() {
		return rented;
	}

	public Boolean getAvailable() {
		return available;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public void setVolume(Integer volume) {
		this.volume = volume;
	}

	public void setRented(Integer rented) {
		this.rented = rented;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}
}
