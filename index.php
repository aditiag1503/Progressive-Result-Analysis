<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Progressive Result Analysis</title>
<script type="text/javascript">
function validate()
{
	var x=document.getElementById("cat").value;
	if(x=="select")
	{
		alert("please select an option!!!");
		return false;
		}
		return true;
}
</script>
</head>

<body>
<?php
include("header.php");
 ?>
<center>
<h2>Progressive Result Analysis</h2>
<form action="initialse_sel.php" method="post">
<table><tr><td>
select option:</td><td><select name="cat" id="cat">
<option value="select" selected="selected">select option</option>
<option value="insert_data">insert data</option>
<option value="analyze_result">analyze result</option>
<option value="prg">progressive result analysis</option>
<option value="upd_teacher">update teacher details</option>
</select></td><td>
<input type="submit" value="submit" onclick="return validate()" /></td></tr></table>
</form>
</center>
<?php
include("footer.php");
 ?>
</body>
</html>