<!-- 
    Author - Aashish Budania (15IT101)
    Subject - Software Engineering 
    Institute - National Institute of Technology Karnataka , Surathkal.
-->

<?php 
if(isset($_REQUEST['submitBtn']))
{
    include '_inc/dbconn.php';
    $username=$_REQUEST['uname'];
    
    //salting of password
    $salt="@g26jQsG&nh*&#8v";
    $password= sha1($_REQUEST['pwd'].$salt);
  
    $sql="SELECT email,password FROM customer WHERE email='$username' AND password='$password'";
    $result=mysql_query($sql) or die(mysql_error());
    $rws=  mysql_fetch_array($result);
    
    $user=$rws[0];
    $pwd=$rws[1];    
    
    if($user==$username && $pwd==$password){
        session_start();
        $_SESSION['customer_login']=1;
        $_SESSION['cust_id']=$username;
    header('location:customer_account_summary.php'); 
}
   
else{
    header('location:index.php');  
}}
?>
<?php 
session_start();
        
if(isset($_SESSION['customer_login'])) 
    header('location:customer_account_summary.php');   
?>

<!DOCTYPE html>

<html>
    <head>
        
        <noscript><meta http-equiv="refresh" content="0;url=no-js.php"></noscript>    
        
        
        <meta charset="UTF-8">
        <title>Online Banking System</title>
        <link rel="stylesheet" href="newcss.css">
    </head>
    <body>
        <div class="wrapper">
            
        <div class="header">
            <img src="header.jpg" height="100%" width="100%"/>
            </div>
            <div class="navbar">
                
            <ul>
            <li><a href="index.php">Home </a></li>
            <li><a href="features.php">Features </a></li>
            <li id="last"><a href="contact.php">Contact Us</a></li>
            </ul>
            </div>
            
        <div class="user_login">
            <form action='' method='POST'>
        <table align="left">
            <tr><td><span class="caption">Secure Login</span></td></tr>
            <tr><td colspan="2"><hr></td></tr>
            <tr><td>Username:</td></tr>
            <tr><td><input type="text" name="uname" required></td> </tr>
            <tr><td>Password:</td></tr>
            <tr><td><input type="password" name="pwd" required></td></tr>
            
            <tr><td class="button1"><input type="submit" name="submitBtn" value="Log In" class="button"></td></tr>
        </table>
                </form>
            </div>
        
        <div class="image">
            <img src="home.jpg" height="100%" width="100%"/>
            <div class="text">
                
                <a href="safeonlinebanking.php"><h3>Click to read safe online banking tips</h3></a>
    <a href="t&c.php"><h3>Terms and conditions</h3></a>
    <a href="faq.php"><h3>FAQ'S</h3></a>
    
    
  </div>
            </div>
            
            <div class="left_panel">
                <p>Our internet banking portal provides personal banking services that gives you complete control over all your banking demands online.</p>
                <h3>Features</h3>
                <ul>
                    <li>Registration for online banking</li>
                    <li>Adding Beneficiary account</li>
                    <li>Funds Transfer</li>
                    <li>Last Login record</li>
                    <li>Mini Statement</li>
                    <li>Account Statement by date</li>
                    
                    
                </ul>
                </div>
            
            <div class="right_panel">
                
         
                </div>
                    <?php include 'footer.php' ?>
