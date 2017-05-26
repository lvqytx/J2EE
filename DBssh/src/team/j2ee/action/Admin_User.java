package team.j2ee.action;

import team.j2ee.model.Customer;
import team.j2ee.model.Seller;
import team.j2ee.service.AdminService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Admin_User extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Customer> allCustomer;
	private List<Seller> allSeller;
	private String cid;
	private String sid;
	private AdminService adminService;
	//查询用户
	public String selectcustomer(){
		try {
			allCustomer = adminService.selectAllCustomer();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "selectcustomer";
	}
	//查询商家
	public String selectseller(){
		try {
			allSeller = adminService.selectAllSeller();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "selectseller";
	}
	//删除用户
	public String deletecustomer(){
		try {
			adminService.deleteACustomer(cid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "deletecustomer";
	}
	//删除商家
	public String deleteseller(){
		try {
			adminService.deleteASeller(sid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "deleteseller";
	}

	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public List<Customer> getAllCustomer() {
		return allCustomer;
	}
	public void setAllCustomer(List<Customer> allCustomer) {
		this.allCustomer = allCustomer;
	}
	public List<Seller> getAllSeller() {
		return allSeller;
	}
	public void setAllSeller(List<Seller> allSeller) {
		this.allSeller = allSeller;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	@Resource(name="adminServiceImpl")
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
}
