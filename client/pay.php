<?php
require "../config/db.php"; require "../includes/functions.php";
$seat=$_GET['seat']; $route_id=$_GET['route_id'];
$r=$conn->query("SELECT * FROM routes WHERE id=$route_id")->fetch_assoc();
$code=generateCode();
if($_POST){
  $name=$_POST['name']; $phone=$_POST['phone'];
  $comm=$r['price']*0.1; $comp=$r['price']-$comm;
  $conn->query("INSERT INTO bookings (booking_code,passenger_name,passenger_phone,seat_no,amount,commission_amount,company_amount) VALUES ('$code','$name','$phone','$seat',{$r['price']},$comm,$comp)");
  header("Location: ticket.php?code=$code"); exit;
}
?>
<form method="POST">
<input name="name" placeholder="Full Name" required>
<input name="phone" placeholder="0712..." required>
<button>Pay KES <?=$r['price']?> & Get Code <?=$code?></button>
</form>
