package com.skilldistillery.jparecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jparecords.data.RecordsDAO;
import com.skilldistillery.jparecords.entity.RecordStore;

@Controller
public class RecordController {

	@Autowired
	private RecordsDAO recordsdao;
	
	//Home Page
	@GetMapping({"/", "index.do"})
	public String goIndex(Model model) {
		return "index";
	}
	
	//Result Page
	@GetMapping("result.do")
	public String goResult(Model model, @RequestParam("id") int id) {
		RecordStore record = recordsdao.findRecordById(id);
		model.addAttribute("record", record);
		return "views/result";
	}
	
	//Record Creation Form
	@GetMapping("newrecord.do")
	public String goNewRecord(Model model) {
		model.addAttribute("newRecord", new RecordStore());
		return "newrecord";
	}
	//List all records
	@GetMapping("inventory.do")
	public String goInventory(Model model) {
		List<RecordStore> store = recordsdao.findAll();
		model.addAttribute("store", store);
		return "views/inventory";
	}
	
}
