<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account</title>
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
        <h1>My Account</h1>
        <form method="post">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>
            <button type="submit">Update Email</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Wings N Joy</p>
    </footer>
</body>
</html>
