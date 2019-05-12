<?Php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
<title>Shopping</title>
</head>

<body>
<?Php

while (list ($key, $val) = each ($_SESSION['cart'])) { 
echo "$key -> $val <br>"; 
unset($_SESSION['cart'][$key]);
}

//unset($_SESSION['cart']);
echo "<br><br> All items removed from Cart .. <br><br>";
echo "Number of Items in the cart = ".sizeof($_SESSION['cart'])." <br>";
require "menu.php";
?>
</body>
</html>
