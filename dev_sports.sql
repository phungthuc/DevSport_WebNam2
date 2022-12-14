-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 09:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`) VALUES
(18, 16, 34, 3, 3000000),
(19, 17, 20, 4, 1200000),
(20, 17, 25, 5, 850000),
(21, 18, 15, 3, 2000000),
(22, 19, 26, 4, 1200000),
(23, 19, 29, 2, 1250000),
(24, 20, 28, 1, 1200000),
(25, 21, 21, 3, 1000000),
(26, 21, 32, 3, 2250000),
(27, 22, 20, 3, 1200000),
(28, 22, 21, 5, 1000000),
(29, 22, 25, 2, 850000),
(30, 23, 32, 2, 2250000),
(31, 24, 19, 2, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(16, 'Nam', '123456789', 'danang', 'admin@localhost.com', 'không', '2022-12-03 23:27:10', '2022-12-03 23:27:10'),
(17, 'An', '999999999', 'Quang Nam', 'admin@gmail.com', 'không', '2022-12-03 23:27:52', '2022-12-03 23:27:52'),
(18, 'Hải', '123456789', 'huế', 'phungthuc39@gmail.com', 'dsafđf', '2022-12-03 23:28:20', '2022-12-03 23:28:20'),
(19, 'Thanh', '97899229', 'Hội an', 'thanh@gmail.com', 'ndosndsm', '2022-12-03 23:29:11', '2022-12-03 23:29:11'),
(20, 'khánh', '12032033', 'Quang Nam', 'thuc.phung.75286', 'sdadsfds', '2022-12-03 23:29:40', '2022-12-03 23:29:40'),
(21, 'Hải', '346546546754', 'danang', 'phungthuc39@gmail.com', 'fdgdfg', '2022-12-03 23:34:18', '2022-12-03 23:34:18'),
(22, 'Nguyên', '909292939', 'Hòa Hải', 'admin@gmail.com.vn', '', '2022-12-05 00:18:21', '2022-12-05 00:18:21'),
(23, 'An', '99023839', 'Hoi An', 'phungthuc38@gmail.com', '', '2022-12-05 23:53:18', '2022-12-05 23:53:18'),
(24, 'An', '33348556', 'danang', 'admin@localhost.com', '', '2022-12-06 01:19:42', '2022-12-06 01:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(37, 'Giày', 0, 'Danh mục giày', '<p>Đ&acirc;y l&agrave; danh mục gi&agrave;y</p>', 1, '2022-12-01 23:26:43', '2022-12-01 23:33:09'),
(38, 'Nữ', 0, 'Danh mục nữ', '<p>Đ&acirc;y l&agrave; danh mục nữ</p>', 1, '2022-12-01 23:27:05', '2022-12-01 23:27:05'),
(39, 'Nam', 0, 'Danh mục nam', '<p>Đ&acirc;y l&agrave; danh mục nam</p>', 1, '2022-12-01 23:27:29', '2022-12-01 23:32:39'),
(42, 'Giày Nam', 37, 'Danh mục giày nam', '<p>Đ&acirc;y l&agrave; danh mục gi&agrave;y nam</p>', 1, '2022-12-01 23:33:43', '2022-12-01 23:33:43'),
(43, 'Giày Nữ', 37, 'Danh mục giày nữ', '<p>Đ&acirc;y l&agrave; danh mục gi&agrave;y nữ</p>', 1, '2022-12-01 23:34:08', '2022-12-01 23:34:08'),
(44, 'Bóng Đá', 39, 'Danh mục bóng đá', '<p>Đ&acirc;y l&agrave; danh mục b&oacute;ng đ&aacute;</p>', 1, '2022-12-01 23:39:34', '2022-12-01 23:39:34'),
(45, 'Tập luyện', 39, 'Danh mục tập luyện', '<p>Đ&acirc;y l&agrave; danh mục tập luyện</p>', 1, '2022-12-01 23:40:01', '2022-12-01 23:40:01'),
(46, 'Chạy Bộ', 38, 'Danh mục chạy bộ', '<p>Đ&acirc;y l&agrave; danh mục chạy bộ</p>', 1, '2022-12-01 23:40:53', '2022-12-01 23:40:53'),
(47, 'Tập Luyện', 38, 'Danh mục tập luyện', '<p>Đ&acirc;y l&agrave; danh mục tập luyện</p>', 1, '2022-12-01 23:41:19', '2022-12-01 23:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_26_135645_create_menus_table', 2),
(6, '2022_11_06_090247_create_products_table', 3),
(7, '2022_11_06_090854_update_table_product', 4),
(8, '2022_11_10_144410_create_sliders_table', 5),
(9, '2022_12_03_091154_create_customers_table', 6),
(10, '2022_12_03_091221_create_carts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(15, 'Áo Đấu Sân Nhà Argentina', 'Đây là áo đấu sân nhà của đội tuyển Argentina', '<p>L&agrave; phi&ecirc;n bản b&ecirc;n ngo&agrave;i s&acirc;n cỏ của chiếc &aacute;o đồng h&agrave;nh c&ugrave;ng c&aacute;c cầu thủ khi thi đấu, chiếc &aacute;o đấu n&agrave;y c&oacute; gấu thẳng c&ugrave;ng huy hiệu dệt nổi. C&aacute;c chi tiết đặc trưng của đội Argentina mang đến diện mạo ho&agrave;n hảo cho trận đấu.</p>', 44, 2200000, 2000000, 1, '2022-12-01 23:46:47', '2022-12-02 00:05:13', 'imagebongdanam1.jpg'),
(16, 'Áo Đấu Sân Nhà Đội Tuyển Đức', 'Đây là áo đấu sân nhà của đội tuyển Đức', '<p>L&agrave; phi&ecirc;n bản đời thường của chiếc &aacute;o đồng h&agrave;nh c&ugrave;ng c&aacute;c cầu thủ khi thi đấu, chiếc &aacute;o đấu n&agrave;y c&oacute; gấu thẳng v&agrave; huy hiệu dệt nổi.C&aacute;c chi tiết đặc trưng của đội tuyển Đức tạo điểm nhấn ho&agrave;n hảo đậm chất b&oacute;ng đ&aacute;.</p>', 44, 2200000, 2000000, 1, '2022-12-01 23:56:07', '2022-12-01 23:56:07', 'imagebongdanam2.jpg'),
(17, 'Áo Đấu Sân Nhà Đội Tuyến Nhật Bản', 'Đây là áo đấu sân nhà của đội tuyển Nhật Bản', '<p>Huy hiệu &quot;Authentic&quot; lấy cảm hứng từ h&igrave;nh khối tr&ecirc;n tr&aacute;i b&oacute;ng thi đấu ch&iacute;nh thức FIFA World Cup&trade; al Rihla, v&agrave; lần đầu ti&ecirc;n logo adidas Performance hiện diện tr&ecirc;n s&acirc;n cỏ.&nbsp;Chất vải 3D kỹ thuật kiểu mới cho cảm gi&aacute;c tho&aacute;ng kh&iacute; v&agrave; tho&aacute;t ẩm, c&ugrave;ng c&aacute;c v&ugrave;ng l&agrave;m m&aacute;t gi&uacute;p bạn lu&ocirc;n m&aacute;t mẻ khi s&acirc;n b&oacute;ng tăng nhiệt.</p>', 44, 3000000, 2500000, 1, '2022-12-02 00:04:33', '2022-12-02 00:04:33', 'imagebongdanam3.jpg'),
(18, 'Áo Đấu Sân Nhà Tây Ban Nha', 'Đây là áo đấu sân nhà của đội tuyển Tây Ban Nha', '<p>L&agrave; phi&ecirc;n bản b&ecirc;n ngo&agrave;i s&acirc;n cỏ của chiếc &aacute;o đồng h&agrave;nh c&ugrave;ng c&aacute;c cầu thủ khi thi đấu, chiếc &aacute;o đấu n&agrave;y c&oacute; gấu thẳng c&ugrave;ng huy hiệu dệt nổi.&nbsp;C&aacute;c chi tiết đặc trưng của đội tuyển T&acirc;y Ban Nha cho bạn tinh thần b&oacute;ng đ&aacute; ho&agrave;n hảo.</p>', 44, 3000000, 2500000, 1, '2022-12-02 00:07:25', '2022-12-02 00:09:11', 'imagebongdanam4.jpg'),
(19, 'Áo Phông Win Confidence Trắng', 'Đây là áo phông nam chạy bộ Win Confidence Trắng', '<p>Lu&ocirc;n thoải m&aacute;i, tự tin tr&ecirc;n cả đường chạy d&agrave;i v&agrave; ngắn với chiếc &aacute;o thun chạy bộ adidas n&agrave;y. Chất vải pha len tho&aacute;ng kh&iacute;, điều ho&agrave; nhiệt độ tự nhi&ecirc;n để bạn lu&ocirc;n m&aacute;t mẻ khi nhiệt độ tăng cao. C&ocirc;ng nghệ AEROREADY kiểm so&aacute;t ẩm gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; tập trung. Logo phản quang nổi bật trong điều kiện thiếu s&aacute;ng. L&agrave;m từ một loạt chất liệu t&aacute;i chế v&agrave; c&oacute; chứa tối thiểu 70% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 45, 1000000, 0, 1, '2022-12-02 03:52:13', '2022-12-02 03:52:13', 'imagetapluyennam1.jpg'),
(20, 'Áo Thun Nam Designed 4 Running', 'Đây là áo thun nam chạy bộ Designed 4 Running', '<p>Sản phẩm n&agrave;y c&oacute; sử dụng sợi Parley Ocean Plastic. Một trong số rất nhiều s&aacute;ng kiến thể hiện cam kết của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.&nbsp;L&agrave;m từ chất liệu thấm nước gi&uacute;p đ&aacute;nh bay hơi ẩm tr&ecirc;n cơ thể, chất vải c&ocirc;ng nghệ AEROREADY của adidas gi&uacute;p bạn lu&ocirc;n cảm thấy kh&ocirc; r&aacute;o khi vận động.&nbsp;C&aacute;c chi tiết phản quang nổi bật trong điều kiện thiếu s&aacute;ng.</p>', 45, 1200000, 0, 1, '2022-12-02 03:55:26', '2022-12-02 03:55:26', 'imagetapluyennam2.jpg'),
(21, 'Áo Thun Own The Run Nam', 'Đây là Áo Thun chạy bộ Own The Run Nam', '<p>L&agrave;m từ 100% chất liệu t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa. L&agrave;m từ chất liệu thấm nước gi&uacute;p đ&aacute;nh bay hơi ẩm tr&ecirc;n cơ thể, chất vải c&ocirc;ng nghệ AEROREADY của adidas gi&uacute;p bạn lu&ocirc;n cảm thấy kh&ocirc; r&aacute;o khi vận động.&nbsp;C&aacute;c chi tiết phản quang nổi bật trong điều kiện thiếu s&aacute;ng.</p>', 45, 1000000, 0, 1, '2022-12-02 03:59:06', '2022-12-02 03:59:06', 'imagetapluyennam3.jpg'),
(22, 'Quần Bó Dáng Dài Sartuday', 'Đây là Quần Bó Dáng Dài Sartuday nam', '<p>Đ&acirc;u l&agrave; điểm chung giữa đường chạy s&aacute;ng sớm v&agrave; buổi tập giữa ng&agrave;y? Đ&oacute; ch&iacute;nh l&agrave; chiếc quần b&oacute; chạy bộ adidas n&agrave;y. Mềm mại tr&ecirc;n da v&agrave; cực kỳ tho&aacute;ng kh&iacute;, đ&acirc;y ch&iacute;nh l&agrave; lựa chọn cho bạn mỗi khi ra đường chạy bộ. Đựng điện thoại trong t&uacute;i sau v&agrave; tự tin sải bước. C&ocirc;ng nghệ AEROREADY thấm h&uacute;t ẩm cho bạn cảm gi&aacute;c dễ chịu nhất. L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế v&agrave; c&oacute; chứa &iacute;t nhất 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 45, 1000000, 0, 1, '2022-12-02 04:02:49', '2022-12-02 04:02:49', 'imagetapluyennam4.jpg'),
(23, 'Áo Bra Chạy Bộ High Support Luxe FastImpart Nữ', 'Đây là Áo Bra Chạy Bộ High Support Luxe FastImpart Nữ', '<p>L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế v&agrave; c&oacute; chứa &iacute;t nhất 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.&nbsp;Điều chỉnh độ &ocirc;m bằng c&aacute;c chi tiết t&ugrave;y chỉnh tr&ecirc;n quai &aacute;o v&agrave; đai ngực. Thiết kế d&agrave;nh cho c&aacute;c bộ m&ocirc;n thể thao t&aacute;c động mạnh như: chạy bộ, boxing, b&oacute;ng rổ v&agrave; b&oacute;ng đ&aacute;. Mức độ n&acirc;ng đỡ n&agrave;y ph&ugrave; hợp với c&aacute;c vận động vi&ecirc;n c&oacute; k&iacute;ch cỡ c&uacute;p ngực v&agrave; v&ograve;ng lưng lớn.&nbsp;Chất vải adiform mang n&eacute;t c&ocirc;ng nghệ thanh tho&aacute;t.</p>', 46, 1200000, 1000000, 1, '2022-12-02 04:10:05', '2022-12-02 04:10:05', 'imagenuchaybo1.jpg'),
(24, 'Quần Short Run It Nữ', 'Đây là quần chạy bộ nữ Short Run It', '<p>Tận hưởng cảm gi&aacute;c nhẹ nh&agrave;ng v&agrave; tho&aacute;ng m&aacute;t trong buổi chạy tiếp theo với chiếc quần short adidas n&agrave;y. Chất vải AEROREADY gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o d&ugrave; l&agrave; tr&ecirc;n những đường chạy đẫm mồ h&ocirc;i nhất. Cạp chun c&oacute; d&acirc;y r&uacute;t cho độ &ocirc;m điều chỉnh được v&agrave; giữ quần lu&ocirc;n chắc chắn. T&uacute;i đựng ch&igrave;a kh&oacute;a tiện lợi gi&uacute;p bạn dễ d&agrave;ng cất đồ v&agrave; l&ecirc;n đường. L&agrave;m từ 100% chất liệu t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 46, 850000, 0, 1, '2022-12-02 04:24:51', '2022-12-02 04:24:51', 'imagenuchaybo2.jpg'),
(25, 'Áo Tank Top Chạy Bộ Own The Run', 'Đây là áo Tank Top chạy bộ Own The Run nữ', '<p>Tăng tốc theo &yacute; muốn v&agrave;o những buổi chạy bộ n&oacute;ng bức. Chiếc &aacute;o tank top chạy bộ adidas n&agrave;y sẽ khiến mọi thứ trở n&ecirc;n dễ d&agrave;ng hơn, với c&ocirc;ng nghệ AEROREADY thấm h&uacute;t ẩm gi&uacute;p bạn lu&ocirc;n tập trung. C&aacute;c mảng phối lưới ph&iacute;a sau v&agrave; hai b&ecirc;n tăng cường tho&aacute;ng kh&iacute;, c&ugrave;ng thiết kế lưng chữ T cho ph&eacute;p kh&ocirc;ng kh&iacute; lưu th&ocirc;ng qua hai vai. L&agrave;m từ một loạt chất liệu t&aacute;i chế v&agrave; c&oacute; chứa tối thiểu 70% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 46, 850000, 0, 1, '2022-12-02 04:27:54', '2022-12-02 04:27:54', 'imagenuchaybo3.jpg'),
(26, 'Quần Short Bó Run Icons Nữ', 'Đây là  quần short bó Run Icons nữ', '<p>L&agrave;m từ một loạt chất liệu t&aacute;i chế, th&acirc;n gi&agrave;y c&oacute; chứa tối thiểu 50% th&agrave;nh phần t&aacute;i chế. Sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa. C&ocirc;ng nghệ adidas AEROREADY kiểm so&aacute;t hơi ẩm tr&ecirc;n cơ thể gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; tập trung.&nbsp;Thiết kế cạp cao th&ecirc;m phần k&iacute;n đ&aacute;o c&ugrave;ng d&acirc;y r&uacute;t t&ugrave;y chỉnh độ &ocirc;m vừa vặn.&nbsp;T&uacute;i ẩn gi&uacute;p bạn đựng ch&igrave;a kh&oacute;a.</p>', 46, 1200000, 0, 1, '2022-12-02 04:30:19', '2022-12-02 04:30:19', 'imagenuchaybo4.jpg'),
(27, 'Áo Bra Light Support Adidas Aeroimpact', 'Đây là áo Bra Light Support Adidas Aeroimpact dành cho nữ tập luyện', '<p>L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế v&agrave; c&oacute; chứa &iacute;t nhất 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.&nbsp;C&ocirc;ng nghệ adidas AEROREADY kiểm so&aacute;t hơi ẩm tr&ecirc;n cơ thể gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; tập trung.&nbsp;Thiết kế d&agrave;nh cho c&aacute;c bộ m&ocirc;n thể thao cường độ nhẹ như: yoga, Pilates, barre v&agrave; hiking.&nbsp;Chất vải adiflex cho cảm gi&aacute;c thanh tho&aacute;t, đậm chất kỹ thuật v&agrave; dễ chịu khi chạm v&agrave;o.</p>', 47, 1250000, 0, 1, '2022-12-02 04:33:43', '2022-12-02 04:33:43', 'imagenutapluyen1.jpg'),
(28, 'Quần Bó Studio Thebe Magugu Adidas', 'Đây là quần bó Studio Thebe Magugu Adidas dành cho nữ tập luyện', '<p>Về bản chất, tập luyện ch&iacute;nh l&agrave; một h&agrave;nh tr&igrave;nh đầy hy vọng. Ch&uacute;ng ta tập luyện h&ocirc;m nay để ng&agrave;y mai khỏe mạnh v&agrave; sung sức hơn. Chiếc quần b&oacute; adidas hợp t&aacute;c c&ugrave;ng nh&agrave; thiết kế Nam Phi Thebe Magugu n&agrave;y mang họa tiết hoa thi&ecirc;n điểu tượng trưng cho sự tự do, niềm vui v&agrave; hy vọng trong ch&uacute;ng ta khi vận động cơ thể. Chất vải co gi&atilde;n v&agrave; mềm như bơ, c&ugrave;ng cạp cao lượn cong &ocirc;m s&aacute;t v&agrave; t&ocirc;n d&aacute;ng. C&ocirc;ng nghệ AEROREADY thấm h&uacute;t ẩm gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o từ đầu tới cuối buổi tập. L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế v&agrave; c&oacute; chứa tối thiểu 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 47, 1200000, 0, 1, '2022-12-02 04:36:03', '2022-12-02 04:36:03', 'imagenutapluyen2.jpg'),
(29, 'Áo Bra Tập Luyện Hyperglam Medium Support Powerreact', 'Đây là áo Bra tập luyện nữ Hyperglam Medium Support Powerreact', '<p>Từ HIIT tới boxing v&agrave; c&aacute;c m&ocirc;n thể thao đồng đội. Chiếc &aacute;o bra thể thao adidas n&agrave;y gi&uacute;p bạn lu&ocirc;n cảm thấy dễ chịu khi nỗ lực hết m&igrave;nh. Chiếc &aacute;o chui đầu trơn l&aacute;ng n&agrave;y sử dụng chất vải m&aacute;t lạnh v&agrave; c&ocirc;ng nghệ AEROREADY thấm h&uacute;t ẩm. Đệm m&uacute;t rời c&oacute; thể gắn v&agrave;o hoặc th&aacute;o ra t&ugrave;y &yacute;. L&agrave;m từ một loạt chất liệu t&aacute;i chế v&agrave; c&oacute; chứa tối thiểu 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 47, 1250000, 0, 1, '2022-12-02 04:47:48', '2022-12-02 04:47:48', 'imagenutapluyen3.jpg'),
(30, 'Quần Bó Tập Luyện Luxe Optime', 'Đây là quần bó tập luyện Luxr Optime', '<p>D&ugrave; tập yoga hay cardio th&igrave; bạn sẽ lu&ocirc;n sẵn s&agrave;ng với chiếc quần b&oacute; sang chảnh adidas n&agrave;y. Chuy&ecirc;n t&acirc;m ph&aacute; vỡ kỷ lục c&aacute; nh&acirc;n v&agrave; tập trung ho&agrave;n th&agrave;nh số v&ograve;ng rep nhờ thiết kế kh&ocirc;ng đường may mượt m&agrave; b&ecirc;n ngo&agrave;i ống quần. Thoải m&aacute;i vận động kh&ocirc;ng ch&uacute;t kh&oacute; chịu với những đường chỉ liền mạch ở b&ecirc;n trong. Lu&ocirc;n cảm thấy dễ chịu v&agrave; kh&ocirc; r&aacute;o với cạp quần cao v&agrave; c&ocirc;ng nghệ AEROREADY thấm h&uacute;t ẩm. L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế v&agrave; c&oacute; chứa &iacute;t nhất 60% th&agrave;nh phần t&aacute;i chế, sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</p>', 47, 990000, 0, 1, '2022-12-02 04:50:07', '2022-12-02 04:50:07', 'imagenutapluyen4.jpg'),
(31, 'Giày Đá Bóng Nam Adidas Copa Sense.3 Firm Ground', 'Đây là giày đá bóng nam Adidas Copa Sense.3 Firm Ground', '<p>Chiến thắng kh&ocirc;ng phải l&agrave; đ&aacute;nh bại 11 cầu thủ. M&agrave; l&agrave; h&ograve;a l&agrave;m một c&ugrave;ng tr&aacute;i b&oacute;ng. Tự tin c&ugrave;ng adidas Copa n&acirc;ng tầm cảm gi&aacute;c b&oacute;ng. Với thiết kế gi&uacute;p bạn xỏ ch&acirc;n dễ d&agrave;ng, đ&ocirc;i gi&agrave;y n&agrave;y c&oacute; cổ gi&agrave;y co gi&atilde;n &ocirc;m theo h&igrave;nh d&aacute;ng b&agrave;n ch&acirc;n gi&uacute;p bạn lu&ocirc;n thoải m&aacute;i v&agrave; điềm tĩnh. Mũi gi&agrave;y bằng da mềm tạo độ chắc chắn cho từng c&uacute; chạm b&oacute;ng, c&ugrave;ng đế ngo&agrave;i bằng TPU gi&uacute;p bạn vững v&agrave;ng trong suốt trận đấu tr&ecirc;n mặt cỏ tự nhi&ecirc;n.</p>', 42, 2500000, 2250000, 1, '2022-12-02 04:53:05', '2022-12-02 04:58:57', 'giaynam1.jpg'),
(32, 'Giày Đá Bóng Adidas X Ghosted.3 TF J', 'Đây là giày đá bóng nam Adidas X Ghosted.3 TF J', '<p>Đảo hướng thần tốc. Kiểm so&aacute;t thần sầu. Ph&ocirc; b&agrave;y sức mạnh. Gi&agrave;y Adidas X Ghosted.3 TF J bao tr&ugrave;m mọi kh&iacute;a cạnh. H&atilde;y ra s&acirc;n v&agrave; gi&agrave;nh lợi thế với đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n cỏ tự nhi&ecirc;n d&agrave;nh cho thiếu ni&ecirc;n n&agrave;y. Tr&ecirc;n th&acirc;n gi&agrave;y bằng chất liệu tổng hợp mềm mại, v&acirc;n b&aacute;m Control Zone hỗ trợ bạn trong từng c&uacute; chạm b&oacute;ng. B&ecirc;n dưới l&agrave; đế ngo&agrave;i bằng TPU g&oacute;c cạnh, bắt mắt gi&uacute;p bạn l&agrave;m chủ s&acirc;n cỏ kh&ocirc; tự nhi&ecirc;n.</p>', 42, 2590000, 2250000, 1, '2022-12-02 04:57:37', '2022-12-02 04:58:42', 'giaynam2.jpg'),
(33, 'Giày Ultraboots 22 Nữ', 'Đây là giày Ultraboots 22 nữ', '<p>Phần g&oacute;t thon gọn hơn v&agrave; v&ograve;m b&agrave;n ch&acirc;n thấp hơn cho cảm gi&aacute;c vừa kh&iacute;t, gi&uacute;p tr&aacute;nh tuột g&oacute;t v&agrave; phồng rộp. Đế ngo&agrave;i tinh giản kiểu mới cho lớp đệm mềm mại hơn v&agrave; hạn chế t&igrave;nh trạng b&agrave;n ch&acirc;n lệch trong.&nbsp;Đế ngo&agrave;i bằng cao su tự nhi&ecirc;n Continental v&agrave; th&acirc;n gi&agrave;y l&agrave;m từ sợi dệt c&oacute; chứa 50% Parley Ocean Plastic.</p>\r\n\r\n<p>&nbsp;</p>', 43, 4500000, 0, 1, '2022-12-02 05:01:20', '2022-12-02 05:01:20', 'giaynu1.jpg'),
(34, 'Giày Chạy Bộ Adidas Adizero SL Nữ', 'Đây là giày chạy bộ nữ Adidas Adizero SL', '<p>Đệm foam Lightstrike Pro, cũng c&oacute; mặt ở c&aacute;c mẫu gi&agrave;y adidas Adios Pro ph&aacute; kỷ lục, được bố tr&iacute; th&ocirc;ng minh tại v&ugrave;ng mũi gi&agrave;y, gi&uacute;p runner duy tr&igrave; phong độ khi chạy đường d&agrave;i.&nbsp; Khung đế giữa bằng chất liệu EVA sử dụng c&ocirc;ng nghệ Lightstrike si&ecirc;u nhẹ mang đến độ ổn định v&agrave; dẻo dai cho cấu tr&uacute;c đế giữa, để bạn tập trung v&agrave;o bước chạy tiếp theo.&nbsp;Bạn sẽ cảm thấy b&agrave;n ch&acirc;n được cố định chắc chắn trong những buổi tập cường độ cao, cũng như cảm thấy thoải m&aacute;i tối đa.</p>', 43, 3000000, 0, 1, '2022-12-02 05:03:20', '2022-12-02 05:03:20', 'giaynu2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Áo Nam', 'http://localhost:8080/do_an_co_so_2_vku/public/uploads/sliders/slider1.jpg', 'slider1.jpg', 1, 1, '2022-11-26 23:22:47', '2022-11-29 20:28:26'),
(6, 'Áo Nữ', 'http://localhost:8080/do_an_co_so_2_vku/public/uploads/sliders/slider2.jpg', 'slider2.jpg', 1, 1, '2022-11-29 20:23:42', '2022-11-29 20:29:00'),
(7, 'Giày Đá Bóng', 'http://localhost:8080/do_an_co_so_2_vku/public/uploads/sliders/slider3.jpg', 'slider3.jpg', 3, 1, '2022-11-29 20:25:44', '2022-11-29 20:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@localhost.com', NULL, '$2y$10$afcMbFI9CLaJyaRtcCijf.pHo8ZpiFiMCGkoTFK1FJkkJCiO3Eoha', 'FtOv1q16ledewMcShoj6AG1RXURIoVh9jXe5C1t3SjztkvjZ8vUE09TvrLKk', '2022-08-23 16:32:10', '2022-08-23 16:32:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
