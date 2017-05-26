package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.ComplaintHandlingDao;
import team.j2ee.model.ComplaintHandling;

@Repository
public class ComplaintHandlingDaoImpl extends BaseDaoHibernate4<ComplaintHandling> implements ComplaintHandlingDao{

}
