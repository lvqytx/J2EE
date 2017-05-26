package team.j2ee.action;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.Comment;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Product;
import team.j2ee.model.Seller;
import team.j2ee.service.SellerService;


@Component
@Scope("prototype")
public class Seller_Product extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Product pt = new Product();
	private File picture;
	private String pictureFileName;
	private String act;
	private List<Product> allProduct;
	private Product aProduct;
	private String[] pnos;
	private List<Comment> allcomment;
	private List<ComplaintHandling> allch;
	private SellerService sellerService;
	//查询所有商品
	public String selectAll(){
		Seller seller = (Seller)session.get("seller");
		try{
			allProduct = sellerService.selectAllProduct(seller.getId());
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		if ("updateSelect".equals(act)){
			return "updateSelect";
		}
		else if ("deleteSelect".equals(act)){
			return "deleteSelect";
		}
		return "selectAll";
	}
	//查询一件商品
	public String selectA(){
		try{
			pt = sellerService.selectAProduct(pt.getId());
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		if ("updateAProduct".equals(act)){
			return "update";
		}
		return "detail";
	}
	//添加商品
	public String add(){
		Seller seller = (Seller)session.get("seller");
		try{
			String realpath = ServletActionContext.getServletContext().getRealPath("/uploadFiles");
			File file = new File(realpath);
			if(!file.exists()){
				file.mkdirs();
			}
			int start = pictureFileName.lastIndexOf(".");
			String fileType = pictureFileName.substring(start);
			String newFileName = sellerService.getStringID()+fileType;
			FileUtils.copyFile(picture, new File(file,newFileName));
			
			sellerService.addProduct(pt, seller.getId(), newFileName);
		}catch(Exception e){
			e.printStackTrace();
			this.addFieldError("addfail", "添加商品失败！");
			return "addfile";
		}
		return "addsuccess";
	}
	//条件查询
	public String condiction(){
		Seller seller = (Seller)session.get("seller");
		try{
			allProduct = sellerService.condiction(pt, seller.getId());
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return "condictionSearch";
	}
	//修改商品
	public String update(){
		Seller seller = (Seller)session.get("seller");
		try{
			if(picture !=  null){
				String realpath = ServletActionContext.getServletContext().getRealPath("/uploadFiles");
				File file = new File(realpath);
				if(!file.exists()){
					file.mkdirs();
				}
				int start = pictureFileName.lastIndexOf(".");
				String fileType = pictureFileName.substring(start);
				String newFileName = sellerService.getStringID()+fileType;
				FileUtils.copyFile(picture, new File(file,newFileName));
				sellerService.updateProduct(pt, seller.getId(), newFileName);
			}
			else{
				sellerService.updateProduct(pt, seller.getId(), null);
			}
		}catch(Exception e){
			e.printStackTrace();
			return "updatefail";
		}
		return "updatesuccess";
	}
	//删除商品
	public String delete(){
		Seller seller = (Seller)session.get("seller");
		try{
			if ("link".equals(act)){
				sellerService.deleteProduct(pt.getId(), seller.getId());
			}
		}catch (Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return "afterdelete";
	}
	//删除所有商品
	public String deleteAll(){
		Seller seller = (Seller)session.get("seller");
		try{
			for(int i=0;i<pnos.length;i++){
				System.out.println(pnos[i]);
				sellerService.deleteProduct(pnos[i], seller.getId());
			}
		}catch (Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return "afterdelete";
	}
	//查询评论
	public String selectcomment(){
		Seller seller = (Seller)session.get("seller");
		try {
			allcomment = sellerService.selectComment(seller.getId());
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return "selectcommentsuccess";
	}
	//查询投诉
	public String selectCh(){
		Seller seller = (Seller)session.get("seller");
		try {
			allch = sellerService.selectComplaintHandling(seller.getId());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "selectchsuccess";
	}
	
	public String[] getPnos(){
		return pnos;
	}
	public void setPnos(String[] pnos){
		this.pnos = pnos;
	}
	public String getAct(){
		return this.act;
	}
	public void setAct(String act){
		this.act = act;
	}
	public String getPictureFileName(){
		return this.pictureFileName;
	}
	public void setPictureFileName(String pictureFileName){
		this.pictureFileName = pictureFileName;
	}
	public File getPicture(){
		return this.picture;
	}
	public void setPicture(File picture){
		this.picture = picture;
	}
	public Product getPt() {
		return pt;
	}
	public void setPt(Product pt) {
		this.pt = pt;
	}
	public List<Product> getAllProduct() {
		return allProduct;
	}
	public void setAllProduct(List<Product> allProduct) {
		this.allProduct = allProduct;
	}
	public Product getaProduct() {
		return aProduct;
	}
	public void setaProduct(Product aProduct) {
		this.aProduct = aProduct;
	}
	public List<Comment> getAllcomment() {
		return allcomment;
	}
	public void setAllcomment(List<Comment> allcomment) {
		this.allcomment = allcomment;
	}
	public List<ComplaintHandling> getAllch() {
		return allch;
	}
	public void setAllch(List<ComplaintHandling> allch) {
		this.allch = allch;
	}
	public SellerService getSellerService() {
		return sellerService;
	}
	@Resource(name="sellerServiceImpl")
	public void setSellerService(SellerService sellerService) {
		this.sellerService = sellerService;
	}
}
