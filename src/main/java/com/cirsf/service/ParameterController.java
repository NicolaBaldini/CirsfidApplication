package com.cirsf.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.springframework.webflow.action.MultiAction;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import com.cirsf.dao.UserDetailsDao;
import com.cirsf.model.Cause;
import com.cirsf.model.CausePersist;
import com.cirsf.model.Contract;
import com.cirsf.model.Person;


@Repository
public class ParameterController extends MultiAction {
   
	@Autowired
	  private UserDetailsDao userDetailsDao;

    
    public Event addPersonToList (RequestContext context) throws Exception{
 
    	Cause c = (Cause) context.getActiveFlow().getApplicationContext().getBean("cause");
    	ArrayList<Person>lista = c.getPersons(); 
    
    	Person p = new Person();
    	p.setNature(context.getRequestParameters().get("nature"));
    	p.setRole(context.getRequestParameters().get("role"));
    	p.setType(context.getRequestParameters().get("type"));
    	p.setWork(context.getRequestParameters().get("work"));
    	p.setCityWork(context.getRequestParameters().get("cityWork"));
    	p.setActivityIn(context.getRequestParameters().get("activityIn"));
    	p.setCityActivity(context.getRequestParameters().get("cityActivity"));
    	p.setDomicile(context.getRequestParameters().get("domicile"));
    	p.setCityDomicile(context.getRequestParameters().get("cityDomicile"));
    	p.setEstablishment(context.getRequestParameters().get("establishment"));
    	p.setCityEstablishment(context.getRequestParameters().get("cityEstablishment"));

    	
    	lista.add(p);
    	c.setPersons(lista);
    	
        return success();
    }
    
    public Event addClaimParameter (RequestContext context) throws Exception {
		
    	Cause c = (Cause) context.getActiveFlow().getApplicationContext().getBean("cause");
    	c.setUsername(context.getRequestParameters().get("idClaim")); // username corrente
    	
    	c.getClaim().setMatter(context.getRequestParameters().get("matter"));
    	c.getClaim().setGrade(context.getRequestParameters().get("grade"));
    	c.getClaim().setType(context.getRequestParameters().get("type"));
    	c.getClaim().setObject1(context.getRequestParameters().get("object1"));
    	c.getClaim().setObject2(context.getRequestParameters().get("object2"));
    	c.getClaim().setSeisedCountry(context.getRequestParameters().get("seisedCountry"));
    	c.getClaim().setSeisedCity(context.getRequestParameters().get("seisedCity"));
    	c.getClaim().setJurisdictionCivil(context.getRequestParameters().get("jurisdictionCivil"));
    	c.getClaim().setJurisdictionCivilCity(context.getRequestParameters().get("jurisdictionCivilCity"));
    	
    	String username=context.getRequestParameters().get("idClaim");
    	CausePersist cause= new CausePersist();
    	cause.setClaim(c.getClaim());
    	cause.setUser(userDetailsDao.findUserByUsername(username));
    	
    	
    	return success();
    }
    
    
    
    public Event addContractParameter (RequestContext context) throws Exception {
		
    	
    	Cause c = (Cause) context.getActiveFlow().getApplicationContext().getBean("cause");
    	
    	Contract temp = new Contract();
    	c.setContract(temp);
    	c.getContract().setConsideration(context.getRequestParameters().get("consideration"));
    	c.getContract().setObligationTarget(context.getRequestParameters().get("obligationTarget"));
    	c.getContract().setObligationTargetUse(context.getRequestParameters().get("obligationTargetUse"));
    	c.getContract().setImmovablePropertyCountry(context.getRequestParameters().get("immovablePropertyCountry"));
    	c.getContract().setImmovablePropertyCity(context.getRequestParameters().get("immovablePropertyCity"));
    	c.getContract().setType(context.getRequestParameters().get("type"));
    	c.getContract().setPlaceOfProvision(context.getRequestParameters().get("placeOfProvision"));
    	c.getContract().setPlaceOfProvisionCity(context.getRequestParameters().get("placeOfProvisionCity"));
    	c.getContract().setPlaceOfProvision2(context.getRequestParameters().get("placeOfProvision2"));
    	c.getContract().setPlaceOfProvisionCity2(context.getRequestParameters().get("placeOfProvisionCity2"));

    	
    	return success();
    }
    
    //Controlla se è stato definito un contratto
    public Event checkContract (RequestContext context) throws Exception {
		
    	Cause c = (Cause) context.getActiveFlow().getApplicationContext().getBean("cause");
    	
    	System.out.println("Check contract??");
    	if(c.getClaim().getObject1() != null) {
	    	if(c.getClaim().getObject1().equals("contract")) {
	    		return yes();
	    	}
    	
	    	else if(c.getClaim().getObject2() != null) {
	    		if(c.getClaim().getObject2().equals("contract")) {
	    			return yes();
	    		}
	    		else
	    			return no();
	    	}
	    	
	    	else
	    		return no();
    	}
    	else
    		return no();

    	
    }
    
    
 
}