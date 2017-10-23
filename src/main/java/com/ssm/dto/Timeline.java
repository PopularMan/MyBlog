package com.ssm.dto;

import java.sql.Timestamp;

public class Timeline {
	private String line_id;
	private String line_content;
	private Timestamp line_time;
	private int line_year;
	private int line_month;
	public String getLine_id() {
		return line_id;
	}
	public void setLine_id(String line_id) {
		this.line_id = line_id;
	}
	public String getLine_content() {
		return line_content;
	}
	public void setLine_content(String line_content) {
		this.line_content = line_content;
	}
	public Timestamp getLine_time() {
		return line_time;
	}
	public void setLine_time(Timestamp line_time) {
		this.line_time = line_time;
	}
	public int getLine_year() {
		return line_year;
	}
	public void setLine_year(int line_year) {
		this.line_year = line_year;
	}
	public int getLine_month() {
		return line_month;
	}
	public void setLine_month(int line_month) {
		this.line_month = line_month;
	}
	
}
