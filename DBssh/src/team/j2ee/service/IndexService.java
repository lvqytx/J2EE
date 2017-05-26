package team.j2ee.service;

import java.util.List;
import java.util.Map;

import team.j2ee.model.Comment;
import team.j2ee.model.Product;
import team.j2ee.model.ProductType;

public interface IndexService {
	//主页初始化
	//得到商品种类
	public List<ProductType> selectProductType();
	//得到商品排行
	public List<Map<String,Object> > getSaleOrder();
	//得到商家排行
	public List<Map<String,Object> > getSellerOrder();
	//搜索商品
	public List<Product> searchProduct(String mykey);
	//搜索商家
	public List<Product> searchSeller(String seller_id);
	//商品详情
	public Product selectAProduct(String product_id);
	//商品评论
	public List<Comment> selectComment(String product_id); 
	//添加评论
	public boolean addComment(String product_id,String customer_id,String message);
}
