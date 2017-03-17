package com.db.model;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String no;
	private String dome;
	private String username;
	private Integer price;
	private String status;
	private String xiangmutupian;
	private String xiangmuid;

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** full constructor */
	public Orders(String no, String dome, String username, Integer price, String status, String xiangmutupian,
			String xiangmuid) {
		this.no = no;
		this.dome = dome;
		this.username = username;
		this.price = price;
		this.status = status;
		this.xiangmutupian = xiangmutupian;
		this.xiangmuid = xiangmuid;
	}

	// Property accessors

	public String getNo() {
		return this.no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getDome() {
		return this.dome;
	}

	public void setDome(String dome) {
		this.dome = dome;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getXiangmutupian() {
		return this.xiangmutupian;
	}

	public void setXiangmutupian(String xiangmutupian) {
		this.xiangmutupian = xiangmutupian;
	}

	public String getXiangmuid() {
		return this.xiangmuid;
	}

	public void setXiangmuid(String xiangmuid) {
		this.xiangmuid = xiangmuid;
	}

}