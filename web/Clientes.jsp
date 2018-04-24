<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@include file="WEB-INF/jspf/formulaCadastro.jspf" %> 
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
<!-- TITULO E SUBTITULO DA PAGINA --> 
        <center>
            <div class="card-group">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title h5body">Cadastro de Clientes</h5>
                        <div class="card">    
                        <div class="card-body">
                            <br><h1 class="card-title h5body">O que deseja fazer?</h1>
                            <p class="card-text pbody">Nessa pagina você consegue cadastrar, alterar e excluir o seu cliente.</p>
<!-- FIM TITULO E SUBTITULO DA PAGINA -->
<!-- FORMULARIO DE CADASTRO DO CLIENTE -->
                            <div class="tab">
                                <center><div><button class="tablinks" type="button" data-toggle="collapse" data-target="#collapseRegister" aria-expanded="false" aria-controls="collapseExample">Exibir Cadastro de Clientes</button></div></center>
                            </div>
                             <div class="collapse" id="collapseRegister">
                                <form action="Clientes.jsp">
                                    <table>
                                        <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="cpf" placeholder="Ex.: 000.000.000-00"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="rg" placeholder="Ex.: 000000000 (Sem pontuação)"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="email" placeholder="E-mail"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="telefone" placeholder="Telefone"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="endereco" placeholder="Endereço"></td></tr>
                                    </table>
                                    <br><input class="bttbody btn btn-primary" type="submit" name="add" value="Confirmar Registro">
                                </form>
                            </div>
<!-- FIM FORMULARIO DE CADASTRO DO CLIENTE -->
<!-- LISTAGEM/ALTERAÇÃO/EXCLUSÃO DO CADASTRO DE CLIENTE -->
                            <div class="tab">
                                        <center><div><button class="tablinks" type="button" data-toggle="collapse" data-target="#collapseList" aria-expanded="false" aria-controls="collapseExample">Exibir Alteração/Listagem/Exclusão</button></div></center>
                            </div>
<!-- CABEÇALHO DA LISTAGEM/ALTERAÇÃO/EXCLUSÃO -->
                             <div class="collapse" id="collapseList">
                                <table border="1"  class="table">
                                    <thead class=\"thead-dark\">
                                    <tr>
                                        <th scope="col"><center>Índice</center></th>
                                        <th scope="col"><center>Nome</center></th>
                                        <th scope="col"><center>CPF</center></th>
                                        <th scope="col"><center>RG</center></th>
                                        <th scope="col"><center>Email</center></th>
                                        <th scope="col"><center>Telefone</center></th>
                                        <th scope="col"><center>Endereço</center></th>
                                        <th scope="col"><center>Opção 1</center></th>
                                        <th scope="col"><center>Opçao 2</center></th>
                                    </tr>
                                    </thead>
<!-- FIM CABEÇALHO DA LISTAGEM/ALTERAÇÃO/EXCLUSÃO -->
<!-- SE A OPÇÃO 'alterar' for igual == a 'null' ELE ENTRA EM UM LAÇO BASICO PARA EXIBIÇÃO DOS CADASTROS -->  
                                    <%if(request.getParameter("alterar") == null) {%>
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
                                            <td align="center">
                                            <form>
                                                <input type="hidden" name="i" value="<%= i %>"/>
                                                <input type="submit" name="alterar" value="Alterar"/>
                                            </form>
                                        </td>
                                    </tr>
<!-- FIM PRIMEIRO LAÇO (IF) -->
<!-- SE A OPÇÃO 'alterar' for diferente != a 'null' ELE ENTRA EM UM LAÇO ELSE PARA EXIBIÇÃO DOS CADASTRO QUE DESEJA ALTERAR
     COM A AJUDA DO FOR QUE DECLARA A VARIAVEL 'i' PARA REALIZAR A ALTERAÇÃO, EXIBINDO APENAS O CADASTRO QUE DESEJAMOS ALTERAR
-->  
                                    <%}} else {%>
                                            <%for (int i = 0; i < Bd.getClientes().size(); i++){%>
                                                <%if(i == Integer.parseInt(request.getParameter("i"))){%>
                                                        <tr>
                                                            <form>
                                                            <td><%=i%></td>
                                                            <td><input type="text" name="nome" value="<%= Bd.getClientes().get(i).getNome() %>"></td>
                                                            <td><input type="text" name="cpf" value="<%= Bd.getClientes().get(i).getCpf() %>"></td>
                                                            <td><input type="text" name="rg" value="<%= Bd.getClientes().get(i).getRg() %>"></td>
                                                            <td><input type="text" name="email" value="<%= Bd.getClientes().get(i).getEmail() %>"></td>
                                                            <td><input type="text" name="telefone" value="<%= Bd.getClientes().get(i).getTelefone() %>"></td>
                                                            <td><input type="text" name="endereco" value="<%= Bd.getClientes().get(i).getEndereco() %>"></td>
                                                            <input type="hidden" name="indice" value="<%=i%>"/>
                                                            <td><input type="submit" name="salvar" value="Salvar"</td>
                                                            </form>
                                                        </tr>
                                                <%}%>
                                        <%}%>
                                    <%}%>
<!-- FIM SEGUNDO LAÇO (ELSE) -->
                                </table>
                            </div>
<!-- FIM LISTAGEM/ALTERAÇÃO/EXCLUSÃO DO CADASTRO DE CLIENTE -->
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
