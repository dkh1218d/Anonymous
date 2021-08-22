package me.tokyohyeon.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import me.tokyohyeon.domain.PaymentDTO;

public interface PaymentService {
	
	public List<PaymentDTO> inventory_List(HttpSession session);
}
