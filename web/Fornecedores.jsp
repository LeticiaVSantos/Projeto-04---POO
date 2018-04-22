<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("alt")!=null){
      int indice = Integer.parseInt(request.getParameter("indice"));
      Bd.getFornecedores().remove(indice);
      
      Fornecedores alterarFornecedor = new Fornecedores();
      alterarFornecedor.setNome(request.getParameter("nome_alt"));
      alterarFornecedor.setRazaoSocial(request.getParameter("razaosocial_alt"));
      alterarFornecedor.setCnpj(request.getParameter("cnpj_alt"));
      alterarFornecedor.setEmail(request.getParameter("email_alt"));
      alterarFornecedor.setTelefone(request.getParameter("telefone_alt"));
      alterarFornecedor.setEndereco(request.getParameter("endereco_alt"));
      Bd.getFornecedores().add(indice, alterarFornecedor);

      response.sendRedirect(request.getRequestURI());
    }
%>   
<html>
    
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Cadastro Fornecedores</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
        <center><div class="card-group">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Cadastro de Fornecedores</h5>
         <div class="card">    
                <div class="card-body">
                    <h5 class="card-title h5body">Alterar Lista</h5>
                    <p class="card-text pbody">Entre com o índice e os demais dados solicitados abaixo para alterar um item da lista de fornecedores.</p>
                    <form action="fornecedores.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="indice" placeholder="Índice"></td></tr>
                            <tr><td><input class="form-control" type="text" name="nome_alt" placeholder="Nome da Empresa"></td></tr>
                            <tr><td><input class="form-control" type="text" name="razao_alt" placeholder="Razão Social"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cnpj_alt" placeholder="CNPJ"></td></tr>
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
        </div></center>
    
    <br>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        
    </body>
</html>
