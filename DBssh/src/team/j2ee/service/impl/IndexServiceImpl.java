package team.j2ee.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.j2ee.dao.CommentDao;
import team.j2ee.dao.CustomerDao;
import team.j2ee.dao.ProductDao;
import team.j2ee.dao.ProducttypeDao;
import team.j2ee.dao.SellerDao;
import team.j2ee.model.Comment;
import team.j2ee.model.CommentId;
import team.j2ee.model.Customer;
import team.j2ee.model.Product;
import team.j2ee.model.ProductType;
import team.j2ee.service.IndexService;
@Service
public class IndexServiceImpl implements IndexService {
	private ProductDao productDao;
	private SellerDao sellerDao;
	private CommentDao commentDao;
	private CustomerDao customerDao;
	private ProducttypeDao productypeDao;
	private String[] saleList  = {"shoppingnum","id","nickname","price","picture_dir"};
	private String[] sellerList = {"shoppingnum", "id","nickname"};
	@Override
	@Transactional
	public List<Map<String,Object> > getSaleOrder() {
		List<Object[]>  list = this.productDao.queryBySql("select ifnull(sum(od.shoppingnum),0) shoppingnum, pd.id,pd.nickname,pd.price,pd.picture_dir from product pd,orderdetail od where pd.id=od.product_id group by pd.id,pd.nickname,pd.price,pd.picture_dir order by shoppingnum desc limit 0,10");
		List<Map<String,Object> > mapList = new ArrayList<Map<String,Object> >();
		for(Object[] obj:list){
			Map<String,Object> temp = new HashMap<String, Object>();
			for(int i=0;i<obj.length;i++){
				temp.put(saleList[i],obj[i]);
			}
			mapList.add(temp);
		}
		return mapList;
	}

	@Override
	@Transactional
	public List<Map<String,Object> > getSellerOrder() {
		List<Object[]> list = this.sellerDao.queryBySql("select ifnull(sum(od.shoppingnum),0) shoppingnum, sr.id,sr.nickname from product pd,seller sr,orderdetail od where pd.id=od.product_id and pd.seller_id=sr.id group by sr.id order by shoppingnum desc limit 0,10");
		List<Map<String,Object> > mapList = new ArrayList<Map<String,Object> >();
		for(Object[] obj:list){
			Map<String,Object> temp = new HashMap<String, Object>();
			for(int i=0;i<obj.length;i++){
				temp.put(sellerList[i], obj[i]);
			}
			mapList.add(temp);
		}
		return mapList;
	}

	@Override
	@Transactional
	public List<Product> searchProduct(String mykey) {
		Object params[] = {
				mykey
		};
		return this.productDao.find("from Product where nickname like ?",params);
	}

	@Override
	@Transactional
	public List<Product> searchSeller(String seller_id) {
		Object params[]={
				seller_id
		};
		return this.productDao.find("from Product where seller.id=?",params);
	}

	@Override
	@Transactional
	public Product selectAProduct(String product_id) {
		return this.productDao.get(Product.class, product_id);
	}

	@Override
	@Transactional
	public List<Comment> selectComment(String product_id) {
		Object params[]={
				product_id
		};
		return this.commentDao.find("from Comment where product_id=?", params);
	}

	@Override
	@Transactional
	public boolean addComment(String product_id, String customer_id, String message) {
		Comment comment = new Comment();
		comment.setId(new CommentId(commentDao.getStringID(),customerDao.get(Customer.class,customer_id),productDao.get(Product.class, product_id)));
		comment.setMessage(message);
		this.commentDao.save(comment);
		return true;
	}

	@Override
	@Transactional
	public List<ProductType> selectProductType() {
		return this.productypeDao.findAll(ProductType.class);
	}

	public ProductDao getProductDao() {
		return productDao;
	}
	@Resource(name="productDaoImpl")
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public SellerDao getSellerDao() {
		return sellerDao;
	}
	@Resource(name="sellerDaoImpl")
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}
	
	public CommentDao getCommentDao() {
		return commentDao;
	}
	@Resource(name="commentDaoImpl")
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public CustomerDao getCustomerDao() {
		return customerDao;
	}
	@Resource(name="customerDaoImpl")
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	public ProducttypeDao getProductypeDao() {
		return productypeDao;
	}
	@Resource(name="producttypeDaoImpl")
	public void setProductypeDao(ProducttypeDao productypeDao) {
		this.productypeDao = productypeDao;
	}
	
}
