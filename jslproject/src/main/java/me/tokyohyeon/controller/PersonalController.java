package me.tokyohyeon.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;

/**
 * Handles requests for the application home page.
 */
@AllArgsConstructor
@Controller

public class PersonalController 
{

	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String home(Locale locale, Model model) 
	{
		return "project/personal";
	}

}
