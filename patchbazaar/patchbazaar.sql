-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 05:30 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patchbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-16 10:11:18', '2019-06-16 10:11:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/patchbazaar', 'yes'),
(2, 'home', 'http://localhost/patchbazaar', 'yes'),
(3, 'blogname', 'PatchBazaar', 'yes'),
(4, 'blogdescription', 'Patches Design', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'krishankumar882019@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"js_composer/js_composer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'understrap', 'yes'),
(41, 'stylesheet', 'understrap-child-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:149:\"<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/patchbazaar/wp-content/uploads/2019/06/logo.png\" alt=\"\" width=\"162\" height=\"70\" />\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:23:\"<a class=\"#top\">TOp</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"footerfull\";a:3:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-2\";i:2;s:6:\"text-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1561781482;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561803080;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561803082;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561803083;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561803167;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561803172;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561647805;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561773398;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:23:\"understrap-child-master\";s:5:\"0.5.5\";s:10:\"understrap\";s:5:\"0.9.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'UnderStrap Child', 'yes'),
(149, 'theme_mods_understrap', 'a:6:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560908080;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(152, 'theme_mods_understrap-child', 'a:8:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561568204;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"navbar-right\";a:0:{}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(162, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1561773386;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(163, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"krishankumar882019@gmail.com\";s:7:\"version\";s:5:\"5.2.2\";s:9:\"timestamp\";i:1561254981;}', 'no'),
(179, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(212, '_site_transient_timeout_browser_bcf1814caa6afe84eeebef28ff236a7f', '1562172987', 'no'),
(213, '_site_transient_browser_bcf1814caa6afe84eeebef28ff236a7f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(214, '_site_transient_timeout_php_check_6e2b839619b4c499dbe4da8c1a4b5e71', '1562172988', 'no'),
(215, '_site_transient_php_check_6e2b839619b4c499dbe4da8c1a4b5e71', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(232, 'theme_mods_understrap-child-master/understrap-child-master', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(246, 'theme_mods_understrap-child-master', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;}', 'yes'),
(268, '_transient_timeout_plugin_slugs', '1561829353', 'no'),
(269, '_transient_plugin_slugs', 'a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:27:\"js_composer/js_composer.php\";i:3;s:32:\"js_composer.hold/js_composer.php\";}', 'no'),
(270, 'recently_activated', 'a:0:{}', 'yes'),
(273, 'vc_version', '6.0.2', 'yes'),
(292, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1561786013', 'no'),
(293, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(302, '_site_transient_timeout_theme_roots', '1561775196', 'no'),
(303, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:23:\"understrap-child-master\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}', 'no'),
(304, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1561773402;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"js_composer/js_composer.php\";s:5:\"6.0.2\";s:32:\"js_composer.hold/js_composer.php\";s:8:\"4.11.2.1\";}s:8:\"response\";a:1:{s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":6:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"6.0.3\";s:6:\"plugin\";s:27:\"js_composer/js_composer.php\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:21:\"WPBakery Page Builder\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(305, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1561816600', 'no'),
(306, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(323, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/patchbazaar/'),
(11, 5, '_menu_item_orphaned', '1560908094'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1560908095'),
(21, 7, '_edit_lock', '1561256879:1'),
(22, 7, '_customize_restore_dismissed', '1'),
(23, 8, '_edit_lock', '1561276873:1'),
(25, 9, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(27, 10, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(29, 11, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(31, 12, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(33, 13, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(35, 14, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(37, 15, '_customize_changeset_uuid', '9ffda25d-0d74-4c90-ae69-e77de8adc19d'),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '9'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 23, '_menu_item_xfn', ''),
(45, 23, '_menu_item_url', ''),
(46, 24, '_menu_item_type', 'post_type'),
(47, 24, '_menu_item_menu_item_parent', '0'),
(48, 24, '_menu_item_object_id', '10'),
(49, 24, '_menu_item_object', 'page'),
(50, 24, '_menu_item_target', ''),
(51, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 24, '_menu_item_xfn', ''),
(53, 24, '_menu_item_url', ''),
(54, 25, '_menu_item_type', 'post_type'),
(55, 25, '_menu_item_menu_item_parent', '0'),
(56, 25, '_menu_item_object_id', '11'),
(57, 25, '_menu_item_object', 'page'),
(58, 25, '_menu_item_target', ''),
(59, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 25, '_menu_item_xfn', ''),
(61, 25, '_menu_item_url', ''),
(62, 26, '_menu_item_type', 'post_type'),
(63, 26, '_menu_item_menu_item_parent', '0'),
(64, 26, '_menu_item_object_id', '12'),
(65, 26, '_menu_item_object', 'page'),
(66, 26, '_menu_item_target', ''),
(67, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 26, '_menu_item_xfn', ''),
(69, 26, '_menu_item_url', ''),
(70, 27, '_menu_item_type', 'post_type'),
(71, 27, '_menu_item_menu_item_parent', '0'),
(72, 27, '_menu_item_object_id', '13'),
(73, 27, '_menu_item_object', 'page'),
(74, 27, '_menu_item_target', ''),
(75, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 27, '_menu_item_xfn', ''),
(77, 27, '_menu_item_url', ''),
(78, 28, '_menu_item_type', 'post_type'),
(79, 28, '_menu_item_menu_item_parent', '0'),
(80, 28, '_menu_item_object_id', '14'),
(81, 28, '_menu_item_object', 'page'),
(82, 28, '_menu_item_target', ''),
(83, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 28, '_menu_item_xfn', ''),
(85, 28, '_menu_item_url', ''),
(86, 29, '_menu_item_type', 'post_type'),
(87, 29, '_menu_item_menu_item_parent', '0'),
(88, 29, '_menu_item_object_id', '15'),
(89, 29, '_menu_item_object', 'page'),
(90, 29, '_menu_item_target', ''),
(91, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 29, '_menu_item_xfn', ''),
(93, 29, '_menu_item_url', ''),
(94, 8, '_wp_trash_meta_status', 'publish'),
(95, 8, '_wp_trash_meta_time', '1561276911'),
(96, 9, '_edit_lock', '1561777877:1'),
(97, 9, '_edit_last', '1'),
(98, 9, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(99, 30, '_wp_attached_file', '2019/06/logo.png'),
(100, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2019/06/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 31, '_wp_trash_meta_status', 'publish'),
(102, 31, '_wp_trash_meta_time', '1561307734'),
(103, 33, '_wp_trash_meta_status', 'publish'),
(104, 33, '_wp_trash_meta_time', '1561647850'),
(105, 9, '_wpb_vc_js_status', 'true'),
(107, 37, '_wp_attached_file', '2019/06/hero-banner-bg.png'),
(108, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1518;s:6:\"height\";i:750;s:4:\"file\";s:26:\"2019/06/hero-banner-bg.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hero-banner-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hero-banner-bg-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hero-banner-bg-768x379.png\";s:5:\"width\";i:768;s:6:\"height\";i:379;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"hero-banner-bg-1024x506.png\";s:5:\"width\";i:1024;s:6:\"height\";i:506;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 38, '_wpb_shortcodes_custom_css', '.vc_custom_1561685134698{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}'),
(110, 9, '_wpb_shortcodes_custom_css', '.vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(111, 39, '_wpb_shortcodes_custom_css', '.vc_custom_1561685169829{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}'),
(112, 40, '_wpb_shortcodes_custom_css', '.vc_custom_1561685246664{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}'),
(113, 9, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(114, 41, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(115, 41, '_wpb_shortcodes_custom_css', '.vc_custom_1561743942934{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}'),
(116, 42, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(117, 42, '_wpb_shortcodes_custom_css', '.vc_custom_1561743942934{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}'),
(118, 43, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(119, 43, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(120, 44, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(121, 44, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(122, 45, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(123, 45, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(124, 46, '_wp_attached_file', '2019/06/welcome-img.jpg'),
(125, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:732;s:6:\"height\";i:628;s:4:\"file\";s:23:\"2019/06/welcome-img.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"welcome-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"welcome-img-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 47, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(127, 47, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(128, 48, '_wp_attached_file', '2019/06/patch-step.png'),
(129, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1073;s:6:\"height\";i:574;s:4:\"file\";s:22:\"2019/06/patch-step.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"patch-step-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"patch-step-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"patch-step-768x411.png\";s:5:\"width\";i:768;s:6:\"height\";i:411;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"patch-step-1024x548.png\";s:5:\"width\";i:1024;s:6:\"height\";i:548;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 49, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(131, 49, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(132, 50, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(133, 50, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(134, 51, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(135, 51, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(136, 52, '_wp_attached_file', '2019/06/get-free-quote-bg.jpg'),
(137, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1519;s:6:\"height\";i:738;s:4:\"file\";s:29:\"2019/06/get-free-quote-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"get-free-quote-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"get-free-quote-bg-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"get-free-quote-bg-768x373.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"get-free-quote-bg-1024x498.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 53, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(139, 53, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774534520{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(140, 54, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(141, 54, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(142, 55, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(143, 55, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(144, 56, '_wp_attached_file', '2019/06/icon-1.png'),
(145, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:104;s:4:\"file\";s:18:\"2019/06/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 57, '_wp_attached_file', '2019/06/icon-2.png'),
(147, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:104;s:4:\"file\";s:18:\"2019/06/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 58, '_wp_attached_file', '2019/06/icon-3.png'),
(149, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:104;s:4:\"file\";s:18:\"2019/06/icon-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 59, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(151, 59, '_wpb_shortcodes_custom_css', '.vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(152, 60, '_menu_item_type', 'post_type'),
(153, 60, '_menu_item_menu_item_parent', '0'),
(154, 60, '_menu_item_object_id', '14'),
(155, 60, '_menu_item_object', 'page'),
(156, 60, '_menu_item_target', ''),
(157, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 60, '_menu_item_xfn', ''),
(159, 60, '_menu_item_url', ''),
(161, 61, '_menu_item_type', 'post_type'),
(162, 61, '_menu_item_menu_item_parent', '0'),
(163, 61, '_menu_item_object_id', '12'),
(164, 61, '_menu_item_object', 'page'),
(165, 61, '_menu_item_target', ''),
(166, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 61, '_menu_item_xfn', ''),
(168, 61, '_menu_item_url', ''),
(170, 62, '_menu_item_type', 'post_type'),
(171, 62, '_menu_item_menu_item_parent', '0'),
(172, 62, '_menu_item_object_id', '11'),
(173, 62, '_menu_item_object', 'page'),
(174, 62, '_menu_item_target', ''),
(175, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 62, '_menu_item_xfn', ''),
(177, 62, '_menu_item_url', ''),
(179, 63, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(180, 63, '_wpb_shortcodes_custom_css', '.vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(181, 64, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(182, 64, '_wpb_shortcodes_custom_css', '.vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(183, 65, '_wpb_post_custom_css', '.entry-header{\r\n    display: none;\r\n}'),
(184, 65, '_wpb_shortcodes_custom_css', '.vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-16 10:11:18', '2019-06-16 10:11:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-16 10:11:18', '2019-06-16 10:11:18', '', 0, 'http://localhost/patchbazaar/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-16 10:11:18', '2019-06-16 10:11:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/patchbazaar/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-16 10:11:18', '2019-06-16 10:11:18', '', 0, 'http://localhost/patchbazaar/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-16 10:11:18', '2019-06-16 10:11:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/patchbazaar.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-16 10:11:18', '2019-06-16 10:11:18', '', 0, 'http://localhost/patchbazaar/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-06-19 01:34:53', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-06-19 01:34:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/patchbazaar/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-06-19 01:34:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-06-19 01:34:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/patchbazaar/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2019-06-23 01:57:48', '0000-00-00 00:00:00', '{\n    \"understrap-child::nav_menu_locations[primary]\": {\n        \"value\": -1741893436,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 01:57:48\"\n    },\n    \"nav_menu[-1741893436]\": {\n        \"value\": {\n            \"name\": \"Main Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 01:57:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '875dfb82-8901-4dd0-ab75-68d0ea6b62de', '', '', '2019-06-23 01:57:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/patchbazaar/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2019-06-23 08:01:37', '2019-06-23 08:01:37', '{\n    \"understrap-child::nav_menu_locations[primary]\": {\n        \"value\": -1768839301,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 07:52:52\"\n    },\n    \"nav_menu[-1768839301]\": {\n        \"value\": {\n            \"name\": \"Main menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 07:52:52\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            9,\n            10,\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:01:37\"\n    },\n    \"nav_menu_item[-248839970]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:00:55\"\n    },\n    \"nav_menu_item[-819089752]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Categories\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Categories\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:00:55\"\n    },\n    \"nav_menu_item[-1491658446]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Services\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Services\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:00:55\"\n    },\n    \"nav_menu_item[-143937730]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Gallery\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=12\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Gallery\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:00:55\"\n    },\n    \"nav_menu_item[-719133941]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"India Mart\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=13\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"India Mart\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:01:37\"\n    },\n    \"nav_menu_item[-1780984209]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"About us\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=14\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About us\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:01:37\"\n    },\n    \"nav_menu_item[-886060776]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Order\",\n            \"url\": \"http://localhost/patchbazaar/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Order\",\n            \"nav_menu_term_id\": -1768839301,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 08:01:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9ffda25d-0d74-4c90-ae69-e77de8adc19d', '', '', '2019-06-23 08:01:37', '2019-06-23 08:01:37', '', 0, 'http://localhost/patchbazaar/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '[vc_row full_width=\"stretch_row\" content_placement=\"middle\" css=\".vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1 text-large\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-06-29 03:11:17', '2019-06-29 03:11:17', '', 0, 'http://localhost/patchbazaar/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 0, 'http://localhost/patchbazaar/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 0, 'http://localhost/patchbazaar/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 0, 'http://localhost/patchbazaar/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 'India Mart', '', 'publish', 'closed', 'closed', '', 'india-mart', '', '', '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 0, 'http://localhost/patchbazaar/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 0, 'http://localhost/patchbazaar/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 'Order', '', 'publish', 'closed', 'closed', '', 'order', '', '', '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 0, 'http://localhost/patchbazaar/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 9, 'http://localhost/patchbazaar/2019/06/23/9-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 'Categories', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 10, 'http://localhost/patchbazaar/2019/06/23/10-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 'Services', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-06-23 08:01:38', '2019-06-23 08:01:38', '', 11, 'http://localhost/patchbazaar/2019/06/23/11-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 12, 'http://localhost/patchbazaar/2019/06/23/12-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 'India Mart', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-06-23 08:01:39', '2019-06-23 08:01:39', '', 13, 'http://localhost/patchbazaar/2019/06/23/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 'About us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 14, 'http://localhost/patchbazaar/2019/06/23/14-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 'Order', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-06-23 08:01:40', '2019-06-23 08:01:40', '', 15, 'http://localhost/patchbazaar/2019/06/23/15-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-06-23 08:01:41', '2019-06-23 08:01:41', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-06-23 08:01:41', '2019-06-23 08:01:41', '', 0, 'http://localhost/patchbazaar/2019/06/23/23/', 1, 'nav_menu_item', '', 0),
(24, 1, '2019-06-23 08:01:42', '2019-06-23 08:01:42', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-06-23 08:01:42', '2019-06-23 08:01:42', '', 0, 'http://localhost/patchbazaar/2019/06/23/24/', 2, 'nav_menu_item', '', 0),
(25, 1, '2019-06-23 08:01:44', '2019-06-23 08:01:44', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-06-23 08:01:44', '2019-06-23 08:01:44', '', 0, 'http://localhost/patchbazaar/2019/06/23/25/', 3, 'nav_menu_item', '', 0),
(26, 1, '2019-06-23 08:01:46', '2019-06-23 08:01:46', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-06-23 08:01:46', '2019-06-23 08:01:46', '', 0, 'http://localhost/patchbazaar/2019/06/23/26/', 4, 'nav_menu_item', '', 0),
(27, 1, '2019-06-23 08:01:47', '2019-06-23 08:01:47', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-06-23 08:01:47', '2019-06-23 08:01:47', '', 0, 'http://localhost/patchbazaar/2019/06/23/27/', 5, 'nav_menu_item', '', 0),
(28, 1, '2019-06-23 08:01:49', '2019-06-23 08:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-06-23 08:01:49', '2019-06-23 08:01:49', '', 0, 'http://localhost/patchbazaar/2019/06/23/28/', 6, 'nav_menu_item', '', 0),
(29, 1, '2019-06-23 08:01:50', '2019-06-23 08:01:50', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-06-23 08:01:50', '2019-06-23 08:01:50', '', 0, 'http://localhost/patchbazaar/2019/06/23/29/', 7, 'nav_menu_item', '', 0),
(30, 1, '2019-06-23 16:35:11', '2019-06-23 16:35:11', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-06-23 16:35:11', '2019-06-23 16:35:11', '', 0, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-06-23 16:35:33', '2019-06-23 16:35:33', '{\n    \"understrap-child::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-23 16:35:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '384ff7d1-63fe-46db-bf0d-18110f2f112e', '', '', '2019-06-23 16:35:33', '2019-06-23 16:35:33', '', 0, 'http://localhost/patchbazaar/2019/06/23/384ff7d1-63fe-46db-bf0d-18110f2f112e/', 0, 'customize_changeset', '', 0),
(32, 1, '2019-06-26 16:56:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-26 16:56:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/patchbazaar/?p=32', 0, 'post', '', 0),
(33, 1, '2019-06-27 15:04:09', '2019-06-27 15:04:09', '{\n    \"blogdescription\": {\n        \"value\": \"Patches Design\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-27 15:04:09\"\n    },\n    \"understrap-child-master::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-27 15:04:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5431ab72-d8b0-4bd6-83cf-fe4e090f395c', '', '', '2019-06-27 15:04:09', '2019-06-27 15:04:09', '', 0, 'http://localhost/patchbazaar/2019/06/27/5431ab72-d8b0-4bd6-83cf-fe4e090f395c/', 0, 'customize_changeset', '', 0),
(34, 1, '2019-06-29 03:10:36', '2019-06-29 03:10:36', '[vc_row full_width=\"stretch_row\" content_placement=\"middle\" css=\".vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\n<a href=\"#\">Free Set Up For Patches</a>\n\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\n<p class=\"color1\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2019-06-29 03:10:36', '2019-06-29 03:10:36', '', 9, 'http://localhost/patchbazaar/2019/06/27/9-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2019-06-27 17:46:55', '2019-06-27 17:46:55', '[vc_row][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-27 17:46:55', '2019-06-27 17:46:55', '', 9, 'http://localhost/patchbazaar/2019/06/27/9-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-06-27 17:47:33', '2019-06-27 17:47:33', '[vc_row][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-27 17:47:33', '2019-06-27 17:47:33', '', 9, 'http://localhost/patchbazaar/2019/06/27/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-06-28 01:25:27', '2019-06-28 01:25:27', '', 'hero-banner-bg', '', 'inherit', 'open', 'closed', '', 'hero-banner-bg', '', '', '2019-06-28 01:25:27', '2019-06-28 01:25:27', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2019-06-28 01:25:38', '2019-06-28 01:25:38', '[vc_row css=\".vc_custom_1561685134698{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}\"][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 01:25:38', '2019-06-28 01:25:38', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-06-28 01:26:15', '2019-06-28 01:26:15', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561685169829{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}\"][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 01:26:15', '2019-06-28 01:26:15', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-06-28 01:27:29', '2019-06-28 01:27:29', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561685246664{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}\" el_class=\"text-center\"][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 01:27:29', '2019-06-28 01:27:29', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-06-28 17:45:44', '2019-06-28 17:45:44', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561743942934{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 17:45:44', '2019-06-28 17:45:44', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-06-28 17:47:00', '2019-06-28 17:47:00', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561743942934{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 17:47:00', '2019-06-28 17:47:00', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-06-28 18:11:22', '2019-06-28 18:11:22', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 18:11:22', '2019-06-28 18:11:22', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-06-28 18:31:07', '2019-06-28 18:31:07', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 18:31:07', '2019-06-28 18:31:07', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-06-28 18:32:59', '2019-06-28 18:32:59', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 18:32:59', '2019-06-28 18:32:59', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-06-28 18:35:16', '2019-06-28 18:35:16', '', 'welcome-img', '', 'inherit', 'open', 'closed', '', 'welcome-img', '', '', '2019-06-28 18:35:16', '2019-06-28 18:35:16', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/welcome-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-06-28 18:38:00', '2019-06-28 18:38:00', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][vc_custom_heading text=\"3 -Step ordering process\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-28 18:38:00', '2019-06-28 18:38:00', '', 9, 'http://localhost/patchbazaar/2019/06/28/9-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-06-29 02:01:30', '2019-06-29 02:01:30', '', 'patch-step', '', 'inherit', 'open', 'closed', '', 'patch-step', '', '', '2019-06-29 02:01:30', '2019-06-29 02:01:30', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/patch-step.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-06-29 02:02:00', '2019-06-29 02:02:00', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:02:00', '2019-06-29 02:02:00', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2019-06-29 02:02:31', '2019-06-29 02:02:31', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:02:31', '2019-06-29 02:02:31', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-06-29 02:05:07', '2019-06-29 02:05:07', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:05:07', '2019-06-29 02:05:07', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-06-29 02:15:25', '2019-06-29 02:15:25', '', 'get-free-quote-bg', '', 'inherit', 'open', 'closed', '', 'get-free-quote-bg', '', '', '2019-06-29 02:15:25', '2019-06-29 02:15:25', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-06-29 02:16:30', '2019-06-29 02:16:30', '<p>[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar</p>\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<p><a href=\"#\">Free Set Up For Patches</a></p>\r\n<p>Have you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]</p>\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\n<p>At patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774534520{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar</p>\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<p><a href=\"#\">Free Set Up For Patches</a></p>\r\n<p>Have you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row]</p>\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:16:30', '2019-06-29 02:16:30', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-06-29 02:17:58', '2019-06-29 02:17:58', '<p>[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar</p>\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<p><a href=\"#\">Free Set Up For Patches</a></p>\r\n<p>Have you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]</p>\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\n<p>At patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center \"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar</p>\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<p><a href=\"#\">Free Set Up For Patches</a></p>\r\n<p>Have you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row]</p>\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:17:58', '2019-06-29 02:17:58', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-06-29 02:27:06', '2019-06-29 02:27:06', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:27:06', '2019-06-29 02:27:06', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-06-29 02:36:49', '2019-06-29 02:36:49', '', 'icon-1', '', 'inherit', 'open', 'closed', '', 'icon-1', '', '', '2019-06-29 02:36:49', '2019-06-29 02:36:49', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/icon-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-06-29 02:36:53', '2019-06-29 02:36:53', '', 'icon-2', '', 'inherit', 'open', 'closed', '', 'icon-2', '', '', '2019-06-29 02:36:53', '2019-06-29 02:36:53', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/icon-2.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-06-29 02:36:56', '2019-06-29 02:36:56', '', 'icon-3', '', 'inherit', 'open', 'closed', '', 'icon-3', '', '', '2019-06-29 02:36:56', '2019-06-29 02:36:56', '', 9, 'http://localhost/patchbazaar/wp-content/uploads/2019/06/icon-3.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-06-29 02:40:41', '2019-06-29 02:40:41', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1561745479942{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 02:40:41', '2019-06-29 02:40:41', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-06-29 02:46:06', '2019-06-29 02:46:06', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2019-06-29 02:46:06', '2019-06-29 02:46:06', '', 0, 'http://localhost/patchbazaar/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2019-06-29 02:46:06', '2019-06-29 02:46:06', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2019-06-29 02:46:06', '2019-06-29 02:46:06', '', 0, 'http://localhost/patchbazaar/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2019-06-29 02:46:07', '2019-06-29 02:46:07', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2019-06-29 02:46:07', '2019-06-29 02:46:07', '', 0, 'http://localhost/patchbazaar/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2019-06-29 03:06:16', '2019-06-29 03:06:16', '[vc_row full_width=\"stretch_row\" content_placement=\"middle\" css=\".vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 03:06:16', '2019-06-29 03:06:16', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-06-29 03:10:01', '2019-06-29 03:10:01', '[vc_row full_width=\"stretch_row\" content_placement=\"middle\" css=\".vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 03:10:01', '2019-06-29 03:10:01', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-06-29 03:10:59', '2019-06-29 03:10:59', '[vc_row full_width=\"stretch_row\" content_placement=\"middle\" css=\".vc_custom_1561777574197{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/hero-banner-bg.png?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center hero-section\"][vc_column][vc_column_text el_class=\"top-text-block\"]Wholesale Patchbazaar\r\n<h1>Top-Quality Custom Patches At Incredibly Low Prices</h1>\r\n<a href=\"#\">Free Set Up For Patches</a>\r\n\r\nHave you find better Embroidery Service in this time work with us we will provide a better Patchbazaar Service[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][vc_column width=\"1/4\"][vc_column_text]Design &amp; Artwork[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"46\" img_size=\"full\"][/vc_column][vc_column width=\"1/2\"][vc_custom_heading text=\"Welcome To Patchbazaar\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<h3>India’s favorite Patches company provide inclusively Quality Patches with gaurantee</h3>\r\nAt patchbazaar.com, custom patches are ALL we do. We’re your one-stop, no-problem source if you need custom patches for sports teams, businesses, military units, motorcycle clubs and events, camping, Scouting, martial arts or any other purpose. Our custom patches are perfect for uniforms, duffle bags, jackets or any other use. We supply top quality patches at great prices, with unbeatable customer service![/vc_column_text][vc_btn title=\"Let\'s get Started\" style=\"flat\" shape=\"square\" color=\"pink\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"3 -Step ordering process\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_single_image image=\"48\" img_size=\"full\"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Custom Patches are as easy as 1-2-3!\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]At the Custom Patches we make it easy to create, order and you custom patches in no time at all. All the custom patches school uniform, Kid patches, Cartoon patches or Military patches. We make patches for everyone and make them with high attention to detail. There is no minimum order. We make the patches in affordable price. When you are first time orders we will give 10-20% discount depends on your order.[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1561774674767{background-image: url(http://localhost/patchbazaar/wp-content/uploads/2019/06/get-free-quote-bg.jpg?id=52) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"text-center\"][vc_column][vc_column_text el_class=\"top-text-block\"]\r\n<h2 class=\"h1\">Every Embroidered Patch is backed by our Outstanding Customer Service and 100% Quality Guarantee</h2>\r\nIf you have questions, feel free to contact us, either by email at <a href=\"mailto:best@patchbazaar.com\">best@patchbazaar.com or toll-free at </a><a href=\"tel:7973794142\">79737-94142</a>\r\n<p class=\"color1 text-large\">Or if you are ready to get your Free Quote, go to our <a href=\"#\">Free Quote Page.</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text=\"Why choose Patchbazaar\" font_container=\"tag:h2|text_align:center\" use_theme_fonts=\"yes\"][vc_row_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"56\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"40 years Experience\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We have 4 decades of experience with designing and manufacturing custom patches. We have the huge knowledge and skill to make Patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"57\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Premium Quality\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">We don’t compromise with Quality.We will provide Premium Patches in low price.We are using premium threads to make the cusotm patches</p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/3\"][vc_single_image image=\"58\" img_size=\"full\" alignment=\"center\"][vc_custom_heading text=\"Fullfill Clients Needs\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][vc_column_text]\r\n<p style=\"text-align: center;\">Patchbazaar are always ready to fullfill clients need with</p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-06-29 03:10:59', '2019-06-29 03:10:59', '', 9, 'http://localhost/patchbazaar/2019/06/29/9-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(60, 3, 0),
(61, 3, 0),
(62, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '32'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px&editor_expand=off'),
(22, 1, 'wp_user-settings-time', '1561777574'),
(23, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:90:\"wpb_visual_composer,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:90:\"wpb_visual_composer,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(28, 1, 'session_tokens', 'a:1:{s:64:\"99ebf2fc1c66cbcef6c7785f21da584cae2b2eb2a8da93b4d8140f8b3c50cec2\";a:4:{s:10:\"expiration\";i:1561946183;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561773383;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUvdTDqfcsIxppLRV3cTNBXaPmSsaB0', 'admin', 'krishankumar882019@gmail.com', '', '2019-06-16 10:11:16', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
