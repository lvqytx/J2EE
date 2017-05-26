package team.j2ee.service;

import java.util.List;
import java.util.Map;

import team.j2ee.model.Comment;
import team.j2ee.model.Product;
import team.j2ee.model.ProductType;

public interface IndexService {
	//��ҳ��ʼ��
	//�õ���Ʒ����
	public List<ProductType> selectProductType();
	//�õ���Ʒ����
	public List<Map<String,Object> > getSaleOrder();
	//�õ��̼�����
	public List<Map<String,Object> > getSellerOrder();
	//������Ʒ
	public List<Product> searchProduct(String mykey);
	//�����̼�
	public List<Product> searchSeller(String seller_id);
	//��Ʒ����
	public Product selectAProduct(String product_id);
	//��Ʒ����
	public List<Comment> selectComment(String product_id); 
	//�������
	public boolean addComment(String product_id,String customer_id,String message);
}
