<?php
    session_start();
    /*setcookie('adminlogined',1);
    if(isset($_COOKIE['adminlogined']) && $_COOKIE['adminlogined']==1)
    {
*/
    include '../connection.php';
    include 'staffheader.php';
    include 'staffmainhome.php';
    include 'stafffooter.php';
    /*}

    else
    {
        Header("location:../index.php");
    }*/
?>
