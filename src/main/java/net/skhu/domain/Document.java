package net.skhu.domain;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "document")
public class Document {

	@EmbeddedId
	private DocumentId id;

	@MapsId("bookId")
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "book_id")
	private Book book;

	@MapsId("lectureId")
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "lecture_id")
	private Lecture lecture;

	@Column(name = "kind", length = 50)
	private String kind;

	public DocumentId getId() {
		return id;
	}

	public Book getBook() {
		return book;
	}

	public Lecture getLecture() {
		return lecture;
	}

	public String getKind() {
		return kind;
	}

	public void setId(DocumentId id) {
		this.id = id;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public void setLecture(Lecture lecture) {
		this.lecture = lecture;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}
}
