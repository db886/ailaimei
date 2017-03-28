package com.db.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.struts2.ServletActionContext;
import com.db.model.User;
import com.db.service.UserServiceImp;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private static final long serialVersionUID = 1L;
	private User user;
	private UserServiceImp rsi;
	private String result;
	private File touxiang;
	private String touxiangFileName;
	private String touxiangContentType;

	public String regist() {
		user.setRegisttime(new Date());
		if (rsi.addUser(user)) {
			setResult("注册成功");
			return SUCCESS;
		}
		setResult("用户名已存在");
		return ERROR;
	}

	public String login() {
		if ((user = rsi.login(user)) != null) {
			ActionContext.getContext().getSession().put("user", user);
			result = "登录成功";
			return SUCCESS;
		}
		setResult("账号或密码错误");
		return ERROR;
	}

	public String updata() {
		if(user.getId()!=null){
			if (rsi.updataUserService(user)) {
				return SUCCESS;
			}
			return ERROR;
		}else{
			User suser = (User) ActionContext.getContext().getSession().get("user");
			if (suser != null) {
				suser.setPersonname(user.getPersonname());
				suser.setSex(user.getSex());
				suser.setBirthday(user.getBirthday());
				suser.setAddress(user.getAddress());
				if (rsi.updataUserService(suser)) {
					return SUCCESS;
				}
			}
			return ERROR;
		}
	}
	public String xiugaimima(){
		User suser = (User) ActionContext.getContext().getSession().get("user");
		if (suser != null) {
			suser.setPass(user.getPass());
			if (rsi.updataUserService(suser)) {
				return SUCCESS;
			}
		}
		return ERROR;
	}
	
	public String shezhitouxiang(){
		if(touxiang!=null){
			try {
				InputStream is = new FileInputStream(touxiang);
				String sf = "upload";
				String rootp = ServletActionContext.getServletContext().getRealPath(sf);
				SimpleDateFormat formatter1 = new SimpleDateFormat("yyyyMMddHHmmss");
				String sdata = formatter1.format(new Date());
				User suser = (User) ActionContext.getContext().getSession().get("user");
				String fileType =  touxiangFileName.substring(touxiangFileName.lastIndexOf("."));
				String newname = "/"+sdata+(suser.getId().toString())+(int)(Math.random()*100)+fileType;
				String ntxn = rootp+newname;
				File ntx = new File(ntxn);
				OutputStream os = new FileOutputStream(ntx);
				byte[] bytes = new byte[1024];
				int l = 0;
				while((l=is.read(bytes))!=-1){
					os.write(bytes,0,l);
				}
				is.close();
				os.close();
				String headname = sf+newname;
				suser.setHead(headname);
				if(rsi.updataUserService(suser)){
					ActionContext.getContext().getSession().put("user", suser);
					return SUCCESS;
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return ERROR;
	}
	
	public String tc() {
		ActionContext.getContext().getSession().remove("user");
		return SUCCESS;
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

	@Override
	public User getModel() {
		if (user == null) {
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

	public File getTouxiang() {
		return touxiang;
	}

	public void setTouxiang(File touxiang) {
		this.touxiang = touxiang;
	}


	public String getTouxiangFileName() {
		return touxiangFileName;
	}

	public void setTouxiangFileName(String touxiangFileName) {
		this.touxiangFileName = touxiangFileName;
	}

	public String getTouxiangContentType() {
		return touxiangContentType;
	}

	public void setTouxiangContentType(String touxiangContentType) {
		this.touxiangContentType = touxiangContentType;
	}
}
