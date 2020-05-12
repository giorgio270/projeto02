<%-- 
    Document   : formularioCliente
    Created on : 12/05/2020, 10:14:47
    Author     : Allan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>

<%
    Clientes cliente = new Clientes();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        cliente = DataBase.getClienteById(id);
    }
%>

<%
    if (request.getParameter("adicionar") != null) {
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        c.Create(c);

        response.sendRedirect(request.getRequestURI());
    }
%>

<%
    if (request.getParameter("alterar") != null) {
        cliente.setNome(request.getParameter("nome"));
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setEndereco(request.getParameter("endereco"));
        cliente.Update(cliente, id);

        response.sendRedirect("listarClientes.jsp");
    }
%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<body>
    <h1>Formulário Cliente</h1>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
    <br>

    <form>
        <div class="row col-8 ml-auto mr-auto">
            <span>Nome</span>
            <input class="col-12 form-control" type="text" name="nome" value="<%= cliente.getNome()%>" required>
            <span>CPF</span>
            <input class="col-12 form-control" type="text" name="cpf" value="<%= cliente.getCpf()%>" required>
            <span>RG</span>
            <input class="col-12 form-control" type="text" name="rg" value="<%= cliente.getRg()%>" required>
            <span>Email</span>
            <input class="col-12 form-control" type="email" name="email" value="<%= cliente.getEmail()%>" required>
            <span>Telefone</span>
            <input class="col-12 form-control" type="text" name="telefone" value="<%= cliente.getTelefone()%>" required>
            <span>Endereço</span>
            <input class="col-12 form-control" type="text" name="endereco" value="<%= cliente.getEndereco()%>" required>
            <%if (request.getParameter("id") == null) {%>
            <input class=" mt-3 btn btn-outline-primary ml-auto mr-auto" type="submit" name="adicionar" value="Cadastrar">
            <%} else {%>
            <input type="submit" class="mt-3 btn btn-outline-primary ml-auto mr-auto" name="alterar" value="Alterar" id="alt">
            <%}%>    
            <input type="hidden" name="id" value="<%= id%>"/>
        </div>

    </form>
    <%@include file="WEB-INF/jspf/header.jspf" %>
</body>
</html>
