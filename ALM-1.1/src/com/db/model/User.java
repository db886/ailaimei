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
	private Integer age;
	private String address;
	private Long telephone;
	private Long qq;
	private String email;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String pass, Date registtime, String personname, String sex, Integer age) {
		this.username = username;
		this.pass = pass;
		this.registtime = registtime;
		this.personname = personname;
		this.sex = sex;
		this.age = age;
	}

	/** full constructor */
	public User(String username, String pass, Date registtime, String personname, String sex, Integer age,
			String address, Long telephone, Long qq, String email) {
		this.username = username;
		this.pass = pass;
		this.registtime = registtime;
		this.personname = personname;
		this.sex = sex;
		this.age = age;
		this.address = address;
		this.telephone = telephone;
		this.qq = qq;
		this.email = email;
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

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getTelephone() {
		return this.telephone;
	}

	public void setTelephone(Long telephone) {
		this.telephone = telephone;
	}

	public Long getQq() {
		return this.qq;
	}

	public void setQq(Long qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}