<?php
session_start();
include("dbcon.php");
//error_reporting(E_ALL^ E_WARNING);
error_reporting(0);
$sess=$_POST['batch'];
$b=explode("-",$sess);
$batch=$b[1]-2000;
$br=$_POST['br'];
$tbl_teacher=$br."_".$batch."_teacher";
$sql=mysql_query("select br_ff from branch where br='$br'");
$br_ff=mysql_fetch_array($sql);
$br_ff[0]=mb_strtoupper($br_ff[0]);
$grand=$br."_".$batch."_topper";
mysql_query("create table if not exists $grand (urn varchar(10) PRIMARY KEY,sname varchar(50),gtotal integer)");
mysql_query("create table if not exists notcleared (sem varchar(2), urn varchar(10),sname varchar(50))");

for($x=0;$x<8;$x++)
{
	$tbl[$x]=$br."_".$batch."_".($x+1);
	$t=$tbl[$x];
	$tblb=$tbl[$x]."_back";
$sql=mysql_query("select count(urn) from $t");
$res=mysql_fetch_array($sql);
$enroll[$x]=$res[0];
$sql=mysql_query("select count(urn) from $t where spi!='0'");
$res=mysql_fetch_array($sql);
$att1[$x]=$res[0];

$sql=mysql_query("select count(urn) from $tblb where spi!='0' and attempt=2");
$res=mysql_fetch_array($sql);
$att2[$x]=$res[0];

$sql=mysql_query("select count(urn) from $tblb where spi!='0' and attempt=3");
$res=mysql_fetch_array($sql);
$att3[$x]=$res[0];

$sql=mysql_query("select count(urn) from $tblb where spi!='0' and attempt=4");
$res=mysql_fetch_array($sql);
$att4[$x]=$res[0];
$pass[$x]=0;
$pass[$x]=$att1[$x]+$att2[$x]+$att3[$x]+$att4[$x];
$fail[$x]=$enroll[$x]-$pass[$x];
$ntclr[$x]=$enroll[$x]-$att1[$x];

$sql=mysql_query("select sname,spi from $t where total=(select max(total) from $t)");
$res=mysql_fetch_array($sql);
$topper[$x]=$res[0];
$topper_spi[$x]=$res[1];

$sql=mysql_query("select urn,sname,spi,total from $t");
while($res=mysql_fetch_array($sql))
{
	$urn=$res['urn'];
	$sname=$res['sname'];
	$spi=$res['spi'];
	$total=$res['total'];
	if($spi==0)
	{
		$q=mysql_query("select  urn,sname,spi,total from $tblb where urn=$urn and attempt=(select max(attempt) from $tblb where urn=$urn)");
		$ro=mysql_fetch_array($q);
		$urn=$ro['urn'];
		$sname=$ro['sname'];
		$spi=$ro['spi'];
		$total=$ro['total'];
		
		if($x==0)
		{
			mysql_query("insert into $grand values($urn,'$sname',$total)");
		}
		else if($x==1)
		{
		if($urn!=''){
		$g=mysql_query("select gtotal from $grand where urn=$urn");
		$gr=mysql_fetch_array($g);
		$tal=round(($total+$gr[0])/2);
			mysql_query("update $grand set gtotal=$tal where urn=$urn");
			}
		}
		else{
			if($urn!=''){
		$g=mysql_query("select gtotal from $grand where urn=$urn");
		$gr=mysql_fetch_array($g);
		$tal=$total+$gr[0];
			mysql_query("update $grand set gtotal=$tal where urn=$urn");
			}
		}
	}
	else{
		if($x==0)
		{
			mysql_query("insert into $grand values($urn,'$sname',$total)");
		}
		else if($x==1)
		{
		if($urn!=''){
		$g=mysql_query("select gtotal from $grand where urn=$urn");
		$gr=mysql_fetch_array($g);
		$tal=round(($total+$gr[0])/2);
			mysql_query("update $grand set gtotal=$tal where urn=$urn");
			}
		}
		else{
		if($urn!=''){
			$g=mysql_query("select gtotal from $grand where urn=$urn");
		$gr=mysql_fetch_array($g);
		$tal=$total+$gr[0];
			mysql_query("update $grand set gtotal=$tal where urn=$urn");
		}
		}
			
	}
	
}

}
?>









<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo "Result_".$sess; ?></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">OVERALL DEGREE ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br />
<span class="det">TOP TEN TOPPERS SUMMARY</span>
<br /><br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="80%" height="450px" style="font-size:11px; text-align:center;">
<tr><td>ROLL NO</td><td>NAME</td><td>GRAND TOTAL(/7000)</td></tr>
<?php 
$gra=mysql_query("select * from $grand a where 10>=(select count(distinct gtotal) from $grand b where a.gtotal<=b.gtotal and a.urn != b.urn) order by a.gtotal desc");
while($rr=mysql_fetch_array($gra))
{
	?>
    <tr><td><?php echo $rr[0]; ?></td><td><?php echo $rr[1]; ?></td><td><?php echo $rr[2]; ?></td></tr>
    <?php
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
<span class="subheading">OVERALL DEGREE ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br /><br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="80%" height="450px" style="font-size:11px; text-align:center;">
<tr><td rowspan="2">SEMESTER</td><td rowspan="2">TOTAL NO. OF STUDENTS APPEARED IN EXAM</td><td rowspan="2">TOTAL NO. OF STUDENTS PASSED</td><td rowspan="2">TOTAL NO. OF STUDENTS FAILED</td><td rowspan="2">PASSING PERCENTAGE</td><td colspan="5">NO. OF STUDENTS PASSED IN</td></tr>
<tr><td>1ST ATTEMPT</td><td>2ND ATTEMPT</td><td>3RD ATTEMPT</td><td>4TH ATTEMPT</td><td>NOT CLEARED</td></tr>
<?php
for($i=0;$i<8;$i++)
{
?>
<tr><td><?php echo ($i+1); ?></td><td><?php echo $enroll[$i]; ?></td><td><?php echo $att1[$i]; ?></td><td><?php echo $ntclr[$i]; ?></td><td><?php echo round(($pass[$i]/$enroll[$i]*100),2)."%"; ?></td><td><?php echo $att1[$i]; ?></td><td><?php echo $att2[$i]; ?></td><td><?php echo $att3[$i]; ?></td><td><?php echo $att4[$i]; ?></td><td><?php echo $fail[$i]; ?></td></tr>
<?php
}
?>
</table>
<br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="80%"  style="font-size:14px; text-align:center;">
<tr><td>DIVISION BREAK-UP</td><td>HONOURS</td><td>FIRST DIVISION</td><td>SECOND DIVISION</td><td>LESS THAN 50%</td></tr>
<?php 
$divsql=mysql_query("select count(urn) from $grand where gtotal>=5250");
$hon=mysql_fetch_array($divsql);
$divsql=mysql_query("select count(urn) from $grand where gtotal between 4550 and 5250");
$div1=mysql_fetch_array($divsql);
$divsql=mysql_query("select count(urn) from $grand where gtotal between 3500 and 4550");
$div2=mysql_fetch_array($divsql);
$divsql=mysql_query("select count(urn) from $grand where gtotal<3500");
$ltf=mysql_fetch_array($divsql);
?>
<tr><td>NO OF STUDENTS</td><td><?php echo $hon[0]; ?></td><td><?php echo $div1[0]; ?></td><td><?php echo $div2[0]; ?></td><td><?php echo $ltf[0]; ?></td></tr>
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
<span class="subheading">OVERALL DEGREE ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br />
<span class="det">SEMESTER-WISE TOPPERS SUMMARY</span>
<br /><br /><br /><br /><br />
<table border="1" cellpadding="15" cellspacing="0" width="100%" style="text-align:center;">
<tr><td>SEMESTER</td><td>TOPPER'S NAME WITH SPI</td></tr>
<?php
for($i=0;$i<8;$i++)
{
?>
<tr><td><?php echo ($i+1); ?></td><td><?php echo $topper[$i]."(".$topper_spi[$i].")"; ?></td></tr>
<?php
}
?>
</table>
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>
<?php 
for($y=0;$y<8;$y++)
{
?>
<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">OVERALL DEGREE ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span><br />
<span class="det">SEMESTER:<?php echo ($y+1); ?></span><br />
<span class="det">SEMESTER WISE PERFORMANCE ANALYSIS</span>
<br /><br /><br />
</center>
TOTAL NO. OF STUDENTS ENROLLED:<?php echo $enroll[$y]; ?><br /><br />
<center>
<table border="1" cellpadding="0" cellspacing="0" width="60%" style="text-align:center">
<tr><td rowspan="2">SUBJECT NAME</td><td rowspan="2">SUBJECT TEACHER</td><td colspan="5">NO. OF STUDENTS CLEARED THE SUBJECT IN</td></tr>
<tr><td>1ST ATTEMPT</td><td>2ND ATTEMPT</td><td>3RD ATTEMPT</td><td>4TH ATTEMPT</td><td>NOT CLEARED</td></tr>
<?php
$tbls=$tbl[$y]."s";
$sql=mysql_query("select subject from $tbls");
$c=0;
while($res=mysql_fetch_array($sql))
{
	$tblb=$tbl[$y]."_back";
	
	$temp[$c]=$res[0];
	$c++;
	}
	$sss=mysql_query("select count(*) from $tbls");
	$ddd=mysql_fetch_array($sss);
	for($e=0;$e<$ddd[0];$e++)
	{
		$sub=$temp[$e];
		$sq=mysql_query("select name,sub_ff from $tbl_teacher where subject='$sub'");
		$r=mysql_fetch_array($sq);

		$s=mysql_query("select count(urn) from $tbl[$y] where IFNULL($sub,0)>=28");
		$cc=mysql_fetch_array($s);
		$subatt1=$cc[0];
		
		$s=mysql_query("select count(a.urn) from $tbl[$y] a inner join $tblb b on a.urn=b.urn where IFNULL(a.$sub,0)<28 and IFNULL(b.$sub,0)>=28 and attempt=2");
		$cc=mysql_fetch_array($s);
		$subatt2=$cc[0];
		
		$s=mysql_query("select count(a.urn) from $tblb a inner join $tblb b on a.urn=b.urn where IFNULL(a.$sub,0)<28 and IFNULL(b.$sub,0)>=28 and b.attempt=3 and a.attempt=2");
		$cc=mysql_fetch_array($s);
		$subatt3=$cc[0];
		
		$s=mysql_query("select count(a.urn) from $tblb a inner join $tblb b on a.urn=b.urn where IFNULL(a.$sub,0)<28 and IFNULL(b.$sub,0)>=28 and b.attempt=4 and a.attempt=3");
		$cc=mysql_fetch_array($s);
		$subatt4=$cc[0];
		
		$tot[$e]=$subatt1+$subatt2+$subatt3+$subatt4;
		$notpass[$e]=$enroll[$y]-$tot[$e];
		
		$s=mysql_query("select a.urn,a.sname from $tblb a inner join $tblb b on a.urn=b.urn where IFNULL(a.$sub,0)<28 and IFNULL(b.$sub,0)>=28 and b.attempt=4 and a.attempt=3");
		while($cc=mysql_fetch_array($s))
		{
			$su=$y+1;
			mysql_query("insert into notcleared values('$su','$cc[0]','$cc[1]')");
		}
		
		?>
        <tr><td><?php echo $r[1]; ?></td><td><?php echo "Prof.".$r[0]; ?></td><td><?php echo $subatt1; ?></td><td><?php echo $subatt2; ?></td><td><?php echo $subatt3; ?></td><td><?php echo $subatt4; ?></td><td><?php echo $notpass[$e]; ?></td></tr>
        <?php
		}

?>
</table>
</center>
<br /><br />PROGRESSIVE STATISTICS:
<br /><br />
<center>
<table border="1" cellpadding="0" cellspacing="0" width="70%" style="font-size:15px; text-align:center">
<tr><td>SUBJECT NAME</td><td>PASS PERCENTAGE</td></tr>
<?php 
for($e=0;$e<$ddd[0];$e++)
	{
		$sub=$temp[$e];
		$sq=mysql_query("select sub_ff from $tbl_teacher where subject='$sub'");
		$r=mysql_fetch_array($sq);
		?>
        <tr><td><?php echo $r[0]; ?></td><td><?php echo round(($tot[$e]/$enroll[$y]*100),2)."%"; ?></td></tr>
        
        <?php
	}
?>

</table>
<br />
OVER ALL PASS PERCENTAGE: <?php echo round(($pass[$y]/$enroll[$y]*100),2)."%"; ?>
</center>
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>
<?php } ?>
<div class="frmat">
<br />
<center>
<span class="heading">DEPARTMENT OF <?php echo $br_ff[0]; ?></span><br />
<span class="subheading">OVERALL DEGREE ANALYSIS</span>
<br />
<span class="btch">BATCH:<?php echo $sess; ?></span>
<br /><br />
<span class="det">DETAILS OF DETAINED/DROPOUT STUDENTS</span>
<br /><br /><br /><br />
<table border="1" cellpadding="0" cellspacing="0" width="80%" style="font-size:11px; text-align:center;">
<tr><td>SEMESTER</td><td>URN</td><td>STUDENT NAME</td><td>REMARKS</td></tr>
<?php 
for($w=1;$w<=8;$w++)
{
	$nc=mysql_query("select count( distinct urn) from notcleared  where sem='$w'");
	$cou=mysql_fetch_array($nc);
	if($cou[0]!=0){
$nc=mysql_query("select distinct urn,sname from notcleared a where sem='$w'");
?>
<tr><td rowspan="<?php echo $cou[0]; ?>"><?php echo $w;?></td>
<?php 
$rrr=0;
while($rr=mysql_fetch_array($nc))
{
	if($rrr!=0){echo '<tr>';}
	?>
    <td><?php echo $rr[0]; ?></td><td><?php echo $rr[1]; ?></td><td><textarea cols="25" rows="2"></textarea></td></tr>
    <?php
	$rrr=1;
}
	}
}
?>
</table>
</div>
<div class="footer_main">
<div class="footer1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(I/C)<br />(Result Analysis)</div>
<div class="footer2">(HOD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />(<?php echo $br_ff[0]; ?>)</div>
</div>
<?php

mysql_query("drop table $grand");
mysql_query("drop table notcleared");
?>
</body>
</html>