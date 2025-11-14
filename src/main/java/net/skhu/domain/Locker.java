package net.skhu.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "locker")
public class Locker {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "hall_id")
	private Long hallId;

	@Column(name = "floor_no")
	private Integer floorNo;

	@Column(name = "line_no")
	private Integer lineNo;

	@Column(name = "col_no")
	private Integer colNo;

	@Column(name = "row_no")
	private Integer rowNo;

	public Long getId() {
		return id;
	}

	public Long getHallId() {
		return hallId;
	}

	public Integer getFloorNo() {
		return floorNo;
	}

	public Integer getLineNo() {
		return lineNo;
	}

	public Integer getColNo() {
		return colNo;
	}

	public Integer getRowNo() {
		return rowNo;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setHallId(Long hallId) {
		this.hallId = hallId;
	}

	public void setFloorNo(Integer floorNo) {
		this.floorNo = floorNo;
	}

	public void setLineNo(Integer lineNo) {
		this.lineNo = lineNo;
	}

	public void setColNo(Integer colNo) {
		this.colNo = colNo;
	}

	public void setRowNo(Integer rowNo) {
		this.rowNo = rowNo;
	}
}
