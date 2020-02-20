<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value='submit'/>" method='POST'>
<table>
	<tr>
		<td>Login :</td>
		<td><input type="text" name="login"/></td>
	</tr>
	<tr>
		<td>Mot de passe :</td>
		<td><input type="password" name="motdepasse"/></td>
	</tr>
	<tr>
	<td colspan="2">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="Valider"/>
		<input type="reset" value="Annuler"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>