package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.CustomerDao;
import team.j2ee.model.Customer;

@Repository
public class CustomerDaoImpl extends BaseDaoHibernate4<Customer> implements CustomerDao{

}
