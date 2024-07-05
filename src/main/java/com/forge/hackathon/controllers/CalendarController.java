package com.forge.hackathon.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.forge.hackathon.models.CalendarModel;
import com.forge.hackathon.repositories.CalendarRepository;
import com.forge.hackathon.services.CalendarService;

@Controller
public class CalendarController {
	@Autowired
	private static CalendarService calendarService;
	
	@Autowired
	private static CalendarRepository calendarRepository;
	
	
	@GetMapping("/")
		public String index(Model model) {
	List<CalendarModel> calendarModel = CalendarService.findAll();
	model.addAttribute(calendarModel)
	}
	
	
	
	
	
	
	
	@GetMapping("/view")
	public String showEvent(@PathVariable("id") Long id, Model model) {
		List<CalendarModel> calendarModel = calendarService.findAll();
		
		model.addAttribute("calendarModel", calendarModel);
		return "view.jsp";
	}
	

}
