<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Form</title>
</head>
<body>
    <form action="handle.php" method ="post">
        <label for="">Name &#x1F605;</label>
        <input type="text" name="name" id="name"><br>
        <label for="">Email</label>
        <input type="text" name="email" id="email"><br>
        
        <label for="">Major:</label><br>

        <?php
        $majors = array("Computer Science", "Web Design Development", "Computer Information Technology", "Computer Enginnering" , "Arts");
            for ($i = 0; $i < count($majors); $i++)
            {
                echo "<input type='radio' name=' major ' value = '".$majors[$i]."'>".$majors[$i]."<br>";
            }
        ?>

        <!--<input type="radio" name="major" value = "Computer Science" checked> Computer Science<br>
        <input type="radio" name="major" value = "Web Design Development">Web Design Development<br>
        <input type="radio" name="major" value = "Computer Information Technology">Computer Information Technology<br>
        <input type="radio" name="major" value = "Computer Enginnering">Computer Enginnering<br> -->
        
        <label for="">Continents you have visited</label><br>

        <input type="checkbox" name="continents[]" value="na">North America<br>
        <input type="checkbox" name="continents[]" value="sa">South America<br>
        <input type="checkbox" name="continents[]" value="eu">Europe<br>
        <input type="checkbox" name="continents[]" value="as">Asia<br>
        <input type="checkbox" name="continents[]" value="af">Africa<br>
        <input type="checkbox" name="continents[]" value="an">Antarctica<br>

        <label for="">Comments</label><br>
        <textarea name="comments" id="" cols="30" rows="10"></textarea><br>

        <input type="submit" value="Submit"> 


        </form>


</body>

</html>