package com.jeysan.cpf.decision.entity;

import java.io.Serializable;

public class Flow1ViewPK implements Serializable {

	private Long id;
	private Integer inType;

	public Flow1ViewPK() {

	}

	public Flow1ViewPK(Long id, Integer inType) {
		this.id = id;
		this.inType = inType;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getInCause() {
		return inType;
	}

	public void setInCause(Integer inType) {
		this.inType = inType;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		final Flow1ViewPK other = (Flow1ViewPK) obj;
		
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;

		if (inType == null) {
			if (other.inType != null)
				return false;
		} else if (!inType.equals(other.inType))
			return false;
		
		return true;
	}

	@Override
	public int hashCode() {
		final int PRIME = 31;
		int result = 1;
		result = PRIME * result + ((id == null) ? 0 : id.hashCode());
		result = PRIME * result + ((inType == null) ? 0 : inType.hashCode());
		return result;
	}

}