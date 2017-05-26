package team.j2ee.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T> {
	T get (Class<T> entityClass, Serializable id);
	Serializable save(T entity);
	void update(T entity);
	void delete(T entity);
	void delete(Class<T> entityClass,Serializable id);
	List<T> findAll(Class<T> entityClass);
	List<T> find(String hql);
	List<T> find(String hql,Object... params);
	long findConut(Class<T> entityClass);
	List<T> findByPage(String hql,int pageNo,int pageSize);
	List<T> findByPage(String hql,int pageNo,int pageSize,Object... params);
	String getStringID();
	List<Object[]> queryBySql(String sql);
}
