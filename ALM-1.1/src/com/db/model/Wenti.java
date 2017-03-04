package com.db.model;

/**
 * Wenti entity. @author MyEclipse Persistence Tools
 */

public class Wenti implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String wentiid;
	private String username;
	private String userq;
	private String qtime;

	// Constructors

	/** default constructor */
	public Wenti() {
	}

	/** minimal constructor */
	public Wenti(String wentiid, String username, String qtime) {
		this.wentiid = wentiid;
		this.username = username;
		this.qtime = qtime;
	}

	/** full constructor */
	public Wenti(String wentiid, String username, String userq, String qtime) {
		this.wentiid = wentiid;
		this.username = username;
		this.userq = userq;
		this.qtime = qtime;
	}

	// Property accessors

	public String getWentiid() {
		return this.wentiid;
	}

	public void setWentiid(String wentiid) {
		this.wentiid = wentiid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserq() {
		return this.userq;
	}

	public void setUserq(String userq) {
		this.userq = userq;
	}

	public String getQtime() {
		return this.qtime;
	}

	public void setQtime(String qtime) {
		this.qtime = qtime;
	}

}