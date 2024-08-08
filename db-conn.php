<?php
$servername = "192.168.1.254";  // Typically "localhost"
$username = "brits";
$password = "root";
$dbname = "brits-hotel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>