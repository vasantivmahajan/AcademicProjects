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

import com.webtools.finalproject.dao.EventDAO;
import com.webtools.finalproject.dao.MemoryDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Event;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
//@RequestMapping(value={"/addAdvertisent.htm", "/viewEvents.htm"})
public class AdvertiserController {

	@RequestMapping(value="/addAdvertisent.htm",method = RequestMethod.POST)
	protected ModelAndView doSubmitAction(@ModelAttribute("Event") Event event,  HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		
		try {
		   
			EventDAO eventDao = new EventDAO();
			String advUserName=request.getParameter("advUserName");
			Advertiser adv=eventDao.fetchAdvertiserObject(advUserName);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = dateFormat.parse(event.getEventDate());
			Event e=eventDao.create(event.getEventTitle(),event.getEventDescription(),event.getEventTiming(), event.getPhoneNumber(), event.getEmailAddress(), date,adv);
			ModelAndView mv=new ModelAndView("advtimeline","addedEvent",e);
			String flag="EventAdded";
			mv.addObject("flag", flag);
			return mv;
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	@RequestMapping(value="/addAdvertisent.htm")
	public String initializeForm(@ModelAttribute("event") Event event) {
		return "advtimeline";
	}
	
	@RequestMapping(value="/viewEvents.htm")
	public ModelAndView fetchAllEvents(HttpServletRequest request)
	{
		EventDAO eventDao = new EventDAO();
		HttpSession session=request.getSession();
		Person p=(Person) session.getAttribute("personObj");
		List events=eventDao.fetchAllEvents(p.getPersonID());
		ModelAndView mv=new ModelAndView("advtimeline","eventList",events);
		String flag="fetchEvents";
		mv.addObject("flag", flag);
		return mv;
		
	}

}
