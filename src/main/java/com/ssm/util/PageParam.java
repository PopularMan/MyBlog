package com.ssm.util;

import java.util.Map;

public class PageParam {
	  private Integer pageNumber;
	  private Integer limit;
	  private Integer startIndex;
	  private Map<String,Object> param;

	public Map<String, Object> getParam()
	{
		return param;
	}

	public void setParam(Map<String, Object> param)
	{
		this.param = param;
	}

	public Integer getPageNumber() {
 		
		return pageNumber;

	  }
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getStartIndex() {
		System.out.println("起始下标"+startIndex);
		return  startIndex;
	}
	public PageParam(Integer pageNumber, Integer limit) {
		super();
		this.pageNumber = pageNumber;
		this.limit = limit;
		this.startIndex=(pageNumber-1)*limit;
	}

	  

}
