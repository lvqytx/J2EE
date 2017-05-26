package team.j2ee.service;

import java.util.List;

import team.j2ee.model.Administrator;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Seller;

public interface AdminService {
	public boolean login(Administrator admin);
	//查询所有投诉
	public List<ComplaintHandling> selectAllComplaintHandling();
	//查询一条评投诉
	public ComplaintHandling selectAComplaintHandling(String id);
	//添加评论回复
	public boolean addHandling(String ch_id,String handling);
	//查询用户
	public List<Customer> selectAllCustomer();
	//查询商家
	public List<Seller> selectAllSeller();
	//删除用户
	public boolean deleteACustomer(String customer_id);
	//删除商家
	public boolean deleteASeller(String seller_id);
}
