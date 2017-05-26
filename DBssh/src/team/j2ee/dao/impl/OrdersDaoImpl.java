package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.OrdersDao;
import team.j2ee.model.Orders;

@Repository
public class OrdersDaoImpl extends BaseDaoHibernate4<Orders> implements OrdersDao{

}
