<?php
function generateCode(){
  $c="ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
  $code="SKY-"; for($i=0;$i<4;$i++) $code.=$c[rand(0,31)];
  return $code."-".date("Y");
}
?>
