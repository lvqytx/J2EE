package team.j2ee.service;

import java.util.List;

import team.j2ee.model.Administrator;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Seller;

public interface AdminService {
	public boolean login(Administrator admin);
	//��ѯ����Ͷ��
	public List<ComplaintHandling> selectAllComplaintHandling();
	//��ѯһ����Ͷ��
	public ComplaintHandling selectAComplaintHandling(String id);
	//������ۻظ�
	public boolean addHandling(String ch_id,String handling);
	//��ѯ�û�
	public List<Customer> selectAllCustomer();
	//��ѯ�̼�
	public List<Seller> selectAllSeller();
	//ɾ���û�
	public boolean deleteACustomer(String customer_id);
	//ɾ���̼�
	public boolean deleteASeller(String seller_id);
}
