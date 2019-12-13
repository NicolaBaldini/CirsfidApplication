package com.cirsf.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name = "cause")
public class CausePersist implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_CAUSE")
	private int id;
	@ManyToOne
	  @JoinColumn(name = "USERNAME")
	  private User user;
	
	@Column(name = "PATHPROLOG")
	  private String pathProlog;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "cause",fetch = FetchType.EAGER)
	private Set<Person> persons = new HashSet<Person>();
	
	@OneToOne(mappedBy = "cause")
    private Claim claim;
	
	@OneToOne(mappedBy = "cause")
    private PrologResult prologResult;
	
	@OneToOne(mappedBy = "cause")
	@NotFound(action=NotFoundAction.IGNORE)
    private Contract contract;
	
	public Contract getContract() {
		return contract;
	}
	public void setContract(Contract contract) {
		this.contract = contract;
	}
	public PrologResult getPrologResult() {
		return prologResult;
	}
	public void setPrologResult(PrologResult prologResult) {
		this.prologResult = prologResult;
	}
	public Claim getClaim() {
		return claim;
	}
	public void setClaim(Claim claim) {
		this.claim = claim;
	}
	public Set<Person> getPersons() {
		return persons;
	}
	public void setPersons(Set<Person> persons) {
		this.persons = persons;
	}

	public String getPathProlog() {
		return pathProlog;
	}
	public void setPathProlog(String pathProlog) {
		this.pathProlog = pathProlog;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
