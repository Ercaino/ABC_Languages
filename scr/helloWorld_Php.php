<!DOCTYPE html>
<html>
<body>

    <?php
    // This is a simple Hello World script in PHP

    echo "Hello, World!";
    ?>

</body>
</html>

<!-- php -S localhost:8000 -->

<!-- Simple demo -->
<!DOCTYPE html>
<html>
<body>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST["name"]);
    echo "<h2>Hello, $name!</h2>";
}
?>

<h2>Enter your name:</h2>
<form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
    <input type="text" name="name">
    <input type="submit" value="Submit">
</form>

</body>
</html>