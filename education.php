<?php
$server="localhost";
$username = "root";
$password = "";
$dbname = "registration";


$conn=mysqli_connect($server,$username,$password,$dbname);

if(isset($_POST['submit'])){
        if(!empty($_POST['HSC_Institution_Name']) && !empty($_POST['HSC_Board']) && !empty($_POST['Score_in_HSC']) &&
        !empty($_POST['SSC_Institution_Name']) && !empty($_POST['SSC_Board']) && 
        !empty($_POST['Score_in_SSC']) && !empty($_POST['Currently_pursuing']) && 
        !empty($_POST['Current_educational_institution_name']) && !empty($_POST['Overall_percentage']) && 
        !empty($_POST['Current_backlogs'])){

         $HSC_Institution_Name = $_POST['HSC_Institution_Name'];
         $HSC_Board = $_POST['HSC_Board'];
         $Score_in_HSC = $_POST['Score_in_HSC'];
         $SSC_Institution_Name = $_POST['SSC_Institution_Name'];
         $SSC_Board= $_POST['SSC_Board'];
         $Score_in_SSC= $_POST['Score_in_SSC'];
         $Currently_pursuing= $_POST['Currently_pursuing'];
         $Current_educational_institution_name=$_POST['Current_educational_institution_name'];
         $Overall_percentage = $_POST['Overall_percentage'];
         $Current_backlogs= $_POST['Current_backlogs'];

         $query ="insert into detail(HSC_Institution_Name, HSC_Board, Score_in_HSC, SSC_Institution_Name, SSC_Board, Score_in_SSC, Currently_pursuing, Current_educational_institution_name, Overall_percentage, Current_backlogs) 
        VALUES ('$HSC_Institution_Name','$HSC_Board','$Score_in_HSC','$SSC_Institution_Name','$SSC_Board','$Score_in_SSC','$Currently_pursuing','$Current_educational_institution_name','$Overall_percentage','$Current_backlogs')";
         
         $run=mysqli_query($conn,$query) or die(mysqli_error());
         
         if($run){
            echo" Details submitted successfully";
         }
         else {
            echo" Details not submitted";
         }
        
    }
            
}
else{
    echo" all fields required";
}

?>