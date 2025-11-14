package net.skhu.domain;

import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "assign")
public class Assign {

	@EmbeddedId
	private AssignPK id;

	@MapsId("userId")
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;

	@MapsId("lockerId")
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "locker_id")
	private Locker locker;

	@Column(name = "assigned_at")
	private LocalDateTime assignedAt;

	public AssignPK getId() {
		return id;
	}

	public User getUser() {
		return user;
	}

	public Locker getLocker() {
		return locker;
	}

	public LocalDateTime getAssignedAt() {
		return assignedAt;
	}

	public void setId(AssignPK id) {
		this.id = id;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setLocker(Locker locker) {
		this.locker = locker;
	}

	public void setAssignedAt(LocalDateTime assignedAt) {
		this.assignedAt = assignedAt;
	}
}
