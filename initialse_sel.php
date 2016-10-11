<?php
session_start();
$_SESSION['sel']=$_POST['cat'];
$_SESSION['xls']=0;
$_SESSION['upd']=0;
header("location:sel_opt.php");
?>