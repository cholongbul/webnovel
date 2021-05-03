package com.bit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bit.domain.SapmleVO;

@RestController
public class AjaxContorller {
	
	@RequestMapping("/hello")
	public String sayHello() {
		
		return "Hello World";
		
	}
	
	@RequestMapping("/sendVO")
	public SapmleVO sendVO() {
		
		SapmleVO sample = new SapmleVO();
		sample.setSampleNO(1);
		sample.setFirstName("더블");
		sample.setLastNmae("에스");

	return sample;
	}
	
	@RequestMapping("/sendList")
	public List<SapmleVO> sendList() {
		
		List<SapmleVO> samples = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			SapmleVO sample = new SapmleVO();
			sample.setSampleNO(i);
			sample.setFirstName("더블");
			sample.setLastNmae("에스"+ i);
			samples.add(sample);
			
		}
		
		return samples;
	}
	
	@RequestMapping("/sendMap")
	public Map<Integer, SapmleVO> sendMap() {
		
		 Map<Integer, SapmleVO> sampleMap = new HashMap();
		for (int i = 0; i < 10; i++) {
			SapmleVO sample = new SapmleVO();
			sample.setFirstName("더블");
			sample.setLastNmae("에스"+ i);
			sample.setSampleNO(i);
			sampleMap.put(i, sample);
			
		}
		
		return sampleMap;
	}

}
