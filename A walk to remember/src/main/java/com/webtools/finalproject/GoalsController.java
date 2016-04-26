package com.webtools.finalproject;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webtools.finalproject.dao.GoalDAO;
import com.webtools.finalproject.pojo.Goal;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.User;


@Controller
@RequestMapping(value={"/setGoal.htm"})
public class GoalsController {

	@RequestMapping(value="/setGoal.htm",method = RequestMethod.POST)
	protected ModelAndView doSubmitAction(@ModelAttribute("goal") Goal goal,  HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		
		try {
			
			String userName= request.getParameter("userName");
		    
			GoalDAO goalDAO = new GoalDAO();
			User user=goalDAO.getUserId(userName);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = dateFormat.parse(goal.getGoalDate());
			
			goalDAO.create(date,goal.getGoalDescription(),user);
			
			List l=goalDAO.getUserList(user.getPersonID());
			ModelAndView mv = new ModelAndView("timeline", "list", l);
			String flag="CreatedGoal";
			mv.addObject("flag", flag);
			return mv;
			
//			return "timeline";
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	@RequestMapping(value="/setGoal.htm")
	public String initializeForm(@ModelAttribute("goal") Goal goal) {
		return "home";
	}

}
