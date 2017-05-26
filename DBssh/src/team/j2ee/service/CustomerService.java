package team.j2ee.service;

import java.util.List;

import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Orderdetail;
import team.j2ee.model.Orders;
import team.j2ee.model.ShoppingCart;

public interface CustomerService {
	//检测是否存在
	public boolean isExist(String username);
	//找到用户ID
	public Customer getACustomer(String username,String password);
	//根据ID查找用户
	public Customer findACustomer(String customer_id);
	//注册
	public boolean register(String nickname,String username,String password);
	//登陆
	public boolean login(String username,String password);
	//用户中心
	public List<Orders> userCenter(String customer_id);
	//订单详情
	public List<Orderdetail> orderDetail(String orders_id);
	//查询投诉
	public ComplaintHandling selectAComplaintHandling(String orders_id);
	//添加投诉
	public boolean addComplaintHandling(ComplaintHandling ch);
	//查询购物车
	public List<ShoppingCart> selectCart(String customer_id);
	//加入购物车
	public boolean putCart(String product_id,int mknum,String customer_id);
	//删除购物车商品
	public boolean deleteCart(String customer_id,String product_id);
	//清空购物车
	public boolean clearCart(String customer_id);
	//提交订单
	public Orders addOrderAndDetail(String customer_id,int amount);
	//更新库存
	public boolean updateStore(String customer_id);
	//订单支付
	public boolean pay(String orders_id);
	//得到ID号
	public String getStringID();
}
