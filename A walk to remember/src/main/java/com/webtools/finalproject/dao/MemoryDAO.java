package com.webtools.finalproject.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.User;
import com.webtools.finalproject.pojo.Person.Roles;

public class MemoryDAO extends DAO {

    public MemoryDAO() {
    }

   
    
    public User create(String memoryDescription, int date, User user)
             {
    	
        try {
            begin();
            
            Memory memory=new Memory();
            memory.setMemoryDescription(memoryDescription);
            memory.setMemoryDate(date);
            memory.setUser(user);
            
//            Set<Memory> memorySet = new HashSet<Memory>();
            Set<Memory> memorySet =user.getMemorySet();
            if(memorySet.isEmpty())
            {
            	memorySet=new HashSet<Memory>();
            	
            }
            
           
			memorySet.add(memory);
			user.setMemorySet(memorySet);
			//System.out.println("Did I come here "+memory.getMemoryDescription()+memory.getUser());
			
            getSession().saveOrUpdate(user);
            commit();
            return user;
           
        } 
        catch (Exception e) {
            rollback();
            e.printStackTrace();
            return null;
        }
        
      
    }
    
    public List fetchAllMemories(User user)
    {
    	try {
            begin();
            
            Query q = getSession().createQuery("from Memory where user_id =:user_id");
           // System.out.println("I am in DAO "+user.getMemorySet().size());
            q.setParameter("user_id",user.getPersonID());
            List memoryList=q.list();
           // System.out.println("The size of the list is "+memoryList.size());
            commit();
            return memoryList;
            
            
     
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