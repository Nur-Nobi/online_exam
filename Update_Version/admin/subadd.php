<?php 
    $filepath = realpath(dirname(__FILE__));
  include_once ($filepath.'/inc/header.php');
  include_once ($filepath.'/../classes/Subject.php');
  $sub = new Subject();
?>


<?php
  if($_SERVER['REQUEST_METHOD']=='POST'){
    $addSub = $sub->addSubject($_POST);
  }
?>

<?php 
  if(isset($addSub)){
    echo $addSub;
  }
?> 

<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<title>Add Subject</title>
<form name="form1" method="post">
  <table width="41%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Enter Subject Name </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="sub_name" placeholder="enter language name" type="text" id="sub_name">
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</div>