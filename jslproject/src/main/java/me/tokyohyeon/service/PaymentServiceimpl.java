package me.tokyohyeon.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.PaymentDTO;
import me.tokyohyeon.mapper.PaymentMapper;
@Log4j
@Service
@AllArgsConstructor
public class PaymentServiceimpl implements PaymentService {

	private PaymentMapper mapper;
	@Override
	public List<PaymentDTO> inventory_List(HttpSession session) {
		session.setAttribute("userid", "3");
		session.setAttribute("email", "xx@x.x");
		session.setAttribute("postcode", "111-11");
		session.setAttribute("address", "1234");
		session.setAttribute("extraaddress", "대전");
		session.setAttribute("detailaddress", "집");
		session.setAttribute("tel", "12-22-33");
		log.info(session);
		return mapper.inventory_List(session.getAttribute("userid").toString());
	}

}
