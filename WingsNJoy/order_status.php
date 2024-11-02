<?php
// order_status.php

// Database connection
$servername = "localhost";
$username = "root"; // change this if you have a different username
$password = ""; // change this if you have a different password
$dbname = "wingsnjoy"; // change this to your database name

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if order_id is set
if (isset($_GET['order_id'])) {
    $order_id = intval($_GET['order_id']); // Sanitize input

    // Query to retrieve order status
    $sql = "SELECT id, recipient_name, recipient_phone, delivery_address, payment_method, subtotal, delivery_fee, total, created_at, order_status 
            FROM orders WHERE id = '$order_id'";
    
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $order = mysqli_fetch_assoc($result);

        if ($order) {
            // Display order details
            echo "<h1>Order Status</h1>";
            echo "<p>Order ID: " . htmlspecialchars($order['id']) . "</p>";
            echo "<p>Recipient Name: " . htmlspecialchars($order['recipient_name']) . "</p>";
            echo "<p>Recipient Phone: " . htmlspecialchars($order['recipient_phone']) . "</p>";
            echo "<p>Delivery Address: " . htmlspecialchars($order['delivery_address']) . "</p>";
            echo "<p>Payment Method: " . htmlspecialchars($order['payment_method']) . "</p>";
            echo "<p>Subtotal: $" . number_format($order['subtotal'], 2) . "</p>";
            echo "<p>Delivery Fee: $" . number_format($order['delivery_fee'], 2) . "</p>";
            echo "<p>Total: $" . number_format($order['total'], 2) . "</p>";
            echo "<p>Order Date: " . htmlspecialchars($order['created_at']) . "</p>";
            echo "<p>Order Status: " . htmlspecialchars($order['order_status']) . "</p>";
        } else {
            echo "No order found with that ID.";
        }
    } else {
        echo "Error: " . mysqli_error($conn);
    }
} else {
    echo "No order ID provided.";
}

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Status</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
</head>
<body>
    <h1>Your Orders</h1>
    <table>
        <tr>
            <th>Order Number</th>
            <th>Recipient Name</th>
            <th>Phone Number</th>
            <th>Delivery Address</th>
            <th>Payment Method</th>
            <th>Subtotal</th>
            <th>Delivery Fee</th>
            <th>Total</th>
            <th>Status</th>
            <th>Order Date</th>
        </tr>
        <?php if ($orders): ?>
            <?php foreach ($orders as $order): ?>
                <tr>
                    <td><?php echo htmlspecialchars($order['order_number']); ?></td>
                    <td><?php echo htmlspecialchars($order['recipient_name']); ?></td>
                    <td><?php echo htmlspecialchars($order['recipient_phone']); ?></td>
                    <td><?php echo htmlspecialchars($order['delivery_address']); ?></td>
                    <td><?php echo htmlspecialchars($order['payment_method']); ?></td>
                    <td><?php echo htmlspecialchars($order['subtotal']); ?></td>
                    <td><?php echo htmlspecialchars($order['delivery_fee']); ?></td>
                    <td><?php echo htmlspecialchars($order['total']); ?></td>
                    <td><?php echo htmlspecialchars($order['status']); ?></td>
                    <td><?php echo htmlspecialchars($order['created_at']); ?></td>
                </tr>
            <?php endforeach; ?>
        <?php else: ?>
            <tr>
                <td colspan="10">No orders found.</td>
            </tr>
        <?php endif; ?>
    </table>
    <a href="index.php">Back to Home</a>
</body>
</html>
