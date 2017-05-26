package team.j2ee.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.ShoppingCart;
import team.j2ee.service.CustomerService;

@Component
@Scope("prototype")
public class Customer_Cart extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<ShoppingCart> cartlist;
	private String product_id;
	private int amount;
	private int mknum;
	private String ordersn;
	private long carttotal;
	private CustomerService customerService;
	
	//加入购物车
	public String put(){
		String customer_id = (String)session.get("customerId");
		if(customer_id==null){
			return "login";
		}
		try {
			customerService.putCart(product_id, mknum, customer_id);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return "cartdo";
	}

	
	//删除购物车商品
	public String delete(){
		String customer_id = (String)session.get("customerId");
		try {
			customerService.deleteCart(customer_id, product_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "cartdo";
	}
	//清空购物车
	public String clear(){
		String customer_id = (String)session.get("customerId");
		try {
			customerService.clearCart(customer_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "cartdo";
	}
	//确认订单
	public String orderConfirm(){
		String customer_id = (String)session.get("customerId");
		try {
			cartlist = customerService.selectCart(customer_id);
			carttotal = 0;
			for(ShoppingCart cart:cartlist){
				carttotal +=cart.getAmount()*cart.getId().getProduct().getPrice();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "orderConfirm";
	}
	//提交订单
	public String ordersubmit(){
		String customer_id = (String)session.get("customerId");
		try {
			ordersn = customerService.addOrderAndDetail(customer_id, amount).getId();
			customerService.updateStore(customer_id);
			customerService.clearCart(customer_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "ordersubmit";
	}
	//订单支付
	public String pay(){
		try {
			customerService.pay(ordersn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "pay";
	}
	//查询购物车
	public String select(){
		String customer_id = (String)session.get("customerId");
		try {
			cartlist = customerService.selectCart(customer_id);
			carttotal = 0;
			for(ShoppingCart cart:cartlist){
				carttotal +=cart.getAmount()*cart.getId().getProduct().getPrice();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "cartSelect";
	}
	public String getProduct_id() {
		return product_id;
	}


	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getMknum() {
		return mknum;
	}


	public void setMknum(int mknum) {
		this.mknum = mknum;
	}


	public String getOrdersn() {
		return ordersn;
	}


	public void setOrdersn(String ordersn) {
		this.ordersn = ordersn;
	}


	public List<ShoppingCart> getCartlist() {
		return cartlist;
	}


	public void setCartlist(List<ShoppingCart> cartlist) {
		this.cartlist = cartlist;
	}


	public CustomerService getCustomerService() {
		return customerService;
	}

	@Resource(name="customerServiceImpl")
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}


	public long getCarttotal() {
		return carttotal;
	}


	public void setCarttotal(long carttotal) {
		this.carttotal = carttotal;
	}


	
}
