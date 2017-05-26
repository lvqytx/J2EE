package team.j2ee.dao.impl;

import org.springframework.stereotype.Repository;

import team.j2ee.dao.CommentDao;
import team.j2ee.model.Comment;

@Repository
public class CommentDaoImpl extends BaseDaoHibernate4<Comment> implements CommentDao {

}
