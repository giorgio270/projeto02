<%-- 
    Document   : set
    Created on : 13/05/2020, 14:45:58
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
    try{
        index = Integer.parseInt(request.getParameter("index"));
        user = DbUser.getUsers().get(index);
        if(request.getParameter("set") != null){
        String name = request.getParameter("name");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        if(name.isEmpty()) error = "Nome não pode ser nulo";
        else if(cpf.isEmpty()) error = "Cpf não pode ser nulo";
        else if(rg.isEmpty()) error = "Rg não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else{      
            User editUser = new User();
            editUser.setAttributes(name, cpf, rg, email, telefone, endereco);
            DbUser.getUsers().set(index,editUser);
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
        <title>Alterar Cliente - Clientes </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Alterar Cliente</h3>
        <%if(error != null){ %>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="name" value="<%=user.getName()%>"/><br/>
            Cpf:<br/>
            <input type="text" name="cpf" value="<%=user.getCpf()%>"/><br/>
            Rg:<br/>
            <input type="text" name="rg" value="<%=user.getRg()%>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%=user.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%=user.getPhone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=user.getAddress()%>"/><br/>
            <br/><input type="submit" name="set" value="Alterar"/>
            
        </form>
    </body>
</html>
