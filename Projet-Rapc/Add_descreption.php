<?php
//Entrez ici les informations de votre base de données et le nom du fichier de sauvegarde.
$mysqlDatabaseName ='rapc';
$mysqlUserName ='root';
$mysqlPassword ='';

//Veuillez ne pas modifier les points suivants
//Exportation de la base de données et résultat

$age = $_POST["age"];
$poids = $_POST["poids"];
//$sexe = $_POST["sexe"];
$temperature = $_POST["temperature"];
$toux = $_POST["toux"];
$maldetete = $_POST["mal_de_tete"];
$maldegorge = $_POST["mal_de_gorge"];
$maldeventre = $_POST["mal_de_ventre"];

/*
echo 'Age : ' . $age . ' poids : ' . $pods . ' tempurature : ' . $tempurature . 
        ' toux : ' . $toux . ' mal de tete : ' . $maldetete . ' mal de gorge : ' . $maldegorge . ' mal de ventre : ' . $maldeventre ;
*/






/*

$command='mysqldump --opt -h' .$mysqlHostName .' -u' .$mysqlUserName .' -p' .$mysqlPassword .' ' .$mysqlDatabaseName .' > ' .$mysqlExportPath;
exec($command,$output=array(),$worked);
switch($worked){
case 0:
echo 'La base de données <b>' .$mysqlDatabaseName .'</b> a été stockée avec succès dans le chemin suivant '.getcwd().'/' .$mysqlExportPath .'</b>';
break;
case 1:
echo 'Une erreur s est produite lors de la exportation de <b>' .$mysqlDatabaseName .'</b> vers'.getcwd().'/' .$mysqlExportPath .'</b>';
break;
case 2:
echo 'Une erreur d exportation s est produite, veuillez vérifier les informations suivantes : <br/><br/><table><tr><td>MySQL Database Name:</td><td><b>' .$mysqlDatabaseName .'</b></td></tr><tr><td>MySQL User Name:</td><td><b>' .$mysqlUserName .'</b></td></tr><tr><td>MySQL Password:</td><td><b>NOTSHOWN</b></td></tr><tr><td>MySQL Host Name:</td><td><b>' .$mysqlHostName .'</b></td></tr></table>';
break;

}
*/
?>