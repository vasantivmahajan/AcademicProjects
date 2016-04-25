package com.webtools.finalproject.pojo;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Entity
@Table(name="USER")
@Component
@PrimaryKeyJoinColumn(name="personID")
public class User extends Person{

	
	@Column(name="emailAddress")
	private String emailAddress;

	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL, mappedBy="user")
	private Set<Memory> memorySet = new HashSet<Memory>();

	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL, mappedBy="user")
	private List<Goal> goalList;
	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL, mappedBy="user")
	private List<Event> eventList;
	
	public List<Event> getEventList() {
		return eventList;
	}

	public void setEventList(List<Event> eventList) {
		this.eventList = eventList;
	}

	public User()
	{}
	
	public List<Goal> getGoalList() {
		return goalList;
	}

	public void setGoalList(List<Goal> goalList) {
		this.goalList = goalList;
	}

	public String getEmailAddress() {
		return emailAddress;
	}
	
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public Set<Memory> getMemorySet() {
		return memorySet;
	}

	public void setMemorySet(Set<Memory> memorySet) {
		this.memorySet = memorySet;
	}


	
	
}
