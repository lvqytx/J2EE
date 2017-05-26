package team.j2ee.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.j2ee.dao.ComplaintHandlingDao;
import team.j2ee.dao.CustomerDao;
import team.j2ee.dao.OrderdetailDao;
import team.j2ee.dao.OrdersDao;
import team.j2ee.dao.ProductDao;
import team.j2ee.dao.ShoppingCartDao;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Orderdetail;
import team.j2ee.model.OrderdetailId;
import team.j2ee.model.Orders;
import team.j2ee.model.Product;
import team.j2ee.model.ShoppingCart;
import team.j2ee.model.ShoppingCartId;
import team.j2ee.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{
	private CustomerDao customerDao;
	private ComplaintHandlingDao complaintHandlingDao;
	private OrderdetailDao orderDetailDao;
	private OrdersDao ordersDao;
	private ShoppingCartDao shoppingCartDao;
	private ProductDao productDao;
	
	@Override
	@Transactional
	public boolean isExist(String username) {
		Object params[]={
				username
		};
		List<Customer> list = this.customerDao.find("from Customer where username=?", params);
		if (list.size()>0){
			return true;
		}
		return false;
	}
	
	@Override
	@Transactional
	public boolean register(String nickname, String username, String password) {
		Customer customer = new Customer();
		customer.setId(customerDao.getStringID());
		customer.setNickname(nickname);
		customer.setUsername(username);
		customer.setPassword(password);
		customerDao.save(customer);
		return true;
	}

	@Override
	@Transactional
	public Customer getACustomer(String username, String password) {
		Object params[]={
				username,
				password
		};
		return customerDao.find("from Customer where username=? and password=?", params).get(0);
	}

	@Override
	@Transactional
	public Customer findACustomer(String customer_id) {
		return customerDao.get(Customer.class, customer_id);
	}
	
	@Override
	@Transactional
	public boolean login(String username, String password) {
		Object params[]={
				username,
				password};
		List<Customer> list= this.customerDao.find("from Customer where username=? and password=?",params);
		if (list.size()>0){
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public List<Orders> userCenter(String customer_id) {
		Object params[]={
				customer_id
		};
		return ordersDao.find("from Orders where customer_id=?", params);
	}

	@Override
	@Transactional
	public List<Orderdetail> orderDetail(String orders_id) {
		Object params[]={
				orders_id
		};
		List<Orderdetail> orderList = orderDetailDao.find("from Orderdetail where orders_id=?", params);
		for(Orderdetail od:orderList){
			od.getId().setProduct(productDao.get(Product.class, od.getId().getProduct().getId()));			
		}
		System.out.println(orderList.size());
		return orderList;
	}

	@Override
	@Transactional
	public ComplaintHandling selectAComplaintHandling(String orders_id) {
		Object params[]={
				orders_id
		};
		return complaintHandlingDao.find("from ComplaintHandling where orders_id=?",params).get(0);
	}

	@Override
	@Transactional
	public boolean addComplaintHandling(ComplaintHandling ch) {
		complaintHandlingDao.save(ch);
		return true;
	}

	@Override
	@Transactional
	public List<ShoppingCart> selectCart(String customer_id) {
		Object params[]={
				customer_id
		};
		List<ShoppingCart> list = shoppingCartDao.find("from ShoppingCart where customer_id=?", params);
		for(ShoppingCart cart:list){
			cart.getId().setProduct(productDao.get(Product.class, cart.getId().getProduct().getId()));
		}
		return list;
	}

	@Override
	@Transactional
	public boolean putCart(String product_id, int mknum, String customer_id) {
		
		Object params[]={
				customer_id,
				product_id
		};
		List<ShoppingCart> cartList = shoppingCartDao.find("from ShoppingCart where customer_id=? and product_id=?",params);
		if (cartList.size()>0){
			ShoppingCart cart = cartList.get(0);
			cart.setAmount(cart.getAmount()+mknum);
			shoppingCartDao.update(cart);
		}
		else{
			ShoppingCart cart = new ShoppingCart();
			cart.setId(new ShoppingCartId(shoppingCartDao.getStringID(), customerDao.get(Customer.class, customer_id), productDao.get(Product.class, product_id)));
			cart.setAmount(mknum);
			shoppingCartDao.save(cart);
		}
		return true;
	}

	@Override
	@Transactional
	public boolean deleteCart(String customer_id, String product_id) {
		Object params[]={
				customer_id,
				product_id
		};
		ShoppingCart cart = shoppingCartDao.find("from ShoppingCart where customer_id=? and product_id=?", params).get(0);
		shoppingCartDao.delete(cart);
		return false;
	}

	@Override
	@Transactional
	public boolean clearCart(String customer_id) {
		Object params[]={
				customer_id
		};
		List<ShoppingCart> cartList = shoppingCartDao.find("from ShoppingCart where customer_id=?",params);
		for(ShoppingCart cart:cartList){
			shoppingCartDao.delete(cart);
		}
		return true;
	}

	@Override
	@Transactional
	public Orders addOrderAndDetail(String customer_id, int amount) {
		Date date = new Date();
		String ordersn = "E" + ordersDao.getStringID();
		Orders ordres = new Orders(ordersn, customerDao.get(Customer.class, customer_id), amount, "0");
		ordres.setOrderdate(date);
		ordersDao.save(ordres);
		Object params[]={
				customer_id
		};
		List<ShoppingCart> cartList = shoppingCartDao.find("from ShoppingCart where customer_id=?",params);
		for(ShoppingCart cart:cartList){
			Orderdetail orderdetail = new Orderdetail(new OrderdetailId(ordres, cart.getId().getProduct()), cart.getAmount());
			orderDetailDao.save(orderdetail);
		}
		return ordres;
	}

	@Override
	@Transactional
	public boolean updateStore(String customer_id) {
		Object params[]={
				customer_id
		};
		List<ShoppingCart> cartList = shoppingCartDao.find("from ShoppingCart where customer_id=?", params);
		for(ShoppingCart cart:cartList){
			Product product = cart.getId().getProduct();
			product.setNumber(cart.getId().getProduct().getNumber()-cart.getAmount());
			productDao.update(product);
		}
		return true;
	}

	@Override
	@Transactional
	public boolean pay(String orders_id) {
		Orders orders= ordersDao.get(Orders.class, orders_id);
		orders.setStatus("1");
		ordersDao.update(orders); 
		return true;
	}
	@Override
	@Transactional
	public String getStringID() {
		return 	ordersDao.getStringID();
	}
	
	
	public CustomerDao getCustomerDao() {
		return customerDao;
	}
	@Resource(name="customerDaoImpl")
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	
	public ComplaintHandlingDao getComplaintHandlingDao() {
		return complaintHandlingDao;
	}
	@Resource(name="complaintHandlingDaoImpl")
	public void setComplaintHandlingDao(ComplaintHandlingDao complaintHandlingDao) {
		this.complaintHandlingDao = complaintHandlingDao;
	}

	public OrderdetailDao getOrderDetailDao() {
		return orderDetailDao;
	}
	@Resource(name="orderdetailDaoImpl")
	public void setOrderDetailDao(OrderdetailDao orderDetailDao) {
		this.orderDetailDao = orderDetailDao;
	}

	public OrdersDao getOrdersDao() {
		return ordersDao;
	}
	@Resource(name="ordersDaoImpl")
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public ShoppingCartDao getShoppingCartDao() {
		return shoppingCartDao;
	}
	@Resource(name="shoppingCartDaoImpl")
	public void setShoppingCartDao(ShoppingCartDao shoppingCartDao) {
		this.shoppingCartDao = shoppingCartDao;
	}

	public ProductDao getProductDao() {
		return productDao;
	}
	@Resource(name="productDaoImpl")
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	
}
