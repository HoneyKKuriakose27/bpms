<?php
    session_start();
    /*setcookie('adminlogined',1);
    if(isset($_COOKIE['adminlogined']) && $_COOKIE['adminlogined']==1)
    {
*/
    include 'connection.php';
    include 'customerheader.php';
    include 'customermainhome.php';
    include 'customerfooter.php';
    /*}

    else
    {
        Header("location:../index.php");
    }*/
?>
