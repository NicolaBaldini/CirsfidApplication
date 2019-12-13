<%@ page isELIgnored="false" %>

<!-- import di classi Java -->
<%@ page import="com.cirsf.model.Cause"%>

<html>

<head>


<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/MyCSS/myCSS.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/Myjs/myScript.js"></script>


<title>Contract</title>

</head>

<body onload="document.getElementById('place2').style.display = 'none'; document.getElementById('placeCity2').style.display = 'none';" class="bg-light">

<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="${pageContext.request.contextPath}/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="${pageContext.request.contextPath}/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>

<div class="container">

<div class="py-5 text-center">
<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/img/contract.png" alt="" width="72" height="72">
<h2>Add New Contract</h2>
<p style="justify">Please complete the form about the new Contract</p>
</div> <!-- Chiudo parte sopra -->

</div> <!-- Chiudo container -->



<div class="row">
<!-- Uso questo per centrare l'altro -->
<div class="col-md-1"></div>

<div class="col-md-10">
<form method="post" action="${flowExecutionUrl}">


<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the consideration of the contract?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="consideration" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="sale">Sale</option>
	<option value="loan">Loan</option>
	<option value="transport">Transport</option>
	<option value="accomodation">Accomodation</option>
	<option value="insurance">Insurance</option>
	<option value="employment">Employment</option>
	<option value="consumer">Consumer</option>
	<option value="tenancy">Tenancy</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the Obligation Target?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="obligationTarget" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="goods">Goods</option>
	<option value="service">Service</option>
	<option value="ship">Ship</option>
	<option value="credit">Credit</option>
	<option value="baggage">Baggage</option>
	<option value="immovableProperty">Immovable Property</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the type of contract?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="type" class="custom-select d-block w-25">
	<option disabled selected > -- select an option -- </option>
	<option value="saleOfGoods">Sale of Goods</option>
	<option value="provisionOfService">Provision of Services</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the use of the Obligation Target?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select name="obligationTargetUse" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
	<option value="commercial">Commercial</option>
	<option value="private">Private</option>
	<option value="sale">Sale</option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">In which country is the immovable property located?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="immovablePropertyCountry" class="custom-select d-block w-25" name="immovablePropertyCountry"  onChange="caricaCity(getElementById('immovablePropertyCountry'), getElementById('immovablePropertyCity'))">
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

<label class="labelsForm">In which city is the immovable property located?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="immovablePropertyCity" name="immovablePropertyCity" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the country in which the contract service is provided?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="placeOfProvision" name="placeOfProvision" class="custom-select d-block w-25" onChange="caricaCity(getElementById('placeOfProvision'), getElementById('placeOfProvisionCity'))">
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

<label class="labelsForm">What is the court in which the contract service is provided?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="placeOfProvisionCity" name="placeOfProvisionCity" class="custom-select d-block w-25">
	<option disabled selected> -- select an option -- </option>
</select>
</div>
</div>

</div><!-- Chiudo i selector -->

</div> <!-- Chiudo la row di label e selector -->

<div class="row">

<div class="col-md-6">

<label class="labelsForm">What is the country in which the contract service is provided?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="placeOfProvision2" name="placeOfProvision2" class="custom-select d-block w-25" onChange="caricaCity(getElementById('placeOfProvision2'), getElementById('placeOfProvisionCity2'))">
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

<label class="labelsForm">What is the court in which the contract service is provided?</label> 

</div><!-- Chiudo i label -->

<div class="col-md-4">

<div class="selector">
<div class="bootstrap-select-wrapper">       
<select id="placeOfProvisionCity2" name="placeOfProvisionCity2" class="custom-select d-block w-25">
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

<div class="row">

<div class="col-md-3"></div>
<div class="col-md-2.5">
<button id="btn" onClick="secondContract(getElementById('place2'),getElementById('placeCity2'))">Add a second Place of Provision</button>
</div>
<div class="col-md-2">
<!-- Button back -->
<button onclick="goBack()">Go Back</button>

<script>
function goBack() {
  window.history.back();
}
</script>
</div>
</div>

<div><br><br></div>

</body>
</html>