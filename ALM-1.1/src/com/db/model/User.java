package com.db.model;

import java.util.Date;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String username;
	private String pass;
	private Date registtime;
	private String personname;
	private String sex;
	private String birthday;
	private String address;
	private String telephone = "Î´°ó¶¨";
	private String qq = "Î´°ó¶¨";
	private String email = "Î´°ó¶¨";
	private String head = "image/morentouxiang.jpg";

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String pass, Date registtime) {
		this.username = username;
		this.pass = pass;
		this.registtime = registtime;
	}

	/** full constructor */
	public User(String username, String pass, Date registtime, String personname, String sex, String birthday,
			String address, String telephone, String qq, String email, String head) {
		this.username = username;
		this.pass = pass;
		this.registtime = registtime;
		this.personname = personname;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.telephone = telephone;
		this.qq = qq;
		this.email = email;
		this.head = head;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Date getRegisttime() {
		return this.registtime;
	}

	public void setRegisttime(Date registtime) {
		this.registtime = registtime;
	}

	public String getPersonname() {
		return this.personname;
	}

	public void setPersonname(String personname) {
		this.personname = personname;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHead() {
		return this.head;
	}

	public void setHead(String head) {
		this.head = head;
	}

}