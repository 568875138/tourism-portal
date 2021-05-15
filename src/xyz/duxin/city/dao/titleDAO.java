package xyz.duxin.city.dao;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import xyz.duxin.city.bean.title;

public class titleDAO {
	private SessionFactory sessionFactory;
	private Query query;
	private String hql;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public title getById(BigInteger id) {
		Session session = sessionFactory.openSession();
		title TITLE = (title) session.get(title.class, id);
		session.close();
		return TITLE;
	}
	
	public title getInfo() {
		Session session = sessionFactory.openSession();
		hql = "FROM title WHERE classify=1 order by id desc";
		query = session.createQuery(hql);
		query.setMaxResults(1);
		title TITLE = (title) query.uniqueResult();
		session.close();
		return TITLE;
	}

	public List<title> getPage(int page, int classify) {
		Session session = sessionFactory.openSession();
		hql = "FROM title WHERE classify=:classify order by id desc";
		query = session.createQuery(hql);
		query.setParameter("classify", classify);
		query.setFirstResult((page - 1) * 50);
		query.setMaxResults(50);
		List<title> temp = query.list();
		session.close();
		return temp;
	}

	public List<title> getClassify(int classify, int count) {
		Session session = sessionFactory.openSession();
		hql = "FROM title WHERE classify=:classify order by id desc";
		query = session.createQuery(hql);
		query.setParameter("classify", classify);
		query.setMaxResults(count);
		List<title> temp = query.list();
		session.close();
		return temp;
	}

	public List<title> getLast(int count) {
		Session session = sessionFactory.openSession();
		hql = "FROM title order by id desc";
		query = session.createQuery(hql);
		query.setMaxResults(count);
		List<title> temp = query.list();
		session.close();
		return temp;
	}

	public Long getCount() {
		Session session = sessionFactory.openSession();
		Long count = (Long) session.createQuery("SELECT COUNT(1) from title").uniqueResult();
		session.close();
		return count;
	}

	public void addTitle(title titles) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		try {
			session.save(titles);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			session.close();
		}
	}

	public void deleteTitle(String id) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		try {
			String hql = "delete title where id=?";
			Query query = session.createQuery(hql);
			query.setBigInteger(0, new BigInteger(id));
			query.executeUpdate();
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			session.close();
		}
	}
}
