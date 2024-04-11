<?php
    require_once "connect.php";
	session_start();
	
	if (!isset($_SESSION['zalogowany']))
	{
		header('Location: index.php');
		exit();
	}
	
?>
<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Pierwszy projekt bazy danych -sklep-</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="./css/menu.css">-->
	<script src="./js/bootstrap.min.js"></script>
    <script src="./js/jq.js"></script>
    <script src="./js/app.js"></script>
    <style>
    body{
    background-image: url("./images/auto2.jpg");
    background-color: #cccccc;
    background-repeat: no-repeat;
    background-size: cover;  
    }
	.container
	{
		width: 1500px;
		margin-left: auto;
		margin-right: auto;
	}
	.logo
	{
		background-color: black;
		color: white;
		text-align: center;
		padding: 15px;
	}
	.nav
	{
		float: left;
		background-color: lightgray;
		width: 120px;
		min-height: 620px;
		padding: 10px;
	}
	.content{
		min-height:620px;
	}
	@media screen and (min-width:1400px){
		.content
	{
		float: left;
		padding: 20px;
		width: 1175px;
        background-color: white;
		margin-left: auto;
		margin-right: auto;
	}
	}
	
	@media screen and (min-width: 1200px) and (max-width:1399px){
		.content
	{
		float: left;
		padding: 20px;
		width: 995px;
        background-color: white;
		margin-left: auto;
		margin-right: auto;
	}
	}
	@media screen and (min-width: 1000px) and (max-width:1199px){
		.content
	{
		float: left;
		padding: 20px;
		width: 816px;
        background-color: white;
		margin-left: auto;
		margin-right: auto;
	}
	}
	@media screen and (min-width: 768px) and (max-width:999px){
		.content
	{
		float: left;
		padding: 20px;
		width: 576px;
        background-color: white;
		margin-left: auto;
		margin-right: auto;
	}
	}
	@media screen and (min-width: 300px) and (max-width:767px){
		.content
	{
		float: left;
		padding: 20px;
		width: 396px;
        background-color: white;
		margin-left: auto;
		margin-right: auto;
	}
	}
	.footer
	{
		clear: both;
		background-color: black;
		color: white;
		text-align: center;
		padding: 20px;
	}	
	</style>
</head>

<body>
    <div class="container">
        <div class="logo">
        <img src="./images/logo.png" alt="Responsive image">
        
        
            
        <center> <h1>Wypożyczalnia samochodów</h1> </center>
            
</div>

    <div class="nav">
        
            <div class="menu">
            <h1>Menu</h1>
            <button class="menu" mup="showklienci.php">Lista klienta</button><br><br>
            <button class="menu" mup="showtowary.php">Lista towarów</button><br><br>
            <button class="menu" mup="operacje.php">Operacje</button><br>
        </div>
        
        
</div>
    
<div class="content">
    <div id = "strona">Treść</div>
</div>



<div class="footer">
       <?php
    echo "<p>Witaj ".$_SESSION['imie_klienta'].'! [ <a href="logout.php">Wyloguj się!</a> ]</p>';
    ?>
</div>
</div>
</div>

</body>
</html>
</html>