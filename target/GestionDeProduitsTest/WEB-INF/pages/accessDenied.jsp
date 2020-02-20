<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>AccessDenied page</title>
</head>
<body>
	<div style="text-align: center;font-size: 21px;">
	    Bonjour <strong>${user}</strong>, Vous n'avez pas le droit d'accéder à cette page.<br>
	    <a href="<c:url value="/" />">Annuler</a>
    </div>
</body>
</html>