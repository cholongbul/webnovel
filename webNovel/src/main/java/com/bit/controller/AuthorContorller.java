package com.bit.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit.domain.AuthorVO;
import com.bit.service.AuthorService;

@Controller
public class AuthorContorller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Inject
	private AuthorService authorservice;
	
	//작가 등록 페이지
	@RequestMapping(value="/addauthor", method = RequestMethod.GET)
	public String addauthor() {
		
		logger.info("add get");
		
		return "author/addAuthor";
	}
	
	//작가 등록
	@RequestMapping(value = "/addauthorPOST", method = RequestMethod.POST)
	public String addauthorPOST(AuthorVO author, 
			Model model) throws Exception {

		logger.info("add POST");
		authorservice.creat(author);
		
		return "redirect:/author/authorBoard";
	}
	
	//작가 리스트 페이지
	@RequestMapping(value="/authorBoard", method = RequestMethod.GET)
	public String authorBoard(Model model) throws Exception {
		
		logger.info("Board");
		model.addAttribute("author", authorservice.listAll());
		
		return "author/authorBoard";
	}
	
	//열람
	@RequestMapping(value="/readAuthor", method = RequestMethod.GET)
	public String readAuthor(@RequestParam("a_id") int a_id, 
			Model model) throws Exception {
		
		logger.info("Read");
		model.addAttribute("author", authorservice.read(a_id));
		
		return "author/readAuthor";
	}
	
	//수정 페이지 이동
	@RequestMapping(value="/modifyAuthor", method = RequestMethod.GET)
	public String modifyAuthor(@RequestParam("a_id") int a_id, 
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("author", authorservice.read(a_id));
		
		return "author/modifyAuthor";
	}
	
	//수정
	@RequestMapping(value = "/modifyAuthorPOST", method = RequestMethod.POST)
	public String authormodifyPOST(AuthorVO author, 
			Model model) throws Exception {

		logger.info("Modify POST");
		authorservice.update(author);
		
		return "redirect:/author/authorBoard";
	}
	
}
