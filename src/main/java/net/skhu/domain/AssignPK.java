package net.skhu.domain;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class AssignPK implements Serializable {

	@Column(name = "user_id")
	private Long userId;

	@Column(name = "locker_id")
	private Long lockerId;

	public Long getUserId() {
		return userId;
	}

	public Long getLockerId() {
		return lockerId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public void setLockerId(Long lockerId) {
		this.lockerId = lockerId;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof AssignPK)) return false;
		AssignPK that = (AssignPK) o;
		return Objects.equals(userId, that.userId) && Objects.equals(lockerId, that.lockerId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(userId, lockerId);
	}
}
