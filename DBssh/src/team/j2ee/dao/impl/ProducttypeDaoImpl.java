package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.ProducttypeDao;
import team.j2ee.model.ProductType;

@Repository
public class ProducttypeDaoImpl extends BaseDaoHibernate4<ProductType> implements ProducttypeDao{

}
