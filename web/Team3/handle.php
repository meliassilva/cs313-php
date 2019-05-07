<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
        
        $name = $_POST["name"];
        $email = $_POST["email"];
        $major = $_POST["major"];
        $continents = $_POST["continents"];
        $comments = $_POST["comments"];
        $dictionary  = array('na' => 'North America', 'sa' => 'South America', 'eu' => 'Europe', 'as' => 'Asia',
        'af' => 'Africa', 'an' => 'Antartica');

        echo "<h3>Hello $name your email is <a href='mailto:$email'>$email</a><br></h3>";
        echo "<p>Your major is $major.</p>";
        echo "<p>Thank you for these comments: $comments</p>";
        echo "<p>These continents you will be through</p>";
        for ($i = 0; $i < count($continents); $i++){
            echo "<p>".$dictionary[$continents[$i]]."</p>";
        }


    ?>
</body>
</html>