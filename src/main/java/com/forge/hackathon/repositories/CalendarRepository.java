package com.forge.hackathon.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.forge.hackathon.models.CalendarModel;

@Repository
public interface CalendarRepository extends CrudRepository<CalendarModel, Long>{
	List<CalendarModel> findAll();
}