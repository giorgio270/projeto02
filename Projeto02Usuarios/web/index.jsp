<%-- 
    Document   : index
    Created on : 11/05/2020, 22:30:26
    Author     : Gio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto02</title>
    </head>
    <body>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <h2><a href="users/list.jsp">Clientes</a></h2>
        <h2><a href="supplier/list.jsp">Fornecedores</a></h2>
        <h3><a href="supplier/list.jsp">Lista de fornecedores</a></h3>
        <h3><a href="users/list.jsp">Lista de clientes</a></h3>
    </body>
</html>
