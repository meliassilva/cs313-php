<?Php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
<title>Shopping></title>
</head>

<body>
<?Php
$item=$_POST['item'];
while (list ($key1,$val1) = @each ($item)) {
//echo "$key1 , $val1,<br>";
unset($_SESSION['cart'][$val1]);

}

echo "Number of Items in the cart = ".sizeof($_SESSION['cart'])." <br>";
echo "<form method=post action=''>";
while (list ($key, $val) = each ($_SESSION['cart'])) { 
echo " <input type=checkbox name=item[] value='$key'>  $key -> $val <br>"; 
}
echo "<input type=submit value=Remove></form>";
require 'menu.php';

?>
</body>
</html>
