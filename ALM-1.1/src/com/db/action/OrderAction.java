package com.db.action;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.db.model.Orders;
import com.db.utils.OrderDao;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class OrderAction extends ActionSupport implements ModelDriven<Orders> {
	private OrderDao orderDao;
	private Orders order;
	private List<Orders> list;
	private String tishi="你妹啊";
	public String add(){
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String no = formatter.format(new Date());
		order.setNo(no);
		String reuslt = orderDao.addOrder(order);
		if(no.equals(reuslt)){
			tishi = "下单成功";
			return SUCCESS;
		}
		tishi = "下单失败";
		return ERROR;
	}
	public String updata(){
		int row = orderDao.updateOrderStatus(order.getNo(),order.getStatus());
		if(row != 0){
			tishi = "付款成功";
			return SUCCESS;
		}
		tishi = "付款失败";
		return ERROR;
	}
	public String delete(){
		int row = orderDao.deletOrder(order.getNo());
		if(row != 0){
			tishi = "删除成功";
			return SUCCESS;
		}
		tishi = "删除失败";
		return ERROR;
	}
	public String select(){
		if(order.getUsername() != null && !order.getUsername().equals("")){
			list = orderDao.selectOrder(order.getUsername());
			return SUCCESS;
		} else{
			return ERROR;
		}
	}
	public Orders getOrder() {
		return order;
	}
	public String getTishi() {
		return tishi;
	}
	public void setTishi(String tishi) {
		this.tishi = tishi;
	}
	public void setOrder(Orders order) {
		this.order = order;
	}
	@Override
	public Orders getModel() {
		if(order == null){
			order = new Orders();
		}
		return order;
	}
	public OrderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	public List<Orders> getList() {
		return list;
	}
	public void setList(List<Orders> list) {
		this.list = list;
	}
}
