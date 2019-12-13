<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>


<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/MyCSS/myCSS.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/Myjs/myScript.js"></script>

<title>Add new Person</title>

</head>

<body class="bg-light">

<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="${pageContext.request.contextPath}/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="${pageContext.request.contextPath}/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>

<div class="container">

<div class="py-5 text-center">
<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/img/person.png" alt="" width="72" height="72">
<h2>Add New Person</h2>
<p style="justify">Please complete the form about the new Person</p>
</div> <!-- Chiudo parte sopra -->

</div> <!-- Chiudo container -->

<div class="row">
<!-- Uso questo per centrare l'altro -->
<div class="col-md-1"></div>

<div class="col-md-10">
<form method="post" action="${flowExecutionUrl}">


<!-- <div class="row">

<div class="col-md-6">

<label class="labelsForm"> Insert person ID (blank for default):</label>  

</div>Chiudo i label

<div class="col-md-4">

<input name="idPerson" type="text" style="margin-left:5%; padding:2.5%; width:72%;">

</div>Chiudo i selector

</div> Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Choose the nature of the Person:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="nature" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="legal">Legal</option>
	<option value="natural">Natural</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">*What is the Role of the Person in the Cause?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="role" required class="custom-select d-block w-25">
	<option disabled selected value=""> -- select an option -- </option>
	<option value="plaintiff">Plaintiff</option>
	<option value="defendant">Defendant</option>
	<option value="thirdParty">Third Party</option>
	<option value="claimant">Claimant</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the type of the Person?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="type" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="consumer">Consumer</option>
	<option value="business">Business</option>
	<option value="employer">Employer</option>
	<option value="employee">Employee</option>
	<option value="insurer">Insurer</option>
	<option value="trust">Trust</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Which state for the Work?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="work" name="work" class="custom-select d-block w-25" onChange="caricaCity(getElementById('work'), getElementById('cityWork'))">
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

<label class="labelsForm">Select the city work:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="cityWork" name="cityWork" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Which state for the Activity?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="activityIn" name="activityIn" class="custom-select d-block w-25" onChange="caricaCity(getElementById('activityIn'), getElementById('cityActivity'))">
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

<label class="labelsForm">Select the city activity:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="cityActivity" name="cityActivity" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">*Select the domicile of the person:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="domicile" name="domicile" class="custom-select d-block w-25" required onChange="caricaCity(getElementById('domicile'), getElementById('cityDomicile'))">
	<option disabled selected value=""> -- select an option -- </option>
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

<label class="labelsForm">*Domicile city:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="cityDomicile" name="cityDomicile" required class="custom-select d-block w-25">
	<option disabled selected value=""> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">Where is the Establishment?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="establishment" name="establishment" class="custom-select d-block w-25" onChange="caricaCity(getElementById('establishment'), getElementById('cityEstablishment'))">
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

<label class="labelsForm">Establishment city:</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="cityEstablishment" name="cityEstablishment" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<hr>
  <input type="hidden" name="_eventId" value="confirm">
  <input type="submit" name="confirm" value="Confirm" />
</form>

</div>

</div>
<div><br><br></div>
</body>
</html>