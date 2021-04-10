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

import com.bit.domain.WebplatformVO;
import com.bit.service.WebService;

@Controller
public class WebContorller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Inject
	private WebService webservice;
	
	//등록 페이지
	@RequestMapping(value="/addWeb", method = RequestMethod.GET)
	public String addweb() {
		
		logger.info("add get");
		
		return "web/addWeb";
	}
	
	//등록
	@RequestMapping(value = "/addWebPOST", method = RequestMethod.POST)
	public String addwebPOST(WebplatformVO web, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("add POST");
		webservice.creat(web);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/webBoard";
	}
	
	//리스트 페이지
	@RequestMapping(value="/webBoard", method = RequestMethod.GET)
	public String webBoard(Model model) throws Exception {
		
		logger.info("Board");
		model.addAttribute("webs", webservice.listAll());
		
		return "web/webBoard";
	}
	
	//조회
	@RequestMapping(value="/webView", method = RequestMethod.GET)
	public String webview( @RequestParam("w_id") int w_id, Model model) throws Exception {
		
		logger.info("View");
		model.addAttribute("web", webservice.read(w_id));
		
		return "web/webView";
	}
	
	
	
	//수정 페이지 이동
	@RequestMapping(value="/modifyWeb", method = RequestMethod.GET)
	public String modifyweb(@RequestParam("w_id") int w_id, 
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("Web", webservice.read(w_id));
		
		return "web/modifyweb";
	}
	
	//수정
	@RequestMapping(value = "/modifywebPOST", method = RequestMethod.POST)
	public String webmodifyPOST(WebplatformVO web, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		webservice.update(web);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/webBoard";
	}
	
	//삭제
	@RequestMapping(value = "/webremove", method = RequestMethod.POST)
	public String webremove(@RequestParam("w_id") int w_id, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		webservice.delete(w_id);
		redirectAttributes.addFlashAttribute("msg", "delSuccess");
		
		return "redirect:/webBoard";
	}
	
}
