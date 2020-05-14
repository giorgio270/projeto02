<%-- 
    Document   : set
    Created on : 13/05/2020, 14:45:58
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
    try{
        index = Integer.parseInt(request.getParameter("index"));
        supplier = DbSupplier.getSuppliers().get(index);
        if(request.getParameter("set") != null){
        String name = request.getParameter("name");
        String commercialName = request.getParameter("commercialName");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        
        if(name.isEmpty()) error = "Nome não pode ser nulo";
        else if(commercialName.isEmpty()) error = "Razão Social não pode ser nulo";
        else if(cnpj.isEmpty()) error = "Cnpj não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(phone.isEmpty()) error = "Telefone não pode ser nulo";
        else if(address.isEmpty()) error = "Endereço não pode ser nulo";
        else{      
            Supplier editSupplier = new Supplier();
            editSupplier.setAttributes(name, commercialName, cnpj, email, phone, address);
            DbSupplier.getSuppliers().set(index,editSupplier);
            response.sendRedirect("list.jsp");
            
        }
    }
        
    }catch(Exception e){
        error = "Índice inválido";
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor - Fornecedor </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Alterar Fornecedor</h3>
        <%if(error != null){ %>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="name" value="<%=supplier.getName()%>"/><br/>
            Razão Social:<br/>
            <input type="text" name="commercialName" value="<%=supplier.getCommercialName()%>"/><br/>
            Cnpj:<br/>
            <input type="text" name="cnpj" value="<%=supplier.getCnpj()%>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%=supplier.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="phone" value="<%=supplier.getPhone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="address" value="<%=supplier.getAddress()%>"/><br/>
            <br/><input type="submit" name="set" value="Alterar"/>
            
        </form>
    </body>
</html>
