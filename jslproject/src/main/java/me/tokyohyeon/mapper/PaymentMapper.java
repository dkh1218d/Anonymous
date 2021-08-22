package me.tokyohyeon.mapper;

import java.util.List;

import me.tokyohyeon.domain.PaymentDTO;

public interface PaymentMapper {
	public List<PaymentDTO> inventory_List(String userid);
}
