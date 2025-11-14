package net.skhu.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lecture")
public class Lecture {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "professor", nullable = false, length = 100)
	private String professor;

	public Long getId() {
		return id;
	}

	public String getProfessor() {
		return professor;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}
}
