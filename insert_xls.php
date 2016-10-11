<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert Records</title>
<script type="text/javascript">
function validate()
{
	var x=document.getElementById("sem").value;
	var y=document.getElementById("br").value;
	var z=document.getElementById("batch").value;
	var w=document.getElementById("type").value;
	var u=document.getElementById("att").value;
	if(x=="select"||y=="select" ||z=="select" ||w=="select" ||u=="select")
	{
		alert("please select an option!!!");
		return false;
		}
		if(document.getElementById("file").value=="")
		{
			alert("please set a file to upload!!!");
			return false;
			}
		return true;
}
function set_attempt()
		{
			var x=document.getElementById("type");
			if(x.value=="regular")
			{
				document.getElementById("att")[1].disabled=false;
				document.getElementById("att").selectedIndex=1;
				document.getElementById("att").disabled=true;
				
				}
				if(x.value=="back")
			{
				document.getElementById("att").disabled=false;
				document.getElementById("att")[1].disabled=true;
				document.getElementById("att").selectedIndex=0;
			}
			}
</script>
</head>

<body>
<?php include("header.php"); ?>
<center>
<h3>Insert Records</h3>
<table border="0" cellpadding="4" cellspacing="2">
<form action="upload_xls.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
<tr><td>select branch:</td><td><select name="br" id="br">
<option value="select" selected="selected">select option</option>
<option value="IT">IT</option>
<option value="CSE">CSE</option>
<option value="ETC">ETC</option>
<option value="EEE">EEE</option>
<option value="EE">EE</option>
<option value="CIVIL">CIVIL</option>
<option value="MECH">MECH</option>
</select></td></tr>

<tr><td>select semester:</td><td><select name="sem" id="sem">
<option value="select" selected>select option</option>
<?php 
for($i=1;$i<=8;$i++)
{
?>
<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
<?php } ?>
</select></td></tr>
<tr><td>select batch:</td><td><select name="batch" id="batch">
<option value="select" selected>select option</option>
<?php 
for($i=2002;$i<=2021;$i++)
{
?>
<option value="<?php echo $i-2000+4; ?>"><?php echo $i;echo "-";echo $i+4; ?></option>
<?php } ?>
</select></td></tr>
<tr><td>select type:</td><td><select id="type" name="type" onchange="set_attempt()">
<option value="select" selected>select option</option>
<option value="regular">regular</option>
<option value="back">back</option>
</select></td></tr>

<tr><td>select attempt:</td><td><select id="att" name="att">
<option value="select" selected>select option</option>
<option value="1">attempt1</option>
<option value="2">attempt2</option>
<option value="3">attempt3</option>
<option value="4">attempt4</option>
</select></td></tr>

<tr>

<td colspan="2"><label>
<input type="file" name="file" id="file" />
</label></td></tr>
<tr>
<td colspan="2"><input type="submit" value="insert" onclick="return validate()" /></td></tr>
</form>
</table>
</center>
<?php
include("footer.php");
 ?>
</body>
</html>