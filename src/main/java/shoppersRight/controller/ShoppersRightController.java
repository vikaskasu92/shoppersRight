package shoppersRight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import shoppersRight.dao.ShoppersRightDAO;
import shoppersRight.exceptionHandling.InvalidDataException;
import shoppersRight.model.LoginForm;
import shoppersRight.model.RegistrationForm;
import shoppersRight.model.SellerForm;

@Controller
public class ShoppersRightController {
	
	@Autowired
	ShoppersRightDAO shoppersRightDAO;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("main");
		model.addObject("displayType", "newLogin");
		return model;
	}
	
	@RequestMapping(value = "/logon", method = RequestMethod.POST)
	public @ResponseBody ModelAndView logon(LoginForm loginForm, HttpServletRequest request) throws InvalidDataException{
		ModelAndView model = new ModelAndView("main");
		model.addObject("credentialError", true);
		List<LoginForm> userCredentials =  shoppersRightDAO.retrieveUsers(loginForm);
		for(LoginForm retrievedData : userCredentials) {
			if(retrievedData.getPassword().equals(loginForm.getPassword())) {
				request.getSession().setAttribute("loggedInUser", retrievedData.getUsername());
				if(retrievedData.getUserType().equals("Buyer")) {
					model.addObject("displayType", "buyer");
				}else {
					model.addObject("displayType", "seller");
				}
				return model;
			}
		}
		return model;
	}
	
	@RequestMapping(value = "/registerNewUser", method = RequestMethod.POST)
	public @ResponseBody ModelAndView registerNewUser(RegistrationForm registrationForm) throws InvalidDataException{
		ModelAndView model = new ModelAndView("main");
		shoppersRightDAO.saveUsers(registrationForm);
		return model;
	}
	
	@RequestMapping(value = "/addProductsToDB", method = RequestMethod.POST)
	public @ResponseBody ModelAndView addProductsToDB(SellerForm sellerForm, HttpServletRequest request) throws InvalidDataException{
		ModelAndView model = new ModelAndView("main");
		String loggedInUser = (String) request.getSession().getAttribute("loggedInUser");
		shoppersRightDAO.saveSellerProducts(sellerForm,loggedInUser);
		return model;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public @ResponseBody ModelAndView logout(HttpServletRequest request){
		ModelAndView model = new ModelAndView("main");
		request.getSession().removeAttribute("loggedInUser"); 
		return model;
	}
	
}
