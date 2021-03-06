package com.bit.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ChartagController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChartagController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/chartagBoard", method = RequestMethod.GET)
	public String chartagBoard() {

		
		return "chartag/chartagBoard";
	}
	
	@RequestMapping(value = "/addchartag", method = RequestMethod.GET)
	public String addchartag() {

		
		return "chartag/addchartag";
	}
	
}
