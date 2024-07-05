package com.forge.hackathon.services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forge.hackathon.models.CalendarModel;
import com.forge.hackathon.repositories.CalendarRepository;


import java.util.Optional;

@Service
public class CalendarService {
	@Autowired
	private static CalendarRepository calendarRepository;
	
	public CalendarModel obtenerUnoPorId(Long id) {
		Optional<CalendarModel> calendarFounded = calendarRepository.findById(id);
		return calendarFounded.get();
	}
}
	
	