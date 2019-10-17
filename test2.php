<?php

session_start();

if(!isset($_SESSION)) {
    $_SESSION['items'] = []; 
}

//array_push($_SESSION['items'], "swamp");

echo "<pre>" . print_r($_SESSION, 1) ."</pre>";

if(isset($_POST)) {
    array_push($_SESSION['items'], $_POST['item']);
}

echo "<pre>" . print_r($_SESSION, 1) ."</pre>";

?>

<form action="test2.php" method="post">
    <label for="item">Ett Föremål: </label>
    <input type="text" name="item">
    <input type="submit" value="Plocka upp">
</form>