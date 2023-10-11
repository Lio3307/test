<?php
    $connection = mysqli_connect('localhost', 'root', '','user');
    if(!$connection){
        echo "Connection error";
    }
?>