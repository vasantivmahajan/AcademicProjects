package com.webtools.finalproject.dao;

import java.util.List;

import org.hibernate.Query;

import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.Person.Roles;
import com.webtools.finalproject.pojo.User;

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


}