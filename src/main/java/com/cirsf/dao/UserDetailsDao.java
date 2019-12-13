package com.cirsf.dao;

import com.cirsf.model.Cause;
import com.cirsf.model.CausePersist;
import com.cirsf.model.Claim;
import com.cirsf.model.Contract;
import com.cirsf.model.PrologResult;
import com.cirsf.model.User;

public interface UserDetailsDao {
  User findUserByUsername(String username);
  String addUser(User user);
  void addCause(CausePersist cause);
  
}
