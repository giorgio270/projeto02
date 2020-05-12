<%-- 
    Document   : add
    Created on : 11/05/2020, 20:41:23
    Author     : Gio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projeto02.classes.Users"%>
<!DOCTYPE html>
<%
    String erro = null;
    if(request.getParameter("add") != null){
        String name, email, pass1, pass2, cpf, rg, phone, adress;
        name = request.getParameter("name");
        email = request.getParameter("email");
        pass1 = request.getParameter("pass1");
        pass2 = request.getParameter("pass2");
        cpf = request.getParameter("cpf");
        rg = request.getParameter("rg");
        phone = request.getParameter("phone");
        adress = request.getParameter("adress");
      
        if(name.isEmpty())
            erro = "Nome não pode ser deixado em branco";
        else if(email.isEmpty())
            erro = "Email não pode ser deixado em branco";
        else if(pass1.isEmpty())
            erro = "Senha não pode ser deixada em branco";
        else if(cpf.isEmpty())
            erro = "CPF não pode ser deixado em branco";
        else if(rg.isEmpty())
            erro = "RG não pode ser deixado em branco";
        else if(phone.isEmpty())
            erro = "Telefone não pode ser deixado em branco";
        else if(adress.isEmpty())
            erro = "Endereço não pode ser deixado em branco";
        
        if(pass1.equals(pass2) == false)
            erro = "As senhas não coincidem";
        else if(pass1.equals(pass2)){
            erro = null;
            Users user = new Users();
            user.setAttributes(name, cpf, rg, phone, adress, email, pass1);
            // ADICIONAR USUARIO NO DB QUANDO FOR FEITO DEPOIS
            // response.sendRedirect("listUsers.jsp"); //<-- Tirar o comentário quando o list for feito
        } else
            erro = "ERRO DESCONHECIDO";
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Novo Usuário</title>
    </head>
    <body>
        <!adicionar header aqui>
        <h2>Cadastrar Novo Usuário</h2><br>
        <%if(erro != null){%>
        <div style="color: red;"><%= erro%></div><br>
        <%}%>
        
        <form method="POST">
            Nome:<br> <input type="text" name="name"><br>
            Telefone:<br> <input type="text" name="phone"><br>
            E-mail:<br> <input type="email" name="email"><br>
            Endereço:<br> <input type="text" name="adress"><br>
            CPF:<br> <input type="text" name="cpf" title="Exemplo de CPF: 123.123.123-12" pattern="([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})"><br>        
            RG:<br> <input type="text" name="rg" title="Exemplo de RG: 12.123.123-1" pattern="([0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1})"><br>

            <br><fieldset>
                <legend>Senha</legend>
                Senha:<br> <input type="password" name="pass1"><br>
                Confirme sua senha:<br> <input type="password" name="pass2"><br>
            </fieldset>
            
            <input type="submit" name="add" value="Cadastrar">
        </form>
    </body>
</html>
