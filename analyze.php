<?php
session_start();
$con = mysql_connect("localhost","root","");
mysql_select_db("addvait_pra",$con);
$sess=$_POST['batch'];
$b=explode("-",$sess);
$batch=$b[1]-2000;
$sem=$_POST['sem'];
$br=$_POST['br'];
$exam=$_POST['exam_cond'];
$res_dec=$_POST['res_dec'];
$tbl=$br."_".$batch."_".$sem;
$tbls=$tbl."s";
$tblt=$tbl."t";
$tbl_teacher=$br."_".$batch."_teacher";
echo "select count(*) from $tbl where sum!=0";
$sql=mysql_query("select count(*) from $tbl where sum!=0");
$stud=mysql_fetch_array($sql);
$sql=mysql_query("select count(*) from $tbl where spi!='0'");
$passed=mysql_fetch_array($sql);
$sql=mysql_query("select subject from $tbls");
$i=0;
while($r=mysql_fetch_array($sql))
{
	$bb[$i]=$r[0];
	$i++;
	}
if($sem==1||$sem==2||$sem==7||$sem==8)
{
	$sql=mysql_query("select ((select count(sname) from $tbl  where ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] between 0 and 27) or ($bb[0] between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] between 0 and 27 and $bb[4] not between 0 and 27))) from $tbl");
	$f1=mysql_fetch_array($sql);
	}
	else
	{
		$sql=mysql_query("select ((select count(sname) from $tbl  where ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] between 0 and 27 and $bb[5] not between 0 and 27) or ($bb[0] between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27 and $bb[5] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27 and $bb[5] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27 and $bb[5] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] between 0 and 27 and $bb[4] not between 0 and 27 and $bb[5] not between 0 and 27) or ($bb[0] not between 0 and 27 and $bb[1] not between 0 and 27 and $bb[2] not between 0 and 27 and $bb[3] not between 0 and 27 and $bb[4] not between 0 and 27 and $bb[5]  between 0 and 27))) from $tbl");
		
		$f1=mysql_fetch_array($sql); 
		}
		$sql=mysql_query("select sname,total from $tbl where total=(select max(total) from $tbl)");
		$topper=mysql_fetch_array($sql);
		
		$sql=mysql_query("select count(*) from $tbl where (CAST(spi as UNSIGNED)) >=8.00");
		$sp1=mysql_fetch_array($sql);
		$sql=mysql_query("select count(*) from $tbl where (CAST(spi as UNSIGNED)) between 7.50 and 7.99");
		$sp2=mysql_fetch_array($sql);
		$sql=mysql_query("select count(*) from $tbl where (CAST(spi as UNSIGNED)) between 7.00 and 7.49");
		$sp3=mysql_fetch_array($sql);
		$sql=mysql_query("select count(*) from $tbl where (CAST(spi as UNSIGNED)) between 6.50 and 6.99");
		$sp4=mysql_fetch_array($sql);
		$sql=mysql_query("select count(*) from $tbl where (CAST(spi as UNSIGNED))<=6.49 and (CAST(spi as UNSIGNED))!=0");
		$sp5=mysql_fetch_array($sql);
		for($ne=0;$ne<count($bb);$ne++)
		{
		$sql=mysql_query("select * from $tbl_teacher where subject='$bb[$ne]'");
		
		while($res=mysql_fetch_array($sql))
		{
			$teacher[$ne]=$res['name'];
			$sub_ff[$ne]=$res['sub_ff'];
			
			}
		}
			$sql=mysql_query("select br_ff from branch where br='$br'");
			$br_ff=mysql_fetch_array($sql);
			$br_ff[0]=mb_strtoupper($br_ff[0]);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo "Result_".$tbl; ?></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">RESULT ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br /><br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="60%" style="text-align:justify;">
<tr><td>SEMESTER</td><td>&nbsp;&nbsp;:&nbsp;&nbsp;</td><td><?php echo $sem; ?></td></tr>
<tr><td>SESSION</td><td>&nbsp;&nbsp;:&nbsp;&nbsp;</td><td><?php echo $sess; ?></td></tr>
<tr><td>EXAM CONDUCTED ON</td><td>&nbsp;&nbsp;:&nbsp;&nbsp;</td><td><?php echo $exam; ?></td></tr>
<tr><td>RESULT DECLARED ON</td><td>&nbsp;&nbsp;:&nbsp;&nbsp;</td><td><?php echo $res_dec; ?></td></tr>
</table>
</center>
<br /><br /><br /><br /><br />
TOTAL NO OF STUDENTS APPEARED :-<?php echo $stud[0];  ?><br /><br />
TOTAL NO OF STUDENT PASSED:-<?php echo $passed[0]; ?><br /><br />
TOTAL NO OF STUDENT FAILED IN ONE SUBJECT:-<?php echo $f1[0]; ?><br /><br />
HIGHEST MARKS OBTAINED BY:-<?php echo $topper[0]."(".$topper[1]."/1000)"; ?><br /><br />
PASS PERCENTAGE:-<?php echo (round(($passed[0]/$stud[0])*100,2))."%"; ?><br /><br /><br /><br /><br />
<!--
<center>
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="text-align:center;">
<tr><td colspan="5">No of students secured SPI</td></tr>
<tr><td>>=8.00</td><td>between 7.99 and 7.50</td><td>between 7.49 and 7.00</td><td>between 6.99 and 6.50</td><td><6.50</td></tr>
<tr><td><?php /*echo $sp1[0]; ?></td><td><?php echo $sp2[0]; ?></td><td><?php echo $sp3[0]; ?></td><td><?php echo $sp4[0]; ?></td><td><?php echo $sp5[0]; */?></td></tr></table></center>
-->
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>

<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">RESULT ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br /><br /><br /><br />
</center>
<span class="topic">Top Five positions (Theory End Semester Examinations)</span>
<br /><br /><br />
<center>
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size:9px; text-align:center;">
<tr><td>SUBJECT</td>
<?php 
for($c=0;$bb[$c]--!=NULL;$c++)
{
	echo "<td>".strtoupper($bb[$c])."</td>";
	}
?>
</tr>

<tr><td>APPEARED</td>
<?php 
for($c=0;$bb[$c]!=NULL;$c++)
{
	$sql=mysql_query("select count(*) from $tbl where $bb[$c] is not NULL");
	$val=mysql_fetch_array($sql);
	$app[$c]=$val[0];
	echo "<td>".$val[0]."</td>";
	}
?>
</tr>

<tr><td>PASSED</td>
<?php 
for($c=0;$bb[$c]!=NULL;$c++)
{
	$sql=mysql_query("select count(*) from $tbl where $bb[$c] is not NULL and $bb[$c]>=28");
	$val=mysql_fetch_array($sql);
	echo "<td>".$val[0]."</td>";
	$spass[$c]=$val[0];
	}
?>
</tr>

<tr><td>%</td>
<?php 
for($c=0;$bb[$c]!=NULL;$c++)
{
	echo "<td>".round($spass[$c]/$app[$c]*100,2)."</td>";
	}
?>
</tr>
<tr><td rowspan="5">SUBJECT TOPPERS<br /> WITH MARKS(OUT OF 80)</td>
<?php 
mysql_query("create table $tblt(sname varchar(50))");
 for($c=0;$bb[$c]!=NULL;$c++)
{
    echo "<td>";
	$sql=mysql_query("select  sname,$bb[$c] from $tbl a where 5>= (select count(distinct $bb[$c]) from $tbl b where a.$bb[$c]<=b.$bb[$c] and a.$bb[$c] is not NULL and b.$bb[$c] is not NULL) and $bb[$c] is not NULL order by a.$bb[$c] desc");
	echo "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"height:200px;\">";
	$ci=1;
	while($ci<=5)
	{
		$res=mysql_fetch_array($sql);
		mysql_query("insert into $tblt values('$res[0]')");
	echo "<tr><td style=\"width:50px\">".$res[0]."(".$res[1].").</td></tr>";
	$ci++;
	}
	echo "</table>";
	echo "</td>";	
}

?>

</tr>

</table>
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>


<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">RESULT ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br /><br />
</center>
<span class="topic">Top Five Position Overall</span>
<br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size:14px; text-align:center;">
<tr><td>URN</td><td>STUDENT'S NAME</td><!--<td>SPI</td>-->
<?php 
for($c=0;$bb[$c]!=NULL;$c++)
{
	echo "<td>".strtoupper($bb[$c])."<br />(80)</td>";
	}
?>
<td>TOTAL<br />(1000)</td>
</tr>
<?php 
$sql=mysql_query("select * from $tbl where spi!=0 order by total desc");
for($ci=0;$ci<5;$ci++)
{
echo "<tr>";
$res=mysql_fetch_array($sql);
echo "<td>".$res['urn']."</td>"."<td>".$res['sname']."</td>";//"<td>".$res['spi']."</td>";
for($n=0;$bb[$n]!=NULL;$n++)
{
echo "<td>";
echo $res[$bb[$n]];
echo "</td>";
}
echo "<td>".$res['total']."</td>";
echo "</tr>";
}

?>

</table>

<br /><br /><br />

<span class="topic">List Of Students Showing Poor Performance</span>
<br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size:14px; text-align:center;">
<tr><td>URN</td><td>STUDENT'S NAME</td><!--<td>SPI</td>-->
<?php 
for($c=0;$bb[$c]!=NULL;$c++)
{
	echo "<td>".strtoupper($bb[$c])."<br />(80)</td>";
	}
?>
<td>TOTAL<br />(1000)</td>
</tr>
<?php 
$sql=mysql_query("select * from $tbl where spi=0 order by total desc");
while($res=mysql_fetch_array($sql))
{
echo "<tr>";
echo "<td>".$res['urn']."</td>"."<td>".$res['sname']."</td>";//"<td>".$res['spi']."</td>";
for($n=0;$bb[$n]!=NULL;$n++)
{
echo "<td>";
echo $res[$bb[$n]];
echo "</td>";
}
echo "<td>".$res['total']."</td>";
echo "</tr>";
}

?>

</table>
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>

<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">RESULT ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
</center>
<br /><br /><br />
<span class="topic">Frequency Status For first five toppers in Theory Examinations</span>
<br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size:14px; text-align:center;">
<tr><td>URN</td><td>STUDENT'S NAME</td><td>COUNT</td></tr>
<?php
$sql=mysql_query("select urn,sname ,count(sname) from $tblt natural join $tbl group by sname,urn order by count(sname) desc" );
while($res=mysql_fetch_array($sql))
{
	echo "<tr><td>".$res[0]."</td><td>".$res[1]."</td><td>".$res[2]."</td></tr>";
	}
?>
</table>
</div>

<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>
<?php
for($c=0;$bb[$c]!=NULL;$c++)
{
	
 ?>
<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">RESULT ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br /><br />
</center>
<span class="topic">Subject:<?php echo $sub_ff[$c]." "; ?>[Max Marks:80]</span>
<br /><br /><br />
Teacher:<?php echo " Prof.".$teacher[$c]; ?>
<br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size:14px; text-align:center;">
<tr><td rowspan="2">No. of Students Appeared</td><td rowspan="2">No. of Students Passed</td><td rowspan="2">% of Passing</td><td colspan="5">No of Students Securing Marks</td></tr>
<tr><td>>=75%</td><td>Between 61% and 75%</td><td>Between 51% and 60%</td><td>Between 35% and 50%</td><td>Below 35%</td></tr>
<tr><td>
<?php
$sql=mysql_query("select count(*) from $tbl where $bb[$c] is not NULL");
$res=mysql_fetch_array($sql);
$sapp=$res[0];
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where $bb[$c] is not NULL and $bb[$c]>=28");
$res=mysql_fetch_array($sql);
$spassed=$res[0];
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where $bb[$c] is not NULL");
$res=mysql_fetch_array($sql);
echo round($spassed/$sapp*100,2);
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where ($bb[$c]/80*100)>=75");
$res=mysql_fetch_array($sql);
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where ($bb[$c]/80*100) between 61 and 75");
$res=mysql_fetch_array($sql);
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where ($bb[$c]/80*100) between 51 and 60");
$res=mysql_fetch_array($sql);
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where ($bb[$c]/80*100) between 35 and 50");
$res=mysql_fetch_array($sql);
echo $res[0];
?>

</td>

<td>
<?php
$sql=mysql_query("select count(*) from $tbl where ($bb[$c]/80*100)<35");
$res=mysql_fetch_array($sql);
echo $res[0];
?>

</td>
</tr>
</table>
<br /><br /><br />
Top Score:
<br /><br />
<?php
$sql=mysql_query("select sname,$bb[$c] from $tbl where $bb[$c]=(select max($bb[$c]) from $tbl)");
while($res=mysql_fetch_array($sql))
{
echo $res[0]."(".$res[1].")"."<br />";
}
?>
<br /><br /><br />
Teacher's Comments:
<br /><br />
<center>
<table border="1" style="height:250px; width:500px" cellpadding="0" cellspacing="0">
<tr><td> </td></tr>
</table>
</center>

</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>
<?php 
}
?>
<?php 
mysql_query("drop table $tblt");
?>
</body>
</html>