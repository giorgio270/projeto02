<%-- 
    Document   : remove
    Created on : 13/05/2020, 11:50:46
    Author     : Allan
--%>

<%@page import="projeto02.classes.DbSupplier"%>
<%@page import="projeto02.classes.Supplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Supplier supplier = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        supplier = DbSupplier.getSuppliers().get(index);
                if (request.getParameter("remove")!= null) {
                    DbSupplier.getSuppliers().remove(index);
                    response.sendRedirect("list.jsp");
                }

    } catch (Exception e) {
        error = "Índice inválido";
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Fornecedor - Suppliers </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Remover Fornecedor?</h3>
        <%if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <b><%=supplier.getName()%></b><br/>
            Razão Social:<br/>
            <b><%=supplier.getCommercialName()%></b><br/>
            Cnpj:<br/>
            <b><%=supplier.getCnpj()%></b><br/>
            Email:<br/>
            <b><%=supplier.getEmail()%></b><br/>
            Telefone:<br/>
            <b><%=supplier.getPhone()%></b><br/>
            Endereço:<br/>
            <b><%=supplier.getAddress()%></b><br/>
            
            <br/>
            <input type="submit" name="remove" value="Excluir"/>

        </form>
    </body>
</html>
