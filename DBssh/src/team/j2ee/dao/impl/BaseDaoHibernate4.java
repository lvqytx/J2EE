package team.j2ee.dao.impl;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import team.j2ee.dao.BaseDao;

public class BaseDaoHibernate4<T> implements BaseDao<T> {
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public T get(Class<T> entityClass, Serializable id) {		
		return (T)getSessionFactory().getCurrentSession().get(entityClass, id);
	}

	public Serializable save(T entity) {
		return getSessionFactory().getCurrentSession().save(entity);
	}

	public void update(T entity) {
		getSessionFactory().getCurrentSession().saveOrUpdate(entity);
	}


	public void delete(T entity) {
		getSessionFactory().getCurrentSession().delete(entity);
	}


	public void delete(Class<T> entityClass, Serializable id) {
		// TODO Auto-generated method stub
		getSessionFactory().getCurrentSession()
			.createQuery("delete " + entityClass.getSimpleName() + " en where en.id = ?0")
			.setParameter("0", id)
			.executeUpdate();
	}

	public List<T> findAll(Class<T> entityClass) {
		return find("select en from " + entityClass.getSimpleName() + " en");
	}

	
	public long findConut(Class<T> entityClass) {
		List<?> l = find("select count(*) from " + entityClass.getSimpleName());
		if (l != null && l.size() == 1){
			return (long)l.get(0);
		}
		return 0;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> find(String hql){
		return (List<T>)getSessionFactory().getCurrentSession().createQuery(hql).list();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> find(String hql,Object... params){
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		for(int i = 0 , len = params.length ; i < len ; i++){
			query.setParameter(i, params[i]);
		}
		return (List<T>)query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findByPage(String hql,int pageNo,int pageSize){
		return getSessionFactory().getCurrentSession()
				.createQuery(hql)
				.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize)
				.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findByPage(String hql,int pageNo,int pageSize,Object... params){
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		for(int i = 0 , len = params.length ; i < len ; i++){
			query.setParameter(i + "", params[i]);
		}
		return query
				.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize)
				.list();
	}
	@Override
	public String getStringID(){
		String id = null;
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		id = sdf.format(date);
		return id;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource(name="sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> queryBySql(String sql) {
		return this.getSessionFactory().getCurrentSession().createSQLQuery(sql).list();
	}

}
