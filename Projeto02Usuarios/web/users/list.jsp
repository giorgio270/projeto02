<%-- 
    Document   : list
    Created on : 13/05/2020, 10:31:35
    Author     : Allan
--%>

<%@page import="projeto02.classes.DbUser"%>
<%@page import="projeto02.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - Users </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h3><a href="add.jsp">Cadastrar Clientes</a></h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Cpf</th>
                <th>Rg</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            
            <%for(User user: DbUser.getUsers()){%>
            <tr>
                <td><%= user.getName() %></td>
                <td><%= user.getCpf()%></td>
                <td><%= user.getRg() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getPhone()%></td>
                <td><%= user.getAddress()%></td>
                <td>
                    <%int index = DbUser.getUsers().indexOf(user); %>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            
            
            <%}%>
        </table>
    </body>
</html>

