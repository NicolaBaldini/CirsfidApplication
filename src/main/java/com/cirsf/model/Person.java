package com.cirsf.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "person")
public class Person implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // Possibile che non sia giusto "person" ma potrebbe essere cause...boh
	@Column(name = "ID_PERSON")
	private int id;
	@Column(name = "NATURE")
	private String nature;
	@Column(name = "ROLEE", nullable = false)
	private String role;
	@Column(name = "TYPEE")
	private String type;
	@Column(name = "COUNTRYWORK")
	private String work;
	@Column(name = "CITYWORK")
	private String cityWork;
	@Column(name = "COUNTRYACTIVITY")
	private String activityIn;
	@Column(name = "CITYACTIVITY")
	private String cityActivity;
	@Column(name = "DOMICILE", nullable = false)
	private String domicile;
	@Column(name = "CITYDOMICILE", nullable = false)
	private String cityDomicile;
	@Column(name = "ESTABLISHMENT")
	private String establishment;
	@Column(name = "CITYESTABLISHMENT")
	private String cityEstablishment;
	
	@ManyToOne
	  @JoinColumn(name = "ID_CAUSE")
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
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getActivityIn() {
		return activityIn;
	}
	public void setActivityIn(String activityIn) {
		this.activityIn = activityIn;
	}
	public String getDomicile() {
		return domicile;
	}
	public void setDomicile(String domicile) {
		this.domicile = domicile;
	}
	public String getEstablishment() {
		return establishment;
	}
	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}

	public String getCityWork() {
		return cityWork;
	}

	public void setCityWork(String cityWork) {
		this.cityWork = cityWork;
	}

	public String getCityActivity() {
		return cityActivity;
	}

	public void setCityActivity(String cityActivity) {
		this.cityActivity = cityActivity;
	}

	public String getCityDomicile() {
		return cityDomicile;
	}

	public void setCityDomicile(String cityDomicile) {
		this.cityDomicile = cityDomicile;
	}

	public String getCityEstablishment() {
		return cityEstablishment;
	}

	public void setCityEstablishment(String cityEstablishment) {
		this.cityEstablishment = cityEstablishment;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", nature=" + nature + ", role=" + role + ", type=" + type + ", work=" + work
				+ ", cityWork=" + cityWork + ", activityIn=" + activityIn + ", cityActivity=" + cityActivity
				+ ", domicile=" + domicile + ", cityDomicile=" + cityDomicile + ", establishment=" + establishment
				+ ", cityEstablishment=" + cityEstablishment + "]";
	}
	
	

	
	
	
	
}
