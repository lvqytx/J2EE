package team.j2ee.dao.impl;


import org.springframework.stereotype.Repository;

import team.j2ee.dao.AdminDao;
import team.j2ee.model.Administrator;
@Repository
public class AdminDaoImpl extends BaseDaoHibernate4<Administrator> implements AdminDao{
	
}
