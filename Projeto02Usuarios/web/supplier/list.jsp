<%-- 
    Document   : list
    Created on : 13/05/2020, 15:02:35
    Author     : Allan
--%>

<%@page import="projeto02.classes.DbSupplier"%>
<%@page import="projeto02.classes.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores - Suppliers </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h3><a href="add.jsp">Cadastrar Fornecedores</a></h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>Cnpj</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            
            <%for(Supplier supplier: DbSupplier.getSuppliers()){%>
            
                <td><%= supplier.getName() %></td>
                <td><%= supplier.getCommercialName()%></td>
                <td><%= supplier.getCnpj()%></td>
                <td><%= supplier.getEmail() %></td>
                <td><%= supplier.getPhone()%></td>
                <td><%= supplier.getAddress()%></td>
                <td>
                    <%int index = DbSupplier.getSuppliers().indexOf(supplier); %>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            
            
            
            <%}%>
        </table>
    </body>
</html>

