<?php

include 'include/db.php';
$sth = $dbh->prepare('SELECT * FROM story
                    WHERE id = 7');
$sth->execute();
$story = $sth->fetch(PDO::FETCH_ASSOC);

$sth = $dbh->prepare('SELECT * FROM links
                    WHERE story_id = 7');
$sth->execute();
$links = $sth->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Soloäventyr - Start";

include 'views/index.php';

?>