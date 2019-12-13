
function pageInConstruction(){
	alert("This Page is under Construction");
}


function secondContract(field1,field2){
	
	field1.style.display = 'block';	
	field2.style.display = 'block';	
}



function secondClaim(field){
	
	field.style.display = 'block';	
}


function caricaCity(state, toChange){
	
	var country = state.value;
	
	if(country == "italy"){
		toChange.innerHTML =
			"<option disabled selected value=\"\"> -- select an option -- </option>"+
			"<option value=\"bologna\">Bologna</option>"+
			"<option value=\"rome\">Rome</option>"+
			"<option value=\"milan\">Milan</option>"+
			"<option value=\"florence\">Florence</option>"		
	}
	if(country == "france"){
		toChange.innerHTML =
			"<option disabled selected value=\"\"> -- select an option -- </option>"+
			"<option value=\"paris\">Paris</option>"+
			"<option value=\"marseille\">Marseille</option>"+
			"<option value=\"lyon\">Lyon</option>"+
			"<option value=\"nice\">Nice</option>"		
	}
	if(country == "germany"){
		toChange.innerHTML =
			"<option disabled selected value=\"\"> -- select an option -- </option>"+
			"<option value=\"berlin\">Berlin</option>"+
			"<option value=\"hamburg\">Hamburg</option>"+
			"<option value=\"munich\">Munich</option>"+
			"<option value=\"cologne\">Cologne</option>"		
	}
	if(country == "spain"){
		toChange.innerHTML =
			"<option disabled selected value=\"\"> -- select an option -- </option>"+
			"<option value=\"madrid\">Madrid</option>"+
			"<option value=\"barcelon\">Barcelona</option>"+
			"<option value=\"valencia\">Valencia</option>"+
			"<option value=\"seville\">Seville</option>"		
	}
	if(country == "uk"){
		toChange.innerHTML =
			"<option disabled selected value=\"\"> -- select an option -- </option>"+
			"<option value=\"london\">London</option>"+
			"<option value=\"manchester\">Manchester</option>"+
			"<option value=\"liverpool\">Liverpool</option>"+
			"<option value=\"southampton\">Southampton</option>"		
	}
	
}