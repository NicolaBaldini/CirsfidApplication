package com.cirsf.config;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.cirsf.model.Cause;
import com.cirsf.model.Claim;
import com.cirsf.model.Contract;
import com.cirsf.model.Person;
import com.cirsf.model.PrologResult;
import com.cirsf.service.PrologController;
import com.cirsf.service.ParameterController;

@Configuration
public class BeanDefinition {

	@Bean
	public Claim claim() {
		return new Claim();
	}
	
	@Bean
	public Contract contract() {
		return new Contract();
	}
	
	@Bean 
	public Person person() {
		return new Person();	
	}
	
	@Bean
	public ArrayList<Person> listPerson(){
		return new ArrayList<Person>();
	}
	
	@Bean
	public Cause cause(Claim c, ArrayList<Person> list, Contract cont, PrologResult result) {
		
		Cause cause = new Cause();
		cause.setClaim(c);
		cause.setPersons(list);
		cause.setContract(cont);
		cause.setPrologResult(result);
		return cause;
	}
	
	@Bean
	public PrologResult result() {
		return new PrologResult();
	}
	
	@Bean
	public ParameterController sampleAction() {
		return new ParameterController();
	}
	
	@Bean
	public PrologController prologAction() {
		return new PrologController();
	}
	
	
	
}
