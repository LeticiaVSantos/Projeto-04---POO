
<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
      if(request.getParameter("alt") != null){
        int i = Integer.parseInt(request.getParameter("indice"));
        Bd.getClientes().remove(i);

        Clientes alterarClientes = new Clientes();
        alterarClientes.setNome(request.getParameter("nome"));
        alterarClientes.setCpf(request.getParameter("cpf"));
        alterarClientes.setRg(request.getParameter("rg"));
        alterarClientes.setEmail(request.getParameter("email"));
        alterarClientes.setTelefone(request.getParameter("telefone"));
        alterarClientes.setEndereco(request.getParameter("endereco"));
        Bd.getClientes().add(i, alterarClientes);

        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("del") != null) {
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getClientes().remove(i);
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("add") != null){
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        Bd.getClientes().add(c);
        response.sendRedirect(request.getRequestURI()); //Limpa a URL para não repetir a gravação dos mesmos dados.
     }
    %>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>       
        
        <!--favicon-->
        <link rel="icon" href="Imagens/favicon.ico">
        
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
                        <h5 class="card-title h5body">O que deseja fazer?</h5>
                        <p class="card-text pbody">Preencha com campos abaixo e clique em uma das opções para começar a utilizar o Register.</p>
                        <form action="Clientes.jsp">
                            <table>
                                <tr><td><input class="form-control" type="number" name="indice" placeholder="Índice"></td></tr>
                                <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome"></td></tr>
                                <tr><td><input class="form-control" type="number" name="cpf" placeholder="CPF"></td></tr>
                                <tr><td><input class="form-control" type="number" name="rg" placeholder="RG"></td></tr>
                                <tr><td><input class="form-control" type="text" name="email" placeholder="E-mail"></td></tr>
                                <tr><td><input class="form-control" type="number" name="telefone" placeholder="Telefone"></td></tr>
                                <tr><td><input class="form-control" type="text" name="endereco" placeholder="Endereço"></td></tr>
                            </table>
                            <br><input class="bttbody btn btn-primary" type="submit" name="alt" value="Alterar">
                            <input class="bttbody btn btn-primary" type="submit" name="add" value="Registrar">
                            </form>
                                <hr/><br />
        <table border="1">
            <tr>
                <th width="70px" align="center">Índice</th>
                <th width="70px">Nome</th>
                <th width="70px">CPF</th>
                <th width="70px">RG</th>
                <th width="70px">Email</th>
                <th width="80px">Telefone</th>
                <th width="80px">Endereço</th>
                <th width="70px">Opção 1</th>
            </tr>
            
            <%for (int i = 0; i < Bd.getClientes().size(); i++) {%>
            <tr>
                <td align="center"><%= i %></td>
                <td align="center"><%= Bd.getClientes().get(i).getNome() %></td>
                <td align="center"><%= Bd.getClientes().get(i).getCpf() %></td>
                <td align="center"><%= Bd.getClientes().get(i).getRg() %></td>
                <td align="center"><%= Bd.getClientes().get(i).getEmail() %></td>
                <td align="center"><%= Bd.getClientes().get(i).getTelefone() %></td>
                <td align="center"><%= Bd.getClientes().get(i).getEndereco() %></td>
                <td align="center">
                    <form>
                        <input type="hidden" name="i" value="<%= i %>"/>
                        <input type="submit" name="del" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
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
