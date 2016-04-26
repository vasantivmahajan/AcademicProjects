package com.webtools.finalproject;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.webtools.finalproject.dao.AdminDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
//@RequestMapping(value={"/registerUser.htm","/login.htm","/logout.htm"})
public class RegisterController {
	@RequestMapping(value="/registerUser.htm",method = RequestMethod.POST)
	protected String doSubmitAction(@ModelAttribute("user") User user, HttpServletRequest request,
            HttpServletResponse response) throws Exception {

		
		try {
			UserDAO userDao = new UserDAO();
			
			userDao.create(user.getFirstName(), user.getLastName(),user.getPassword(),user.getUserName(),user.getEmailAddress());
			HttpSession sessionObj = request.getSession();
			sessionObj.setAttribute("personObj" , user);
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			
		}

		return "timeline";
	}

	@RequestMapping(value="/registerUser.htm",method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("user") User user) {

		return "home";
	}
	
	
//	@RequestMapping(value = "/login.htm", method = RequestMethod.POST)
//	protected @ResponseBody String login(@RequestParam("userName") String userName, @RequestParam("password") String password)
//	{
//		try {
//		
//			UserDAO userDao=new UserDAO();
//			Person person=userDao.checkLogin(userName, password);
//			if(person!=null)
//			{
//				return "validCredentials";
//			}
//			else
//			{
//				return "invalidCredentials";
//			}
//			
//		} catch (Exception e) {
//			System.out.println("Exception: " + e.getMessage());
//			return null;
//		}
//	
//	}
	
	@RequestMapping(value = "/checkValidAdvName.htm", method = RequestMethod.POST)
	protected @ResponseBody String checkValidAdvName(@RequestParam("userName") String userName)
	{
		try {
		
			UserDAO userDao = new UserDAO();
			String status=userDao.checkUserName(userName);
			if(status.equalsIgnoreCase("notUnique"))
			{
				return "notUnique";
				
			}
			else 
			{
				return "unique";
			}
			
			
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return null;
		}
	
	}
	
	
	@RequestMapping(value = "/checkValidUserName.htm", method = RequestMethod.POST)
	protected @ResponseBody String checkValidUserName(@RequestParam("userName") String userName)
	{
		try {
		
			UserDAO userDao = new UserDAO();
			String status=userDao.checkUserName(userName);
			if(status.equalsIgnoreCase("notUnique"))
			{
				return "notUnique";
				
			}
			else 
			{
				return "unique";
			}
			
			
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return null;
		}
	
	}
	
	
	@RequestMapping(value="/login.htm",method = RequestMethod.POST)
	protected ModelAndView login(@ModelAttribute("person") Person person, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		ModelAndView mv=new ModelAndView();
		try 
		{
			UserDAO userDao = new UserDAO();
			AdminDAO adminDao=new AdminDAO();
			
			HttpSession sessionObj = request.getSession();
			Person p=userDao.checkLogin(person.getUserName(),person.getPassword());
			if(p!=null)
			{
				
				sessionObj.setAttribute("personObj" , p);
				if(p.getRoles().equals(Person.Roles.USER))
				{
					User u=userDao.getUser(p.getPersonID());
					mv.setViewName("timeline");
					sessionObj.setAttribute("userObj" ,u);
				}
				
				else if(p.getRoles().equals(Person.Roles.ADVERTISER))
				{
					mv.setViewName("advtimeline");
					
				}
				
				else if(p.getRoles().equals(Person.Roles.ADMIN))
				{
					List<Event> events=adminDao.fetchAllEvents();
					
					mv.setViewName("admintimeline");
					mv.addObject("eventList", events);
				}
				else
				{
					System.out.println("The username and password do not match");
					mv.setViewName("admintimeline");
				}
				
			}
			
			else
			{

				System.err.println(">>>>>>>The username and password do not match >>>>>>>>>>");
				mv.setViewName("home");
				
			}
			return mv;
		} 
		catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
			mv.setViewName("home");
			return mv;
		}

		
	}
	
	@RequestMapping(value="/fetchAllEvents.htm",method = RequestMethod.GET)
	protected ModelAndView fetchAllEvents(HttpServletRequest request)
	{
		try {
			UserDAO userDao = new UserDAO();
			HttpSession session=request.getSession();
			User user=(User) session.getAttribute("userObj");
			List<Event> eventList=userDao.fetchUserEventList(user);
			
			List<Event> tempList=new ArrayList<Event>();
			for(int i=0;i<eventList.size();i++)
			{
				if(eventList.get(i).getUserStatus().equalsIgnoreCase("No Response") || eventList.get(i).getUserStatus().equalsIgnoreCase("Accepted"))
				{
					tempList.add(eventList.get(i));
				}
			}
			String flag="eventListReceived";
			ModelAndView mv=new ModelAndView();
			mv.addObject("eventlist", tempList);
			mv.addObject("flag", flag);
			mv.setViewName("timeline");
			return mv;
			
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return null;
		}

	}
	

	@RequestMapping(value = "/acceptEvent.htm", method = RequestMethod.POST)
	protected @ResponseBody String acceptEvent(@RequestParam("eventId") String eventId, @RequestParam("userId") String userId)
	{
		try {
		
			UserDAO userDao = new UserDAO();
			String[] evntId=eventId.split(":");
			
			int eventNumber=Integer.parseInt(evntId[1]);
			long userID=Long.parseLong(userId);
			String status=userDao.sendResponseToAdvertiser(eventNumber, userID);
			if(status.equalsIgnoreCase("alreadyAccepted"))
			{
				return "alreadyAccepted";
				
			}
			else if(status.equalsIgnoreCase("sendToAdvertiser"))
			{
				return "success";
			}
			 
			else
			{
				return null;
			}
			
			
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return null;
		}
	
	}
	
	@RequestMapping(value = "/deleteEvent.htm", method = RequestMethod.POST)
	protected @ResponseBody String deleteEvent(@RequestParam("eventId") String eventId, @RequestParam("userId") String userId)
	{
		try {
		
			UserDAO userDao = new UserDAO();
			String[] evntId=eventId.split(":");
			
			int eventNumber=Integer.parseInt(evntId[1]);
			long userID=Long.parseLong(userId);
			userDao.deleteEvent(eventNumber, userID);
			return "declined";
			
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return null;
		}
	
	}
	
	
	@RequestMapping(value="/login.htm",method = RequestMethod.GET)
	protected String initializeLoginForm(@ModelAttribute("person") Person person) {

		return "home";
	}
	
	
	@RequestMapping(value="/logout.htm")
	public String logOut(HttpServletRequest request,
            HttpServletResponse response) {
		HttpSession obj = request.getSession();
		obj.invalidate();
		return "home";
	}
	
	

}
