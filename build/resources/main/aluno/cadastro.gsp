<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cadastro</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Cadastrar Aluno</h2>
  <g:uploadForm controller="aluno">
    <div class="form-group">
       <label for="nome">Nome:</label>
       <g:textField class="form-control" id="email" placeholder="Enter Nome" name="nome"/>
    </div>
    <div class="form-group">
      <label for="cpf">CPF:</label>
      <g:textField class="form-control" id="cpf" placeholder="Enter CPF" name="cpf"/>
    </div>
    <div class="form-group">
       <label for="sexo">Sexo:</label>
       <g:textField class="form-control" id="sexo" placeholder="Enter Sexo" name="nome"/>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <g:textField class="form-control" id="email" placeholder="Enter email" name="email"/>
    </div>
    <div class="form-group">
      <label for="senha">Senha:</label>
      <g:passwordField class="form-control" id="senha" placeholder="Enter Senha" name="senha"/>
    </div>
    <g:actionSubmit action="cadastrar" class="btn btn-default" value="Cadastrar"></g:actionSubmit>
  </g:uploadForm>
</div>
</body>
</html>