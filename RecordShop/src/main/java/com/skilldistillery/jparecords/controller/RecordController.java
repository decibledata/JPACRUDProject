package com.skilldistillery.jparecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jparecords.data.RecordsDAO;
import com.skilldistillery.jparecords.entity.RecordStore;

@Controller
public class RecordController {

	@Autowired
	private RecordsDAO recordsdao;
	
	//Home Page
	@RequestMapping(path = {"/", "index.do"})
	public String goIndex(Model model) {
		return "index";
	}
	
	//Result Page
	@GetMapping("/result/{id}")
	public String goResult(@PathVariable int id, Model model) {
		RecordStore record = recordsdao.findRecordById(id);
		model.addAttribute("record", record);
		return "result";
	}
	
	//Record Creation Form
	@RequestMapping(path = "newrecord.do", method = RequestMethod.GET)
	public String goNewRecord(Model model) {
		model.addAttribute("newRecord", new RecordStore());
		return "newrecord";
	}
	
	@GetMapping("/inventory.do")
	public String goInventory(Model model) {
//		List<RecordStore> store = recordsdao.findAll();
//		model.addAttribute("store", store);
		return "inventory";
	}
	
}
