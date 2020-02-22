<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>

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

<title>Gestion des produits</title>
</head>
<body>
	<div class="container"><br><br>
		<div style="text-align: left">
			<h4>Bonjour <sec:authentication property="principal.username"/>!</h4>
			<div style="float: right;">
				<form id="logout" action="<%=request.getContextPath()%>/logout"
					  method="post" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" value="logout" class="btn btn-default btn-sm">Log
						out</button>
				</form>
			</div>
		</div>

		<div align="center">

			<h1>Liste des produits</h1>
			</br>
			<table border="1" class="table table-striped">
				<thead>
					<th>Libelle</th>
					<th>Prix</th>
					<th>Type</th>
					<th>Action</th>
				</thead>
				<tbody>
					<c:forEach var="p" items="${listProduit}" varStatus="status">
						<tr>
							<td>${p.libelle}</td>
							<td>${p.prix}</td>
							<td>${p.type.libelleFamille}</td>
							<td>
								<sec:authorize access="hasRole('ROLE_ADMIN')">
								<button><a href="modifierProduit?id=${p.id}">Edit</a></button>
								</sec:authorize>

								<sec:authorize access="hasRole('ROLE_ADMIN')">
								<button ><a href="supprimerProduit?id=${p.id}">Delete</a></button>
								</sec:authorize>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<sec:authorize access="hasRole('ROLE_ADMIN')" >
				<div style="text-align: center;">Ajouter un nouveau produit <a href="ajouterProduit">ici</a></div>
			</sec:authorize>
		</div>
	</div>
</body>
</html>