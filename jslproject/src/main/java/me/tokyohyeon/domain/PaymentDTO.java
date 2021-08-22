package me.tokyohyeon.domain;

import lombok.Data;

@Data
public class PaymentDTO {
	private int inventoryid, img_id, sub_total, coupon, shipping, total, p_id, p_amount, single_rate, total_rate, p_price;
	private String userid, p_name, email, tel, postcode, detailaddress, address, extraaddress;
}
