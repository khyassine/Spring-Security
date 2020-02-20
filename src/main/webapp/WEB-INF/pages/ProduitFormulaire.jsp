<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Ajouter/Modifier Produit</title>
</head>
<body>
	<div class="thumbnail">
	<div class="container">
		<div align="center">
			<h1>Ajouter/Modifier Produit</h1>
			<br>
			<form:form action="enregistrerProduit" method="post" modelAttribute="produit">
				<form:hidden path="id" />
				<div class="form-group row">
					<label for="libelle" class="col-sm-2 col-form-label">Libelle</label>
					<div class="col-sm-10">
						<form:input path="libelle" id="libelle" class="col-sm-12 col-md-7 form-control"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="prix" class="col-sm-2 col-form-label">Prix</label>
					<div class="col-sm-10">
						<form:input path="prix" id="prix" class="col-sm-12 col-md-7 form-control"/>
					</div>
				</div>
				
				<!-- TODO le cas de modification selected -->
				<div class="form-group row">
					<label for="type" class="col-sm-2 col-form-label">Type</label>
					<div class="col-sm-10">
					
						<form:select path="type" id="" class="col-sm-12 col-md-7 form-control " >
									<form:options />
						</form:select>
						
					</div>
				</div>
				<div class="form-group row">
	    			<div class="col-sm-10">
						<input type="submit" class="btn btn-primary mb-2" value="Enregistrer">
					</div>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>