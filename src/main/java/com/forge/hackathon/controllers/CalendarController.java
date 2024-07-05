package com.forge.hackathon.controllers;

import java.util.Date;
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
		List<CalendarModel> calendarModel = calendarService.allCalendaries();
		model.addAttribute("calendarModel", calendarModel);
		return "index.jsp";
	}
	
	@GetMapping("/view/{fecha}")
	public String showEvent(@PathVariable("fecha") Date fecha, Model model) {
		List<CalendarModel> calendarModel = calendarRepository.findByFecha(fecha);
		model.addAttribute("calendarModel", calendarModel);
		return "view.jsp";
	}

	@GetMapping("/view/detail/{id}")
	public String showDetail(@PathVariable("id") long id, Model model) {
		CalendarModel actualCalendar = calendarService.obtenerUnoPorId(id);
		model.addAttribute("calendarModel", actualCalendar);
		return "unique.jsp";
	}
	
}
