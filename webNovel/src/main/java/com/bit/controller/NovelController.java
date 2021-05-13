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
import com.bit.domain.Novel_allVO;
import com.bit.service.NovelService;

@Controller
public class NovelController {
	
	private static final Logger logger = LoggerFactory.getLogger(NovelController.class);
	
	@Inject
	private NovelService novelservice;
	
	//등록 페이지
	@RequestMapping(value="/addNovel", method = RequestMethod.GET)
	public String addnovel() {
		
		logger.info("add get");
		
		return "novel/addNovel";
	}
	
	//등록
	@RequestMapping(value = "/addNovelPOST", method = RequestMethod.POST)
	public String addnovelPOST(Novel_allVO novel, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("add POST");
		novelservice.creat(novel);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/novelBoard";
	}
	
	//리스트 페이지
	@RequestMapping(value="/novelBoard", method = RequestMethod.GET)
	public String novelBoard(Model model,
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria
			) throws Exception {
		
		logger.info("Board");
		PageCounter pageCounter = new PageCounter();
		searchCriteria.setPerPageNum(15);
		pageCounter.setCriteria(searchCriteria);
		pageCounter.setTotalCount(novelservice.countNovels(searchCriteria));
		
		model.addAttribute("novel_alls", novelservice.listCriteria(searchCriteria));
		model.addAttribute("pageCounter", pageCounter);
		
		return "novel/novelBoard";
	}
	
	//조회
	@RequestMapping(value="/novelView", method = RequestMethod.GET)
	public String novelview( @RequestParam("n_id") int n_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("View");
		model.addAttribute("novel_all", novelservice.read(n_id));
		
		return "novel/novelView";
	}
	
	
	
	//수정 페이지 이동
	@RequestMapping(value="/modifyNovel", method = RequestMethod.GET)
	public String modifynovel(@RequestParam("n_id") int n_id, 
			@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("Novel", novelservice.read(n_id));
		
		return "novel/modifynovel";
	}
	
	//수정
	@RequestMapping(value = "/modifynovelPOST", method = RequestMethod.POST)
	public String novelmodifyPOST(Novel_allVO novel, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		novelservice.update(novel);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getKeyword());
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/novelBoard";
	}
	
	//삭제
	@RequestMapping(value = "/novelremove", method = RequestMethod.POST)
	public String novelremove(@RequestParam("n_id") int n_id, 
			SearchCriteria searchCriteria,
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		novelservice.delete(n_id);
		redirectAttributes.addAttribute("page", searchCriteria.getPage());
		redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		redirectAttributes.addAttribute("keyword", searchCriteria.getPage());
		redirectAttributes.addFlashAttribute("msg", "delSuccess");
		
		return "redirect:/novelBoard";
	}
	

	
}
