<?php
session_start();
include 'config.php'; // Include your database connection

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve user details from session
    $userEmail = isset($_SESSION['email']) ? $_SESSION['email'] : null;

    // Ensure user details are available
    if (!$userEmail) {
        echo "User not logged in.";
        exit();
    }

    // Fetch user details from the database
    $stmt = $conn->prepare("SELECT First_Name, phone_number, delivery_address FROM users WHERE email = ?");
    if (!$stmt) {
        echo "Error preparing statement: " . $conn->error;
        exit();
    }
    $stmt->bind_param("s", $userEmail);
    $stmt->execute();
    $stmt->bind_result($user_name, $user_phone, $user_address);
    $stmt->fetch();
    $stmt->close();

    // Retrieve cart and subtotal from session
    $cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
    $subtotal = isset($_SESSION['subtotal']) ? $_SESSION['subtotal'] : 0;
    $delivery_fee = 10;
    $total = $subtotal + $delivery_fee;

    // Prepare to insert order into the database
    $payment_method = $_POST['payment_method'];
    $stmt = $conn->prepare("INSERT INTO orders (recipient_name, recipient_phone, delivery_address, payment_method, subtotal, delivery_fee, total, status) VALUES (?, ?, ?, ?, ?, ?, ?, 'Pending')");
    if ($stmt) {
        $stmt->bind_param("ssssddd", $user_name, $user_phone, $user_address, $payment_method, $subtotal, $delivery_fee, $total);
        if ($stmt->execute()) {
            // After successful order placement, redirect based on payment method
            switch ($payment_method) {
                case 'gcash':
                case 'maya':
                case 'paypal':
                case 'credit_card':
                case 'debit_card':
                    header("Location: process_payment.php");
                    break;
                case 'cash_on_delivery':
                    header("Location: process_cod.php");
                    break;
                default:
                    echo "Invalid payment method.";
                    exit;
            }
        } else {
            echo "Error placing order: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }
}

// Close the database connection
$conn->close();
?>
