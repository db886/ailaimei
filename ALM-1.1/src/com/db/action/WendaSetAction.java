package com.db.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.db.model.Wenda;
import com.db.service.WendaService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class WendaSetAction extends ActionSupport implements ModelDriven<Wenda> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Wenda wenda;
	private WendaService wds;
	private String wentiid;
	public String addwd(){
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyyMMddHHmmss");
		String wendaid = formatter1.format(new Date());
		wenda.setWendaid(wendaid);
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");
		String atime = formatter2.format(new Date());
		wenda.setAtime(atime);
		if(wds.isaddwd(wenda)){
			wds.isdeletewt(wentiid);
			return SUCCESS;
		}
		return ERROR;
	}
	public String deletewd(){
		if(wds.isdeletewd(wenda.getWendaid())){
			return SUCCESS;
		}
		return ERROR;
	}
	public Wenda getWenda() {
		return wenda;
	}
	public void setWenda(Wenda wenda) {
		this.wenda = wenda;
	}
	public WendaService getWds() {
		return wds;
	}
	public void setWds(WendaService wds) {
		this.wds = wds;
	}
	@Override
	public Wenda getModel() {
		if(wenda==null){
			wenda= new Wenda();
		}
		return wenda;
	}
	public String getWentiid() {
		return wentiid;
	}
	public void setWentiid(String wentiid) {
		this.wentiid = wentiid;
	}

}
