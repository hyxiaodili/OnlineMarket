package com.hy.it.shopping.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class BaseController {
	private Logger logger = LoggerFactory.getLogger(BaseController.class);

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - welcome()");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "demo";

	}

	@RequestMapping(value = "/welcome/{name}", method = RequestMethod.GET)
	public String welcomeName(@PathVariable String name, ModelMap model) {

		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - "
				+ name);
		return "index";

	}

	@RequestMapping("/hello")
	public String helloWorld() {

		String message = "Hello World, Spring 3.0!";
		System.out.println(message);
		return "hello";
	}

	@RequestMapping(value = "/")
	public String showHome(Model model) {

		logger.debug("home page request");
		return "shopping-home";
	}

}