<%-- 
    Document   : add
    Created on : 13/05/2020, 16:33:39
    Author     : Gio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projeto02.classes.DbSupplier"%>
<%@page import="projeto02.classes.Supplier"%>
<!DOCTYPE html>
<%
    String erro = null;
    if(request.getParameter("add") != null){
        String name, commercialName, email, cnpj, phone, adress;
        name = request.getParameter("name");
        commercialName = request.getParameter("commercialName");
        cnpj = request.getParameter("cnpj");
        email = request.getParameter("email");
        phone = request.getParameter("phone");
        adress = request.getParameter("adress");
    
        if(name.isEmpty())
            erro = "Nome não pode ser deixado em branco";
        else if(commercialName.isEmpty())
            erro = "Nome comercial não pode ser deixado em branco";
        else if(cnpj.isEmpty())
            erro = "CNPJ não pode ser deixado em branco";
        else if(email.isEmpty())
            erro = "Email não pode ser deixado em branco";
        else if(phone.isEmpty())
            erro = "Telefone não pode ser deixado em branco";
        else if(adress.isEmpty())
            erro = "Endereço não pode ser deixado em branco";
        else{
            erro = null;
            Supplier supplier = new Supplier();
            supplier.setAttributes(name, commercialName, cnpj, email, phone, adress);
            DbSupplier.getSuppliers().add(supplier);
            response.sendRedirect("list.jsp");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Novo Usuário</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2>Cadastrar Novo Fornecedor</h2><br>
        <%if(erro != null){%>
        <div style="color: red;"><%= erro%></div><br>
        <%}%>
        
        <form method="POST">
            Nome:<br> <input type="text" name="name"><br>
            Nome Comercial:<br> <input type="text" name="commercialName"><br>
            CNPJ:<br> <input type="text" name="cnpj" title="Exemplo de CNPJ: 12.123.123/1234-12" pattern="([0-9]{2}[.][0-9]{3}[.][0-9]{3}[/][0-9]{4}[-][0-9]{2})"><br>        
            E-mail:<br> <input type="email" name="email"><br>
            Telefone:<br> <input type="text" name="phone"><br>
            Endereço:<br> <input type="text" name="adress"><br>
            
    
            <input type="submit" name="add" value="Cadastrar">
        </form>
    </body>
</html>