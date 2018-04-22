
<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
      if(request.getParameter("alt")!=null){
      int indice = Integer.parseInt(request.getParameter("indice"));
      Bd.getClientes().remove(indice);

      Clientes alterarClientes = new Clientes();
      alterarClientes.setNome(request.getParameter("nome_alt"));
      alterarClientes.setCpf(request.getParameter("cpf_alt"));
      alterarClientes.setRg(request.getParameter("rg_alt"));
      alterarClientes.setEmail(request.getParameter("email_alt"));
      alterarClientes.setTelefone(request.getParameter("telefone_alt"));
      alterarClientes.setEndereco(request.getParameter("endereco_alt"));
      Bd.getClientes().add(indice, alterarClientes);

      response.sendRedirect(request.getRequestURI());
    }
    %>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
    <center><div class="card-group">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Cadastro de Clientes</h5>
                    
                    <div class="card">    
                <div class="card-body">
                    <h5 class="card-title h5body">Alterar Lista</h5>
                    <p class="card-text pbody">Entre com o índice e os demais dados solicitados abaixo para alterar um item da lista de clientes.</p>
                    <form action="Clientes.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="indice" placeholder="Índice"></td></tr>
                            <tr><td><input class="form-control" type="text" name="nome_alt" placeholder="Nome"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cpf_alt" placeholder="CPF"></td></tr>
                            <tr><td><input class="form-control" type="text" name="rg_alt" placeholder="RG"></td></tr>
                            <tr><td><input class="form-control" type="text" name="email_alt" placeholder="E-mail"></td></tr>
                            <tr><td><input class="form-control" type="text" name="telefone_alt" placeholder="Telefone"></td></tr>
                            <tr><td><input class="form-control" type="text" name="endereco_alt" placeholder="Endereço"></td></tr>
                        </table>
                        <br><input class="bttbody btn btn-primary" type="submit" name="alt" value="Alterar">
                        </form>
                </div>
                    </div>
                </div>
            </div>
        </div>
    </center>
    
    <br>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    
    </body>
</html>
