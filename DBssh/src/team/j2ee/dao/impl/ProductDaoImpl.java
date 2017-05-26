package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.ProductDao;
import team.j2ee.model.Product;

@Repository
public class ProductDaoImpl extends BaseDaoHibernate4<Product> implements ProductDao{

}
