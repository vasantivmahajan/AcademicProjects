package com.webtools.finalproject.pojo;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="ADVERTISER")
public class Advertiser extends Person{
	
//	@OneToMany (fetch=FetchType.LAZY,cascade=CascadeType.ALL)
//	@JoinColumn(name="offerList")
//	private List<Offers> offerList;
//	
//	@OneToMany(fetch=FetchType.EAGER, mappedBy="advertiser", cascade=CascadeType.ALL)
//	private Set<Event> eventSet;
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

	public Advertiser()
	{}
	

	
}
