package com.cirsf.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "prologresult")
public class PrologResult implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id_result")
	private int id;
	@Column(name = "COURT")
	private String court;
	@Column(name = "COUNTRY")
	private String country;
	@Column(name = "ERRORS")
	private String errors;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_cause", referencedColumnName = "id_cause")
    private CausePersist cause;
	public CausePersist getCause() {
		return cause;
	}
	public void setCause(CausePersist cause) {
		this.cause = cause;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getErrors() {
		return errors;
	}
	public void setErrors(String errors) {
		this.errors = errors;
	}
	public String getCourt() {
		return court;
	}
	public void setCourt(String court) {
		this.court = court;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
	
}
