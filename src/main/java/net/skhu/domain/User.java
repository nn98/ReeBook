package net.skhu.domain;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "name", nullable = false, length = 100)
	private String name;

	@Column(name = "password_hash", length = 255)
	private String passwordHash;

	@Column(name = "email", length = 320)
	private String email;

	@Column(name = "phone", length = 20)
	private String phone;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "department_id")
	private Department department;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "locker_id")
	private Locker locker;

	@Column(name = "grade")
	private Integer grade;

	@Convert(converter = BooleanToYNConverter.class)
	@Column(name = "agree")
	private Boolean agree;

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPasswordHash() {
		return passwordHash;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public Department getDepartment() {
		return department;
	}

	public Locker getLocker() {
		return locker;
	}

	public Integer getGrade() {
		return grade;
	}

	public Boolean getAgree() {
		return agree;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public void setLocker(Locker locker) {
		this.locker = locker;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public void setAgree(Boolean agree) {
		this.agree = agree;
	}
}
