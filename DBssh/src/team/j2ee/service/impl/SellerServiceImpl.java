package team.j2ee.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.j2ee.dao.CommentDao;
import team.j2ee.dao.ComplaintHandlingDao;
import team.j2ee.dao.CustomerDao;
import team.j2ee.dao.OrdersDao;
import team.j2ee.dao.ProductDao;
import team.j2ee.dao.SellerDao;
import team.j2ee.model.Comment;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Orders;
import team.j2ee.model.Product;
import team.j2ee.model.Seller;
import team.j2ee.service.SellerService;

@Service
public class SellerServiceImpl implements SellerService{
	private SellerDao sellerDao;
	private OrdersDao ordersDao;
	private ProductDao productDao;
	private CommentDao commentDao;
	private ComplaintHandlingDao complaintHandlingDao;
	private CustomerDao customerDao;
	@Override
	@Transactional
	public boolean isExist(String username) {
		Object params[]={
				username
		};
		List<Seller> list = this.sellerDao.find("from Seller where username=?", params);
		if (list.size()>0){
			return true;
		}
		return false;
	}
	@Override
	@Transactional
	public Seller getSeller(String username, String password) {
		Object params[]={
				username,
				password
		};
		return sellerDao.find("from Seller where username=? and password=?", params).get(0);
	}

	@Override
	@Transactional
	public boolean register(String nickname, String username, String password) {
		Seller seller = new Seller();
		seller.setId(sellerDao.getStringID());
		seller.setNickname(nickname);
		seller.setUsername(username);
		seller.setPassword(password);
		sellerDao.save(seller);
		return true;
	}

	@Override
	@Transactional
	public boolean login(String username, String password) {

		Object params[]={
				username,
				password
		};
		List<Seller> list = sellerDao.find("from Seller where username=? and password=?", params);
		if(list.size()>0){
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public List<Orders> selectOrders(String seller_id) {
		List<Object[]> list = ordersDao.queryBySql("select os.id,os.customer_id,os.total_amount,os.status,orderdate from orders os,product pt,orderdetail od where os.id=od.orders_id and od.product_id=pt.id ");
		List<Orders> ordersList = new ArrayList<>();
		for(Object[] obj:list){
			Orders orders = new Orders();
			orders.setId((String)obj[0]);
			orders.setCustomer(customerDao.get(Customer.class,((String)obj[1])));
			orders.setTotalAmount((Integer)obj[2]);
			orders.setStatus((String)obj[3]);
			orders.setOrderdate((Date)obj[4]);
			ordersList.add(orders);
		}
		return ordersList;
	}

	@Override
	@Transactional
	public boolean deleteOrders(String orders_id) {
		// TODO 自动生成的方法存根
		return false;
	}

	@Override
	@Transactional
	public List<Product> selectAllProduct(String seller_id) {
//		Object params[]={
//				seller_id
//		};
//		return productDao.find("from product where seller_id=?", params);
		Seller seller = sellerDao.get(Seller.class, seller_id);
		List<Product> productList = new ArrayList<>();
		for(Object obj:seller.getProducts()){
			productList.add((Product)obj);
		}
		return productList;
	}

	@Override
	@Transactional
	public Product selectAProduct(String product_id) {
		return productDao.get(Product.class, product_id);
	}

	@Override
	@Transactional
	public boolean addProduct(Product product, String seller_id, String newFileName) {
		product.setSeller(sellerDao.get(Seller.class, seller_id));
		product.setPictureDir(newFileName);
		productDao.save(product);
		return true;
	}

	@Override
	@Transactional
	public List<Product> condiction(Product product, String seller_id) {
		StringBuffer sbf = new StringBuffer("from Product where seller_id=? ");
		List<Object> al = new ArrayList<Object>();
		al.add(seller_id);
		if (product.getNickname()!=null){
			sbf.append("and nickname=?");
			al.add(product.getNickname());
		}
		String hql = sbf.toString();
		Object params[] = al.toArray();
		return productDao.find(hql, params);
	}

	@Override
	@Transactional
	public boolean updateProduct(Product product, String seller_id, String newFileName) {
		Product oldProduct = productDao.get(Product.class, product.getId());
		oldProduct.setNickname(product.getNickname());
		oldProduct.setPrice(product.getPrice());
		oldProduct.setNumber(product.getNumber());
		if(newFileName!=null){
			oldProduct.setPictureDir(newFileName);
		}
		productDao.update(oldProduct);
		return true;
	}

	@Override
	@Transactional
	public boolean deleteProduct(String product_id, String seller_id) {
		productDao.delete(Product.class, product_id);
		return true;
	}

	@Override
	@Transactional
	public List<Comment> selectComment(String seller_id) {
		Object params[]={
				seller_id
		};
		List<Comment> commentList = new ArrayList<>();
		List<Product> plist = productDao.find("from Product where seller.id=?", params);
		for(Product pt:plist){
			Object params1[]={
					pt.getId()
			};
			List<Comment> temp = commentDao.find("from Comment where id.product.id=?",params1);
			commentList.addAll(temp);
		}
		return commentList;
	}

	@Override
	@Transactional
	public List<ComplaintHandling> selectComplaintHandling(String seller_id) {
		Object params[]={
				seller_id
		};
		return complaintHandlingDao.find("from Complaint_handling where seller_id=?", params);
	}

	@Override
	@Transactional
	public String getStringID() {
		return sellerDao.getStringID();
	}
	
	public SellerDao getSellerDao() {
		return sellerDao;
	}
	@Resource(name="sellerDaoImpl")
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}

	public OrdersDao getOrdersDao() {
		return ordersDao;
	}
	@Resource(name="ordersDaoImpl")
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public ProductDao getProductDao() {
		return productDao;
	}
	@Resource(name="productDaoImpl")
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public CommentDao getCommentDao() {
		return commentDao;
	}
	@Resource(name="commentDaoImpl")
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public ComplaintHandlingDao getComplaintHandlingDao() {
		return complaintHandlingDao;
	}
	@Resource(name="complaintHandlingDaoImpl")
	public void setComplaintHandlingDao(ComplaintHandlingDao complaintHandlingDao) {
		this.complaintHandlingDao = complaintHandlingDao;
	}
	public CustomerDao getCustomerDao() {
		return customerDao;
	}
	@Resource(name="customerDaoImpl")
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

}
