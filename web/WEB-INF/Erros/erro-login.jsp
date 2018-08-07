<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login incorreto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

    <body>
  <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html"><b>Amigo oculto</b></a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.html">Início</a></li>
                    <li><a href="cadastro-pessoas.html">Cadastrar</a></li>
                    <li><a href="login.html"  data-toggle="modal" data-target="#myModal" >Fazer Login</a></li>
                </ul>
            </div>
        </nav>

        <div class="container text-center">
            <div class="container-fluid">
                <h1 style="color:gray">Login ou senha incorretos</h1>
                <h3 style="color:gray">Favor realizar o login novamente ou cadastrar no site</h3>
                <a href="cadastro-pessoas.html" class="btn btn-danger btn-lg"> Cadastrar </a>
                <a href="login.html"  data-toggle="modal" data-target="#myModal"  class="btn btn-default btn-lg"> Fazer login </a>
            </div>
        </div>


        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Fazer login</h4>
                    </div>
                    <form method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="usr">Email:</label>
                                <input type="text" class="form-control" id="usr" name = "email">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" name="senha">
                            </div>         </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-default"> Entrar </button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </body>
</html>