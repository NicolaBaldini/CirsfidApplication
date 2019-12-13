<!DOCTYPE html>
<%@ page isELIgnored ="false" %>
<html lang="en">
<head>
<meta charset="UTF-8">

 
<!-- If IE use the latest rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<!-- Set the page to the width of the device and set the zoon level -->
<meta name="viewport" content="width = device-width, initial-scale = 1">

<!-- Bootstrap core CSS -->
  <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <script type="text/javascript" src="/CirsfidApplication/resources/Myjs/myScript.js"></script>
  
   <link href="resources/MyCSS/myCSS.css" rel="stylesheet">

 <title>HomePage</title>

</head>

<body class="bg-light">


<!-- Parte sopra della home -->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="/CirsfidApplication/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>
    

<!-- Bloccone -->

<!-- Lista comandi a sinistra -->
<div class="container-fluid">
	<div class="row"> 
	
	<nav class="col-2.5 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky" style="border-right:solid 2px;">
            <ul class="nav flex-column">
            
              <li class="nav-item lateraleSx">
                <a class="nav-link active" href="activationFlow">
                <img src="/CirsfidApplication/resources/img/aggiungi.png" class="iconSx" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <br><br> <label class="textIcon">New Cause</label> 
                </a>
              </li>

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
	
	<footer class="container">
      <p class="float-right"><a href="registration">Click here to register </a></p>
      <p class="float-left"><a href="login">Click here to login </a></p>
    </footer>
	
</div> <!-- Chiudo il bloccone -->


<!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="resources/bootstrap/assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="resources/bootstrap/assets/js/vendor/popper.min.js"></script>
  <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>