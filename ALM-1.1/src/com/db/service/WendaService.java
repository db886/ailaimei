package com.db.service;

import java.util.List;

import com.db.model.Page;
import com.db.model.Wenda;
import com.db.model.Wenti;
import com.db.utils.WendaDao;

public class WendaService {
	private WendaDao wdd;
	public boolean isaddwd(Wenda wenda){
		boolean flag = false;
		String result = wdd.addwd(wenda);
		if(!result.equals("�ύʧ��")){
			flag = true;
		}
		return flag;
	}
	public boolean isdeletewd(String wendaid){
		boolean flag = false;
		int row = wdd.deletewd(wendaid);
		if(row!=0){
			flag = true;
		}
		return flag;
	}
	public Page selectwd(Page page){
		int allDataCount = wdd.selectadc();
		//���е����ݼ�¼��
		page.setAllDataCount(allDataCount);
		int allPageCount = (allDataCount/page.getEachPageCount());
		if(allDataCount%page.getEachPageCount()!=0){
			allPageCount+=1;
		}
		//��ҳ������
		page.setAllPageCount(allPageCount);
		//�жϵ�ǰ����ҳ���Ƿ����
		if(page.getNowPage()<=allPageCount){
			int start = (page.getNowPage()-1)*page.getEachPageCount();
			int end = start+(page.getEachPageCount()-1);
			//��ǰ�����ҳ������
			page.setNowPageData(wdd.selectAll(start, end));
		}
		return page;
	}
	public boolean isaddwt(Wenti wenti){
		boolean flag = false;
		String result = wdd.addwt(wenti);
		if(!result.equals("�ύʧ��")){
			flag=true;
		}
		return flag;
	}
	public List<Wenti> isselectwt(){
		List<Wenti> list =  wdd.selectwt();
		return list;
	}
	public boolean isdeletewt(String wentiid){
		boolean flag = false;
		int row = wdd.deletewt(wentiid);
		if(row!=0){
			flag=true;
		}
		return flag;
	}
	public WendaDao getWdd() {
		return wdd;
	}
	public void setWdd(WendaDao wdd) {
		this.wdd = wdd;
	}
}
