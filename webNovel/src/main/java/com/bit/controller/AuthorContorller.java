package com.bit.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit.commons.paging.Criteria;
import com.bit.commons.paging.PageCounter;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.AuthorVO;
import com.bit.service.AuthorService;

@Controller
public class AuthorContorller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Inject
	private AuthorService authorservice;
	
	//작가 등록 페이지
	@RequestMapping(value="/addAuthor", method = RequestMethod.GET)
	public String addauthor() {
		
		logger.info("add get");
		
		return "author/addAuthor";
	}
	
	//작가 등록
	@RequestMapping(value = "/addAuthorPOST", method = RequestMethod.POST)
	public String addauthorPOST(AuthorVO author, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("add POST");
		authorservice.creat(author);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/authorBoard";
	}
	
	//작가 리스트
	@RequestMapping(value="/authorBoard", method = RequestMethod.GET)
	public String authorBoard(Model model, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria
			)throws Exception {
		
		logger.info("Board");
		
		PageCounter pageCounter = new PageCounter();
		pageCounter.setCriteria(searchCriteria);
		pageCounter.setTotalCount(authorservice.countAuthors(searchCriteria));
		
		model.addAttribute("authors", authorservice.listCriteria(searchCriteria));
		model.addAttribute("pageCounter", pageCounter);

		return "author/authorBoard";
	}

	
	//작가 조회
	@RequestMapping(value="/authorView", method = RequestMethod.GET)
	public String authorview( @RequestParam("a_id") int a_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("Board");
		model.addAttribute("author", authorservice.read(a_id));
		
		return "author/authorView";
	}
	
	
	
	//수정 페이지 이동
	@RequestMapping(value="/modifyAuthor", method = RequestMethod.GET)
	public String modifyAuthor(@RequestParam("a_id") int a_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("author", authorservice.read(a_id));
		
		return "author/modifyAuthor";
	}
	
	//수정
	@RequestMapping(value = "/modifyAuthorPOST", method = RequestMethod.POST)
	public String authormodifyPOST(AuthorVO author, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		authorservice.update(author);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getKeyword());
		redirectAttributes.addAttribute("gender", searchCriteria.getGender());
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/authorBoard";
	}
	
	//삭제
	@RequestMapping(value = "/authorRemove", method = RequestMethod.POST)
	public String authorremove(@RequestParam("a_id") int a_id, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		authorservice.delete(a_id);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getPage());
		redirectAttributes.addAttribute("gender", searchCriteria.getPerPageNum());
		redirectAttributes.addFlashAttribute("msg", "delSuccess");
		
		return "redirect:/authorBoard";
	}
	
}
