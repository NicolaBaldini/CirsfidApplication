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
@Table(name = "claim")
public class Claim implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_CLAIM")
	private int id;
	@Column(name = "MATTER")
	private String matter;
	@Column(name = "GRADE")
	private String grade;
	@Column(name = "TYPEE")
	private String type;
	@Column(name = "OBJECT1", nullable=false)
	private String object1;
	@Column(name = "OBJECT2")
	private String object2;
	@Column(name = "SEISEDCOUNTRY")
	private String seisedCountry;
	@Column(name = "SEISEDCITY")
	private String seisedCity;
	@Column(name = "JURISDITIONCIVIL")
	private String jurisdictionCivil;
	@Column(name = "JURISDITIONCIVILCITY")
	private String jurisdictionCivilCity;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "ID_CAUSE", referencedColumnName = "id_cause")
    private CausePersist cause;
	public CausePersist getCause() {
		return cause;
	}
	public void setCause(CausePersist cause) {
		this.cause = cause;
	}
	public String getJurisdictionCivil() {
		return jurisdictionCivil;
	}
	public void setJurisdictionCivil(String jurisdictionCivil) {
		this.jurisdictionCivil = jurisdictionCivil;
	}
	public String getJurisdictionCivilCity() {
		return jurisdictionCivilCity;
	}
	public void setJurisdictionCivilCity(String jurisdictionCivilCity) {
		this.jurisdictionCivilCity = jurisdictionCivilCity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMatter() {
		return matter;
	}
	public void setMatter(String matter) {
		this.matter = matter;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getObject1() {
		return object1;
	}
	public void setObject1(String object) {
		this.object1 = object;
	}
	public String getObject2() {
		return object2;
	}
	public void setObject2(String object) {
		this.object2 = object;
	}
	public String getSeisedCountry() {
		return seisedCountry;
	}
	public void setSeisedCountry(String seisedCountry) {
		this.seisedCountry = seisedCountry;
	}
	public String getSeisedCity() {
		return seisedCity;
	}
	public void setSeisedCity(String seisedCity) {
		this.seisedCity = seisedCity;
	}
	
	
}
