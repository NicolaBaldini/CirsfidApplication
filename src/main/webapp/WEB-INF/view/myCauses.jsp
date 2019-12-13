<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- import di classi Java -->
<%@ page import="com.cirsf.model.CausePersist"%>
<%@ page import="com.cirsf.model.User"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>

<%! int counter=1; %>

<html>
<head>
	<!-- Bootstrap core CSS -->
  <link href="/CirsfidApplication/resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/CirsfidApplication/resources/MyCSS/myCSS.css" rel="stylesheet">
<title>MyCauses</title>
</head>

<body>

<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="${pageContext.request.contextPath}/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="${pageContext.request.contextPath}/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>


<div class="container">

<div class="py-5 text-center">
<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/img/locker.png" alt="" width="72" height="72">
<h2>My Causes </h2>
<br><br>
<p style="justify"> You've got ${user.cause.size()} stored causes</p>
<br><p style="justify"> Claim of each Cause:</p>
</div> <!-- Chiudo parte sopra -->

<%counter = 1; %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ID_Cause</th>
      <th scope="col">ID_Claim</th>
      <th scope="col">Matter</th>
      <th scope="col">Grade</th>
      <th scope="col">Type</th>
      <th scope="col">Object1</th>
      <th scope="col">Object2</th>
      <th scope="col">SeisedCountry</th>
      <th scope="col">SeisedCity</th>
      <th scope="col">JurisdictionCivil</th>
      <th scope="col">JurisdictionCivilCity</th>
    </tr>
  </thead>
  <c:forEach items="${user.cause}" var="causa">
  <tbody>
    <tr>
      <th scope="row"><%=counter %></th>
      <td>${causa.id}</td>
      <td>${causa.claim.id}</td>
      <td>${causa.claim.matter}</td>
      <td>${causa.claim.grade}</td>
      <td>${causa.claim.type}</td>
      <td>${causa.claim.object1}</td>
      <td>${causa.claim.object2}</td>
      <td>${causa.claim.seisedCountry}</td>
      <td>${causa.claim.seisedCity}</td>
      <td>${causa.claim.jurisdictionCivil}</td>
      <td>${causa.claim.jurisdictionCivilCity}</td>
      <%counter++; %>
    </tr>
  </tbody>
  </c:forEach>
</table>

</div> <!-- Chiudo container -->


<div class="container">

<div class="py-5 text-center">
<p style="justify"> Person/People of each cause:</p>
</div> <!-- Chiudo parte sopra -->

<%counter = 1; %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ID_Cause</th>
      <th scope="col">ID_Person</th>
      <th scope="col">Domicile Country</th>
      <th scope="col">Domicile City</th>
      <th scope="col">Nature</th>
      <th scope="col">Role</th>
      <th scope="col">Type</th>
      <th scope="col">Work Country</th>
      <th scope="col">Work City</th>
      <th scope="col">Activity Country</th>
      <th scope="col">Activity City</th>
      <th scope="col">Establishment Country</th>
      <th scope="col">Establishment City</th>
    </tr>
  </thead>
  <c:forEach items="${user.cause}" var="causa">
  <c:forEach items="${causa.persons}" var="person">
  <tbody>
    <tr>
      <th scope="row"><%=counter %></th>
      <td>${causa.id}</td>
      <td>${person.id}</td>
      <td>${person.domicile}</td>
      <td>${person.cityDomicile}</td>
      <td>${person.nature}</td>
      <td>${person.role}</td>
      <td>${person.type}</td>
      <td>${person.work}</td>
      <td>${person.cityWork}</td>
      <td>${person.activityIn}</td>
      <td>${person.cityActivity}</td>
      <td>${person.establishment}</td>
      <td>${person.cityEstablishment}</td>
      <%counter++; %>
    </tr>
  </tbody>
  </c:forEach>
  </c:forEach>
</table>


</div> <!-- Chiudo container -->

<div class="container">

<div class="py-5 text-center">
<p style="justify"> Contract of each Cause:</p>
</div> <!-- Chiudo parte sopra -->

<%counter = 1; %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ID_Cause</th>
      <th scope="col">ID_Contract</th>
      <th scope="col">Consideration</th>
      <th scope="col">Type</th>
      <th scope="col">ObligationTarget</th>
      <th scope="col">ObligationTargetUSe</th>
      <th scope="col">ImmovablePropertyCountry</th>
      <th scope="col">ImmovablePropertyCity</th>
      <th scope="col">PlaceOfProvision</th>
      <th scope="col">PlaceOfProvisionCity</th>
      <th scope="col">PlaceOfProvision2</th>
      <th scope="col">PlaceOfProvisionCity2</th>
    </tr>
  </thead>
  <c:forEach items="${user.cause}" var="causa">
  <c:if test="${causa.contract.id!=null}">  
	  <tbody>
	    <tr>
	      <th scope="row"><%=counter %></th>
	      <td>${causa.id}</td>
	      <td>${causa.contract.id}</td>
	      <td>${causa.contract.consideration}</td>
	      <td>${causa.contract.type}</td>
	      <td>${causa.contract.obligationTarget}</td>
	      <td>${causa.contract.obligationTargetUse}</td>
	      <td>${causa.contract.immovablePropertyCountry}</td>
	      <td>${causa.contract.immovablePropertyCity}</td>
	      <td>${causa.contract.placeOfProvision}</td>
	      <td>${causa.contract.placeOfProvisionCity}</td>
	      <td>${causa.contract.placeOfProvision2}</td>
	      <td>${causa.contract.placeOfProvisionCity2}</td>
	      <%counter++; %>
	    </tr>
	  </tbody>
  </c:if>
  </c:forEach>
</table>

</div> <!-- Chiudo container -->


<div class="container">

<div class="py-5 text-center">
<p style="justify"> Results of each Cause:</p>
</div> <!-- Chiudo parte sopra -->

<%counter = 1; %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ID_Cause</th>
      <th scope="col">ID_Result</th>
      <th scope="col">Court</th>
      <th scope="col">Country</th>
      <th scope="col">Errors</th>
    </tr>
  </thead>
  <c:forEach items="${user.cause}" var="causa">
  <tbody>
    <tr>
      <th scope="row"><%=counter %></th>
      <td>${causa.id}</td>
      <td>${causa.prologResult.id}</td>
      <td>${causa.prologResult.court}</td>
      <td>${causa.prologResult.country}</td>
      <td>${causa.prologResult.errors}</td>
      <%counter++; %>
    </tr>
  </tbody>
  </c:forEach>
</table>

</div> <!-- Chiudo container -->


<div class = "container">

<div class="row">

<!-- Button to add another person, linked to addPerson.jsp -->
<div class="col-md-1"></div>
<div class="col-md-2">


<a class="navbar-brand col-sm-3 col-md-2 " href="/CirsfidApplication/index.jsp">Go Back</a>

</div>
</div>
</div>

<div></div>

</body>
</html>