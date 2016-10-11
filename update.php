<?php
session_start();
include("dbcon.php");
$br=$_POST['br'];
$batch=$_POST['batch'];
$teacher=$br."_".$batch."_teacher";
$sem=$_POST['sem'];
$sql=mysql_query("select * from $teacher where sem=$sem");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Details</title>
<script type="text/javascript">
function validate()
{
	var x=document.getElementById("sub").value;
	var w=document.getElementById("sub_ff").value;
	var p=document.getElementById("tname").value;
	if(x=="select")
	{
		alert("please select an option!!!");
		return false;
		}
		if(w==""||p=="")
	{
		alert("please enter value!!!");
		return false;
		}
		return true;
		
}
</script>
</head>

<body>
<?php include("header.php"); ?>
<center>
<h3>Enter Update Details</h3>
<table border="0" cellpadding="4" cellspacing="2">
<form action="final_update.php" method="post">
<tr><td>select subject:</td><td><select name="sub" id="sub">
<option value="select" selected>select option</option>
<?php 
while($res=mysql_fetch_array($sql))
{
?>
<option value="<?php echo $res[1]."#".$teacher; ?>"><?php echo $res[1]; ?></option>
<?php } ?>
</select></td></tr>
<tr><td>Insert Teacher's Name:</td><td><input type="text" name="tname" id="tname" /></td></tr>
<tr><td>Insert Subject's Full Name:</td><td><input type="text" name="sub_ff" id="sub_ff" /></td></tr>
<tr>
<td colspan="2"><input type="submit" value="update" onclick="return validate()" /></td></tr>
</form>
</table>
</center>
<?php
include("footer.php");
 ?>
</body>
</html>