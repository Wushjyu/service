package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RefundVo {
	
	private int refund_no;
	private int reser_no;
	private int m_no;
	private int refund_price;
	private String refund_date;
}
