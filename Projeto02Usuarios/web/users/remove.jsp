<%-- 
    Document   : remove
    Created on : 13/05/2020, 11:50:46
    Author     : Allan
--%>

<%@page import="projeto02.classes.DbUser"%>
<%@page import="projeto02.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    User user = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        user = DbUser.getUsers().get(index);
                if (request.getParameter("remove")!= null) {
                    DbUser.getUsers().remove(index);
                    response.sendRedirect("list.jsp");
                }

    } catch (Exception e) {
        error = "Índice inválido";
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Cliente - Users </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Remover Cliente?</h3>
        <%if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <b><%=user.getName()%></b><br/>
            Cpf:<br/>
            <b><%=user.getCpf()%></b><br/>
            Rg:<br/>
            <b><%=user.getRg()%></b><br/>
            Email:<br/>
            <b><%=user.getEmail()%></b><br/>
            Telefone:<br/>
            <b><%=user.getPhone()%></b><br/>
            Endereço:<br/>
            <b><%=user.getAddress()%></b><br/>
            
            <br/>
            <input type="submit" name="remove" value="Excluir"/>

        </form>
    </body>
</html>
