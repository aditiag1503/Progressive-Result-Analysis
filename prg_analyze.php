<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Analyze Result</title>
<script type="text/javascript">
function validate()
{
	
	var y=document.getElementById("br").value;
	var z=document.getElementById("batch").value;
	
	if(y=="select" ||z=="select")
	{
		alert("please select an option!!!");
		return false;
		}
		
		return true;
		
}
</script>
</head>

<body>
<?php include("header.php"); ?>
<center>
<h3>Analyze Overall Degree Result</h3>

<table border="0" cellpadding="4" cellspacing="2">
<form action="final_analyze.php" method="post">
<tr><td>select branch:</td><td><select name="br" id="br">
<option value="select" selected="selected">select option</option>
<option value="it">IT</option>
<option value="CSE">CSE</option>
<option value="ETC">ETC</option>
<option value="EEE">EEE</option>
<option value="EE">EE</option>
<option value="CIVIL">CIVIL</option>
<option value="MECH">MECH</option>
</select></td></tr>


<tr><td>select batch:</td><td><select name="batch" id="batch">
<option value="select" selected>select option</option>
<?php 
for($i=2002;$i<=2021;$i++)
{
?>
<option value="<?php echo $i;echo "-";echo $i+4; ?>"><?php echo $i;echo "-";echo $i+4; ?></option>
<?php } ?>
</select></td></tr>
<tr>
<td colspan="2"><input type="submit" value="analyze" onclick="return validate()" /></td></tr>
</form>
</table>
</center>
<?php
include("footer.php");
 ?>
</body>
</html>