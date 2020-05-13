ooool<%-- 
    Document   : listarFornecedor
    Created on : 12/05/2019, 21:56:10
    Author     : Allan
--%>

<%@page import="projeto02.Suppliers"%>
<%@page import="projeto02.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jspf" %>
<h1>Listar Fornecedor</h1>
<br>
<div class="row col-10 ml-auto mr-auto text-left">
    <div class="col-2">Nome</div>
    <div class="col-2">Razão Social</div>
    <div class="col-2">CNPJ</div>
    <div class="col-2">Email</div>
    <div class="col-2">Telefone</div>
    <div class="col-2">Endereço</div>
</div>
<% for (Fornecedores fornecedor : Db.getFornecedores()) {
        int id = Db.getFornecedores().indexOf(fornecedor);%>
<div class="row col-10 ml-auto mr-auto mt-1 text-left">
    <div class="col-1 text-truncate"><%=fornecedor.getNome()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getRazaoSocial()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getCnpj()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getEmail()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getTelefone()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getEndereco()%></div>
    <span class="ml-2">
        <a href="addFornecedor.jsp?id=<%=id%>">
            <i class="fas fa-edit"></i>
        </a>
    </span>
    <span class="ml-2">
        <a href="listarFornecedores.jsp?action=remove&id=<%=id%>">
            <i class="fas fa-trash"></i>
        </a>
    </span>
</div>

<%}%>

<%
    if (request.getParameter("action") != null && Db.getFornecedores().size() > 0) {
        String action = request.getParameter("action");
        switch (action) {
            case "remove":
                Fornecedores fornecedor = Db.getFornecedorById(Integer.parseInt(request.getParameter("id")));
                fornecedor.Delete();
                response.sendRedirect(request.getRequestURI());
        }
    }
%>

<%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
