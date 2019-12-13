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
@Table(name = "contract")
public class Contract implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_CONTRACT")
	private int id;
	@Column(name = "CONSIDERATION")
	private String consideration;
	@Column(name = "TYPEE")
	private String type;
	@Column(name = "OBLIGATIONTARGET")
	private String obligationTarget;
	@Column(name = "OBLIGATIONTARGETUSE")
	private String obligationTargetUse;
	@Column(name = "IMMOVABLEPROPERTYCOUNTRY")
	private String immovablePropertyCountry;
	@Column(name = "IMMOVABLEPROPERTYCITY")
	private String immovablePropertyCity;
	@Column(name = "PLACEOFPROVISION")
	private String placeOfProvision;
	@Column(name = "PLACEOFPROVISIONCITY")
	private String placeOfProvisionCity;
	@Column(name = "PLACEOFPROVISION2")
	private String placeOfProvision2;
	@Column(name = "PLACEOFPROVISIONCITY2")
	private String placeOfProvisionCity2;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "ID_CAUSE", referencedColumnName = "id_cause")
    private CausePersist cause;
	public CausePersist getCause() {
		return cause;
	}
	public void setCause(CausePersist cause) {
		this.cause = cause;
	}
	
	public String getPlaceOfProvision2() {
		return placeOfProvision2;
	}
	public void setPlaceOfProvision2(String placeOfProvision2) {
		this.placeOfProvision2 = placeOfProvision2;
	}
	public String getPlaceOfProvisionCity2() {
		return placeOfProvisionCity2;
	}
	public void setPlaceOfProvisionCity2(String placeOfProvisionCity2) {
		this.placeOfProvisionCity2 = placeOfProvisionCity2;
	}
	public String getPlaceOfProvision() {
		return placeOfProvision;
	}
	public void setPlaceOfProvision(String placeOfProvision) {
		this.placeOfProvision = placeOfProvision;
	}
	public String getPlaceOfProvisionCity() {
		return placeOfProvisionCity;
	}
	public void setPlaceOfProvisionCity(String placeOfProvisionCity) {
		this.placeOfProvisionCity = placeOfProvisionCity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getConsideration() {
		return consideration;
	}
	public void setConsideration(String consideration) {
		this.consideration = consideration;
	}
	
	public String getObligationTarget() {
		return obligationTarget;
	}
	public void setObligationTarget(String obligationTarget) {
		this.obligationTarget = obligationTarget;
	}
	public String getObligationTargetUse() {
		return obligationTargetUse;
	}
	public void setObligationTargetUse(String obligationTargetUse) {
		this.obligationTargetUse = obligationTargetUse;
	}
	public String getImmovablePropertyCountry() {
		return immovablePropertyCountry;
	}
	public void setImmovablePropertyCountry(String immovablePropertyCountry) {
		this.immovablePropertyCountry = immovablePropertyCountry;
	}
	public String getImmovablePropertyCity() {
		return immovablePropertyCity;
	}
	public void setImmovablePropertyCity(String immovablePropertyCity) {
		this.immovablePropertyCity = immovablePropertyCity;
	}
	
	
	
}
