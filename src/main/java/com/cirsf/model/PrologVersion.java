package com.cirsf.model;

import org.springframework.stereotype.Component;

@Component
public class PrologVersion {

	private String prologPath;

	public String getPrologPath() {
		return prologPath;
	}

	public void setPrologPath(String prologPath) {
		this.prologPath = prologPath;
	}
	
}
