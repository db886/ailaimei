package com.db.model;

/**
 * Wenda entity. @author MyEclipse Persistence Tools
 */

public class Wenda implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String wendaid;
	private String username;
	private String userq;
	private String qtime;
	private String doctorname;
	private String doctora;
	private String atime;

	// Constructors

	/** default constructor */
	public Wenda() {
	}

	/** minimal constructor */
	public Wenda(String wendaid, String username, String qtime, String doctorname, String atime) {
		this.wendaid = wendaid;
		this.username = username;
		this.qtime = qtime;
		this.doctorname = doctorname;
		this.atime = atime;
	}

	/** full constructor */
	public Wenda(String wendaid, String username, String userq, String qtime, String doctorname, String doctora,
			String atime) {
		this.wendaid = wendaid;
		this.username = username;
		this.userq = userq;
		this.qtime = qtime;
		this.doctorname = doctorname;
		this.doctora = doctora;
		this.atime = atime;
	}

	// Property accessors

	public String getWendaid() {
		return this.wendaid;
	}

	public void setWendaid(String wendaid) {
		this.wendaid = wendaid;
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

	public String getDoctorname() {
		return this.doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getDoctora() {
		return this.doctora;
	}

	public void setDoctora(String doctora) {
		this.doctora = doctora;
	}

	public String getAtime() {
		return this.atime;
	}

	public void setAtime(String atime) {
		this.atime = atime;
	}

}