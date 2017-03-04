package com.db.model;

/**
 * Xiangmu entity. @author MyEclipse Persistence Tools
 */

public class Xiangmu implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String xiangmuid;
	private String xiangmutupian;
	private String xiangmubiaoti;
	private Integer xiangmujiage;
	private String xiangmushuoming;
	private String xiangmuxiangqing;

	// Constructors

	/** default constructor */
	public Xiangmu() {
	}

	/** minimal constructor */
	public Xiangmu(String xiangmuid, Integer xiangmujiage) {
		this.xiangmuid = xiangmuid;
		this.xiangmujiage = xiangmujiage;
	}

	/** full constructor */
	public Xiangmu(String xiangmuid, String xiangmutupian, String xiangmubiaoti, Integer xiangmujiage,
			String xiangmushuoming, String xiangmuxiangqing) {
		this.xiangmuid = xiangmuid;
		this.xiangmutupian = xiangmutupian;
		this.xiangmubiaoti = xiangmubiaoti;
		this.xiangmujiage = xiangmujiage;
		this.xiangmushuoming = xiangmushuoming;
		this.xiangmuxiangqing = xiangmuxiangqing;
	}

	// Property accessors

	public String getXiangmuid() {
		return this.xiangmuid;
	}

	public void setXiangmuid(String xiangmuid) {
		this.xiangmuid = xiangmuid;
	}

	public String getXiangmutupian() {
		return this.xiangmutupian;
	}

	public void setXiangmutupian(String xiangmutupian) {
		this.xiangmutupian = xiangmutupian;
	}

	public String getXiangmubiaoti() {
		return this.xiangmubiaoti;
	}

	public void setXiangmubiaoti(String xiangmubiaoti) {
		this.xiangmubiaoti = xiangmubiaoti;
	}

	public Integer getXiangmujiage() {
		return this.xiangmujiage;
	}

	public void setXiangmujiage(Integer xiangmujiage) {
		this.xiangmujiage = xiangmujiage;
	}

	public String getXiangmushuoming() {
		return this.xiangmushuoming;
	}

	public void setXiangmushuoming(String xiangmushuoming) {
		this.xiangmushuoming = xiangmushuoming;
	}

	public String getXiangmuxiangqing() {
		return this.xiangmuxiangqing;
	}

	public void setXiangmuxiangqing(String xiangmuxiangqing) {
		this.xiangmuxiangqing = xiangmuxiangqing;
	}

}