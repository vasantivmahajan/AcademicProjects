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
import javax.persistence.OrderBy;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;




@Entity
@Table(name="USER")
@Component
//@Scope("session")
@PrimaryKeyJoinColumn(name="personID")
public class User extends Person{

	
	@Column(name="emailAddress")
	private String emailAddress;

	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL, mappedBy="user")
	private Set<Memory> memorySet = new HashSet<Memory>();

	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	
	private List<Goal> goalList;
//	
	public User()
	{}
	
//	
//	@ManyToMany(fetch=FetchType.EAGER, mappedBy="user",cascade=CascadeType.ALL)
//	private Set<Offers> offerSet;


//
//	public Set<Offers> getOfferSet() {
//		return offerSet;
//	}
//
//	public void setOfferSet(Set<Offers> offerSet) {
//		this.offerSet = offerSet;
//	}
//
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
