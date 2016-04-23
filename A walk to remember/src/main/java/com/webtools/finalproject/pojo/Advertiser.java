package com.webtools.finalproject.pojo;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity
@Table(name="ADVERTISER")
@PrimaryKeyJoinColumn(name="personID")
@Component
public class Advertiser extends Person{
	

	@OneToMany (fetch=FetchType.EAGER,cascade=CascadeType.ALL, mappedBy="advertiser" )
	private Set<Event> eventSet;
	
	
//	@OneToMany (fetch=FetchType.LAZY,cascade=CascadeType.ALL)
//	@JoinColumn(name="offerList")
//	private List<Offers> offerList;
//	

//
//	public List<Offers> getOfferList() {
//		return offerList;
//	}
//
//	public void setOfferList(List<Offers> offerList) {
//		this.offerList = offerList;
//	}
//
//	public Set<Event> getEventSet() {
//		return eventSet;
//	}
//
//	public void setEventSet(Set<Event> eventSet) {
//		this.eventSet = eventSet;
//	}

	public Set<Event> getEventSet() {
		return eventSet;
	}


	public void setEventSet(Set<Event> eventSet) {
		this.eventSet = eventSet;
	}


	public Advertiser()
	{}
	

	
}
