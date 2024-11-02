<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABOUT US</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="icon" href="img/LOGO1.png" type="image/png">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
    /* Your CSS integrated here */
    * { 
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        box-sizing: border-box;
    }

    html, body {
        height: 100%;
    }

    /* Header Section */
    .header {
        width: 100%;
        position: relative;
        margin-bottom: 20px;
    }

    nav {
        display: flex;
        padding: 1% 6%;
        justify-content: space-between;
        align-items: center;
        background-color: #2C2C54;
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 1000;
    }

    nav img {
        width: 200px;
        height: auto;
    }

    .nav-links ul {
        display: flex;
        justify-content: space-between;
    }

    .nav-links ul li {
        list-style: none;
        display: inline-block;
        padding: 8px 15px;
        position: relative;
    }

    .nav-links ul li a {
        color: #fff;
        text-decoration: none;
        font-size: 18px;
        transition: color 0.3s ease;
    }

    .nav-links ul li a:hover {
        color: #fefefe;
    }

    .nav-links ul li::after {
        content: '';
        width: 0%;
        height: 2px;
        background: #fafafa;
        display: block;
        margin: auto;
        transition: width 0.5s;
    }

    .nav-links ul li:hover::after {
        width: 100%;
    }

    /* Cart Icon Styling */
    .cart-icon {
        position: relative;
        display: inline-block;
    }

    .cart-icon .fa-shopping-cart {
        font-size: 22px;
        color: #fff;
        transition: color 0.3s ease;
    }

    .cart-icon .fa-shopping-cart:hover {
        color: #fefefe;
    }
	.leader img {
    width: 100px; /* Adjust width as needed */
    height: 100px; /* Adjust height as needed */
    border-radius: 50%; /* Circular image */
    margin-bottom: 10px; /* Space between image and text */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Adds a soft shadow */
}


    /* Hero, Favorites, and Delivery sections omitted for brevity */
</style>
<body>

<!-- Navigation Bar -->
<nav>
    <img src="img/logo nav.png" alt="WingsNJoy Logo">
    <div class="nav-links">
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="menu.php">Menu</a></li>
     
            
        </ul>
    </div>
   
</nav>

<!-- About Us Section -->
<section class="about-section" style="margin-top: 80px;">
    <div class="about-container">
        <h2>About WingsNJoy Delivery</h2>
        <p class="about-story">Founded in <strong>1969</strong>, WingsNJoy has been committed to delivering joy in the form of delicious, crispy wings and other comfort foods. What started as a local food venture has quickly grown into a beloved delivery service known for quality and flavor.</p>

        <h3>Our Founder and Vision</h3>
        <p>Our founder, <strong>Alex Wright</strong>, started WingsNJoy with a vision to bring restaurant-quality food directly to customers’ homes with ease and joy. Today, we’re a dedicated team focused on meeting the needs of each community we serve.</p>

        <h3>Our Leadership</h3>
        <div class="leadership">
            <div class="leader">
    <img src="img/diwata.png" alt="Alex Wright, CEO">
    <h4>CEO</h4>
    <p><strong>Alex Wright</strong></p>
    <p>Leads with a focus on quality and customer satisfaction.</p>
</div>
<div class="leader">
    <img src="img/queen.png" alt="Jamie Lee, Head of Operations">
    <h4>Head of Operations</h4>
    <p><strong>Jamie Lee</strong></p>
    <p>Ensures each order is fulfilled efficiently.</p>
</div>
<div class="leader">
    <img src="img/lupit.jfif" alt="Taylor Nguyen, Marketing Director">
    <h4>Marketing Director</h4>
    <p><strong>Taylor Nguyen</strong></p>
    <p>Expands WingsNJoy’s reach with engaging campaigns.</p>
</div>
<div class="leader">
    <img src="img/meme.jfif" alt="Jordan Kim, Customer Experience Manager">
    <h4>Customer Experience Manager</h4>
    <p><strong>Jordan Kim</strong></p>
    <p>Committed to making every delivery memorable.</p>
</div>


        <h3>Our Mission</h3>
        <p class="mission">At WingsNJoy, our mission is to make every meal a joyful experience, delivered fresh, quickly, and with care.</p>
    </div>
</section>

</body>
</html>
