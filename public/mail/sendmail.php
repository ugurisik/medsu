<?php
require 'mailer/PHPMailerAutoload.php';


$name 	 = $_POST["name"];
$surname = $_POST["surname"];
$email 	 = $_POST["email"];
$phone = $_POST["phone"];
$subject = $_POST["subject"];
$message = $_POST["message"];




$mail = new PHPMailer;

//$mail->SMTPDebug = 3;                               // Enable verbose debug output

$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.internettescil.com.tr';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'burak@internettescil.com.tr';                 // SMTP username
$mail->Password = '';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to

$mail->setFrom('burak@internettescil.com.tr', 'Gönderen İsim');
$mail->addAddress('by_ala@hotmail.com');     // Add a recipient


$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
$mail->isHTML(true);                                  // Set email format to HTML
$mail->Subject =$subject;
$mail->Body    = "İsim Soyisim:"$name."".$surname."</br> Telefon:".$phone."</br> Email:".$email."</br> Mesaj:".$message;
$mail->AltBody = 'Web Site';
 $mail->CharSet  = 'utf-8';  
if(!$mail->send()) {
    echo 'Mesajınız Gönderilemedi';
    echo 'Hata: ' . $mail->ErrorInfo;
} else {
    echo 'Mesajınız Başarıyla Gönderilmiştir.Tekrar siteye yönlendiriliyorsunuz';
} ?>
<html><head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="5;URL=contactus.php"></head></html>