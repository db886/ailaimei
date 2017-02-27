package com.db.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.db.model.Wenti;
import com.db.service.WendaService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class WentiAction extends ActionSupport implements ModelDriven<Wenti>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  Wenti wenti;
	private WendaService wds;
	private List<Wenti> list;
	public String addwt(){
		if(wenti.getUsername().equals("")){
			return ERROR;
		}
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyyMMddHHmmss");
		String wentiid = formatter1.format(new Date());
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");
		String qtime = formatter2.format(new Date());
		wenti.setWentiid(wentiid);
		wenti.setQtime(qtime);
		if(wds.isaddwt(wenti)){
			return SUCCESS;
		}
		return ERROR;
	}
	public String selectwt(){
		setList(wds.isselectwt());
		return SUCCESS;
	}
	public String deletewt(){
		if(wds.isdeletewt(wenti.getWentiid())){
			return SUCCESS;
		}
		return ERROR;
	}
	public Wenti getWenti() {
		return wenti;
	}
	public void setWenti(Wenti wenti) {
		this.wenti = wenti;
	}
	public WendaService getWds() {
		return wds;
	}
	public void setWds(WendaService wds) {
		this.wds = wds;
	}
	@Override
	public Wenti getModel() {
		if(wenti==null){
			wenti=new Wenti();
		}
		return wenti;
	}
	public List<Wenti> getList() {
		return list;
	}
	public void setList(List<Wenti> list) {
		this.list = list;
	}

}
