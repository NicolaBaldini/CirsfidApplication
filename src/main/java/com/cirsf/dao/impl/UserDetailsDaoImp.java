package com.cirsf.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cirsf.dao.UserDetailsDao;
import com.cirsf.model.Authorities;
import com.cirsf.model.CausePersist;
import com.cirsf.model.User;

@Repository
public class UserDetailsDaoImp implements UserDetailsDao {

  @Autowired
  private SessionFactory sessionFactory;
  @Transactional
  public User findUserByUsername(String username) {
    User res = (User) sessionFactory.getCurrentSession().get(User.class, username);
    sessionFactory.getCurrentSession().flush();
    return res;
  }

  @Transactional  
public String addUser(User user) {
	
	Authorities aut = new Authorities ();
	aut.setAuthority("ROLE_USER");
	aut.setUser(user);
	SQLQuery queryMaill = sessionFactory.getCurrentSession().createSQLQuery("SELECT email FROM users;");
	SQLQuery queryUsername = sessionFactory.getCurrentSession().createSQLQuery("SELECT username FROM users;");
	SQLQuery queryPassword = sessionFactory.getCurrentSession().createSQLQuery("SELECT password FROM users;");
	SQLQuery queryMail = sessionFactory.getCurrentSession().createSQLQuery("SELECT email FROM users;");
	List persistedMail = queryMail.list();
	List persistedUsernames = queryUsername.list();
	List persistedPw = queryPassword.list();
	for(Object o : persistedMail)
		if(user.getEmail().equalsIgnoreCase(o.toString()))
			return "Existing Email";
	for(Object o : persistedUsernames)
		if(user.getUsername().equalsIgnoreCase(o.toString()))
			return "Existing Username";
	for(Object o : persistedPw)
		if(user.getPassword().equalsIgnoreCase(o.toString()))
			return "Existing Password";

 	sessionFactory.getCurrentSession().save(user);
 	
	sessionFactory.getCurrentSession().save(aut);
	
	sessionFactory.getCurrentSession().flush();
	return "ok";
}
  @Transactional
public void addCause(CausePersist cause) {
	
	sessionFactory.getCurrentSession().saveOrUpdate(cause);
	sessionFactory.getCurrentSession().save(cause.getClaim());
	if(cause.getContract()!=null)
		sessionFactory.getCurrentSession().save(cause.getContract());
	sessionFactory.getCurrentSession().save(cause.getPrologResult());
	sessionFactory.getCurrentSession().flush();
}


}
