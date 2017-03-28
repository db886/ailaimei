package com.db.action;

import com.db.model.Page;
import com.db.model.User;
import com.db.service.UserServiceImp;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SelectUserAction extends ActionSupport implements ModelDriven<Page>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Page page;
	private User user;
	private UserServiceImp rsi;
	private String result;
	public String userNameSelect(){
		user = rsi.select(page.getString());
		return SUCCESS;
	}
	
	public String registTimeSelect(){
			page = rsi.select(page.getString(),page);
			return SUCCESS;
	}

	@Override
	public Page getModel() {
		if(page==null){
			page = new Page();
		}
		return page;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserServiceImp getRsi() {
		return rsi;
	}

	public void setRsi(UserServiceImp rsi) {
		this.rsi = rsi;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
}
