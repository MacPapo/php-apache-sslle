<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site 2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0e0e0;
            padding: 20px;
        }
        .container {
            background-color: #333;
            color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.4);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Site 2</h1>
        <form action="#" method="post">
            <label for="name">Enter your name:</label>
            <input type="text" id="name" name="name">
            <input type="submit" value="Submit">
        </form>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $name = htmlspecialchars($_POST["name"]);
            echo "<p>Nice to meet you, $name!</p>";
        }
        ?>
    </div>
</body>
</html>
