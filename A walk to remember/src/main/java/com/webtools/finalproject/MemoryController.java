package com.webtools.finalproject;

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

import com.webtools.finalproject.dao.MemoryDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Memory;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
@RequestMapping(value={"/postMemory.htm","/post.htm"})
public class MemoryController {

	@RequestMapping(value="/post.htm",method = RequestMethod.POST)
	protected ModelAndView doSubmitAction(@ModelAttribute("memory") Memory memory,  HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		
		try {
			
			String userName= request.getParameter("userName");
		    
			MemoryDAO memoryDao = new MemoryDAO();
			User user=memoryDao.getUserId(userName);
			
			User u=memoryDao.create(memory.getMemoryDescription(),memory.getMemoryDate(),user);
		//	System.out.println("the user is "+u.getFirstName()+" and the number of memories are "+u.getMemorySet().size());
			List memoryList=memoryDao.fetchAllMemories(u);
			
			//System.out.println("The list fetched from databse has "+memoryList.size());
			ModelAndView mv = new ModelAndView("timeline", "memories", memoryList);
			String flag="CreatedNew";
			mv.addObject("flag", flag);
			return mv;
			
//			return "timeline";
		    
		} 
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	@RequestMapping(value="/postMemory.htm")
	public String initializeForm(@ModelAttribute("memory") Memory memory) {
		return "postMemory";
	}

}
