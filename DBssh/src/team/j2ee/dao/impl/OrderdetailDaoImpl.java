package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.OrderdetailDao;
import team.j2ee.model.Orderdetail;

@Repository
public class OrderdetailDaoImpl extends BaseDaoHibernate4<Orderdetail> implements OrderdetailDao{

}
