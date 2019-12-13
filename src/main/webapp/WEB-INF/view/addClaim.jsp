<!DOCTYPE html>
<%@ page isELIgnored="false" %>
<!-- import di classi Java -->
<%@ page import="com.cirsf.model.Cause"%>
<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>
<html>

<head>


<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/Myjs/myScript.js"></script>
<link href="resources/MyCSS/myCSS.css" rel="stylesheet">

<title>Add new Claim</title>

</head>

<body class="bg-light" onload="document.getElementById('secondObject').style.display = 'none';">

<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="${pageContext.request.contextPath}/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="${pageContext.request.contextPath}/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>

<div class="container">

<div class="py-5 text-center">
<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/img/claim.png" alt="" width="72" height="72">
<h2>Add New Claim</h2>
</div> <!-- Chiudo parte sopra -->


<div class="row">
<!-- Uso questo per centrare l'altro -->
<div class="col-md-1"></div>

<div class="col-md-10">
<form method="post" action="${flowExecutionUrl}">

<div class="row">

<div class="col-md-6">

<!-- <label class="labelsForm"> Insert claim ID (blank for default):</label>     
 -->
</div><!-- Chiudo i label -->

<div class="col-md-4">

<input name="idClaim" type="hidden" style="margin-left:5%; padding:2.5%; width:72%;" value=<security:authentication property="name"/>>
	


</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->


<div class="row">

<div class="col-md-6">

<label class="labelsForm"> What is the claim Matter of the Cause?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="matter" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="civil">Civil</option>
	<option value="commercial">Commercial</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm"> What is the grade of the Claim?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select name="grade" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="first">First</option>
	<option value="appeal">Appeal</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm"> What is the type of the Claim?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select name="type" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="original">Original</option>
	<option value="counter">Counter</option>
	<option value="incidental">Incidental</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">*Choose Claim Object:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select name="object1" class="custom-select d-block w-25" required>
	<option disabled selected value=""> -- select an option -- </option>
	<option value="contract">Contract</option>
	<option value="tort">Tort</option>
	<option value="ownership">Ownership</option>
	<option value="rightsInRem">Rights in Rem</option>
	<option value="liability">Liability</option>
	<option value="trust">Trust</option>
	<option value="criminalProceeding">Criminal Proceeding</option>
	<option value="damagesRestitution">Damages Restitution</option>
	<option value="noMoreThan6Months">No more than 6 months</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div id="secondObject" class="row">

<div class="col-md-6">

<label class="labelsForm">*Choose the second Claim Object:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select name="object2" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="contract">Contract</option>
	<option value="tort">Tort</option>
	<option value="ownership">Ownership</option>
	<option value="rightsInRem">Rights in Rem</option>
	<option value="liability">Liability</option>
	<option value="trust">Trust</option>
	<option value="criminalProceeding">Criminal Proceeding</option>
	<option value="damagesRestitution">Damages Restitution</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">In which state has the proceeding been seised?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select id="seisedCountry" name="seisedCountry" class="custom-select d-block w-25" onChange="caricaCity(getElementById('seisedCountry'), getElementById('seisedCity'))">
	<option disabled selected> -- select an option -- </option>
	<option value="italy">Italy</option>
	<option value="france">France</option>
	<option value="germany">Germany</option>
	<option value="spain">Spain</option>
	<option value="uk">Uk</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">In which court of the state has the proceeding been seised?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select id="seisedCity" name="seisedCity" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Which state has Jurisdiction for civil proceedings?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select id="jurisdictionCivil" name="jurisdictionCivil" class="custom-select d-block w-25" onChange="caricaCity(getElementById('jurisdictionCivil'), getElementById('jurisdictionCivilCity'))">
	<option disabled selected> -- select an option -- </option>
	<option value="italy">Italy</option>
	<option value="france">France</option>
	<option value="germany">Germany</option>
	<option value="spain">Spain</option>
	<option value="uk">Uk</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Which court of the previously selected state has Jurisdiction for civil proceedings?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">    
<select id="jurisdictionCivilCity" name="jurisdictionCivilCity" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<hr>

<!-- Button confirm -->
    <input type="hidden" name="_eventId" value="confirm">
    <input type="submit" name="confirm" value="Confirm" />
</form>

<button id="btn" onClick="secondClaim(getElementById('secondObject'))">Add a second Claim Object</button>

</div>

</div>
</div> 

<div><br><br></div>
</body>


</html>