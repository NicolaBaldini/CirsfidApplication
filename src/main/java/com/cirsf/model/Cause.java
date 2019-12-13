package com.cirsf.model;

import java.io.Serializable;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Cause implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id = 1;
	@Autowired
	private ArrayList<Person> persons;
	@Autowired
	private Claim claim;
	@Autowired
	private Contract contract;
	@Autowired
	private PrologResult result;
	
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public PrologResult getResult() {
		return result;
	}
	public void setPrologResult(PrologResult result) {
		this.result = result;
	}
	public ArrayList<Person> getPersons() {
		return persons;
	}
	public void setPersons(ArrayList<Person> persons) {
		this.persons = persons;
	}
	public Claim getClaim() {
		return claim;
	}
	public void setClaim(Claim claim) {
		this.claim = claim;
	}
	public Contract getContract() {
		return contract;
	}
	public void setContract(Contract contract) {
		this.contract = contract;
	}
	
}
