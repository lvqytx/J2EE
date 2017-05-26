package team.j2ee.action;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.service.AdminService;

@Component
@Scope("prototype")
public class Admin_Ch extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<ComplaintHandling> allCh;
	private ComplaintHandling ach;
	private ComplaintHandling ch;
	private String chid;
	private AdminService adminService;
	public String select(){
		try {
			allCh = adminService.selectAllComplaintHandling();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "select";
	}
	public String addhandling(){
		try {
			System.out.println(chid);
			ach = adminService.selectAComplaintHandling(chid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return "addhandling";
		
	}
	public String update(){
		try {
			System.out.println(ch.getId());
			System.out.println(ch.getHandling());
			adminService.addHandling(ch.getId(), ch.getHandling());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "updatefail";
		}
		return "updatesuccess";
	}

	public String getChid() {
		return chid;
	}
	public void setChid(String chid) {
		this.chid = chid;
	}

	public ComplaintHandling getCh() {
		return ch;
	}
	public void setCh(ComplaintHandling ch) {
		this.ch = ch;
	}
	public List<ComplaintHandling> getAllCh() {
		return allCh;
	}
	public void setAllCh(List<ComplaintHandling> allCh) {
		this.allCh = allCh;
	}
	public ComplaintHandling getAch() {
		return ach;
	}
	public void setAch(ComplaintHandling ach) {
		this.ach = ach;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	@Resource(name="adminServiceImpl")
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
}
