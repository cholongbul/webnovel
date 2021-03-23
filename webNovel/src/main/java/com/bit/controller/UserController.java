package com.bit.controller;

import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.bit.domain.UserVO;
import com.bit.service.UserService;

@Controller
public class UserController {

	@Inject
	private UserService userService;

	// 회원가입 페이지
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() throws Exception {
		return "userinfo/register";
	}

	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		return "userinfo/login";
	}

	// 프로필 페이지
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profileGET() throws Exception {
		return "userinfo/profile";
	}

	// 회원가입 처리
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String registerPOST(UserVO user, RedirectAttributes redirectAttributes) throws Exception {

		String hashedpwd = BCrypt.hashpw(user.getPwd(), BCrypt.gensalt());
		user.setPwd(hashedpwd);
		userService.register(user);
		redirectAttributes.addFlashAttribute("msg", "REGISTERED");

		return "redirect:login";

	}

	// 로그인 처리
	@RequestMapping(value = "userinfo/userLogin", method = RequestMethod.POST)
	public void loginPOST(UserVO user, HttpSession httpSession, Model model) throws Exception {

		UserVO userloginVO = userService.login(user);

		if (userloginVO == null || !BCrypt.checkpw(user.getPwd(), userloginVO.getPwd())) {
			return;
		}

		model.addAttribute("user", userloginVO);

	}

	// 로그아웃 처리
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession)
			throws Exception {

		Object object = httpSession.getAttribute("login");
		if (object != null) {
			UserVO userVO = (UserVO) object;
			httpSession.removeAttribute("login");
			httpSession.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				userService.keepLogin(userVO.getU_id(), "none", new Date());
			}
		}

		return "/user/logout";
	}
}
