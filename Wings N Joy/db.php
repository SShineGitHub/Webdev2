<?php
$host = 'localhost';
$db = 'restaurant_db';
$user = 'root'; // default WAMP username
$pass = ''; // default WAMP password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
