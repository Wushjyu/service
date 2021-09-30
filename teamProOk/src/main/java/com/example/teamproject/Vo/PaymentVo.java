package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentVo {
	private int pay_no;
	private int reser_no;
	private int m_no;
	private int pay_price;
	private String m_name;
	private String pay_date;
	private String pay_status;
	private String refund_date;
}
