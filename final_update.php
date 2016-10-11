<?php
session_start();
include("dbcon.php");
$data=$_POST['sub'];
$temp=explode("#",$data);
$sub=$temp[0];
$tname=$_POST['tname'];
$sub_ff=$_POST['sub_ff'];
$teacher=$temp[1];
mysql_query("update $teacher set sub_ff='$sub_ff',name='$tname' where subject='$sub'");
$_SESSION['upd']=1;
header("location:sel_opt.php");
?>