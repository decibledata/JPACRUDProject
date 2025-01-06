package com.skilldistillery.jparecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jparecords.data.RecordsDAO;
import com.skilldistillery.jparecords.entity.RecordStore;

@Controller
public class RecordController {

	@Autowired
	private RecordsDAO recordsdao;

	// Home Page
	@GetMapping({ "/", "index.do" })
	public String goIndex(Model model) {
		return "index";
	}

	// Result Page
	@GetMapping("result.do")
	public String goResult(Model model, @RequestParam("id") int id) {
		RecordStore record = recordsdao.findRecordById(id);
		model.addAttribute("record", record);
		return "views/result";
	}

	// Record Creation Form
	@GetMapping("newRecord.do")
	public String goNewRecord(Model model) {
		return "views/newrecord";
	}

	// Form Submission
	@PostMapping("newRecord.do")
	public String createNewRecord(@ModelAttribute RecordStore newRecord, Model model) {
		System.out.println("Record Recieved: " + newRecord);
		try {
			RecordStore createdRecord = recordsdao.create(newRecord);
			if (createdRecord!= null) {
				System.out.println("Record successfully added to the database");
			model.addAttribute("message", "Record Added Successfully!");
		}else {
			System.out.println("Record creation failed.");
			model.addAttribute("message", "Failed to Add Record.");
		}
			return "redirect:/inventory.do";
		} catch (Exception e) {
			model.addAttribute("message", "Error adding record" + e.getMessage());
			return "redirect:/inventory.do";
		}
	}

	// Update Record
	@PostMapping("updateRecord.do")
	public String goUpdateRecord(@RequestParam("id") int id, @ModelAttribute RecordStore updatedRecord) {
		recordsdao.update(id, updatedRecord);
		return "redirect:inventory.do";
	}

	// Delete Record By Id
	@GetMapping("deleteRecord.do")
	public String deleteRecord(@RequestParam("id") int id) {
		recordsdao.deleteById(id);
		return "redirect:inventory.do";
	}

	// List all records
	@GetMapping("inventory.do")
	public String goInventory(Model model) {
		List<RecordStore> store = recordsdao.findAll();
		System.out.println("Fetched Records: " + store);
		model.addAttribute("store", store);
		return "views/inventory";
	}

}
