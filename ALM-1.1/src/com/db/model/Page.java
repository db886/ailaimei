package com.db.model;

import java.util.List;

public class Page {
	private int nowPage;
	private int eachPageCount = 10;
	private int allPageCount;
	private int allDataCount;
	private List<Wenda> nowPageData;
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getEachPageCount() {
		return eachPageCount;
	}
	public void setEachPageCount(int eachPageCount) {
		this.eachPageCount = eachPageCount;
	}
	public int getAllPageCount() {
		return allPageCount;
	}
	public void setAllPageCount(int allPageCount) {
		this.allPageCount = allPageCount;
	}
	public int getAllDataCount() {
		return allDataCount;
	}
	public void setAllDataCount(int allDataCount) {
		this.allDataCount = allDataCount;
	}
	public List<Wenda> getNowPageData() {
		return nowPageData;
	}
	public void setNowPageData(List<Wenda> nowPageData) {
		this.nowPageData = nowPageData;
	}

	
	
}
