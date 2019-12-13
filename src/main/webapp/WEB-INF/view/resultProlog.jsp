<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- import di classi Java -->
<%@ page import="com.cirsf.model.Cause"%>
<%@ page import="java.util.List"%>
<%@ page import="com.cirsf.model.Person"%>

<html>

<head>


<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/Myjs/myScript.js"></script>
<link href="resources/MyCSS/myCSS.css" rel="stylesheet">

<title>Final Result</title>

</head>

<body onload="ciao()">

<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="${pageContext.request.contextPath}/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      </a>
    </nav>

<div class="container">

<div class="py-5 text-center">
<h2>Result</h2>
<p style="justify">That is the result of your question:</p>
</div> <!-- Chiudo parte sopra -->

</div> <!-- Chiudo container -->

<div class="py-5 text-center">

<h3>Country: ${cause.result.country}</h3> <br>
<h3>Court: ${cause.result.court}</h3> <br>
<h3>${cause.result.errors}</h3> <br>
</div>


<a href="${pageContext.request.contextPath}/index.jsp">Torna alla home page</a><br />

</body>
</html>