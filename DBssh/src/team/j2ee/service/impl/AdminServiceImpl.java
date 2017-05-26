package team.j2ee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.j2ee.dao.AdminDao;
import team.j2ee.dao.ComplaintHandlingDao;
import team.j2ee.dao.CustomerDao;
import team.j2ee.dao.SellerDao;
import team.j2ee.model.Administrator;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Seller;
import team.j2ee.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;
	private ComplaintHandlingDao complaintHandlingDao;
	private CustomerDao customerDao;
	private SellerDao sellerDao;
	@Override
	@Transactional
	public boolean login(Administrator admin) {
		Object params[]={
				admin.getUsername(),
				admin.getPassword()};
		List<Administrator> list= this.adminDao.find("from Administrator where username=? and password=?",params);
		if (list.size()>0){
			return true;
		}
		return false;
	}


	@Override
	@Transactional
	public List<ComplaintHandling> selectAllComplaintHandling() {
		return complaintHandlingDao.findAll(ComplaintHandling.class);
	}

	@Override
	@Transactional
	public ComplaintHandling selectAComplaintHandling(String id) {
		return complaintHandlingDao.get(ComplaintHandling.class, id);
	}

	@Override
	@Transactional
	public boolean addHandling(String ch_id, String handling) {
		ComplaintHandling ch = complaintHandlingDao.get(ComplaintHandling.class, ch_id);
		ch.setHandling(handling);
		complaintHandlingDao.save(ch);
		//Test
		return true;
	}

	@Override
	@Transactional
	public List<Customer> selectAllCustomer() {
		return customerDao.findAll(Customer.class);
	}

	@Override
	@Transactional
	public List<Seller> selectAllSeller() {
		return 	sellerDao.findAll(Seller.class);
	}

	@Override
	@Transactional
	public boolean deleteACustomer(String customer_id) {	
		customerDao.delete(customerDao.get(Customer.class, customer_id));
		return true;
	}

	@Override
	@Transactional
	public boolean deleteASeller(String seller_id) {
		sellerDao.delete(sellerDao.get(Seller.class, seller_id));
		return true;
	}


	public AdminDao getAdminDao() {
		return adminDao;
	}
	
	@Resource(name="adminDaoImpl")
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
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


	public SellerDao getSellerDao() {
		return sellerDao;
	}

	@Resource(name="sellerDaoImpl")
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}
}
