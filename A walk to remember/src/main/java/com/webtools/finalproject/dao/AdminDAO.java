package com.webtools.finalproject.dao;

import java.util.List;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Admin;
import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;
import com.webtools.finalproject.pojo.Person.Roles;

public class AdminDAO extends DAO {

    public AdminDAO() {
    }

   
    
    public void create(String firstName, String lastName, String password, String username)
             {
    	
        try {
            begin();
            
            Admin admin=new Admin();
            admin.setUserName(username);
            admin.setLastName(lastName);
            admin.setPassword(password);
            admin.setFirstName(firstName);
            
            admin.setRoles(Roles.ADMIN);
            getSession().saveOrUpdate(admin);
            
            commit();
            
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
        }
        
      
    }
    
    public List<Event> fetchAllEvents()
    {
    	try {
            begin();
            Query q = getSession().createQuery("from Event");
            List<Event> eventList=q.list();
            commit();
            return eventList;
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
    	
    }
    
    public List<Goal> fetchAllGoals()
    {
    	try {
            begin();
            Query q = getSession().createQuery("from Goal");
            List<Goal> goalList=q.list();
            commit();
            return goalList;
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
    	
    }




}