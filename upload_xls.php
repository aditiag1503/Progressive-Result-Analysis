<?php
session_start();
header("location:sel_opt.php");
include("dbcon.php");
$br=$_POST['br'];
$sem=$_POST['sem'];
$batch=$_POST['batch'];
$tbl=$br."_".$batch."_".$sem;
$tbls=$tbl."s";
$teacher=$br."_".$batch."_teacher";
$type=$_POST['type'];
$attempt=$_POST['att'];
$back=$br."_".$batch."_".$sem."_back";

$fname = $_FILES['file']['name'];
        
         $chk_ext = explode(".",$fname);
        
        if(strtolower($chk_ext[1]) == "csv")
         {
        
             $filename = $_FILES['file']['tmp_name'];
             $handle = fopen($filename, "r");
       $f=0;
             while (($data = fgetcsv($handle, 1000, ",")) !== FALSE)
             {
				 $cou=count($data);
				
				 
				 if($f==0)
				 {
					if($type=="regular")
				 {
					mysql_query("create table if not exists $teacher(name varchar(50),subject varchar(10) PRIMARY KEY,sub_ff varchar(75),sem integer)");
						 
						 mysql_query("create table if not exists $tbls(subject varchar(10) PRIMARY KEY)");
						 
						mysql_query("truncate table $tbls");
					 for($x=0;$x<=$cou-8;$x++)
					 {
						 $temp[$x]=$data[$x+5];
				 mysql_query("insert into $tbls values('$temp[$x]')");
				 mysql_query("insert into $teacher values('','$temp[$x]','',$sem)");
					 }
				 
					if($cou==13)
					{
						 mysql_query("create table if not exists $tbl(crn integer,urn varchar(10) PRIMARY KEY,sname varchar(50),spi varchar(5),cpi varchar(5),$data[5] integer,$data[6] integer,$data[7] integer,$data[8] integer,$data[9] integer,$data[10] integer,sum integer,total integer)");
					}
					if($cou==12)
					{
						 mysql_query("create table if not exists $tbl(crn integer,urn varchar(10) PRIMARY KEY,sname varchar(50),spi varchar(5),cpi varchar(5),$data[5] integer,$data[6] integer,$data[7] integer,$data[8] integer,$data[9] integer,sum integer,total integer)");
					}
					
						mysql_query("truncate table $tbl");
				 }
				 if($type=="back")
				 {
					 for($x=0;$x<=$cou-8;$x++)
					 {
						 $temp[$x]=$data[$x+5];
						 
					 }
					 mysql_query("delete from $back where attempt=$attempt");
					if($cou==13)
					{
						 mysql_query("create table if not exists $back(crn integer,urn varchar(10),sname varchar(50),spi varchar(10),cpi varchar(10),$data[5] integer,$data[6] integer,$data[7] integer,$data[8] integer,$data[9] integer,$data[10] integer,sum integer,total integer,attempt integer, PRIMARY KEY(urn,attempt))");
					}
					if($cou==12)
					{
						 mysql_query("create table if not exists $back(crn integer,urn varchar(10) PRIMARY KEY,sname varchar(50),spi varchar(5),cpi varchar(5),$data[5] integer,$data[6] integer,$data[7] integer,$data[8] integer,$data[9] integer,sum integer,total integer,attempt integer, PRIMARY KEY(urn,attempt))");
					}
					 }
				 }
				 if($f!=0){
					 if($type=="regular")
					 {
						 if($cou==13)
					{
                $sql = "INSERT INTO $tbl VALUES($data[0],'$data[1]','$data[2]','$data[3]','$data[4]',$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11],$data[12])";
				
					}
					if($cou==12)
					{
                $sql = "INSERT INTO $tbl VALUES($data[0],'$data[1]','$data[2]','$data[3]','$data[4]',$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11])";
					}
				 
					 }
					 if($type=="back")
					 {
						
						  if($cou==13)
					{
                $sql = "INSERT INTO $back VALUES($data[0],'$data[1]','$data[2]','$data[3]','$data[4]',$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11],$data[12],$attempt)";
					}
					if($cou==12)
					{
                $sql = "INSERT INTO $back VALUES($data[0],'$data[1]','$data[2]','$data[3]','$data[4]',$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11],$attempt)";
					}
						 }
						 mysql_query($sql);
				 }
				 $f=1;
             }
       
             fclose($handle);
		 }
		 
$c1=0;$c2=0;



$sql1=mysql_query("select * from $tbl");
while($res=mysql_fetch_array($sql1))
{$c1++;}
$sql1=mysql_query("select * from $tbl");
while($res=mysql_fetch_array($sql1))
{$c2++;}
if($c1>0 && $c2>0)
{
	$_SESSION['xls']=1;
}
else
{
	$_SESSION['xls']=2;
	}
   
?>