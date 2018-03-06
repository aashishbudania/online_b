<?php 
session_start();
        
if(!isset($_SESSION['customer_login'])) 
    header('location:index.php');   
?>
<?php
     $t_amount=$_REQUEST['t_val'];
     $sender_id=$_SESSION["login_id"];
     $reciever_id=$_REQUEST['transfer'];
     
     include '_inc/dbconn.php';
   
    
    $date=date("Y-m-d");
    
    $s_total=$s_amount-$t_amount; //sender's final balance.
    
    if($s_amount<=500)
    {
        echo '<script>alert("Your account balance is less than Rs. 500.\n\nYou must maintain a minimum balance of Rs. 500 in order to proceed with the transfer.");';
        echo 'window.location= "customer_transfer.php";</script>';
    }
    elseif($t_amount<100){
         echo '<script>alert("You cannot transfer less than Rs. 100");';
        echo 'window.location= "customer_transfer.php";</script>';
    }
    elseif($s_total<500)
    {
        echo '<script>alert("You do not have enough balance in your account to proceed this transfer.\n\nYou must maintain a minimum of Rs. 500 in your account.");';
        echo 'window.location= "customer_transfer.php";</script>';
    }
    
    else{ 
        //insert statement into reciever passbook.
        $r_total=$r_amount+$t_amount;
    
        
        echo '<script>alert("Transfer Successful.");';
        echo 'window.location= "customer_transfer.php";</script>';
    }
?>
