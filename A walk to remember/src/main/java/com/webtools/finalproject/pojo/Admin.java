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
@PrimaryKeyJoinColumn(name="personID")
public class Admin extends Person{
	
	Admin()
	{}
	
	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	private List<Goal> goalList;
	
	
	private Set<Event> eventSet;

	
	
}
