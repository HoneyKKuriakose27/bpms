<?php
  session_start();
	include '../connection.php';
  $lkey = $_COOKIE['lkey'];

	$cname = $_POST['cname'];
	$desc = $_POST['desc'];
  $status=1;

  $catkey=md5(microtime());
  $categorykey=substr($catkey,0,8);

	$sql2="insert into tb_category(catkey,catname,catdesc,catstatus,loginid,delstatus) values
	('".$categorykey."','".$cname."','".$desc."','".$status."','".$lkey."','0')";

  $ex2=mysqli_query($conn,$sql2);

  if($ex2)
	{
    echo "<SCRIPT type='text/javascript'>alert('Category Added.');window.location.replace(\"viewcategory.php\");</SCRIPT>";
	}
	else
	{
    echo "<SCRIPT type='text/javascript'>alert('Registration Failed.');window.location.replace(\"addcategory.php\");</SCRIPT>";
  }

?>
