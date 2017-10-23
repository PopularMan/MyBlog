package com.ssm.util;

import java.sql.Timestamp;
import java.util.List;

import com.ssm.dto.Timeline;

/**
 * 时光轴数据格式实现
 * @author lenovo
 *  2017 {2017 1 }
 */
public class TimelineUtil {
    private int year;
    private List<Timeline> line;
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public List<Timeline> getLine() {
		return line;
	}
	public void setLine(List<Timeline> line) {
		this.line = line;
	}


   	
}
