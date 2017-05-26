package team.j2ee.action;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.Comment;
import team.j2ee.model.Product;
import team.j2ee.model.ProductType;
import team.j2ee.service.IndexService;

import java.util.*;

@Component
@Scope("prototype")
public class Customer_Index extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mykey;
	private List<ProductType> typeList;
	private List<Map<String, Object> > salelist;
	private List<Map<String, Object> > sellerlist;
	private List<Product> searchlist;

	private List<Comment> commentlist;
	private Map<String,Object> session;
	private Map<String,Object> request;
	private Product aproduct;
	private String pno;
	private String sid;
	private String message;
	private IndexService indexService;
	public String index(){
		try {
			salelist = indexService.getSaleOrder();
			sellerlist = indexService.getSellerOrder();
			typeList = indexService.selectProductType();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "indexSelect";
	}
	public String search(){
		try {
			searchlist = indexService.searchProduct(mykey);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "indexSearch";
	}
	public String searchseller(){
		try {
			searchlist = indexService.searchSeller(mykey);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "indexSearch";
	}
	public String detail(){
		if (pno==null){
			pno = (String)session.get("pno");
		}else{
			session.put("pno",pno);
		}
		try {
			aproduct = indexService.selectAProduct(pno);
			commentlist = indexService.selectComment(aproduct.getId());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "productDetail";
	}
	public String addcomment(){
		String customer_id = (String)session.get("customerId");
		if (customer_id==null){
			request.put("Error", "请先登录在评论！");
			return "productDetail";
		}
		else if(message==null){
			request.put("Error", "评论不能为空！");
			return "productDetail";
		}
		try {
			pno = (String)session.get("pno");
			indexService.addComment(pno, customer_id, message);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "addcomment";
	}
	public String getMykey() {
		return mykey;
	}
	public void setMykey(String mykey) {
		this.mykey = mykey;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public List<Map<String, Object> > getSalelist() {
		return salelist;
	}
	public void setSalelist(List<Map<String, Object>> salelist) {
		this.salelist = salelist;
	}
	public List<Map<String, Object>> getSellerlist() {
		return sellerlist;
	}
	public void setSellerlist(List<Map<String, Object>> sellerlist) {
		this.sellerlist = sellerlist;
	}
	public List<Product> getSearchlist() {
		return searchlist;
	}
	public void setSearchlist(List<Product> searchlist) {
		this.searchlist = searchlist;
	}
	public List<Comment> getCommentlist() {
		return commentlist;
	}
	public void setCommentlist(List<Comment> commentlist) {
		this.commentlist = commentlist;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public Product getAproduct() {
		return aproduct;
	}
	public void setAproduct(Product aproduct) {
		this.aproduct = aproduct;
	}
	public IndexService getIndexService() {
		return indexService;
	}
	@Resource(name="indexServiceImpl")
	public void setIndexService(IndexService indexService) {
		this.indexService = indexService;
	}
	public List<ProductType> getTypeList() {
		return typeList;
	}
	public void setTypeList(List<ProductType> typeList) {
		this.typeList = typeList;
	}
	
}
