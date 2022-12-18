<?php
$server="localhost";
$username = "root";
$password = "";
$dbname = "registration";


$conn=mysqli_connect($server,$username,$password,$dbname);

if(isset($_POST['submit'])){
        if(!empty($_POST['user_first']) && !empty($_POST['user_last']) && !empty($_POST['dob']) &&
        !empty($_POST['email']) && !empty($_POST['father_first']) && 
        !empty($_POST['father_last']) && !empty($_POST['mother_first']) && 
        !empty($_POST['mother_last']) && !empty($_POST['gender']) && 
        !empty($_POST['nationality']) && !empty($_POST['telephone_home']) &&
        !empty($_POST['telephone_mobile'])){

         $user_first = $_POST['user_first'];
         $user_last = $_POST['user_last'];
         $dob = $_POST['dob'];
         $email = $_POST['email'];
         $father_first= $_POST['father_first'];
         $father_last= $_POST['father_last'];
         $mother_first= $_POST['mother_first'];
         $mother_last=$_POST['mother_last'];
         $gender = $_POST['gender'];
         $nationality= $_POST['nationality'];
         $telephone_home= $_POST['telephone_home'];
         $telephone_mobile= $_POST['telephone_mobile'];

         $query ="insert into user(user_first, user_last, dob, email, father_first, father_last, mother_first, mother_last, gender, nationality, telephone_home, telephone_mobile) 
         VALUES ('$user_first','$user_last','$dob','$email','$father_first','$father_last','$mother_first','$mother_last','$gender','$nationality','$telephone_home','$telephone_mobile')";
         
         $run=mysqli_query($conn,$query) or die(mysqli_error());
         
         if($run){
            echo" Form submitted successfully";
         }
         else {
            echo" Form not submitted";
         }
        
    }
            
}
else{
    echo" all fields required";
}

?>