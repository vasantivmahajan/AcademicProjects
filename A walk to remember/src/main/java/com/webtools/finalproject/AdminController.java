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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	protected ModelAndView doSubmitAction()  {
		ModelAndView mv=new ModelAndView();
		try {
		   
			AdminDAO adminDao=new AdminDAO();
			List<Goal> goals=adminDao.fetchAllGoals();
			System.out.println("The size of the goallist is "+goals.size());
			mv.setViewName("admintimeline");
			mv.addObject("goalList", goals);
			String flag="goalsFetched";
			mv.addObject("flag", flag);
			return mv;
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("error");
			
			return mv;
		}

	}
	

	
}
