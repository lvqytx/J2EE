package team.j2ee.dao.impl;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import team.j2ee.dao.BaseDao;

public class BaseDaoHibernate3<T> extends HibernateDaoSupport implements BaseDao<T>{

	public T get(Class<T> entityClass, Serializable id) {
		return getHibernateTemplate().get(entityClass, id);
	}

	public Serializable save(T entity) {
		return getHibernateTemplate().save(entity);
	}

	public void update(T entity) {
		getHibernateTemplate().saveOrUpdate(entity);
	}

	public void delete(T entity) {
		getHibernateTemplate().delete(entity);
	}

	public void delete(Class<T> entityClass, Serializable id) {
		delete(get(entityClass, id));
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<T> findAll(Class<T> entityClass) {
		return (List<T>)getHibernateTemplate().find("select en from " + entityClass.getSimpleName() + " en");
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public long findConut(Class<T> entityClass) {
		List<Long> list = (List<Long>)getHibernateTemplate().find("select count(*) from " + entityClass.getSimpleName() + " en");
		return list.get(0);
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findByPage(final String hql,final int pageNo,final int pageSize){
		List<T> list = getHibernateTemplate().execute(new HibernateCallback<List<T> >() {
			public List<T> doInHibernate(Session session){
				List<T> result = session.createQuery(hql)
						.setFirstResult((pageNo - 1) * pageSize)
						.setMaxResults(pageSize)
						.list();
				return result;
			}
		});
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findByPage(final String hql,final int pageNo,final int pageSize,final Object... params){
		List<T> list = getHibernateTemplate().execute(new HibernateCallback<List<T> >() {
			public List<T> doInHibernate(Session session){
				Query query = session.createQuery(hql);
				for(int i = 0, len = params.length ; i < len ; i++){
					query.setParameter(i + "", params[i]);
				}
				List<T> result = query
						.setFirstResult((pageNo - 1) * pageSize)
						.setMaxResults(pageSize)
						.list();
				return result;
			}
		});
		return list;
	}
	
	@Override
	public String getStringID(){
		String id = null;
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		id = sdf.format(date);
		return id;
	}
	@Override
	public List<T> find(String hql) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public List<T> find(String hql, Object... params) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public List<Object[]> queryBySql(String sql) {
		// TODO 自动生成的方法存根
		return null;
	}
}
