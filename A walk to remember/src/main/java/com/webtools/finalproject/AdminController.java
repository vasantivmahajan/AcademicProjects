package com.webtools.finalproject;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.webtools.finalproject.dao.AdminDAO;
import com.webtools.finalproject.dao.EventDAO;
import com.webtools.finalproject.dao.MemoryDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
//@RequestMapping(value={"/addAdvertisent.htm", "/viewEvents.htm"})
public class AdminController {

	@RequestMapping(value="/viewParticipants.htm",method = RequestMethod.GET)
	protected ModelAndView doSubmitAction(HttpServletRequest request)  {
		ModelAndView mv=new ModelAndView();
		try {
		   
			AdminDAO adminDao=new AdminDAO();
			//HttpSession session=request.getSession();
			List<Goal> goals=adminDao.fetchAllGoals();
			System.out.println("The size of the goallist is "+goals.size());
			mv.setViewName("admintimeline");
			mv.addObject("goalList", goals);
			String flag="goalsFetched";
			mv.addObject("flag", flag);
			//session.setAttribute("goalList",goals);
			return mv;
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("error");
			
			return mv;
		}

	}
	
	
	
	@RequestMapping(value="/fetchGoal.htm",method = RequestMethod.GET)
	protected ModelAndView fetchGoals()  {
		ModelAndView mv=new ModelAndView();
		try {
		   
			AdminDAO adminDao=new AdminDAO();
			List<Goal> goals=adminDao.fetchAllGoals();
			//System.out.println("The size of the goallist is "+goals.size());
			mv.setViewName("admintimeline");
			mv.addObject("goalList", goals);
			String flag="goalsListFetched";
			mv.addObject("flag", flag);
			
			return mv;
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("error");
			
			return mv;
		}

	}

	
//	@RequestMapping(value = "fetchResults.htm",method = RequestMethod.POST, produces="application/json")
//	public @ResponseBody List<Event> getSearchResultViaAjax(@RequestBody Goal goal ) {
//		System.out.println("I have reached the controller");
//		
//		try {
//		
//		AdminDAO adminDao=new AdminDAO();
//		
//		List<Event> eventList=adminDao.fetchAllGoalsUsingSearchString(goal.getGoalDescription());
//		
//		System.out.println("I have received the list "+eventList.size());
//
//		return eventList;
//		}
//		
//		
//		catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		}
//	
//
//	}
	
	
	@RequestMapping(value="/viewMatchingEvents.htm",method = RequestMethod.POST)
	protected ModelAndView getEventResults(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		try {
			   
			AdminDAO adminDao=new AdminDAO();
			String goalDescription=request.getParameter("goalDescription");
			List<Event> eventList=adminDao.fetchAllGoalsUsingSearchString(goalDescription);
			System.out.println("The size of the goallist is "+eventList.size());
			List<Goal> goals=adminDao.fetchAllGoals();
			mv.addObject("goalList", goals);
			mv.addObject("matchingEventList", eventList);
			String flag="matchedListObtained";
			mv.addObject("flag", flag);
//			String flag2="matchedListObtained";
//			mv.addObject("flag2", flag2);
			mv.setViewName("admintimeline");
			return mv;
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("error");
			
			return mv;
		}
	}
}
