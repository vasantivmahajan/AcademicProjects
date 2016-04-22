package com.webtools.finalproject.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.Person.Roles;
import com.webtools.finalproject.pojo.User;

public class GoalDAO extends DAO {

    public GoalDAO() {
    }

   
    
    public void create(Date goalDate, String goalDescription, User user)
             {
    	
        try {
            begin();
            
            Goal goal=new Goal();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String enteredGoalDate = formatter.format(goalDate);
            goal.setGoalDate(enteredGoalDate);
            
            
            goal.setGoalDescription(goalDescription);
            
           DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
     	   //get current date time with Date()
     	   Date date = new Date();     	   
           goal.setLoggedTime(dateFormat.format(date));
           //System.out.println("The goal details are "+goal.getGoalDate()+" "+goal.getGoalDescription()+" "+goal.getLoggedTime());
           List<Goal> goalList=user.getGoalList();
            if(goalList.isEmpty())
            {
            	goalList=new ArrayList<Goal>();
            	
            }
            
           
            goalList.add(goal);
			user.setGoalList(goalList);
			
            getSession().saveOrUpdate(user);
            commit();
//            return user;
           
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
//            return null;
        }
        
      
    }
    
    public List getUserList(long user_id)
    {
    	
    	try {
            begin();
            Query q = getSession().createQuery("from Goal g where user_id =:user_id order by g.goalDate asc");
            q.setParameter("user_id",user_id);
            List l=q.list();
            commit();
            return l;
	
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
    	
    
    }
    

    public User getUserId(String userName)
    {
    	try {
            begin();

            Query q = getSession().createQuery("from User where userName =:userName");
            q.setParameter("userName",userName);
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

   
}