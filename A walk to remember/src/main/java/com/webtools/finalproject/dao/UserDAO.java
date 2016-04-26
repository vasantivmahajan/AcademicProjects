package com.webtools.finalproject.dao;

import java.util.List;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;
import com.webtools.finalproject.pojo.Person.Roles;

public class UserDAO extends DAO {

    public UserDAO() {
    }

   
    
    public void create(String firstName, String lastName, String password, String username, String emailaddress)
             {
    	
        try {
            begin();
            
            User user=new User();
            user.setUserName(username);
            user.setLastName(lastName);
            user.setPassword(password);
            user.setFirstName(firstName);
            user.setEmailAddress(emailaddress);
            user.setRoles(Roles.USER);
            getSession().saveOrUpdate(user);
            
            commit();
            
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
        }
        
      
    }

    public void createAdvertiser(String firstName, String lastName, String password, String username)
    {

    	try {
   begin();

   
   Advertiser advertiser=new Advertiser();
   advertiser.setUserName(username);
   advertiser.setLastName(lastName);
   advertiser.setPassword(password);
   advertiser.setFirstName(firstName);
   advertiser.setRoles(Roles.ADVERTISER);
   getSession().saveOrUpdate(advertiser);
   
   commit();
   
} 
catch (Exception e) {
   rollback();
   
   e.printStackTrace();
}


}
    
    public Person checkLogin(String userName,String password)
    {
    	
    	try {
            begin();
            
            Query q = getSession().createQuery("from Person where userName =:userName AND password=:password");
            q.setParameter("userName",userName);
            q.setParameter("password",password);
            Person p=(Person)q.uniqueResult();
            commit();
            if(p!=null)
            {
            	return p;
            	
            }
            
            else
            {
            	return null;
            	
            }
           
            
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
            return null;
        }
        
    }
    
    public User getUser(long personId)
    {
    	try {
            begin();
            
            Query q = getSession().createQuery("from User where personID =:personId");
            q.setParameter("personId",personId);
            
            User u=(User)q.uniqueResult();
            commit();
        
           return u;
            
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
            return null;
        }
        
    	
    }
    
    public List<Event> fetchUserEventList(User user)
    {
    	try {
            begin();
            
            Query q = getSession().createQuery("Select eventList from User as u where u.personID=:personId");
            q.setParameter("personId",user.getPersonID());
            
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
    
    public String sendResponseToAdvertiser(int eventId, long userID)
    {
    	try {
    		
            begin();
            Query q = getSession().createQuery("from User where personID=:value");
            q.setParameter("value",userID);
            User user=(User)q.uniqueResult();
            List<Event> usersEventList= user.getEventList();
            System.out.println("The users event list size is "+usersEventList.size());
            String flag = null;
            for(int i=0;i<usersEventList.size();i++)
            {
            	if(usersEventList.get(i).getEventId()==eventId)
            	{
            		if(usersEventList.get(i).getUserStatus().equalsIgnoreCase("No Response"))
            		{
            			usersEventList.get(i).setUserStatus("Accepted");
            			 getSession().merge(user);
            			 commit();
            			 
            			 flag= "sendToAdvertiser";
            		}
            		
            		else if(usersEventList.get(i).getUserStatus().equalsIgnoreCase("Accepted"))
            		{
            			flag= "alreadyAccepted";
            		}
            		
            		 else 
                     {
                     	
                     	flag= null;
                     }
            		
            	}
            }
            return flag;
              
             
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
            return null;
        }
    	
    	
    }
    
    public void deleteEvent(int eventNumber, long userId)
    {
    	
try {
    		
            begin();
//            Query q = getSession().createQuery("from Event where eventId=:value");
//            q.setParameter("value",eventNumber);
//            Event event=(Event)q.uniqueResult();
            
//            System.out.println("The event is "+event.getEventDescription());
            Query q1 = getSession().createQuery("from User where personID=:userId");
            q1.setParameter("userId",userId);
            User user=(User)q1.uniqueResult();
            System.out.println("The fetched user is "+user.getFirstName());
            List<Event> usersEventList= user.getEventList();
            System.out.println("The users event list size is "+usersEventList.size());
            for(int i=0;i<usersEventList.size();i++)
            {
            	if(usersEventList.get(i).getEventId()==eventNumber)
            	{
            		usersEventList.get(i).setUserStatus("Declined");
            		
            	}
            }
            
            getSession().merge(user);
            commit();
            
             
        } 
        catch (Exception e) {
            rollback();
            
            e.printStackTrace();
//            return null;
        }
    	
    }


}