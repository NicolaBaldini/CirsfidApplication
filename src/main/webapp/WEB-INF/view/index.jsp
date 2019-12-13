<!DOCTYPE html>
<%@ page isELIgnored ="false" %>
<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
<meta charset="UTF-8">

 
<!-- If IE use the latest rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<!-- Set the page to the width of the device and set the zoon level -->
<meta name="viewport" content="width = device-width, initial-scale = 1">

<!-- Bootstrap core CSS -->
  <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/Myjs/myScript.js"></script>
  
   <link href="resources/MyCSS/myCSS.css" rel="stylesheet">
 <title>HomePage</title>

</head>

<body class="bg-light">


<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="${pageContext.request.contextPath}/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>
    

<!-- Bloccone -->
  <br />


<!-- Lista comandi a sinistra -->
<div class="container-fluid">
<security:authorize access="hasAnyRole('ROLE_PROV')">
	<p class="float-leftt" style="margin-rigth:9%"><a href="goToRegistration">Click here to register</a></p>
</security:authorize>
	<div class="row"> 
	
	<nav class="col-2.5 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky" style="border-right:solid 2px;">
            <ul class="nav flex-column">
            <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_PROV')">
              <li class="nav-item lateraleSx">
                <a class="nav-link active" href="activationFlow">
                <img src="${pageContext.request.contextPath}/resources/img/aggiungi.png" class="iconSx" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <br><br> <label class="textIcon">New Cause</label> 
                </a>
              </li>
              </security:authorize>
             <security:authorize access="hasRole('ROLE_ADMIN')">
              <li class="nav-item lateraleSx">
                <a class="nav-link" href="goToUploadPrologFile" >
                  <img src="${pageContext.request.contextPath}/resources/img/sheet.png" class="iconSx" width="24" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <br><br><label>Upload Prolog File</label>
                </a>
              </li>
              </security:authorize>
              <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
              <li class="nav-item lateraleSx">
                <a class="nav-link" href="goToMyCauses/<security:authentication property="name"/>" >
                 <img src="${pageContext.request.contextPath}/resources/img/locker.png" class="iconSx" width="24" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <br><br><label class="textIcon"> My Causes </label>
                </a>
              </li>
              </security:authorize>
              <security:authorize access="hasRole('ROLE_ADMIN')">
              <li class="nav-item lateraleSx">
                <a class="nav-link" href="#" onClick="pageInConstruction()">
                 <img src="${pageContext.request.contextPath}/resources/img/excelicon.png" class="iconSx" width="28" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <br><br><label>Upload Excel File</label>
                </a>
              </li>
              </security:authorize>
              <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
              <li class="nav-item lateraleSx">
                <a class="nav-link" href="#" onClick="pageInConstruction()">
                  <img src="${pageContext.request.contextPath}/resources/img/report.png" class="iconSx" width="28" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <br><br><label>Print PDF Report</label>
                </a>
              </li>
              </security:authorize>
            </ul>
          </div>
        </nav>
        <div class="col-sm-1"></div>
        	<div class="col-sm-8" >
        	<div class="centralDiv">
        	<h2 class="titoli">Welcome to Cirsfid Application</h2> 
        	
        	<p>
			The application allows the user to fill a form about a new generic Cause. Next it will use the inputs
			given, to generate a result, showing the Country and the Court which have to handle the Cause.
        	</p>
        	</div>
        	</div>

	</div> <!-- Chiudo Row -->
	<div class="row"> 
	
    <div class="col-sm-11" >
 <!-- Chiudo il bloccone -->
<security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
	<p class="float-right" style="margin-rigth:9%"><a href="login" style="margin-rigth: 9%">Logout</a></p>
</security:authorize>
<security:authorize access="hasAnyRole('ROLE_PROV')">
	<p class="float-right" style="margin-rigth:9%"><a href="login" style="margin-rigth: 9%">Return to home screen</a></p>
</security:authorize>
</div>
</div>
</div>
<!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="resources/bootstrap/assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="resources/bootstrap/assets/js/vendor/popper.min.js"></script>
  <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
	<div id="cookieconsent"></div>

<script src="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js"></script>
<script>
  window.cookieconsent.initialise({
    container: document.getElementById("cookieconsent"),
    palette:{
     popup: {background: "#1aa3ff"},
     button: {background: "#e0e0e0"},
    },
    revokable: true,
    onStatusChange: function(status) {
     console.log(this.hasConsented() ?
      'enable cookies' : 'disable cookies');
    },
    "position": "bottom-left",
    "theme": "classic",
    "domain": "https://i71n4.csb.app/",
    "secure": true,
    "content": {
      "header": 'Cookies used on the website!',
      "message": 'This website uses cookies to improve your experience.',
      "dismiss": 'Got it!',
      "allow": 'Allow cookies',
      "deny": 'Decline',
      "link": 'Learn more',
      "href": 'https://www.cookiesandyou.com',
      "close": '&#x274c;',
      "policy": 'Cookie Policy',
      "target": '_blank',
      }
   });

</script>
</body>
</html>