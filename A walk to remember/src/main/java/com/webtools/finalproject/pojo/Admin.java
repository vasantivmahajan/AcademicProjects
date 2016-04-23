package com.webtools.finalproject.pojo;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="ADMIN")
@Component
@PrimaryKeyJoinColumn(name="personid")
public class Admin extends Person{
	
	public Admin()
	{}
	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	private Set<Goal> goalSet;
	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	private Set<Event> eventSet;

	public Set<Goal> getGoalSet() {
		return goalSet;
	}

	public void setGoalList(Set<Goal> goalSet) {
		this.goalSet = goalSet;
	}

	public Set<Event> getEventSet() {
		return eventSet;
	}

	public void setEventSet(Set<Event> eventSet) {
		this.eventSet = eventSet;
	}

	
	
}
