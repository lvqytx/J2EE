package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.ShoppingCartDao;
import team.j2ee.model.ShoppingCart;

@Repository
public class ShoppingCartDaoImpl extends BaseDaoHibernate4<ShoppingCart> implements ShoppingCartDao{

}
