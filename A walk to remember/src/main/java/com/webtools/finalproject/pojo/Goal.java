package com.webtools.finalproject.pojo;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="GOAL")
public class Goal {

	@Id
	@GeneratedValue
	@Column(name="goalId",unique=true, nullable = false)
	private int goalId;
	
	@Column(name="goalDescription")
	private String goalDescription;
	
	@Column(name="loggedTime")
	private String loggedTime;
	
	@Column(name="goalDate")
	private String goalDate;
	
	
	
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
