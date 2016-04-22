package com.webtools.finalproject.pojo;

import java.util.Date;
import java.util.List;



public class Event {
	
	private int eventId;
	
	
	private String eventDescription;
	
	private Date eventTime;
	

//	private List<Goal> goalList;
//	
	
	private Advertiser advertiser;
	
//	public List<Goal> getGoalList() {
//		return goalList;
//	}
//
//	public void setGoalList(List<Goal> goalList) {
//		this.goalList = goalList;
//	}

	public Date getEventTime() {
		return eventTime;
	} 

	public void setEventTime(Date eventTime) {
		this.eventTime = eventTime;
	}

	public Event()
	{}
	
	public int getEventId() {
		return eventId;
	}



	public void setEventId(int eventId) {
		this.eventId = eventId;
	}



	public String getEventDescription() {
		return eventDescription;
	}



	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}



	
}
