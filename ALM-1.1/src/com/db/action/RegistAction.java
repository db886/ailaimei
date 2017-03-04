package com.db.action;
import com.db.model.User;
import com.db.service.RegistServiceImp;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegistAction extends ActionSupport implements ModelDriven<User>{
	private static final long serialVersionUID = 1L;
	private User user;
	private RegistServiceImp rsi;
	private String result;
	public String regist(){
		java.util.Date  date=new java.util.Date();
		java.sql.Date  data1=new java.sql.Date(date.getTime());
		user.setRegisttime(data1);
		if(rsi.addUser(user)){
			setResult("注册成功");
			return SUCCESS;
		}
		setResult("用户名已存在");
		return ERROR;
	}
	public String login(){
		if(rsi.login(user)){
			ActionContext.getContext().getSession().put("user", user);
			result = "登录成功";
			return SUCCESS;
		}
		setResult("账号或密码错误");
		return ERROR;
	}
	public String tc(){
		ActionContext.getContext().getSession().remove("user");
		return SUCCESS;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public RegistServiceImp getRsi() {
		return rsi;
	}
	public void setRsi(RegistServiceImp rsi) {
		this.rsi = rsi;
	}
	@Override
	public User getModel() {
		if(user==null){
			user = new User();
		}
		return user;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
