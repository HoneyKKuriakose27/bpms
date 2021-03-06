<?php
    session_start();
    //https://myaccount.google.com/u/0/lesssecureapps - Turn on less secure apps

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    require '../admin/Exception.php';
    require '../admin/PHPMailer.php';
    require '../admin/SMTP.php';

    $mail = new PHPMailer();
    $mail->IsSMTP();
    $mail->Mailer = "smtp";

    $mail->SMTPDebug  = 1;
    $mail->SMTPAuth   = TRUE;
    $mail->SMTPSecure = "tls";
    $mail->Port       = 587;
    $mail->Host       = "smtp.gmail.com";

    $email = $_SESSION['email'];
    $bookingid = $_SESSION['bkkey'];
    

    $mail->IsHTML(true);
    $mail->AddAddress($email, "");
    $mail->SetFrom("otpforfree@gmail.com", "KL-BPMS");
    $mail->Subject = "BPMS - Service Booking Details";

   

    $content = "<b><h2><font color='green'>Booking Successful</font></h2><br>Booking ID : ".$bookingid."<br>";



    $mail->MsgHTML($content);
    if(!$mail->Send())
    {
      //echo "Error while sending Email.";
      //var_dump($mail);
    }
    else
    {
      echo "<script>alert('Booking Details Mailed Successfully.');window.location.href='bookinghistory.php';</script>";
    }