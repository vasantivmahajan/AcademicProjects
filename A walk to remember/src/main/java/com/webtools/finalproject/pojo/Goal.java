package com.webtools.finalproject.pojo;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Field; 
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Store;  

@Entity
@Table(name="GOAL")
@Indexed
public class Goal {

	@Id
	@GeneratedValue
	@Column(name="goalId",unique=true, nullable = false)
	private int goalId;
	
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	@Column(name="goalDescription")
	private String goalDescription;
	
	@Column(name="loggedTime")
	private String loggedTime;
	
	@Column(name="goalDate")
	private String goalDate;
	
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	
	
//	private Set<Event> eventSet;
//	
//
//	public Set<Event> getEventSet() {
//		return eventSet;
//	}
//
//	public void setEventSet(Set<Event> eventSet) {
//		this.eventSet = eventSet;
//	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getGoalDate() {
		return goalDate;
	}

	public void setGoalDate(String goalDate) {
		this.goalDate = goalDate;
	}

	public Goal()
	{}
	
	public int getGoalId() {
		return goalId;
	}
	public void setGoalId(int goalId) {
		this.goalId = goalId;
	}
	public String getGoalDescription() {
		return goalDescription;
	}
	public void setGoalDescription(String goalDescription) {
		this.goalDescription = goalDescription;
	}

	public String getLoggedTime() {
		return loggedTime;
	}

	public void setLoggedTime(String string) {
		this.loggedTime = string;
	}

	
	
}
