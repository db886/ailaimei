package com.db.action;

import com.db.model.Xiangmu;
import com.db.utils.XiangmuDao;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class XiangmuAction extends ActionSupport implements ModelDriven<Xiangmu>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Xiangmu xm;
	private XiangmuDao xmd;
	public String selectxm(){
		xm = xmd.select(xm.getXiangmubiaoti());
		return SUCCESS;
	}
	public Xiangmu getXm() {
		return xm;
	}
	public void setXm(Xiangmu xm) {
		this.xm = xm;
	}
	public XiangmuDao getXmd() {
		return xmd;
	}
	public void setXmd(XiangmuDao xmd) {
		this.xmd = xmd;
	}
	@Override
	public Xiangmu getModel() {
		if(xm==null){
			xm = new Xiangmu();
		}
		return xm;
	}
	
}
