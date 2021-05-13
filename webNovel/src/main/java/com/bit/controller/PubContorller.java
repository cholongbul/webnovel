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

import com.bit.commons.paging.PageCounter;
import com.bit.commons.paging.SearchCriteria;
import com.bit.domain.PublisherVO;
import com.bit.service.PubService;

@Controller
public class PubContorller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Inject
	private PubService pubservice;
	
	//등록 페이지
	@RequestMapping(value="/addPub", method = RequestMethod.GET)
	public String addpub() {
		
		logger.info("add get");
		
		return "pub/addPub";
	}
	
	//등록
	@RequestMapping(value = "/addPubPOST", method = RequestMethod.POST)
	public String addpubPOST(PublisherVO pub, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("add POST");
		pubservice.creat(pub);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/pubBoard";
	}
	
	//리스트 페이지
	@RequestMapping(value="/pubBoard", method = RequestMethod.GET)
	public String pubBoard(Model model,
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria
			) throws Exception {
		
		logger.info("Board");
		PageCounter pageCounter = new PageCounter();
		pageCounter.setCriteria(searchCriteria);
		pageCounter.setTotalCount(pubservice.countPubs(searchCriteria));
		
		model.addAttribute("pubs", pubservice.listCriteria(searchCriteria));
		model.addAttribute("pageCounter", pageCounter);
		
		return "pub/pubBoard";
	}
	
	//조회
	@RequestMapping(value="/pubView", method = RequestMethod.GET)
	public String pubview( @RequestParam("p_id") int p_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("View");
		model.addAttribute("pub", pubservice.read(p_id));
		
		return "pub/pubView";
	}
	
	
	
	//수정 페이지 이동
	@RequestMapping(value="/modifyPub", method = RequestMethod.GET)
	public String modifypub(@RequestParam("p_id") int p_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("Pub", pubservice.read(p_id));
		
		return "pub/modifypub";
	}
	
	//수정
	@RequestMapping(value = "/modifypubPOST", method = RequestMethod.POST)
	public String pubmodifyPOST(PublisherVO pub, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		pubservice.update(pub);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getKeyword());
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/pubBoard";
	}
	
	//삭제
	@RequestMapping(value = "/pubremove", method = RequestMethod.POST)
	public String pubremove(@RequestParam("p_id") int p_id, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		pubservice.delete(p_id);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getPage());
		redirectAttributes.addFlashAttribute("msg", "delSuccess");
		
		return "redirect:/pubBoard";
	}
	
}
