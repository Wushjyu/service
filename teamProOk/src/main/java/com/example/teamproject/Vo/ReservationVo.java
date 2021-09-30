package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReservationVo {
	private int reser_no;        
	private int finfo_no;
	private String fm_id;
	private int m_no;
	private String m_name;
	private String finfo_name;
	private String m_nickname;
	private int finfo_price;
	private String finfo_sport;
	private String apply_date;
	private String reser_date;          
	private String reser_time; 
	private String reser_status;
}
