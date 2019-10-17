<?php

include 'include/db.php';

$filteredId = 1;

if(isset($_GET['id'])){
    $filteredId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
}elseif(isset($_SESSION['id'])){
    
}


$sth = $dbh->prepare('SELECT * 
                    FROM story
                    WHERE id = :filteredId');
$sth -> bindParam(':filteredId',  $filteredId);

$sth->execute();
$story = $sth->fetch(PDO::FETCH_ASSOC);

$sth = $dbh->prepare('SELECT * FROM links
                    WHERE story_id = :filteredId');
$sth -> bindParam(':filteredId' , $filteredId);
$sth->execute();
$links = $sth->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Soloäventyr - Start";

include 'views/index_layout.php';

?>