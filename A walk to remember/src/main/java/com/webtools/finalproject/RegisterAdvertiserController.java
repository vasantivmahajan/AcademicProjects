package com.webtools.finalproject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webtools.finalproject.dao.AdvertiserDAO;
import com.webtools.finalproject.dao.UserDAO;
import com.webtools.finalproject.pojo.Advertiser;
import com.webtools.finalproject.pojo.Person;
import com.webtools.finalproject.pojo.User;


@Controller
@RequestMapping("/registerAdvertiser.htm")
public class RegisterAdvertiserController {
	
	@RequestMapping(value="/registerAdvertiser.htm",method = RequestMethod.POST)
	protected String doSubmitAction(@ModelAttribute("advertiser") Advertiser advertiser, HttpServletRequest request,
            HttpServletResponse response) throws Exception {

		
		try {
			AdvertiserDAO advDao = new AdvertiserDAO();
			
			advDao.create(advertiser.getFirstName(),advertiser.getLastName(),advertiser.getPassword(),advertiser.getUserName());
			HttpSession sessionObj = request.getSession();
			sessionObj.setAttribute("personObj" , advertiser);
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			
		}

		return "advtimeline";
	}

	@RequestMapping(value="/registerAdvertiser.htm",method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("advertiser") Advertiser advertiser) {

		return "home";
	}

}
