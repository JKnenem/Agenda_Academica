<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Login</h2>
  <g:uploadForm controller="login">
    <div class="form-group">
      <label for="email">Email:</label>
      <g:textField class="form-control" id="email" placeholder="Enter Email" name="email"/>
    </div>
    <div class="form-group">
      <label for="senha">Senha:</label>
      <g:passwordField class="form-control" id="senha" placeholder="Enter Senha" name="senha"/>
    </div>
    <g:actionSubmit action="login" class="btn btn-default" value="Entrar"></g:actionSubmit>
  </g:uploadForm>
</div>
</body>
</html>