<!DOCTYPE html>
<?php


  include_once "conf/default.inc.php";
  require_once "conf/Conexao.php";

  require_once "utils/utils.php";

  $id = isset($_GET['id']) ? $_GET['id'] : "";
  $pdo = Conexao::getInstance();
  $sql = $pdo->query("SELECT * FROM veterinario WHERE id = $id;");
  while ($linha = $sql->fetch(PDO::FETCH_ASSOC)) {
    $nome = $linha['nome'];
    $crmv = $linha['crmv'];
    $telefone = $linha['telefone'];
    $imagem = $linha['imagem'];
  }

?>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cadastro Veterinário</title>
    <!-- Compiled and minified CSS -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
   <script
   			  src="https://code.jquery.com/jquery-3.4.1.min.js"
   			  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
   			  crossorigin="anonymous"></script>
   <!-- Compiled and minified JavaScript -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
   <link rel="stylesheet" href="css/estilo.css">
  </head>
  <body class='container'>

    <nav style="background-color: #EE9999 ">
        <div class="nav-wrapper">
            <img style="width: 50px ; margin-top: 8px; margin-left: 10px"  src="img/logo.png">
            <ul id="nav-mobile" class="right hide-on-med-and-down">
              <li class="nav"><a href="veterinario.php" class="nav" class="nav">Cadastro</a></li>
              <li class="nav"><a href="listaVeterinario.php" class="nav" class="nav">Listagem de Veterinários</a></li>
            </ul>
        </div>
      </nav>
    <br><br>

    <div class="row">
      <div class="col s12 l12 m12">
        <center><h1>PERFIL DO USUÁRIO</h1></center>
      </div>
    </div>


    <div class="row">
      <div class="col s12 l12 m12">
        <center><img src="<?php echo $imagem?>" style="width: 100px;"></center>
      </div>
    </div>
    <center>
    <div class="row">
      <div class="col s12 l12 m12 ">

        
            <div class="row form-group">
              <div class="col s12 l12 m12">
                <h5><?php echo "Nome: ".$nome?></h5>
              </div>
              <div class="col s12 l12 m12">
                <h5><?php echo "CRMV: ".$crmv?></h5>
              </div>
              <div class="col s12 l12 m12">
                <h5><?php echo "Telefone: ".$telefone?></h5>
              </div>
              <div class="col s12 l12 m12">
                <h5><?php echo "Imagem: ".$imagem?></h5>
              </div>
            </div>
          
      </div>
    </div>
    </center>
  </body>
</html>
