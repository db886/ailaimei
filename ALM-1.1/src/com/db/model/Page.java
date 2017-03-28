package com.db.model;

import java.util.List;

public class Page {
	private int nowPage;
	private int eachPageCount = 10;
	private int allPageCount;
	private int allDataCount;
	private int start;
	private int end;
	private String string;
	private List<?> nowPageData;
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
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getString() {
		return string;
	}
	public void setString(String string) {
		this.string = string;
	}
	public List<?> getNowPageData() {
		return nowPageData;
	}
	public void setNowPageData(List<?> nowPageData) {
		this.nowPageData = nowPageData;
	}
}
