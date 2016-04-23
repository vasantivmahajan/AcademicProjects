package com.webtools.finalproject;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webtools.finalproject.dao.AdminDAO;
import com.webtools.finalproject.dao.AdvertiserDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Admin;
import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
@RequestMapping("/registerAdmin.htm")
public class RegisterAdminController {
	
	@RequestMapping(value="/registerAdmin.htm",method = RequestMethod.POST)
	protected ModelAndView doSubmitAction(@ModelAttribute("admin") Admin admin, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		ModelAndView mv =new ModelAndView();
		
		try {
			AdminDAO adminDao = new AdminDAO();
			
			adminDao.create(admin.getFirstName(),admin.getLastName(),admin.getPassword(),admin.getUserName());
			List<Event> events=adminDao.fetchAllEvents();
			System.out.println("The size of the eventlist is "+events.size());
//			List<Goal> goals=adminDao.fetchAllGoals();
//			System.out.println("The size of the goallist is "+goals.size());
			mv.setViewName("admintimeline");
//			mv.addObject("goalList", goals);
			mv.addObject("eventList", events);
			HttpSession sessionObj = request.getSession();
			sessionObj.setAttribute("personObj" , admin);
			mv.setViewName("admintimeline");
			return mv;
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return mv;
		}

		
	}

	@RequestMapping(value="/registerAdmin.htm",method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("admin") Admin admin) {

		return "home";
	}

}
