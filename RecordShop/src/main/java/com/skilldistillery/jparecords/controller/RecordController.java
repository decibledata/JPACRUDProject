package com.skilldistillery.jparecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jparecords.data.RecordsDAO;
import com.skilldistillery.jparecords.entity.RecordStore;

@Controller
public class RecordController {

	@Autowired
	private RecordsDAO recordsdao;
	
	//Home Page
	@GetMapping(path = {"/", "index.do"})
	public String goIndex(Model model) {
		return "index";
	}
	
	//Record Creation Form
	@RequestMapping(path = {"newrecord.do"})
	public String goNewRecord(Model model) {
		return "newrecord";
	}
	
	//Result Page
	@RequestMapping(path = {"result.do"})
	public String goResult(Model model) {
		return "result";
	}
	
	//Pass to JSP
	@RequestMapping(path = "findrecordbyid.do", method = RequestMethod.GET)
	public String findRecordById(@RequestParam("id") int id, Model model) {
		List<RecordStore> record = recordsdao.findRecordById(id);
		if(record != null) {
			model.addAttribute("record", record);
			model.addAttribute("message", "record found");
		} else {
			model.addAttribute("message", "record not found");
		}
		return "result";
	}
	
}
