package com.bit.commons.exception;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CommonExeptionAdviece {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonExeptionAdviece.class);
	
	@ExceptionHandler(Exception.class)
	public ModelAndView commonException(Exception e) {
		
		logger.info(e.toString());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exception", e);
		modelAndView.setViewName("/commons/commonError");
		
		return modelAndView;
		
	} 

}
