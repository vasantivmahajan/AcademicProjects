package com.webtools.finalproject.dao;

import java.util.List;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;
import com.webtools.finalproject.pojo.Person.Roles;

public class AdvertiserDAO extends DAO {

    public AdvertiserDAO() {
    }

   
    
    public void create(String firstName, String lastName, String password, String username)
             {
    	
        try {
            begin();
            
            Advertiser adv=new Advertiser();
            adv.setUserName(username);
            adv.setLastName(lastName);
            adv.setPassword(password);
            adv.setFirstName(firstName);
            
            adv.setRoles(Roles.ADVERTISER);
            getSession().saveOrUpdate(adv);
            
            commit();
            
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
        }
        
      
    }
//    
//    public List<User> fetchParticipant()
//    {
//    	try {
//            begin();
//            Query q = getSession().createQuery("from User where ");
//            List<Event> eventList=q.list();
//           
//            commit();
//        } 
//        catch (Exception e) {
//            rollback();
//            
//            e.printStackTrace();
//        }
//        
//    }
    
    public Advertiser getAdvertiser(String advFN)
    {
    	
    	try
    	{
    		begin();
            Query q = getSession().createQuery("from Advertiser where firstName=:firstName");
            q.setString("firstName", advFN);
            Advertiser adv=(Advertiser) q.uniqueResult();
            commit();
            return adv;
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
    	
    }



}