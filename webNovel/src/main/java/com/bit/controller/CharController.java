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
public class CharController {
	
	private static final Logger logger = LoggerFactory.getLogger(CharController.class);
	
	//�����ι� �Խ���
	@RequestMapping(value = "/charBoard", method = RequestMethod.GET)
	public String charBoard() {

		
		return "char/charBoard";
	}
	
	
	//�����ι� ���
	@RequestMapping(value = "/addchar", method = RequestMethod.GET)
	public String addchar() {

		
		return "char/addchar";
	}
	
	//�����ι� ��ȸ
	@RequestMapping(value = "/charview", method = RequestMethod.GET)
	public String charview() {

		
		return "char/charview";
	}
	
}
