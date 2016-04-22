package com.webtools.finalproject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webtools.finalproject.dao.UserDAO;
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
			sessionObj.setAttribute("userObj" , user);
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			
		}

		return "timeline";
	}

	@RequestMapping(value="/registerUser.htm",method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("user") User user) {

		return "home";
	}
	
	
	@RequestMapping(value="/login.htm",method = RequestMethod.POST)
	protected String login(@ModelAttribute("person") Person person, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		try 
		{
			UserDAO userDao = new UserDAO();
			HttpSession sessionObj = request.getSession();
//			System.out.println("Person details"+person.getUserName()+person.getPassword());
			//userDao.create(user.getFirstName(), user.getLastName(),user.getPassword(),user.getUserName(),user.getEmailAddress());
			Person p=userDao.checkLogin(person.getUserName(),person.getPassword());
			if(p!=null)
			{
				sessionObj.setAttribute("personObj" , p);
				return "timeline";
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
	
	
	
	@RequestMapping(value="/login.htm",method = RequestMethod.GET)
	public String initializeLoginForm(@ModelAttribute("person") Person person) {

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
