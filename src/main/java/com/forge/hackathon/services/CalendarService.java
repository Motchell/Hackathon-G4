package com.forge.hackathon.services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forge.hackathon.repositories.CalendarRepository;

import java.util.Optional;

@Service
public class CalendarService {
	@Autowired
	private static CalendarRepository calendarRepository;
	
	public Calendar obtenerUnoPorId(Long id) {
		Optional<Calendar> calendarFounded = calendarRepository.findById(id);
		return calendarFounded.get();
	}
}
	
	