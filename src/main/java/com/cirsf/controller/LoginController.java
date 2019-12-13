package com.cirsf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {
	
	
	@RequestMapping(value = "/index", method = RequestMethod.POST)
    public String showHomeApplication2() {
        return "index";
    }
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String init() {
        return "home";
    }

	@RequestMapping(value = "/", method = RequestMethod.POST)
    public String init2() {
        return "home";
    }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return "home";
    }
	
	
	
	
}
