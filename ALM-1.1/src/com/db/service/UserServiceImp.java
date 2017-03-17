package com.db.service;

import com.db.model.User;
import com.db.utils.UserDaoImp;

public class UserServiceImp {
	private UserDaoImp usi;	
	public boolean addUser(User user) {
		boolean reuslt = usi.save(user);
		return reuslt;
	}
	public User login(User user) {
			User result = usi.loginUser(user);
			if(result != null){
				if(result.getPass().equals(user.getPass())){
					return result;
				}
			}
			return null;
	}	
	public boolean updataUserService(User user){
		return usi.updataUserDao(user);
	}
	public UserDaoImp getUsi() {
		return usi;
	}
	public void setUsi(UserDaoImp usi) {
		this.usi = usi;
	}
}
