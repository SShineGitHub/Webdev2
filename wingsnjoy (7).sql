-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 02, 2024 at 01:38 PM
-- Server version: 5.0.27
-- PHP Version: 5.2.1
-- 
-- Database: `wingsnjoy`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `cart`
-- 

CREATE TABLE `cart` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `quantity` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `cart`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `email_verifications`
-- 

CREATE TABLE `email_verifications` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `email_verifications`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `featured_foods`
-- 

CREATE TABLE `featured_foods` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `featured_foods`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `order_items`
-- 

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `quantity` int(11) default NULL,
  `price` decimal(10,2) default NULL,
  `product_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

-- 
-- Dumping data for table `order_items`
-- 

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `product_name`) VALUES 
(22, 21, NULL, 1, 100.00, 'Cheeseburger Deluxe'),
(23, 21, NULL, 1, 120.00, 'Bacon Cheeseburger'),
(24, 21, NULL, 1, 150.00, '4 Cheeseburger'),
(25, 21, NULL, 1, 80.00, 'Classic Burger'),
(26, 21, NULL, 1, 200.00, 'Plant-Based Burger'),
(27, 21, NULL, 1, 150.00, 'Buffalo Wings'),
(28, 21, NULL, 1, 150.00, 'BBQ Wings'),
(29, 21, NULL, 1, 160.00, 'Salted Egg Wings'),
(30, 21, NULL, 1, 170.00, 'Garlic Parmesan Wings'),
(31, 21, NULL, 1, 160.00, 'Honey BBQ Wings'),
(32, 21, NULL, 1, 170.00, 'Teriyaki Wings'),
(33, 21, NULL, 1, 60.00, 'Iced tea'),
(34, 21, NULL, 1, 50.00, 'Coca-Cola'),
(35, 21, NULL, 1, 50.00, 'Pepsi'),
(36, 21, NULL, 1, 50.00, 'Sprite'),
(37, 21, NULL, 1, 50.00, '7Up'),
(38, 21, NULL, 1, 50.00, 'Royal'),
(39, 21, NULL, 1, 50.00, 'Sarsi'),
(40, 21, NULL, 1, 50.00, 'Coca-Cola Zero'),
(41, 21, NULL, 1, 40.00, 'Small Fries'),
(42, 21, NULL, 1, 60.00, 'Medium Fries'),
(43, 21, NULL, 3, 80.00, 'Large Fries'),
(44, 22, NULL, 1, 150.00, '4 Cheeseburger'),
(45, 22, NULL, 1, 120.00, 'Bacon Cheeseburger'),
(46, 22, NULL, 1, 80.00, 'Classic Burger'),
(47, 22, NULL, 1, 200.00, 'Plant-Based Burger'),
(48, 23, NULL, 1, 150.00, '4 Cheeseburger'),
(49, 23, NULL, 1, 120.00, 'Bacon Cheeseburger'),
(50, 23, NULL, 1, 80.00, 'Classic Burger'),
(51, 23, NULL, 1, 200.00, 'Plant-Based Burger');

-- --------------------------------------------------------

-- 
-- Table structure for table `orders`
-- 

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `recipient_name` varchar(255) NOT NULL,
  `recipient_phone` varchar(20) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` enum('gcash','maya','paypal','credit_card','debit_card','cash_on_delivery') default NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `delivery_fee` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `status` enum('Pending','Paid','Cancelled') NOT NULL default 'Pending',
  `order_number` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `orders`
-- 

INSERT INTO `orders` (`id`, `recipient_name`, `recipient_phone`, `delivery_address`, `payment_method`, `subtotal`, `delivery_fee`, `total`, `created_at`, `status`, `order_number`) VALUES 
(21, 'Paul Pharma', '09053312618', '123 Tamaraw Hills', 'maya', 2360.00, 10.00, 2370.00, '2024-11-02 00:19:13', 'Paid', 'ORD-6724ff81f32af'),
(22, 'Ceejay  Imperial', '2147483647', '123bulbolstreet', 'gcash', 550.00, 10.00, 560.00, '2024-11-02 19:49:13', 'Paid', 'ORD-672611b93c165'),
(23, 'Ceejay  Imperial', '2147483647', '123bulbolstreet', 'gcash', 550.00, 10.00, 560.00, '2024-11-02 21:34:55', 'Paid', 'ORD-67262a7f4a46a');

-- --------------------------------------------------------

-- 
-- Table structure for table `password_resets`
-- 

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `password_resets`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `products`
-- 

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) default NULL,
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`) VALUES 
(1, 'Cheeseburger Deluxe', 'A deluxe cheeseburger with all the fixings.', 100.00, NULL, '2024-11-01 16:37:06'),
(2, 'Bacon Cheeseburger', 'A cheeseburger topped with crispy bacon.', 120.00, NULL, '2024-11-01 16:37:06'),
(3, '4 Cheeseburger', 'Four cheese cheeseburgers stacked high.', 150.00, NULL, '2024-11-01 16:37:06'),
(4, 'Classic Burger', 'The classic burger everyone loves.', 80.00, NULL, '2024-11-01 16:37:06'),
(5, 'Plant-Based Burger', 'A delicious plant-based alternative.', 200.00, NULL, '2024-11-01 16:37:06'),
(6, 'Buffalo Wings', 'Spicy buffalo chicken wings served with ranch.', 150.00, NULL, '2024-11-01 16:37:06'),
(7, 'BBQ Wings', 'Sweet and smoky BBQ chicken wings.', 150.00, NULL, '2024-11-01 16:37:06'),
(8, 'Salted Egg Wings', 'Wings coated in a rich salted egg sauce.', 160.00, NULL, '2024-11-01 16:37:06'),
(9, 'Garlic Parmesan Wings', 'Wings tossed in garlic and parmesan.', 170.00, NULL, '2024-11-01 16:37:06'),
(10, 'Honey BBQ Wings', 'Wings drizzled with honey BBQ sauce.', 160.00, NULL, '2024-11-01 16:37:06'),
(11, 'Teriyaki Wings', 'Wings glazed with a savory teriyaki sauce.', 170.00, NULL, '2024-11-01 16:37:06'),
(12, 'Iced tea', 'Refreshing iced tea.', 60.00, NULL, '2024-11-01 16:37:06'),
(13, 'Coca-Cola', 'Classic Coca-Cola soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(14, 'Pepsi', 'Refreshing Pepsi soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(15, 'Sprite', 'Crisp Sprite soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(16, '7Up', 'Light and refreshing 7Up soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(17, 'Royal', 'Royal Tru-Orange soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(18, 'Sarsi', 'Sarsi soft drink with a unique flavor.', 50.00, NULL, '2024-11-01 16:37:06'),
(19, 'Coca-Cola Zero', 'Zero-calorie Coca-Cola soft drink.', 50.00, NULL, '2024-11-01 16:37:06'),
(20, 'Small Fries', 'Crispy small fries.', 40.00, NULL, '2024-11-01 16:37:06'),
(21, 'Medium Fries', 'Crispy medium fries.', 60.00, NULL, '2024-11-01 16:37:06'),
(22, 'Large Fries', 'Crispy large fries.', 80.00, NULL, '2024-11-01 16:37:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `transactions`
-- 

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `transaction_id` varchar(255) default NULL,
  `order_details` text,
  `total_amount` decimal(10,2) default NULL,
  `transaction_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `transactions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) default NULL,
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `verification_code` varchar(255) default NULL,
  `account_status` enum('Active','Pending','Deactivated') default 'Pending',
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `phone_number` varchar(11) default NULL,
  `delivery_address` varchar(255) default NULL,
  `city` varchar(100) default NULL,
  `zip_code` int(4) default NULL,
  `country` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `users`
-- 


-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `cart`
-- 
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

-- 
-- Constraints for table `featured_foods`
-- 
ALTER TABLE `featured_foods`
  ADD CONSTRAINT `featured_foods_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

-- 
-- Constraints for table `order_items`
-- 
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

-- 
-- Constraints for table `password_resets`
-- 
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

-- 
-- Constraints for table `transactions`
-- 
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
