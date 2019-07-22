<!-- TestPage -->

<!DOCTYPE html>
<html>
<head>
	<title>TESTING</title>
</head>

<body>

	<div style="text-align: center;">
		<br/><br/>

    <?php
//Testing
session_start();

$itemId = $_POST["itemId"];
$sellPrice = $_POST["sellPrice"];

echo "Item id: " . $itemId . "   Sellprice: " . $sellPrice . "<br/>";

    ?>

	</div>
</body>
</html>
