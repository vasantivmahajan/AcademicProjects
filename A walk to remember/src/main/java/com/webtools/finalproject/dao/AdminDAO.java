package com.webtools.finalproject.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.search.FullTextSession;
//import org.hibernate.search.FullTextSession;
//import org.hibernate.search.jpa.FullTextEntityManager;
//import org.hibernate.search.jpa.Search;
//import org.hibernate.search.query.dsl.QueryBuilder;
import org.hibernate.search.Search;
import org.hibernate.search.query.dsl.QueryBuilder;

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
    
    public List fetchAllGoalsUsingSearchString(String goalDescription)
    {
    	//System.out.println("Hi I have reached the DAO");
    	Session session = getSession();
    	FullTextSession fullTextSession = Search.getFullTextSession(session);
    	
    	try {
			fullTextSession.createIndexer().startAndWait();
		} catch (InterruptedException e1) {
			
			e1.printStackTrace();
		}
    	
    	try {
			fullTextSession.createIndexer().startAndWait();
			QueryBuilder qb = fullTextSession.getSearchFactory()
				    .buildQueryBuilder().forEntity( Event.class ).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields("eventTitle").matching(goalDescription).createQuery();
				org.hibernate.Query hibQuery = fullTextSession.createFullTextQuery(query, Event.class);
				
				List result = hibQuery.list();
				System.out.println(result.size());
//				commit();
				
				return result;
				

		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;

		}
		
    }


    
    public User getUser(String userLastName)
    {
    	try {
            begin();
            Query q = getSession().createQuery("from User where lastName =:lastName");
            q.setString("lastName", userLastName);
            User user=(User)q.uniqueResult();
            commit();
            return user;
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
    	
    }

    
    public Event getEvent(String eventDescription)
    {
    	try {
            begin();
            Query q = getSession().createQuery("from Event where eventDescription =:eventDescription");
            q.setString("eventDescription", eventDescription);
            Event event=(Event)q.uniqueResult();
            commit();
            return event;
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
    	
    }
    
    public void addEventToUserAndUserToEvent(Event event,User user)
    {
    	try {
            begin();
            List<Event> eventList=user.getEventList();
    		Set<User> userList=event.getUserSet();
        	if(eventList!=null)
    		{
    			
    			eventList=user.getEventList();
    		}
    		else
    		{
    			eventList=new ArrayList<Event>();
    			
    		}
    		
    		eventList.add(event);
    		
    		if(userList!=null)
    		{
    			userList=event.getUserSet();
    			
    		}
    		
    		else
    		{
    			userList=new HashSet<User>();
    		}
    		userList.add(user);
    		getSession().merge(event);
    	    commit();
         
    } 
    catch (Exception e) {
        rollback();
        
        e.printStackTrace();
    }
    
    	
    	
		
    	
    }
	private void createQuery() {
		// TODO Auto-generated method stub
		
	}


}

