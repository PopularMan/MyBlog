package com.ssm.util;

public class PageParam {
	  private Integer pageNumber;
	  private Integer limit;
	  private Integer startIndex;
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
		System.out.println("起始下表"+startIndex);
		return  startIndex;
	}
	public PageParam(Integer pageNumber, Integer limit) {
		super();
		this.pageNumber = pageNumber;
		this.limit = limit;
		this.startIndex=(pageNumber-1)*limit;
	}

	  

}
