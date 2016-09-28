package com.niit.shoppingcart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class HomeController {

@RequestMapping("/home")
public String homePage(Model model){
	model.addAttribute("carousel"=="true");
	return "Home";
}

	@Autowired
	
	CategoryDAO categoryDAO;
	
	@Autowired
	UserDetailsDAO userDetailsDAO;
	
	@Autowired
	UserDetails userDetails;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView m = new ModelAndView("Home");
		
		
		List<Category> categoryList = categoryDAO.list();
		m.addObject("categoryList", categoryList);
		return m;
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userDetails") UserDetails userDetails) {
	
		ModelAndView mv = new ModelAndView("/Home");
		if(userDetailsDAO.get(userDetails.getId())==null){
			userDetailsDAO.save(userDetails);
			mv.addObject("SuccessMessage","You are successfully register");
	}
	else{
			mv.addObject("failureMessage","user exist  with  this id");
		}
		return mv;
	}
	
	@RequestMapping("/Registration")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("userDetails", userDetails);
		mv.addObject("userClickedRegisterHere", true);
		return mv;
	}

	@RequestMapping("/Login")
	public ModelAndView Login() {
		ModelAndView m = new ModelAndView("/Home");
		
		m.addObject("userDetails", userDetails);
		m.addObject("userClickedLoginHere", true);
		return m;
	}
	@RequestMapping("/AboutUs")
	public String aboutPage(){
		return "AboutUs";
		
	}

}
