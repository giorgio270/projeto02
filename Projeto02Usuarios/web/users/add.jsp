<%-- 
    Document   : add
    Created on : 11/05/2020, 20:41:23
    Author     : Gio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projeto02.classes.User"%>
<%@page import="projeto02.classes.DbUser"%>
<!DOCTYPE html>
<%
    String erro = null;
    if(request.getParameter("add") != null){
        String name, email, cpf, rg, phone, adress;
        name = request.getParameter("name");
        email = request.getParameter("email");
        cpf = request.getParameter("cpf");
        rg = request.getParameter("rg");
        phone = request.getParameter("phone");
        adress = request.getParameter("adress");
      
        if(name.isEmpty())
            erro = "Nome não pode ser deixado em branco";
        else if(cpf.isEmpty())
            erro = "CPF não pode ser deixado em branco";
        else if(rg.isEmpty())
            erro = "RG não pode ser deixado em branco";
        else if(email.isEmpty())
            erro = "Email não pode ser deixado em branco";
        else if(phone.isEmpty())
            erro = "Telefone não pode ser deixado em branco";
        else if(adress.isEmpty())
            erro = "Endereço não pode ser deixado em branco";
        else{
            erro = null;
            User user = new User();
            user.setAttributes(name, cpf, rg, email, phone, adress);
            DbUser.getUsers().add(user);
            response.sendRedirect("list.jsp");

    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Novo Usuário</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2>Cadastrar Novo Usuário</h2><br>
        <%if(erro != null){%>
        <div style="color: red;"><%= erro%></div><br>
        <%}%>
        
        <form method="POST">
            Nome:<br> <input type="text" name="name"><br>
            CPF:<br> <input type="text" name="cpf" title="Exemplo de CPF: 123.123.123-12" pattern="([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})"><br>
            RG:<br> <input type="text" name="rg" title="Exemplo de RG: 12.123.123-1" pattern="([0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1})"><br>
            E-mail:<br> <input type="email" name="email"><br>
            Telefone:<br> <input type="text" name="phone"><br>
            Endereço:<br> <input type="text" name="adress"><br>
                       

            <input type="submit" name="add" value="Cadastrar">
        </form>
    </body>
</html>
