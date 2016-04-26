package com.webtools.finalproject.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.User;
import com.webtools.finalproject.pojo.Person.Roles;

public class EventDAO extends DAO {

    public EventDAO() {
    }

   
    
    public Event create(String eventTitle,String eventDescription, String eventTimings, String phoneNumber,String emailAddress, Date eventDate,Advertiser adv)
             {
    	
        try {
            begin();
            
            Event event=new Event();
            event.setEmailAddress(emailAddress);
            event.setEventDescription(eventDescription);
            event.setEventTiming(eventTimings);
            event.setEventTitle(eventTitle);
            event.setPhoneNumber(phoneNumber);
            event.setUserStatus("No Response");
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String date = formatter.format(eventDate);
            event.setEventDate(date);
            event.setAdvertiser(adv);
            
            
            Set<Event> eventset=adv.getEventSet();

            if(eventset.isEmpty())
            {
            	eventset=new HashSet<Event>();
            	
            }
            
            eventset.add(event);
            adv.setEventSet(eventset);
			
            getSession().saveOrUpdate(adv);
            commit();
            return event;
           
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
      
    }
    
    public Advertiser fetchAdvertiserObject(String advUserName)
    {
    	try {
          begin();

          Query q = getSession().createQuery("from Advertiser where userName =:advUserName");
          q.setParameter("advUserName",advUserName);
          Advertiser advertiser=(Advertiser)q.uniqueResult();
          commit();
          return advertiser;
             
      } 
      catch (Exception e) {
          rollback();
          
          e.printStackTrace();
          return null;
      }
  	
    	
    }
    
    
    
    
    public List fetchAllEvents(long personId)
    {
    	try {
            begin();
            
            Query q = getSession().createQuery("from Event where personID =:personId");
           // System.out.println("I am in DAO "+user.getMemorySet().size());
            q.setParameter("personId",personId);
            List advList=q.list();
            //System.out.println("The size of the list is "+advList.size());
            commit();
            return advList;

     
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
            return null;
        }
    	
    	
    }
   
//    public User getUserId(String userName)
//    {
//    	try {
//            begin();
//
//            Query q = getSession().createQuery("from User where userName =:userName");
//            q.setParameter("userName",userName);
//            User user=(User)q.uniqueResult();
//            commit();
//            return user;
//               
//        } 
//        catch (Exception e) {
//            rollback();
//            
//            e.printStackTrace();
//            return null;
//        }
//    	
//    	
//    }

   
}