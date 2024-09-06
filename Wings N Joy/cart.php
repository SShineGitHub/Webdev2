<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cart</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="menu.php">Menu</a></li>
                <li><a href="cart.php">My Cart</a></li>
                <li><a href="account.php">My Account</a></li>
                <li><a href="featured.php">Featured Foods</a></li>
                <li><a href="login.php">Login/Signup</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h1>My Cart</h1>
        <div class="cart-items">
            <?php
            foreach ($cart_items as $item) {
                echo '<div class="cart-item">';
                echo '<h2>' . htmlspecialchars($item['name']) . '</h2>';
                echo '<p>$' . htmlspecialchars($item['price']) . '</p>';
                echo '<p>Quantity: ' . htmlspecialchars($item['quantity']) . '</p>';
                echo '</div>';
            }
            ?>
        </div>
        <a href="checkout.php">Proceed to Checkout</a>
    </main>
    <footer>
        <p>&copy; 2024 Wings N Joy</p>
    </footer>
</body>
</html>
