package com.bit.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler, ModelAndView ModelAndView) throws Exception {
		HttpSession httpSession = request.getSession();
		ModelMap modelMap = ModelAndView.getModelMap();
		Object userVO = modelMap.get("user");
		
		if (userVO != null) {
			logger.info("new login success");
			httpSession.setAttribute(LOGIN, userVO);
			
			if (request.getParameter("useCookie") != null) {
			logger.info("remember login");
			//쿠키 생성
			Cookie loginCookie = new Cookie("loginCookie", httpSession.getId());
			loginCookie.setPath("../index");
			loginCookie.setMaxAge(60*60*24*7);//60초(1분)*60(1시간)*24(하루)*7(일주일)
			//전송
			response.addCookie(loginCookie);	
						
			}
			
			Object destination = httpSession.getAttribute("destination");
			response.sendRedirect(destination != null ? (String) destination : "../index");
		}
		
		
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler) throws Exception {

		HttpSession httpSession = request.getSession();
		//기존의 로그인 정보 제거
		
		if (httpSession.getAttribute(LOGIN) != null) {
			logger.info("clear login data before");
			httpSession.removeAttribute(LOGIN);
		}
		
		return true;
		
	}
	

}
