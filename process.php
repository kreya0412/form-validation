<?php
$servername = "localhost";
$username = "root";
$password = "root";
$database = "task3";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $email = $_POST["email"];
    $fullname = $_POST["fullname"];
    $city = $_POST["city"];

    $userQuery = "INSERT INTO registration (username, password, email, fullname, city) VALUES (?, ?, ?, ?, ?)";
    $userStmt = mysqli_prepare($conn, $userQuery);
    mysqli_stmt_bind_param($userStmt, "sssss", $username, $password, $email, $fullname, $city);

    if (!mysqli_stmt_execute($userStmt)) {
        header("Location: error.php");
        exit();
    }

    header("Location: success.php");
    exit();
}

mysqli_close($conn);
?>