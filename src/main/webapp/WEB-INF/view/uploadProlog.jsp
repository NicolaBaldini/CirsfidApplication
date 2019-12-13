<html>
<head><title>Upload Prolog File</title>
 <link href="/CirsfidApplication/resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/CirsfidApplication/resources/MyCSS/myCSS.css" rel="stylesheet">
	<style>
		.formm{
			
			margin-left: 100px;
			
		
		}
		.submit{
			
			margin-left: 42%;
			margin-bottom: 10px;
		
		}
		.input{
			
			margin-left: 35%;
			margin-bottom: 10px;
			width: 500px;
		}
	</style>
  </head>
<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 " href="/CirsfidApplication/index.jsp">Cirsfid Application</a>
      <a class="navbar-brand col-sm-3 col-md-1" href="#">
      	<img src="/CirsfidApplication/resources/img/alma_mater.png" alt="Unibo" height="80px" width="80px">
      </a>
    </nav>
<div class="py-5 text-center">
<img class="d-block mx-auto mb-4" src="/CirsfidApplication/resources/img/sheet.png" alt="" width="72" height="72">
<h3> Upload Prolog File</h3>
</div> <!-- Chiudo parte sopra -->

<form class="formm" method="POST" action="/CirsfidApplication/uploadProlog" enctype="multipart/form-data">
    <input class="input" type="file" name="file" style="justify"/><br/><br/>
    <input class="submit" type="submit" value="Submit" style="justify"/>
</form>
<a class="navbar-brand col-sm-3 col-md-2 " href="/CirsfidApplication/index.jsp">Go Back</a>
</body>
</html>
