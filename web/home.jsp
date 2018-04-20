<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  
        <!--Tag meta responsiva-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!--css - google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link href="css/navbar.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
   
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

    <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="home.jsp">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home.jsp">Register</a>
    </div>
      
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          
        <li><a href="#">Cadastro de Clientes</a></li>
        <li><a href="#">Cadastro de Fornecedores</a></li>
        
        
      </ul>
    </div>
  </div>
</nav>
    <div class="jumbotron text-center">
  <h1>Register</h1> 
  <p>Especializada em cálculos financeiros.</p> 
  
</div>
    
    <!-- Container (Desenvolvedores) -->

<div id="sobre" class="container-fluid text-center">
  <h2>Conheça nosso Desenvolvedores!</h2><br>
 
   <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/andrey.jpg" alt="João Paulo" >
        
        <p><h4><strong>Andrey Antunes</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/AndreyAntunes" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
    
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/victor.jpeg" alt="Igor Tenório" >
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
  </div><br>
  
  
     <footer class="container-fluid bg-grey text-center">
     <a href="#myPage" title="To Top">
     <span class="glyphicon glyphicon-chevron-up"></span>
     </a>
  <h3>Logo</h3>
            
            <p>© 2018 Copyright:</p>
             
            <a href='https://github.com/LeticiaVSantos/Projeto-03---JSP.git'</a>Projeto 03 JSP
</footer>

<script>
$(document).ready(function(){
  // Adicionar rolagem suave a todos os links no link navbar + footer
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Certifique-se de que this.hash tenha um valor antes de substituir o comportamento padrão
    if (this.hash !== "") {
      // Previne o comportamento padrão de clique da âncora
      event.preventDefault();

      // Armazena hash
      var hash = this.hash;

     
      // Usando o método animate () do jQuery para adicionar rolagem de página suave
      // O número opcional (900) especifica o número de milissegundos necessários para rolar até a área especificada
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
       // Adicionar hash (#) ao URL quando terminar a rolagem (comportamento de clique padrão)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
});
</script>
       
        <!--JavaScript - Bootstrap
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        -->
    </body>
    
</html>
