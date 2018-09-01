package mz.ciuem.uclinica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	
	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public ModelAndView index(){
		
		return new ModelAndView("clinica");
	}
	
	 @GetMapping("/403")
	    public String error403() {
	        return "/error/404";
	    }
	 
	 @GetMapping("/404")
	    public String error404() {
	        return "/error/404";
	    }
	

}
