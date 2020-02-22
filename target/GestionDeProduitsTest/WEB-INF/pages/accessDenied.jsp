<%--
  Created by IntelliJ IDEA.
  User: yassine
  Date: 21/02/20
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Access Denied!</title>
</head>
<body>
    <h3>Bonjour ${user}, Vous n'avez pas le droit d'accéder à cette page.</h3>
    <a href="${header.referer}">Annuler</a>
</body>
</html>
