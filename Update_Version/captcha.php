<?php 
 session_start();

 $random_number = rand(1,9).rand(1,9).rand(1,9);

 $_SESSION['captcha_text'] = $random_number;

 $captcha_image = imagecreatefromjpeg("captcha.jpg");
 $font_color = imagecolorallocate($captcha_image, 0, 0, 0);
 imagestring($captcha_image, 15, 30, 20, $random_number, $font_color);
 imagejpeg($captcha_image);
 imagedestroy($captcha_image);


/*
 header('content-type:image/jpeg');
 $text = $_SESSION['secure'];
 $font_size=30;
 $width = 200;
 $height = 40;
 $image = imagecreate($width, $height);
 imagecolorallocate($image, 255, 255, 255);
 $text_color = imagecolorallocate($image, 0, 0, 0);
 for($x=1; $x<=30; $x++)
 {
 	$x1=rand(1,1000);
 	$y1=rand(1,1000);
 	$x2=rand(1,1000);
 	$y2=rand(1,1000);
 	imageline($image, $x1, $x2, $y1, $y2, $text);
 }

 imagettftext($image, $font_size, 0, 15, 30, $text_color, 'font.ttf', $text);
 imagejpeg($image);
*/

 ?>
