<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="icon" href="Imagens/favicon.ico">
  
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
   
    <%@include file="WEB-INF/jspf/navbar.jspf" %>
    
    <div class="jumbotron text-center">
    <h1>Automize suas vendas</h1> 
    <h3>O Register é uma plataforma de aprimoramento em cadastro que ajuda milhares de vendedores a alcançarem todo o seu potencial.</h3>
  
</div>
  
    <div class="container-fluid text-center">
  <h2>PARA QUEM REGISTER FOI FEITO?</h2>
  <h4><p>O Register foi criado para resolver problemas de cadastro</p> <p>e ajudar empreendedores, gestores e vendedores a serem mais eficientes nas vendas.</p></h4>
  <h4><p>Veja como:</p></h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <img src="Imagens/motivos-1.png">
      <h4>Retorno aos clientes.</h4>
      <p></p>
    </div>
    <div class="col-sm-4">
      <img src="Imagens/motivos-2.png">
      <h4>Acompanhar as vendas em andamento.</h4>
      <p></p>
    </div>
    <div class="col-sm-4">
       <img src="Imagens/motivos-3.png">
      <h4>Comunicação e organização.</h4>
      <p></p>
    </div>
    </div>
  
    </div>    
    <!-- Container (Desenvolvedores) -->

<div class="container-fluid text-center">
  <h2>Conheça nosso Desenvolvedores!</h2><br>
 
   <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/andrey.jpg" alt="Andrey Antunes" >
        
        <p><h4><strong>Andrey Antunes</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/AndreyAntunes" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/Igor.jpeg" alt="Igor Tenório" >
        <p><h4><strong>Igor Tenório</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/iitenorio" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
       
       <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/IMG_20160930_191248.jpg" alt="Letícia Santos"/>
        <p><h4><strong>Letícia Santos</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/LeticiaVSantos" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
   </div>     
  </div><br>
  
  
     <%@include file="WEB-INF/jspf/footer.jspf" %>
       
      
    </body>
    
</html>
