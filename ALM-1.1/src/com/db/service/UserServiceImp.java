package com.db.service;
import com.db.model.Page;
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
	
	public User select(String s){
		return usi.select(s);
	}
	
	public Page select(String string,Page page){
		int allDataCount = usi.selectadc(string);
		//所有的数据记录数
		page.setAllDataCount(allDataCount);
		int allPageCount = (allDataCount/page.getEachPageCount());
		if(allDataCount%page.getEachPageCount()!=0){
			allPageCount+=1;
		}
		//分页的总数
		page.setAllPageCount(allPageCount);
		//判断当前请求页数是否存在
		if(page.getNowPage()<=allPageCount){
			int start = (page.getNowPage()-1)*page.getEachPageCount();
			int end = start+(page.getEachPageCount()-1);
			page.setStart(start);
			page.setEnd(end);
			//当前请求分页的数据
			page = usi.select(string, page);
		}
		return page;
	}
	
	public UserDaoImp getUsi() {
		return usi;
	}
	public void setUsi(UserDaoImp usi) {
		this.usi = usi;
	}
}
