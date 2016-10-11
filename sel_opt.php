<?php
session_start();
$opt=$_SESSION['sel'];
if($_SESSION['xls']==1)
{
	$_SESSION['xls']=0;
	?>
    <script type="text/javascript">
    alert("data inserted sucessfuly!!!");
	</script>
    <?php
}
    if($_SESSION['xls']==2){
	$_SESSION['xls']=0;
?>
<script type="text/javascript">
    alert("some error occured!!!");
	</script>
<?php

}
if($_SESSION['upd']==1)
{
	$_SESSION['upd']=0;
	?>
    <script type="text/javascript">
    alert("data updated sucessfuly!!!");
	</script>
    <?php
}
   
if($opt=="insert_data")
{
	include("insert_xls.php");
	}
	else if($opt=="analyze_result")
	{
	  	include("analyze_result.php");
	}
	else if($opt=="upd_teacher")
	{
		include("update_teacher.php");
	}
	else if($opt=="prg")
	{
		include("prg_analyze.php");
	}
	
?>

