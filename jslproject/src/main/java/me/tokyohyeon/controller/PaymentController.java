package me.tokyohyeon.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.PaymentDTO;
import me.tokyohyeon.service.PaymentServiceimpl;

@Controller
@Log4j
@RequestMapping("/project/*")
@AllArgsConstructor
public class PaymentController {

	private PaymentServiceimpl service;

	/*
	 * @GetMapping ("/list") public void list(Model model) { log.info("list");
	 * 
	 * model.addAttribute("list",service.getList()); }
	 */
	
	@GetMapping("/checkout")
	public String inv() {
		
		return "/project/checkout";
	}
	

	@GetMapping("/cart")
	public String cart(Model model, HttpSession session) {
		List<PaymentDTO> inv_list = service.inventory_List(session);
		model.addAttribute("userid",session.getAttribute("userid"));
		model.addAttribute("tel",session.getAttribute("tel"));
		model.addAttribute("email",session.getAttribute("email"));
		model.addAttribute("postcode",session.getAttribute("postcode"));
		model.addAttribute("address",session.getAttribute("address"));
		model.addAttribute("extraaddress",session.getAttribute("extraaddress"));
		model.addAttribute("detailaddress",session.getAttribute("detailaddress"));
		model.addAttribute("inv_list", inv_list);
		return "/project/cart";
	}
	
	@PostMapping("/checkout")
	public String checkout(Model model, PaymentDTO vo) {
		/*
		 * log.info(vo); List<PaymentDTO> inv_list = new ArrayList<PaymentDTO>();
		 * inv_list.add(vo); log.info(inv_list); model.addAttribute("inv_list",
		 * inv_list);
		 */
		return "/project/checkout";
	}

	
	@ResponseBody
	@PostMapping(value="/payment")
	public String success_pay(@RequestBody Map<String, Object> param) {
		log.info("---------------------------------------------------"+param);
		return "success";
	}
}
