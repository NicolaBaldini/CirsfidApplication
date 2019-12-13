<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- import di classi Java -->
<%@ page import="com.cirsf.model.Cause"%>
<%@ page import="java.util.List"%>

<%! int counter=1; %>

<html>
<head>
	<!-- Bootstrap core CSS -->
  <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/MyCSS/myCSS.css" rel="stylesheet">
<title>AddPerson Home</title>
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
<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/img/group.png" alt="" width="72" height="72">
<h2>Home Page Person</h2>
<p style="justify"> List of people already added to the Cause</p>
</div> <!-- Chiudo parte sopra -->

<%counter = 1; %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>

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
  <c:forEach items="${cause.persons}" var="persona">
  <tbody>
    <tr>
      <th scope="row"><%=counter %></th>
      <td>${persona.domicile}</td>
      <td>${persona.cityDomicile}</td>
      <td>${persona.nature}</td>
      <td>${persona.role}</td>
      <td>${persona.type}</td>
      <td>${persona.work}</td>
      <td>${persona.cityWork}</td>
      <td>${persona.activityIn}</td>
      <td>${persona.cityActivity}</td>
      <td>${persona.establishment}</td>
      <td>${persona.cityEstablishment}</td>
      <%counter++; %>
    </tr>
  </tbody>
  </c:forEach>
</table>




</div> <!-- Chiudo container -->

<div><br><br></div>

<div class = "container">

<div class="row">

<!-- Button to add another person, linked to addPerson.jsp -->
<div class="col-md-1"></div>
<div class="col-md-2">
<form method="post" action="${flowExecutionUrl}">
	<input type="hidden" name="_eventId" value="add">
	<input type="submit" name="add" value="Add new Person" />
</form>
</div>

<!-- Button to stop adding people -->
<div class="col-md-1">
<form method="post" action="${flowExecutionUrl}">
	<input type="hidden" name="_eventId" value="finish">
	<input type="submit" name="finish" value="Finish" />
</form>
</div>

<div class="col-md-2">
<!-- Button back -->
<form action="${flowExecutionUrl}/addClaim.jsp">
<input type="submit" value="Go Back">
</form>


</div>
</div>
</div>

<div><br><br></div>

</body>
</html>