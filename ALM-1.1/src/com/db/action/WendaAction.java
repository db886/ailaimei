package com.db.action;
import com.db.model.Page;
import com.db.service.WendaService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class WendaAction extends ActionSupport implements ModelDriven<Page> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Page page;
	private WendaService wds;
	public String selectwd(){
		page = wds.selectwd(page);
		return SUCCESS;
	}
	@Override
	public Page getModel() {
		if(page == null){
			page=new Page();
		}
		return page;
	}
	public WendaService getWds() {
		return wds;
	}
	public void setWds(WendaService wds) {
		this.wds = wds;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
}
