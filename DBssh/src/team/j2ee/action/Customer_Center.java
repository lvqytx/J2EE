package team.j2ee.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Orderdetail;
import team.j2ee.model.Orders;
import team.j2ee.service.CustomerService;

@Component
@Scope("prototype")
public class Customer_Center extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Orders> myorder;
	private List<Orderdetail> orderDetail;
	private String ordersn;
	private String name;
	private String code;
	private String nickname;
	private String password;
	private String customer_id;
	private ComplaintHandling ch;
	private CustomerService customerService;
	//注册
	public String register(){
		String rand =(String)session.get("rand");
		if(!rand.equalsIgnoreCase(code)){
			request.put("codeError", "验证码输入错误！");
			return "codeError";
		}
		try {
			if(customerService.isExist(name)){
				request.put("nameNo", "账号已经注册");
				return "codeError";
			}
			customerService.register(nickname, name, password);
		} catch (Exception e) {
			// TODO: handle exception
			return ERROR;
		}
		return SUCCESS;
	}
	//登陆
	public String userLogin(){
		String rand = (String)session.get("rand");
		if(!rand.equalsIgnoreCase(code)){
			request.put("codeError", "验证码输入错误！");
			return "codeError";
		}
		try {
			if(customerService.login(name, password)){
				session.put("customer", name);
				Customer cus = customerService.getACustomer(name, password);
				session.put("customerId", cus.getId());
			}
			else{
				request.put("codeError", "用户登陆失败，用户名或者密码错误！");
				return "codeError";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	//退出
	public String userLoginout(){
		session.remove("customer");
		session.remove("customerId");
		return SUCCESS;
	}
	//用户中心
	public String userCenter(){
		String customer_id  = (String)session.get("customerId");
		try {
			myorder = customerService.userCenter(customer_id); 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	//订单详情
	public String orderDetail(){
		System.out.println(ordersn);
		try {
			orderDetail = customerService.orderDetail(ordersn);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	//查询投诉
	public String selectCh(){
		try {
			String customer_id = (String)getSession().get("customerId");
			ch = new ComplaintHandling();
			Customer cus = customerService.findACustomer(customer_id);
			ch.setId(customerService.getStringID());
			ch.setCustomer(cus);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	//插入投诉
	public String addCh(){
		try {
			String customer_id = (String)getSession().get("customerId");
			Customer cus = customerService.findACustomer(customer_id);
			ch.setId(customerService.getStringID());
			ch.setCustomer(cus);
			customerService.addComplaintHandling(ch);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOrdersn() {
		return ordersn;
	}
	public void setOrdersn(String ordersn) {
		this.ordersn = ordersn;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public List<Orders> getMyorder() {
		return myorder;
	}
	public void setMyorder(List<Orders> myorder) {
		this.myorder = myorder;
	}
	public List<Orderdetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(List<Orderdetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	public ComplaintHandling getCh() {
		return ch;
	}
	public void setCh(ComplaintHandling ch) {
		this.ch = ch;
	}
	public CustomerService getCustomerService() {
		return customerService;
	}
	@Resource(name="customerServiceImpl")
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

}
