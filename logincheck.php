Access<?php 
    session_start();
    include 'connection.php';
    $usr = $_POST["username"];
    $en = md5($_POST["pass"]);

    $sql="select id,status,utype from tb_login where username='".$usr."' and password='".$en."'";

    $result = mysqli_query($conn,$sql);
    $a=0;
    while ($row=mysqli_fetch_array($result))
    {
        $a++;
        $b=$row['id'];
        $c=$row['utype'];
        $d=$row['status'];
    }
    if($a>0)
    {
        if($d==1)
        {
            $_SESSION['lkey']=$b;
            setcookie("lkey",$b);
            setcookie("logined",1);
            if ($c==0)
            {
                header("location:admin/adminhome.php");
            }
            else if($c==1)
            {
                header("location:customer/customerhome.php");
            }
            else
            {

                header("location:staff/staffhome.php");
            }
        }
        else if ($d==2)
        {
            echo "<SCRIPT type='text/javascript'>alert('Access Denied.....!!');
            window.location.replace(\"login/login.php\");
            </SCRIPT>";
        }
        else
        {
            echo "<SCRIPT type='text/javascript'>alert('User Verification Pending.....!!');
            window.location.replace(\"login/login.php\");
            </SCRIPT>";
        }
    }
    else
    {
        echo "<SCRIPT type='text/javascript'>alert('Invalid Login Credentials');
        window.location.replace(\"login/login.php\");
        </SCRIPT>";
    }

?>

    
  
 ?>