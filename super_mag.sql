-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 17 2019 г., 12:36
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `super_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Fashion', 1, 1),
(2, 'Households', 2, 1),
(3, 'Interiors', 3, 1),
(4, 'Clothing', 4, 1),
(5, 'Shoes', 5, 1),
(6, 'SPORTSWEAR', 6, 1),
(7, 'KIDS', 7, 1),
(8, 'Jackets and coats', 8, 1),
(9, 'Shorts', 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recomended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_new`, `is_recomended`, `status`) VALUES
(1, 'Easy Polo Black Edition', 2, 2, 56, 3, 'PionnerCamp', 'images3', 'Pioneer camp long warm winter jacket men\'s waterproof brand men\'s clothing', 0, 0, 1),
(10, 'Bolubao Official Store', 2, 1, 1422, 3, 'BoluBalo', 'images2', 'BOLUBAO Fashion Brand Men Jackets 2019 New Men\'s Military Cotton Jacket With Pockets Men Outwear Jackets Clothes', 0, 1, 1),
(11, 'MAGCOMSEN Official Store', 2, 3, 18145, 3, 'MAGCOMSEN', 'image3', 'MAGCOMSEN Men Tactical T-shirts Summer Long Sleeve Elastic Military Army Combat T-shirts Navy Airsoft Top Tees Men Clothing', 1, 0, 1),
(12, 'ZLITTLELAZY Official Store', 2, 4, 795.93, 4, 'ZLITTLELAZY', 'images4', '2019 Casual Business Men Long Sleeve Shirt Mens Striped Fashion Brand Polo Shirt Designer Men Tennis Polo Camisa Social 5158', 0, 1, 1),
(13, 'ZOGAA23 Store', 2, 5, 814.35, 5, 'ZOGA', 'images5', 'Winter men\'s jacket 2018 brand casual men jackets and coats thick parka for men outerwear 4XL jacket male suits', 1, 0, 1),
(14, 'Urcool Men Store', 2, 6, 56.3, 6, 'ZOGAA', 'images6', 'ZOGAA Men\'s Business Shirt Casual Slim Fit Button-down Shirt Patchwork Pocket Long Sleeve Formal Shirts Men\'s Clothing', 0, 0, 1),
(15, 'FGKKS 2 Store', 2, 7, 439.92, 7, 'FGKKS', 'images7', 'FGKKS Men\'s Fashion Jackets Coats Autumn Male Spliced ​​Casual Slim Fit Jackets Coats Men Jackets High Quality Clothing', 1, 0, 1),
(16, 'KwenZion Store', 2, 8, 695.76, 8, 'KwenZion', 'images8', 'Summer High Elasticity Sports T-shirt Men Long Sleeve Fitness T-shirt Men Solid Gyms Bodybuilding Personality Tees Clothing', 0, 0, 1),
(17, 'ZogaaUnique Store', 2, 9, 814.35, 9, 'ZogaaUnique', 'images9', 'Zogaa / New 2019; fashionable men\'s clothing; fall-winter season; dense Korean version; with a hood + trousers; men\'s clothing; demi-season jacket; men\'s clothing', 1, 1, 1),
(18, 'Shop5259046 Store', 2, 10, 797, 10, 'Shop', 'images10', 'Spring Autumn Men\'s Jacket Baseball Uniform Slim Casual Coat Men Brand Clothing Fashion Coats Male Outerwear SA507\r\n13 orders', 1, 0, 1),
(19, 'T-shirt-2 Store', 2, 11, 986, 11, 'T-shirt', 'images11', 'Howl High Brand Men\'s Jackets & Coats 4xl PU Patchwork Designer Jackets Men Outerwear Winter Fashion Men Clothing', 0, 1, 1),
(20, 'shujinfushi Store', 2, 12, 7975, 12, 'shujinfushi', 'images12', 'Men\'s cotton clothing, men\'s winter clothing, men\'s multi-pocket cotton clothing, thick cotton clothing for men, men\'s winter coat', 0, 0, 1),
(21, 'Shop5225037 Store', 2, 13, 98.33, 13, 'Store', 'images13', 'Fashion Brand Clothing Men Casual Cotton Sweatshirts Sets Men 2019 New Casual Streetwear Hip Hop Hoodies + Sweatpants Tracksuit', 1, 1, 1),
(22, 'Wenyujh\'s Drop Shipping Store', 2, 14, 986.3, 14, 'Wenyujh\'s', 'images14', 'Wenyujh Men Casual Shirts 2019 Autumn New Fashion Solid Color Man Long Sleeve Cotton Slim Fit Casual Business Button Shirt Tops', 0, 0, 1),
(23, 'Donghuan Overseas Store', 2, 15, 69963, 15, 'Donghuan', 'images15', 'Mens Long Sleeve Solid Oxford Dress Shirt with Left Chest Pocket High-quality Male Casual Regular-fit Tops Button Down Shirts', 0, 1, 1),
(24, 'ZLITTLELAZY Official Store', 2, 45, 566.3, 8, 'ZLITTLELAZY', 'images16', '2019 brand casual spring luxury plaid long sleeve slim fit men shirt streetwear social dress shirts mens fashions jersey 2309', 1, 0, 1),
(25, 'Fashion Summer', 2, 443, 439.92, 13, 'Fashion', 'images17', '2020 t shirt Men Fashion Summer cotton short sleeve Sporting Suit T-shirt +shorts Men\'s 2 Pieces Sets casual clothing', 1, 1, 1),
(26, 'Shop5261184 Store', 2, 6, 56.3568, 553, 'Shop5261184', 'images18', 'Hunting clothes Outdoor Shark Skin tad v4 Tactical millitary Softshell Jacket Suit Men Waterproof Combat Fleece Jacket male', 0, 0, 1),
(27, 'Devin Du Store', 2, 443, 439.92, 5, 'Devin', 'images19', 'Joker Funny 3D Hoodie Halloween Crazy Smile Pullover Long Sleeve Sweatshirt Fashion Coats Cool Unisex streetwear mens hoodies', 0, 0, 1),
(28, 'Battler Lover Store', 2, 6, 795.93, 6, 'Battler Lover', 'images20', '2019 Winter Jacket Men High Quality Thermal Thick Coat Snow Red Black Parka Male Warm Outwear Men Fashion White Duck Down Jacket', 0, 1, 1),
(29, 'DAVYDAISY Men', 2, 443, 439.92, 13, 'DAVYDAISY', 'images21', 'DAVYDAISY Men Shirt Mens Business Casual Long Sleeved Shirts Men Striped Dress Work Social Shirt Brand camisa masculina DS022', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(1, 'eeeeeee', '5555555555555555555', 'gggghjjbbgyygf', 9, '2019-10-15 10:28:05', '{\"29\":1,\"28\":1,\"27\":1,\"24\":3}', 1),
(2, 'ddd', '5555555555555555555', 'gggghjjbbgyygf', 8, '2019-10-15 10:50:13', '{\"29\":1,\"28\":1,\"27\":4}', 1),
(3, 'eeeeeee', '5555555555555555555', 'ddddddddddddddddd', 9, '2019-10-15 10:51:49', '{\"29\":4,\"28\":2,\"27\":2}', 1),
(4, 'eeeeeee', '4444444444', 'fffffff', 9, '2019-10-15 12:04:22', '{\"29\":4,\"28\":3,\"27\":4}', 1),
(5, 'gffffffffffffffffffff', '5555555555555555555', 'gggghjjbbgyygf', 0, '2019-10-15 12:54:48', '{\"29\":1,\"28\":1}', 1),
(6, 'gffffffffffffffffffff', '5555555555555555555', 'gggghjjbbgyygf', 0, '2019-10-15 12:55:18', '{\"29\":1,\"28\":1,\"27\":1,\"24\":3}', 1),
(7, 'gffffffffffffffffffff', '5555555555555555555', 'gggghjjbbgyygf', 0, '2019-10-15 12:58:04', '{\"29\":1,\"28\":1,\"27\":1,\"24\":1,\"25\":1,\"26\":1}', 1),
(8, 'gffffffffffffffffffff', '5555555555555555555', 'ddddddddddddddddd', 0, '2019-10-15 12:59:47', '{\"29\":3}', 1),
(9, 'gffffffffffffffffffff', '5555555555555555555', 'ddddddddddddddddd', 0, '2019-10-15 13:00:32', 'false', 1),
(10, 'gffffffffffffffffffff', '4444444444', 'ddddddddddddddddd', 0, '2019-10-15 13:00:52', '{\"29\":5,\"28\":5}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(8, 'ddd', 'ddd@ddd', 'aaaaaa'),
(9, 'eeeeeee', 'demo@gmai.com', 'eeeeee');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
