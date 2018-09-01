package mz.ciuem.uclinica.auth.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mz.ciuem.uclinica.auth.User;
import mz.ciuem.uclinica.auth.service.UserService;

@Controller
@RequestMapping("autenticacao/utilizador")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(method = RequestMethod.POST, value = {"/",""})
	public ModelAndView registarUtilizador(@Valid User user, BindingResult bindresult, RedirectAttributes redirectAttributes){
		
		if(bindresult.hasErrors()){
			System.out.println(bindresult.toString());
			
		}else{
			userService.saveOrUpdate(user);
			redirectAttributes.addFlashAttribute("messageVisible", "true");
		}
		
		ModelAndView modelAndView = new ModelAndView("redirect:/autenticacao/utilizador");
		
		return modelAndView;
		
	}
	
	@RequestMapping(method = RequestMethod.GET, value = {"/",""})
	public ModelAndView addUtilizador(User user){
		
		ModelAndView modelAndView = new ModelAndView("/autenticacao/user");
		return modelAndView;
		
	}

}
