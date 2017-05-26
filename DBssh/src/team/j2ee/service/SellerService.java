package team.j2ee.service;

import java.util.List;

import team.j2ee.model.Comment;
import team.j2ee.model.ComplaintHandling;
import team.j2ee.model.Orders;
import team.j2ee.model.Product;
import team.j2ee.model.Seller;

public interface SellerService {
	//�Ƿ����
	public boolean isExist(String username); 
	//�õ��̼Ҷ���
	public Seller getSeller(String username,String password);
	//ע��
	public boolean register(String nickname,String username,String password);
	//��½
	public boolean login(String username,String password);
	//��ѯ����
	public List<Orders> selectOrders(String seller_id);
	//ɾ������
	public boolean deleteOrders(String orders_id);
	//��ѯ������Ʒ
	public List<Product> selectAllProduct(String seller_id);
	//��ѯһ��Ʒ
	public Product selectAProduct(String product_id);
	//�����Ʒ
	public boolean addProduct(Product product,String seller_id,String newFileName);
	//������ѯ
	public List<Product> condiction(Product product,String seller_id);
	//�޸���Ʒ
	public boolean updateProduct(Product product,String seller_id,String newFileName);
	//ɾ����Ʒ
	public boolean deleteProduct(String product_id,String seller_id);
	//��ѯһ����Ʒ����
	public List<Comment> selectComment(String seller_id);
	//��ѯͶ��
	public List<ComplaintHandling> selectComplaintHandling(String seller_id);
	//�õ�ID��
	public String getStringID();
}
