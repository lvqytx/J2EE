package team.j2ee.action;



import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import team.j2ee.model.Administrator;
import team.j2ee.service.AdminService;


@Component
@Scope("prototype")
public class Admin_Login extends BaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Administrator admin;
	private AdminService adminService;
	public String login() throws Exception{
		try {
			if(adminService.login(admin)){
				session.put("admin", admin);
			}
			else{
				this.addFieldError("errorMessage", "管理员用户名或者密码错误！");
				return "input";
			}
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
//		return SUCCESS;
	}
	public String loginOut() throws Exception{
		session.remove("admin");
		return SUCCESS;
	}
	public Administrator getAdmin() {
		return admin;
	}

	public void setAdmin(Administrator admin) {
		this.admin = admin;
	}
	
	public AdminService getAdminService() {
		return adminService;
	}
	@Resource(name="adminServiceImpl")
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}


}
