package com.cirsf.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cirsf.dao.UserDetailsDao;
import com.cirsf.model.User;
import com.cirsf.model.Authorities;

@Service("userDetailsService")
public class UserDetailsServiceImp implements UserDetailsService {

  @Autowired
  private UserDetailsDao userDetailsDao;
  

  @Transactional

  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

    User user = userDetailsDao.findUserByUsername(username);
    UserBuilder builder = null;
    if (user != null) {
      
      builder = org.springframework.security.core.userdetails.User.withUsername(username);
      builder.password(user.getPassword());
      List <String> auts = new ArrayList<String>();
      for(Authorities a : user.getAuthorities()) {
    	  auts.add(a.getAuthority());
    	  System.out.println(a.getAuthority());
      }
      String [] autorities = new String [auts.size()];
      for(int i =0; i<auts.size();i++)
    	  autorities[i]=auts.get(i);
      
      builder.authorities(autorities);
      

    } else {
    	System.out.println("Username o password non valido");
      throw new UsernameNotFoundException("User not found.");
    }
    return builder.build();
  }

}
