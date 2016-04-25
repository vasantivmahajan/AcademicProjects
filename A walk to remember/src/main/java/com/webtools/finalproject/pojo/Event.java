package com.webtools.finalproject.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;


@Entity
@Table(name="EVENT")
@Indexed
public class Event {

	@Id
	@GeneratedValue
	@Column(name="eventId",unique=true, nullable = false)
	private int eventId;
	
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	@Column(name="eventTitle")
	private String eventTitle;
	
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	@Column(name="eventDescription")
	private String eventDescription;
	 
	@Column(name="eventTiming")
	private String eventTiming;
	
	@Column(name="emailAddress")
	private String emailAddress;
	
	@Column(name="eventDate")
	private String eventDate;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	@ManyToOne(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name = "personId")
	private Advertiser advertiser;
	
	public String getEventDate() {
		return eventDate;
	}


	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}


	public Advertiser getAdvertiser() {
		return advertiser;
	}


	public void setAdvertiser(Advertiser advertiser) {
		this.advertiser = advertiser;
	}



	
	//	private List<Goal> goalList;
//	
	


	public int getEventId() {
		return eventId;
	}


	public void setEventId(int eventId) {
		this.eventId = eventId;
	}


	public String getEventTitle() {
		return eventTitle;
	}


	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}


	public String getEventDescription() {
		return eventDescription;
	}


	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}


	public String getEventTiming() {
		return eventTiming;
	}


	public void setEventTiming(String eventTiming) {
		this.eventTiming = eventTiming;
	}


	public String getEmailAddress() {
		return emailAddress;
	}


	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}


	
}
