package team.j2ee.service;

import java.util.List;

import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Customer;
import team.j2ee.model.Orderdetail;
import team.j2ee.model.Orders;
import team.j2ee.model.ShoppingCart;

public interface CustomerService {
	//����Ƿ����
	public boolean isExist(String username);
	//�ҵ��û�ID
	public Customer getACustomer(String username,String password);
	//����ID�����û�
	public Customer findACustomer(String customer_id);
	//ע��
	public boolean register(String nickname,String username,String password);
	//��½
	public boolean login(String username,String password);
	//�û�����
	public List<Orders> userCenter(String customer_id);
	//��������
	public List<Orderdetail> orderDetail(String orders_id);
	//��ѯͶ��
	public ComplaintHandling selectAComplaintHandling(String orders_id);
	//���Ͷ��
	public boolean addComplaintHandling(ComplaintHandling ch);
	//��ѯ���ﳵ
	public List<ShoppingCart> selectCart(String customer_id);
	//���빺�ﳵ
	public boolean putCart(String product_id,int mknum,String customer_id);
	//ɾ�����ﳵ��Ʒ
	public boolean deleteCart(String customer_id,String product_id);
	//��չ��ﳵ
	public boolean clearCart(String customer_id);
	//�ύ����
	public Orders addOrderAndDetail(String customer_id,int amount);
	//���¿��
	public boolean updateStore(String customer_id);
	//����֧��
	public boolean pay(String orders_id);
	//�õ�ID��
	public String getStringID();
}
