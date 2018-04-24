<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>       
        
        <!--favicon-->
        <link rel="icon" href="Imagens/favicon.ico">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedores</title>
    </head>
    <body>
    <%@include file="WEB-INF/jspf/navbar.jspf" %>
     <div class="content-wrapper">
         <br><br><center><h1>Cadastro de Fornecedores</h1>
        <% 
            try{
                
            if((request.getParameter("add")!=null)){
                String nome= request.getParameter("nome");
                String razao =request.getParameter("razao");
                String cnpj =request.getParameter("cnpj");
                String email =request.getParameter("email");
                String telefone =request.getParameter("telefone");
                String endereco =request.getParameter("endereco");
                Fornecedores c=new Fornecedores();
                c.setNome(nome);
                c.setRazao(razao); 
                c.setCnpj(cnpj); 
                c.setEmail(email); 
                c.setTelefone(telefone); 
                c.setEndereco(endereco);
                Fornecedores.getList().add(c);
                response.sendRedirect(request.getRequestURI());
            }
            else if(request.getParameter("remove")!=null){
                int i=Integer.parseInt(request.getParameter("index"));
                Fornecedores.getList().remove(i);}
            
             else if (request.getParameter("salvar") != null) { 
             int index = Integer.parseInt(request.getParameter("index"));
             String nome= request.getParameter("nome");
                String razao =request.getParameter("razao");
                String cnpj =request.getParameter("cnpj");
                String email =request.getParameter("email");
                String telefone =request.getParameter("telefone");
                String endereco =request.getParameter("endereco");
                Fornecedores c=new Fornecedores();
                c.setNome(nome);
                c.setRazao(razao); 
                c.setCnpj(cnpj); 
                c.setEmail(email); 
                c.setTelefone(telefone); 
                c.setEndereco(endereco);
                Fornecedores.getList().set(index,c);
               
         }
            
            }catch(Exception ex){%>
            <div>O form está preenchido incorretamente</div>
        <%}%>
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <br><div class="card-header"><b>Registrar Fornecedor</b></div>
      <div class="card-body">
        <form>
          <div >
            <label for="exampleInputEmail1">Nome</label>
            <input class="form-control" type="text" name="nome" required/>
          </div><br>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">Razão Social</label>
                <input class="form-control" type="text" name="razao"required/>
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">CNPJ</label>
                <input class="form-control" type="text" name="cnpj "pattern="\d{2}.\d{3}.\d{3}\/\d{4}-\d{2}"placeholder="Ex.: 00.000.000/0000-00" maxlength="18"required/>
              </div>
            </div><br><br><br>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">E-mail</label>
            <input class="form-control" type="text" name="email"/>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Telefone</label>
                <input class="form-control phone-ddd-mask" maxlength="13"placeholder="Ex.: (00) 0000-0000" pattern="\(\d{2}\)\d{4}-\d{4}" type="text" name="telefone"/>
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Endereço</label>
                <input class="form-control" type="text" name="endereco"/>
              </div><br>
            </div><br>
          </div><br>
          <input type="submit" class="btn btn-primary btn-block" name="add" value="Registrar"/><br>
        </form>
      </div>
    </div>
  </div>
        
        <div class="card-header">
          <i class="fa fa-table"></i><b>Lista de Fornecedores</b></div><br>
            <table class="table table-bordered" width="100%" cellspacing="0">
              <thead>
 		<tr>
                  <th>Índice</th>
                  <th>Nome</th>
                  <th>CNPJ</th>
                  <th>Razão Social</th>
                  <th>E-mail</th>
                  <th>Telefone</th>
                  <th>Endereço</th>
                  <th>Exclusão</th>
                  <th>Alteração</th>
       </tr>
              </thead>
              <tbody>
                  
        <%if(request.getParameter("alterar") == null) {
        for (int i=0; i<Fornecedores.getList().size(); i++){%>
        <%Fornecedores c= Fornecedores.getList().get(i);
        %>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
            <td><%=c.getCnpj()%></td>
            <td><%=c.getRazao()%></td>
            <td><%=c.getEmail()%></td>
            <td><%=c.getTelefone()%></td>
            <td><%=c.getEndereco()%></td>
        <td>
        <form>
            <input type="hidden" name="index" value="<%=i%>"/>
            <input type="submit" name="remove" value="Excluir"/>
        </form>
        </td>
        <td>
            <form>
                <input type="hidden" name="index" value="<%=i%>"/>
                <input type="submit" name="alterar" value="Alterar"/>
            </form> 
        </td>
        </tr>
         <%}}
        else {
            for (int i=0; i<Fornecedores.getList().size(); i++){
              Fornecedores c = Fornecedores.getList().get(i);
                if(i != Integer.parseInt(request.getParameter("index"))){%>
                    <tr>
                        <td><%=i%></td>
                        <td><%=c.getNome()%></td>
                        <td><%=c.getCnpj()%></td>
                        <td><%=c.getRazao()%></td>
                        <td><%=c.getEmail()%></td>
                        <td><%=c.getTelefone()%></td>
                        <td><%=c.getEndereco()%></td>             
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input type="submit" name="remover" value="Excluir"/>
                        </form>
                    </td>
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input type="submit" name="alterar" value="Alterar"/>
                        </form>
                    </td>
                    </tr>
                    <%}else {%>
                    <tr>
                        <form>
                        <td><%=i%></td>
                        <td><input type="text" name="nome" size="5" value="<%=c.getNome()%>"></td>
                        <td><input type="text" name="cnpj" pattern="\d{2}.\d{3}.\d{3}\/\d{4}-\d{2}"placeholder="Ex.: 00.000.000/0000-00" maxlength="18"required size="6" value="<%=c.getCnpj()%>"></td>
                        <td><input type="text" name="razao" size="6" value="<%=c.getRazao()%>"></td>
                        <td><input type="text" name="email" size="6" value="<%=c.getEmail()%>"></td>
                        <td><input type="text" name="telefone" maxlength="13"placeholder="Ex.: (00)0000-0000" pattern="\(\d{2}\)\d{4}-\d{4}" value="<%=c.getTelefone()%>"></td>
                        <td><input type="text" name="endereco" size="6" value="<%=c.getEndereco()%>"/></td>
                        <input type="hidden" name="index" value="<%=i%>"/>
                        <td><input type="submit" value="Salvar" name="salvar"</td>
                        </form>
                    </tr>
                            
        <%}}}%>
              </tbody>
              
            </table>
          </div>
        </div>
    </div>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>