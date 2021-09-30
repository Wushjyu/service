package com.example.teamproject.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Fac_important_Vo {
	
	private int finfo_no;
	private String finfo_name;
	private int r_number1;
	private String r_date; 
	private Timestamp sys_date;    
	private String r_times; 
	private int finfo_price;  
	private String check_value;  
	
}
