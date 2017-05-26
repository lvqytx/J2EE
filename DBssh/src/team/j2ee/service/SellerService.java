package team.j2ee.service;

import java.util.List;

import team.j2ee.model.Comment;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Orders;
import team.j2ee.model.Product;
import team.j2ee.model.Seller;

public interface SellerService {
	//是否存在
	public boolean isExist(String username); 
	//得到商家对象
	public Seller getSeller(String username,String password);
	//注册
	public boolean register(String nickname,String username,String password);
	//登陆
	public boolean login(String username,String password);
	//查询订单
	public List<Orders> selectOrders(String seller_id);
	//删除订单
	public boolean deleteOrders(String orders_id);
	//查询所有商品
	public List<Product> selectAllProduct(String seller_id);
	//查询一商品
	public Product selectAProduct(String product_id);
	//添加商品
	public boolean addProduct(Product product,String seller_id,String newFileName);
	//条件查询
	public List<Product> condiction(Product product,String seller_id);
	//修改商品
	public boolean updateProduct(Product product,String seller_id,String newFileName);
	//删除商品
	public boolean deleteProduct(String product_id,String seller_id);
	//查询一件商品评论
	public List<Comment> selectComment(String seller_id);
	//查询投诉
	public List<ComplaintHandling> selectComplaintHandling(String seller_id);
	//得到ID号
	public String getStringID();
}
