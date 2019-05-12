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
$_SESSION['cart']=array(); // Declaring session array
array_push($_SESSION['cart'],'apple','mango','banana'); // Items added to cart
array_push($_SESSION['cart'],'Orange'); // Items added to cart

echo "Number of Items in the cart = ".sizeof($_SESSION['cart']);
require 'menu.php';
?>

</body>

</html>
