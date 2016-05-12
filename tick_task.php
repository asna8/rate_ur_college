<?php
//connection to db
require_once(__DIR__.'/db_connect.php'); 
$db=new DB_CONNECT();

//fetching data
$result= mysql_query("select * from college_data") or die(mysql_error());


//create minimum and maximum arrays
$MIN=array(
    "S"=>1000,
    "P"=>1000,
    "L"=>1000,
    "F"=>1000
);

$MAX=array(
    "S"=>-1000,
    "P"=>-1000,
    "L"=>-1000,
    "F"=>-1000
);

if(mysql_num_rows($result)>0)
{

   while($row=mysql_fetch_array($result))
   {
	//calculate maximum values for each parameter	
	if($MAX['S']<$row['stream'])
		$MAX['S']=$row['stream'];

	if($MAX['P']<$row['placement'])
		$MAX['P']=$row['placement'];

	if($MAX['L']<$row['location'])
		$MAX['L']=$row['location'];

	if($MAX['F']<$row['fee'])
		$MAX['F']=$row['fee'];


	//calculate minimum values for each parameter
	if($MIN['S']>$row['stream'])
		$MIN['S']=$row['stream'];

	if($MIN['P']>$row['placement'])
		$MIN['P']=$row['placement'];

	if($MIN['L']>$row['location'])
		$MIN['L']=$row['location'];

	if($MIN['F']>$row['fee'])
		$MIN['F']=$row['fee'];
   };
};


//DO COMPUTATIONS
$top40=array(
    "S" => $MAX['S'] - ( $MAX['S'] - $MIN['S'] )*0.4,
    "P" => $MAX['P'] - ( $MAX['P'] - $MIN['P'] )*0.4,
    "L" => $MAX['L'] - ( $MAX['L'] - $MIN['L'] )*0.4,
    "F" => $MAX['F'] - ( $MAX['F'] - $MIN['F'] )*0.4
);

$message=array("P"=>"Awesome package","S"=>"Preferred stream","L"=>"Excellent location","F"=>"Fee advantage");

$result= mysql_query("select * from college_data") or die(mysql_error());

if(mysql_num_rows($result)>0)
{

   while($row=mysql_fetch_array($result))
   {
       $flag=0;
	echo $row['college']." has ";
	
	if($top40['S']<=$row['stream'])
    {
        echo $message["S"]."  ";
       $flag=1;
    }
	if($top40['P']<=$row['placement'])
		{
        echo $message["P"]."  ";
       $flag=1;
    }

	if($top40['L']<=$row['location'])
{
        echo $message["L"]."  ";
       $flag=1;
    }
	if($top40['F']<=$row['fee'])
        {
        echo $message["F"]."  ";
       $flag=1;
    }

       if(!$flag)
           echo "No such advantage !!";
	echo ".<br><br>";

   };

}

?>
