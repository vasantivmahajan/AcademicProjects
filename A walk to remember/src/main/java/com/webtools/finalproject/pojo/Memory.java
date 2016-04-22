package com.webtools.finalproject.pojo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="MEMORY")
public class Memory {
	

	@Id
	@GeneratedValue
	@Column(name="memoryId",unique=true, nullable = false)
	private int memoryId;
	
	@Column(name="memoryDescription")
	private String memoryDescription;
	
	@Column(name="memoryDate")
	private int memoryDate;
	
//	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
//	private User user;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;


	public void setMemoryDate(int memoryDate) {
		this.memoryDate = memoryDate;
	}

	
	public Memory()
	{}
	
	

	public int getMemoryDate() {
		return memoryDate;
	}
	
	public int getMemoryId() {
		return memoryId;
	}
	public void setMemoryId(int memoryId) {
		this.memoryId = memoryId;
	}
	public String getMemoryDescription() {
		return memoryDescription;
	}
	public void setMemoryDescription(String memoryDescription) {
		this.memoryDescription = memoryDescription;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
//	

//
	
}
