<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        Nome: <br>
        <input type="text" name="nome" size="30">

        <br><br>

        Idade: <br>
        <input type="number" name="idade" size="30">

        <br><br>

        Cor: <br>
        <input type="color" name="cor" id="">

        <br><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>

<?php
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $nome = $_POST['nome'];
    $idade = $_POST['idade'];
    $cor = $_POST['cor'];
    setcookie('InfoUser-Nome', $nome, time()+3600, '/');
    setcookie('InfoUser-Idade', $idade, time()+3600, '/');
    setcookie('InfoUser-Cor', $cor, time()+3600, '/');
    setcookie('InfoUser-contaVisitas', 0, time()+3600, '/');
    echo 'Cadastro efetuado com sucesso!';
}
?>