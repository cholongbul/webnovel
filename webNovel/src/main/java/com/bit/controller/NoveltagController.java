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
public class NoveltagController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoveltagController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/noveltagBoard", method = RequestMethod.GET)
	public String noveltagBoard() {

		return "noveltag/noveltagBoard";
	}
	
	@RequestMapping(value = "/addnoveltag", method = RequestMethod.GET)
	public String addnoveltag() {

		return "noveltag/addnoveltag";
	}
	
}
