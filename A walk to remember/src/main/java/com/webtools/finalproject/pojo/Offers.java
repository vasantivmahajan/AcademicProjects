package com.webtools.finalproject.pojo;

import java.util.Set;



public class Offers {
	
	
	private int offerId;
	private String offerDescription;
	
	
	private Set<User> user;
	
	public Offers()
	{}
	
	
	public int getOfferId() {
		return offerId;
	}
	public void setOfferId(int offerId) {
		this.offerId = offerId;
	}
	public String getOfferDescription() {
		return offerDescription;
	}
	public void setOfferDescription(String offerDescription) {
		this.offerDescription = offerDescription;
	}

	public Set<User> getUser() {
		return user;
	}
	public void setUser(Set<User> user) {
		this.user = user;
	}
	
	
}
