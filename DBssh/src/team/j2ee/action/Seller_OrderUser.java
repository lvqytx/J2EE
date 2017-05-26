package team.j2ee.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.Orders;
import team.j2ee.model.Seller;
import team.j2ee.service.SellerService;

@Component
@Scope("prototype")
public class Seller_OrderUser extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String,Object> session;
	private List<Orders> orderList;
	private String ordersn;
	private SellerService sellerService;
	
	//²éÑ¯¶©µ¥
	public String selectorder(){
		Seller seller = (Seller)session.get("seller");
		try{
			orderList = sellerService.selectOrders(seller.getId());
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return "selectorder";
	}
	//É¾³ý¶©µ¥
	public String deleteorder(){
		try{
			sellerService.deleteOrders(ordersn);
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return "deleteorder";
	}
	public String getOrdersn() {
		return ordersn;
	}
	public void setOrdersn(String ordersn) {
		this.ordersn = ordersn;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public List<Orders> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Orders> orderList) {
		this.orderList = orderList;
	}
	public SellerService getSellerService() {
		return sellerService;
	}
	@Resource(name="sellerServiceImpl")
	public void setSellerService(SellerService sellerService) {
		this.sellerService = sellerService;
	}
}
