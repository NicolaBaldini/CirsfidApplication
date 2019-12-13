package com.cirsf.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User implements Serializable{
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@Id
  @Column(name = "USERNAME")
  private String username;

  @Column(name = "PASSWORD", nullable = false)
  private String password;
  
  @Column(name = "EMAIL", nullable = false)
  private String email;


  @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
  private Set<Authorities> authorities = new HashSet<Authorities>();
  
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "user",fetch = FetchType.EAGER) 
  private Set<CausePersist> cause = new HashSet<CausePersist>();

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }
  
  public String getEmail() {
	    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public Set<Authorities> getAuthorities() {
    return authorities;
  }

  public void setAuthorities(Set<Authorities> authorities) {
    this.authorities = authorities;
  }
  
  public void setCause(Set<CausePersist> causes) {
	    this.cause = causes;
	  }
	  
	  public Set<CausePersist> getCause() {
		    return cause;
		  }
}
