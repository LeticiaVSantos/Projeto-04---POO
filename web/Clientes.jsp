<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@include file="WEB-INF/jspf/formulaCadastro.jspf" %> 
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>        
        <%@include file="WEB-INF/jspf/navbar.jspf" %>        
        <center>
            <div class="card-group">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title h5body">Cadastro de Clientes</h5>

                        <div class="card">    
                        <div class="card-body">
                            <br><h1 class="card-title h5body">O que deseja fazer?</h1>
                            <p class="card-text pbody">Clique no menu do que deseja fazer e preencha os campos necessários para começar a utilizar o Register.</p>
                            <div class="tab">
                                <button class="tablinks" onclick="openCity(event, 'Registrar')">Registrar Cliente</button>
                                <button class="tablinks" onclick="openCity(event, 'Alterar')">Alterar Cadastro</button>
                                <button class="tablinks" onclick="openCity(event, 'Listagem')">Listagem/Exclusão de Clientes</button>
                            </div>
                            <div id="Registrar" class="tabcontent">
                                <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
                                <form action="Clientes.jsp">
                                    <table>
                                        <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="cpf" placeholder="CPF"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="rg" placeholder="RG"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="email" placeholder="E-mail"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="telefone" placeholder="Telefone"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="endereco" placeholder="Endereço"></td></tr>
                                    </table>
                                    <br><input class="bttbody btn btn-primary" type="submit" name="add" value="Confirmar Registro">
                                </form>
                            </div>
                            <div id="Alterar" class="tabcontent">
                                <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
                                <form action="Clientes.jsp">
                                    <table>
                                        <tr><td><input class="form-control" type="text" name="indice" placeholder="Índice"></td></tr
                                        <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="cpf" placeholder="CPF"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="rg" placeholder="RG"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="email" placeholder="E-mail"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="telefone" placeholder="Telefone"></td></tr>
                                        <tr><td><input class="form-control" type="text" name="endereco" placeholder="Endereço"></td></tr>
                                    </table>
                                    <br><input class="bttbody btn btn-primary" type="submit" name="alt" value="Confirmar Alteração">
                                </form>
                            </div>
                            <div id="Listagem" class="tabcontent">
                                <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
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
                                    </tr>
                                    </thead>
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
            <script>
                function openCity(evt, cityName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }

                // Get the element with id="defaultOpen" and click on it
                document.getElementById("defaultOpen").click();
            </script>
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
