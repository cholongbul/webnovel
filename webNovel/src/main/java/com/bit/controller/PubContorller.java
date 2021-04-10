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

import com.bit.domain.PublisherVO;
import com.bit.service.PubService;

@Controller
public class PubContorller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Inject
	private PubService pubservice;
	
	//��� ������
	@RequestMapping(value="/addPub", method = RequestMethod.GET)
	public String addpub() {
		
		logger.info("add get");
		
		return "pub/addPub";
	}
	
	//���
	@RequestMapping(value = "/addPubPOST", method = RequestMethod.POST)
	public String addpubPOST(PublisherVO pub, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("add POST");
		pubservice.creat(pub);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");
		
		return "redirect:/pubBoard";
	}
	
	//����Ʈ ������
	@RequestMapping(value="/pubBoard", method = RequestMethod.GET)
	public String pubBoard(Model model) throws Exception {
		
		logger.info("Board");
		model.addAttribute("pubs", pubservice.listAll());
		
		return "pub/pubBoard";
	}
	
	//��ȸ
	@RequestMapping(value="/pubView", method = RequestMethod.GET)
	public String pubview( @RequestParam("p_id") int p_id, Model model) throws Exception {
		
		logger.info("View");
		model.addAttribute("pub", pubservice.read(p_id));
		
		return "pub/pubView";
	}
	
	
	
	//���� ������ �̵�
	@RequestMapping(value="/modifyPub", method = RequestMethod.GET)
	public String modifypub(@RequestParam("p_id") int p_id, 
			Model model) throws Exception {
		
		logger.info("Modify get");
		model.addAttribute("Pub", pubservice.read(p_id));
		
		return "pub/modifypub";
	}
	
	//����
	@RequestMapping(value = "/modifypubPOST", method = RequestMethod.POST)
	public String pubmodifyPOST(PublisherVO pub, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		pubservice.update(pub);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		
		return "redirect:/pubBoard";
	}
	
	//����
	@RequestMapping(value = "/pubremove", method = RequestMethod.POST)
	public String pubremove(@RequestParam("p_id") int p_id, 
			RedirectAttributes redirectAttributes) throws Exception {

		logger.info("Modify POST");
		pubservice.delete(p_id);
		redirectAttributes.addFlashAttribute("msg", "delSuccess");
		
		return "redirect:/pubBoard";
	}
	
}