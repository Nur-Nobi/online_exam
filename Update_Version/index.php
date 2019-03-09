<?php include 'inc/header.php'; ?>
<?php 
	Session::checkLogin();

	if(isset($_POST['email']) && isset($_POST['password'])){
		if(isset($_POST['txtCaptcha']) && $_POST['txtCaptcha'] != ''){
			if($_SESSION['captcha_text'] == $_POST['txtCaptcha']){
				echo "success";
				exit;
			}else{
				$error= 'captcha incorrect';
			}
		}else{
			$error= 'captcha missing';
		}
	}
?>

<div class="main">
<h1>Online Exam System - User Login</h1>
	<div class="segment" style="margin-right:30px;">
		<img src="img/test.png"/>
	</div>
	<div class="segment">
	<?php if(isset($error)){echo $error; } ?>
	<form action="" method="post">
		
			   <td>Email</td>
			   <input name="email" type="text" id="email">
			 
			   <td>Password </td>
			   <input name="password" type="password" id="password">
		
			
			   <img src="captcha.php" style="width:200px; height: 60px;">&nbsp;&nbsp;<input type="text" name="txtCaptcha" placeholder="enter numbers">

			  <td></td>
			   <input type="submit" name="submit" id="reglogin" value="Login">
	
     
	   </form>

	   

	   <p>New User ? <a href="register.php">Signup</a> Free</p>
	   <span class="empty" style="display:none">Fields must not be empty</span>
	   <span class="disable" style="display:none">User ID Disabled.</span>
	   <span class="error" style="display:none">captcha missing</span>
	</div>


	
</div>
<?php include 'inc/footer.php'; ?>