package com.green.evalBbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.evalBbs.dao.IEvalBbsDao;

@Controller
public class EvalBbsController {

	@Autowired
	private IEvalBbsDao dao;
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		
		model.addAttribute("list", dao.getList());
		
		return "list";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		String regdate = request.getParameter("regdate");
		
		dao.write(title, content, writer, regdate);
		
		return "redirect:list";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("bno") String bno, Model model) {
		
		model.addAttribute("dto", dao.getDto(bno));
		
		return "detail";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("bno") String bno) {
		
		dao.delete(bno);
		
		return "redirect:list";
	}
	
}
