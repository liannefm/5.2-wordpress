-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2025 at 09:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wptest0`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Een WordPress reageerder', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-10-09 08:34:55', '2025-10-09 08:34:55', 'Hoi, dit is een reactie.\nOm te beginnen met modereren, bewerken en verwijderen van reacties, ga je naar het Reacties scherm op het dashboard.\nAvatars van auteurs komen van <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:20:{i:1762117440;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1762118633;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1762118658;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1762119295;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762119296;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1762121095;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762122895;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762158054;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762158896;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762159036;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762159043;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762180191;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762201458;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762361312;a:1:{s:30:\"wordfence_start_scheduled_scan\";a:1:{s:32:\"53e6a25df95ee4099510f573f8c39b84\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1762361312;}}}}i:1762418498;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1762418520;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1762504496;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1762620512;a:1:{s:30:\"wordfence_start_scheduled_scan\";a:1:{s:32:\"8a35aeb1bd34b6b49a098bb5ec62339a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1762620512;}}}}i:1762790400;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/module5.2/wordpress', 'on'),
(3, 'home', 'http://localhost/module5.2/wordpress', 'on'),
(4, 'blogname', 'Konijnen', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', '240060@student.glu.nl', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j F Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:110:{s:22:\"konijnen-informatie/?$\";s:39:\"index.php?post_type=konijnen-informatie\";s:39:\"konijnen-informatie/page/([0-9]{1,})/?$\";s:57:\"index.php?post_type=konijnen-informatie&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"konijnen-informatie/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"konijnen-informatie/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"konijnen-informatie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"konijnen-informatie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"konijnen-informatie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"konijnen-informatie/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"konijnen-informatie/([^/]+)/embed/?$\";s:52:\"index.php?konijnen-informatie=$matches[1]&embed=true\";s:40:\"konijnen-informatie/([^/]+)/trackback/?$\";s:46:\"index.php?konijnen-informatie=$matches[1]&tb=1\";s:48:\"konijnen-informatie/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?konijnen-informatie=$matches[1]&paged=$matches[2]\";s:55:\"konijnen-informatie/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?konijnen-informatie=$matches[1]&cpage=$matches[2]\";s:44:\"konijnen-informatie/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?konijnen-informatie=$matches[1]&page=$matches[2]\";s:36:\"konijnen-informatie/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"konijnen-informatie/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"konijnen-informatie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"konijnen-informatie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"konijnen-informatie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"konijnen-informatie/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:5:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:45:\"secure-custom-fields/secure-custom-fields.php\";i:3;s:23:\"wordfence/wordfence.php\";i:4;s:27:\"wp-super-cache/wp-cache.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'lianne-theme', 'on'),
(42, 'stylesheet', 'lianne-theme', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:3:{s:45:\"secure-custom-fields/secure-custom-fields.php\";s:20:\"scf_plugin_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '62', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1775550895', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '1', 'off'),
(104, 'WPLANG', 'nl_NL', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente berichten</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente reacties</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archieven</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorieën</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.3\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(128, 'recovery_keys', 'a:0:{}', 'off'),
(129, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1759999100;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"105f26d5d7dfc49d83750b0b7d508659\";s:6:\"blocks\";a:10:{s:11:\"core/button\";s:216:\":root :where(.wp-block-button .wp-block-button__link){background-color: var(--wp--preset--color--primary);border-radius: 0;color: var(--wp--preset--color--background);font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:89:\":root :where(.wp-block-pullquote){border-width: 1px 0;font-size: 1.5em;line-height: 1.6;}\";s:15:\"core/post-title\";s:239:\":root :where(.wp-block-post-title){font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--gigantic);font-weight: 300;line-height: var(--wp--custom--typography--line-height--tiny);}\";s:18:\"core/post-comments\";s:86:\":root :where(.wp-block-post-comments){padding-top: var(--wp--custom--spacing--small);}\";s:16:\"core/query-title\";s:241:\":root :where(.wp-block-query-title){font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--gigantic);font-weight: 300;line-height: var(--wp--custom--typography--line-height--small);}\";s:10:\"core/quote\";s:49:\":root :where(.wp-block-quote){border-width: 1px;}\";s:15:\"core/site-title\";s:244:\":root :where(.wp-block-site-title){font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);font-style: italic;font-weight: normal;line-height: var(--wp--custom--typography--line-height--normal);}\";}}', 'on'),
(146, 'can_compress_scripts', '1', 'on'),
(159, 'finished_updating_comment_type', '1', 'auto'),
(160, 'current_theme', 'Lianne Theme', 'auto'),
(161, 'theme_mods_twentytwentytwo', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1760635690;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(162, 'theme_switched', '', 'auto'),
(165, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(166, 'recently_activated', 'a:0:{}', 'off'),
(176, 'acf_first_activated_version', '6.6.0', 'on');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(177, 'acf_site_health', '{\"version\":\"6.5.7\",\"wp_version\":\"6.8.3\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Lianne Theme\",\"version\":\"1.0\",\"theme_uri\":\"http:\\/\\/voorbeeld.com\\/\",\"stylesheet\":false},\"active_plugins\":{\"secure-custom-fields\\/secure-custom-fields.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.5.7\",\"plugin_uri\":\"https:\\/\\/developer.wordpress.org\\/secure-custom-fields\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"image\":1,\"repeater\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"4\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1759999320,\"event_first_created_field_group\":1760002262,\"event_first_created_post_type\":1760635381,\"last_updated\":1761827135}', 'off'),
(179, 'acf_version', '6.5.7', 'auto'),
(218, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":7,\"critical\":2}', 'on'),
(257, 'theme_mods_lianne-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"hoofdmenu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(261, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(382, 'new_admin_email', '240060@student.glu.nl', 'auto'),
(418, 'category_children', 'a:0:{}', 'auto'),
(585, 'ai1wm_secret_key', 'XYFYahhKPuwJ', 'auto'),
(586, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:376:\"<a href=\"http://localhost/module5.2/wordpress/wp-content/ai1wm-backups/localhost-module52-wordpress-20251102-203637-30d65e8m92kn.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-module52-wordpress-20251102-203637-30d65e8m92kn.wpress\">\n							<span>Download localhost</span>\n							<em>Size: 115 MB</em>\n							</a>\";}', 'auto'),
(604, '_site_transient_ai1wm_last_check_for_updates', '1762096018', 'off'),
(605, 'ai1wm_updater', 'a:0:{}', 'auto'),
(608, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-6.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1762115439;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:0:{}}', 'off'),
(609, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1762115440;s:7:\"checked\";a:5:{s:12:\"lianne-theme\";s:23:\"1.1 (responsive update)\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(628, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1762125626', 'off'),
(629, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:7619;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4934;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2801;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2767;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2149;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:2120;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:2083;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1963;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1684;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1650;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1621;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1559;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1516;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1515;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1498;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1361;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1345;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1275;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1179;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1162;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:1070;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:1067;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:1067;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1064;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1050;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:1050;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:1012;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:1009;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:971;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:949;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:940;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:935;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:926;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:914;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:892;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:868;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:817;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:786;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:783;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:771;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:770;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:763;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:756;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:721;}s:2:\"ai\";a:3:{s:4:\"name\";s:2:\"AI\";s:4:\"slug\";s:2:\"ai\";s:5:\"count\";i:719;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:713;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:705;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:703;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:688;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:687;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:684;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:676;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:665;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:659;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:646;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:645;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:641;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:636;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:633;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:624;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:617;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:614;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:611;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:611;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:610;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:605;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:592;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:581;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:580;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:580;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:579;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:572;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:572;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:570;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:557;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:539;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:532;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:530;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:527;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:520;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:517;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:511;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:508;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:505;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:482;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:478;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:475;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:472;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:471;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:465;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:459;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:458;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:449;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:442;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:430;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:427;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:423;}s:8:\"products\";a:3:{s:4:\"name\";s:8:\"products\";s:4:\"slug\";s:8:\"products\";s:5:\"count\";i:422;}s:13:\"gravity-forms\";a:3:{s:4:\"name\";s:13:\"gravity forms\";s:4:\"slug\";s:13:\"gravity-forms\";s:5:\"count\";i:420;}}', 'off'),
(631, '_site_transient_timeout_theme_roots', '1762116648', 'off'),
(632, '_site_transient_theme_roots', 'a:5:{s:12:\"lianne-theme\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(634, 'autoptimize_version', '3.1.13', 'auto'),
(635, 'autoptimize_ccss_version', 'AO_3.1.13', 'auto'),
(637, 'autoptimize_service_availablity', 'a:3:{s:12:\"extra_imgopt\";a:3:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:28:\"https://sp-ao.shortpixel.ai/\";}s:16:\"launch-threshold\";s:4:\"4096\";}s:7:\"critcss\";a:2:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:24:\"https://criticalcss.com/\";}}s:9:\"rapidload\";a:1:{s:6:\"status\";s:4:\"down\";}}', 'auto'),
(638, 'autoptimize_imgopt_launched', 'on', 'auto'),
(641, 'wordfence_ls_version', '1.1.15', 'auto'),
(642, 'wfls_last_role_change', '1762115023', 'off'),
(643, 'wordfence_version', '8.1.0', 'auto'),
(644, 'wordfence_case', '1', 'auto'),
(645, 'wordfence_installed', '1', 'auto'),
(646, 'wordfenceActivated', '1', 'auto'),
(647, 'wf_plugin_act_error', '', 'auto'),
(651, '_transient_timeout_wfRegistrationToken', '1762201449', 'off'),
(652, '_transient_wfRegistrationToken', 'PNAPlEOJ4DTJGMaZEutdWMHk-UBCEenG-KR449riqxQ', 'off'),
(658, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1762115441;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"7.100\";s:7:\"updated\";s:19:\"2025-08-26 07:09:22\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/all-in-one-wp-migration/7.100/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"autoptimize\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"3.1.13\";s:7:\"updated\";s:19:\"2025-08-31 11:07:56\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/autoptimize/3.1.13/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"wordfence\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"8.1.0\";s:7:\"updated\";s:19:\"2025-08-26 07:10:06\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/wordfence/8.1.0/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"wp-super-cache\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"3.0.2\";s:7:\"updated\";s:19:\"2025-10-04 11:17:33\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wp-super-cache/3.0.2/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:5:\"7.100\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.100.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3264554\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3264554\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:6:\"3.1.13\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/autoptimize.3.1.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-256X256.png?rev=2211608\";s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:45:\"secure-custom-fields/secure-custom-fields.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/secure-custom-fields\";s:4:\"slug\";s:20:\"secure-custom-fields\";s:6:\"plugin\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:11:\"new_version\";s:5:\"6.5.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/secure-custom-fields/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/secure-custom-fields.6.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";s:3:\"svg\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/secure-custom-fields/assets/banner-1544x500.jpg?rev=3194494\";s:2:\"1x\";s:75:\"https://ps.w.org/secure-custom-fields/assets/banner-772x250.jpg?rev=3194494\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"8.1.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.8.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}}s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:3:\"5.5\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:5:\"7.100\";s:27:\"autoptimize/autoptimize.php\";s:6:\"3.1.13\";s:9:\"hello.php\";s:5:\"1.7.2\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:5:\"6.5.7\";s:23:\"wordfence/wordfence.php\";s:5:\"8.1.0\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"3.0.2\";}}', 'off'),
(660, 'wp_super_cache_index_detected', '3', 'off'),
(662, 'wpsupercache_start', '1762115557', 'auto'),
(663, 'wpsupercache_count', '0', 'auto'),
(664, '_site_transient_timeout_wp_theme_files_patterns-37ac1e5223d1e66b295874e34af0bd8e', '1762117401', 'off'),
(665, '_site_transient_wp_theme_files_patterns-37ac1e5223d1e66b295874e34af0bd8e', 'a:2:{s:7:\"version\";s:23:\"1.1 (responsive update)\";s:8:\"patterns\";a:0:{}}', 'off'),
(669, '_site_transient_timeout_available_translations', '1762127639', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(670, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0.11/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.7/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-10 08:09:09\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.7/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.28/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-06-26 09:35:39\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-01 16:41:58\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-29 09:22:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-09 08:25:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-05 08:42:11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-23 11:26:14\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-28 10:25:03\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-23 12:02:03\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-02 01:30:58\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-02 01:30:03\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.8.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-28 10:25:24\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.8.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-22 13:46:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-29 13:22:09\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-08-19 23:02:24\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-05-22 11:56:25\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-08 12:55:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-21 17:41:39\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-08-19 08:40:47\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-09 03:23:24\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-02 11:18:01\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.12\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.12/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.18/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.23/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-30 21:17:40\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 22:54:47\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-02 21:15:15\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-08 01:26:01\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-05 12:26:55\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-02-14 17:29:08\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-02 18:18:37\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 04:49:09\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-25 05:20:17\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.7/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 15:38:59\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2025-10-21 16:35:04\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.8/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-29 21:50:08\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-08-29 04:27:18\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.34\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.34/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-18 08:52:05\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-18 06:36:37\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-23 03:46:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-14 17:47:58\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-03 12:44:05\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-04-14 08:02:58\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.23/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-29 19:46:21\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 23:59:20\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-31 00:26:34\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-15 12:39:47\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-27 20:51:17\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-07-15 19:11:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.0.11/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-02 08:29:40\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.7/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-08-26 17:30:52\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.17\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.17/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-09 19:23:11\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-14 15:29:10\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 07:26:29\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-15 13:45:15\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-30 13:15:15\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.8.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-03 22:11:25\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.35\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.35/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-10 08:00:47\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-10 08:01:51\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.8.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-27 23:52:28\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-27 09:09:11\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-30 19:16:19\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.18/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-13 06:23:32\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-04-24 16:58:02\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-29 11:19:02\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-04-18 09:38:51\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-23 11:49:16\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-15 10:44:57\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-06-28 12:50:48\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.12\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.12/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-10 17:38:55\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-23 11:58:31\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-10 20:06:35\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"6.8\";s:7:\"updated\";s:19:\"2025-04-18 21:10:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.18/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-09-01 09:12:13\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-01 08:48:55\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-27 07:52:03\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(671, 'wpsupercache_gc_time', '1762116840', 'auto');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1761736467:1'),
(7, 12, '_wp_attached_file', '2025/10/IMG_6238.jpg'),
(8, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1242;s:6:\"height\";i:2208;s:4:\"file\";s:20:\"2025/10/IMG_6238.jpg\";s:8:\"filesize\";i:351127;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(13, 1, '_edit_lock', '1761488293:1'),
(21, 27, '_edit_last', '1'),
(22, 27, '_edit_lock', '1761859425:1'),
(24, 29, '_edit_lock', '1761858730:1'),
(26, 29, '_edit_last', '1'),
(27, 29, 'onderwerpen_0_naam', 'Wortel'),
(28, 29, '_onderwerpen_0_naam', 'field_68f128e9747e5'),
(29, 29, 'onderwerpen_0_beschrijving', 'Dit leuke zwart met witte konijn is Wortel, hij is sinds 15 september 1 jaar en dat betekent dat hij volledig volgroeid is. Wortel is een kruising tussen waarschijnlijk een hollander en een pooltje aangezien hij een wat slankere bouw heeft en staande oren. \r\n\r\nWortel is een klein beetje verlegen dus die zal minder snel op je afkomen, behalve als je een snoepje vast hebt natuurlijk! Wortel is buiten zijn verlegenheid om wel een heel nieuwsgierig konijn, hij zal wel wat langzamer naar je toekomen om toch even te kijken hoe en wat. Wortel houd ontzettend veel van eten en naar zichzelf kijken in de spiegel! Ook houdt hij ervan om in alle kleine hoekjes en gaatjes te gaan zitten in mijn kamer.'),
(30, 29, '_onderwerpen_0_beschrijving', 'field_68f128f6747e6'),
(31, 29, 'onderwerpen_0_afbeelding', '12'),
(32, 29, '_onderwerpen_0_afbeelding', 'field_68f1295fe9880'),
(33, 29, 'onderwerpen_1_naam', 'Simba'),
(34, 29, '_onderwerpen_1_naam', 'field_68f128e9747e5'),
(35, 29, 'onderwerpen_1_beschrijving', 'Dit schattige bruine konijn is Simba! zij is ook sinds 15 september 1 jaar. De konijntjes zijn toevallig op dezelfde dag jarig ookal komen ze uit een ander nestje. Simba lijkt toch meer op een hangoor (en dan dwerd of mini-lop).\r\n\r\nSimba is een vrolijk konijn dat nergens bang voor is. Zij zal wel eerst even kijken wie je nou bent maar daarna maakt het haar niks meer uit. Simba houd ontzettend veel van eten en op ontdekkingstocht gaan, ook vind ze al mijn snoeren een erg lekkere snack. '),
(36, 29, '_onderwerpen_1_beschrijving', 'field_68f128f6747e6'),
(37, 29, 'onderwerpen_1_afbeelding', '47'),
(38, 29, '_onderwerpen_1_afbeelding', 'field_68f1295fe9880'),
(39, 29, 'onderwerpen', '2'),
(40, 29, '_onderwerpen', 'field_68e7778b7a3d6'),
(41, 30, '_edit_last', '1'),
(42, 30, '_edit_lock', '1760636596:1'),
(43, 32, '_edit_last', '1'),
(44, 32, '_edit_lock', '1760636625:1'),
(45, 33, '_edit_lock', '1760636792:1'),
(46, 33, '_edit_last', '1'),
(47, 33, 'euihdwdwau', ''),
(48, 33, '_euihdwdwau', 'field_68f12f39ab65a'),
(49, 30, '_wp_trash_meta_status', 'publish'),
(50, 30, '_wp_trash_meta_time', '1760636804'),
(51, 30, '_wp_desired_post_slug', 'group_68f12f393d5cc'),
(52, 31, '_wp_trash_meta_status', 'publish'),
(53, 31, '_wp_trash_meta_time', '1760636804'),
(54, 31, '_wp_desired_post_slug', 'field_68f12f39ab65a'),
(55, 32, '_wp_trash_meta_status', 'publish'),
(56, 32, '_wp_trash_meta_time', '1760636813'),
(57, 32, '_wp_desired_post_slug', 'post_type_68f12f46a1380'),
(58, 34, '_menu_item_type', 'custom'),
(59, 34, '_menu_item_menu_item_parent', '0'),
(60, 34, '_menu_item_object_id', '34'),
(61, 34, '_menu_item_object', 'custom'),
(62, 34, '_menu_item_target', ''),
(63, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 34, '_menu_item_xfn', ''),
(65, 34, '_menu_item_url', 'http://localhost/module5.2/wordpress/'),
(67, 35, '_menu_item_type', 'post_type'),
(68, 35, '_menu_item_menu_item_parent', '0'),
(69, 35, '_menu_item_object_id', '2'),
(70, 35, '_menu_item_object', 'page'),
(71, 35, '_menu_item_target', ''),
(72, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 35, '_menu_item_xfn', ''),
(74, 35, '_menu_item_url', ''),
(75, 35, '_menu_item_orphaned', '1760637057'),
(91, 1, '_wp_trash_meta_status', 'publish'),
(92, 1, '_wp_trash_meta_time', '1761488538'),
(93, 1, '_wp_desired_post_slug', 'hallo-wereld'),
(94, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(99, 43, '_wp_attached_file', '2025/10/duimpje.jpg'),
(100, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2025/10/duimpje.jpg\";s:8:\"filesize\";i:41824;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 46, '_wp_attached_file', '2025/10/konijnen.png'),
(105, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1170;s:6:\"height\";i:1524;s:4:\"file\";s:20:\"2025/10/konijnen.png\";s:8:\"filesize\";i:2644805;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 29, 'afbeelding', '46'),
(108, 29, '_afbeelding', 'field_68fe4c1a3253e'),
(109, 47, '_wp_attached_file', '2025/10/simba.jpg'),
(110, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:17:\"2025/10/simba.jpg\";s:8:\"filesize\";i:4040233;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 34, '_wp_old_date', '2025-10-16'),
(112, 49, '_edit_lock', '1761498122:1'),
(113, 50, '_edit_lock', '1761501791:1'),
(114, 50, '_edit_last', '1'),
(115, 50, 'afbeelding', ''),
(116, 50, '_afbeelding', 'field_68fe4c1a3253e'),
(117, 50, 'onderwerpen', ''),
(118, 50, '_onderwerpen', 'field_68e7778b7a3d6'),
(119, 50, '_wp_trash_meta_status', 'draft'),
(120, 50, '_wp_trash_meta_time', '1761501800'),
(121, 50, '_wp_desired_post_slug', ''),
(122, 51, '_edit_lock', '1761501872:1'),
(123, 52, '_edit_lock', '1761777969:1'),
(124, 53, '_wp_attached_file', '2025/10/worteleten.jpg'),
(125, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:22:\"2025/10/worteleten.jpg\";s:8:\"filesize\";i:6240229;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 54, '_wp_attached_file', '2025/10/simbaeten.png'),
(127, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:912;s:6:\"height\";i:1401;s:4:\"file\";s:21:\"2025/10/simbaeten.png\";s:8:\"filesize\";i:1482317;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 55, '_wp_attached_file', '2025/10/wortelstaan.jpg'),
(129, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1242;s:6:\"height\";i:2208;s:4:\"file\";s:23:\"2025/10/wortelstaan.jpg\";s:8:\"filesize\";i:1029076;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(130, 56, '_wp_attached_file', '2025/10/wortelstaan.png'),
(131, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:976;s:4:\"file\";s:23:\"2025/10/wortelstaan.png\";s:8:\"filesize\";i:2859732;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 57, '_wp_attached_file', '2025/10/simbazand.jpg'),
(133, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1242;s:6:\"height\";i:2208;s:4:\"file\";s:21:\"2025/10/simbazand.jpg\";s:8:\"filesize\";i:388118;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(135, 52, '_edit_last', '1'),
(136, 52, 'afbeelding', '53'),
(137, 52, '_afbeelding', 'field_68fe4c1a3253e'),
(138, 52, 'onderwerpen_0_naam', 'Groen voer voor konijnen'),
(139, 52, '_onderwerpen_0_naam', 'field_68f128e9747e5'),
(140, 52, 'onderwerpen_0_beschrijving', 'Groenvoer is een belangrijk onderdeel van het dieet van een konijn. Het zorgt niet alleen voor variatie en smakelijkheid, maar levert ook belangrijke vitaminen, mineralen en vezels die goed zijn voor de spijsvertering. Konijnen zijn van nature herbivoren en eten in het wild vooral gras, kruiden en bladeren.\r\n\r\nGoede soorten groenvoer voor konijnen zijn onder andere:\r\n\r\n1. Gras en weidekruiden – vers gras, paardenbloemblad, klaver, weegbree en smalle weegbree zijn allemaal gezond en vezelrijk.\r\n\r\n2. Bladgroenten – andijvie, witlof, peterselie, selderijblad en wortelloof zijn uitstekende keuzes.\r\n\r\n3. Kruiden – verse kruiden zoals basilicum, munt, dille en koriander zijn erg geliefd bij konijnen en bevatten veel antioxidanten.\r\n\r\n4. Groenten in beperkte hoeveelheden – bijvoorbeeld broccoli, bloemkoolblad, spinazie (niet te vaak) en koolsoorten kunnen af en toe worden gegeven.'),
(141, 52, '_onderwerpen_0_beschrijving', 'field_68f128f6747e6'),
(142, 52, 'onderwerpen_0_afbeelding', '53'),
(143, 52, '_onderwerpen_0_afbeelding', 'field_68f1295fe9880'),
(144, 52, 'onderwerpen_1_naam', 'Snoepjes voor konijnen'),
(145, 52, '_onderwerpen_1_naam', 'field_68f128e9747e5'),
(146, 52, 'onderwerpen_1_beschrijving', 'Snoepjes kunnen een leuke manier zijn om je konijn te verwennen of te belonen, maar ze moeten met mate worden gegeven. Konijnen hebben een gevoelige spijsvertering, en te veel suiker of vet kan snel leiden tot overgewicht of darmproblemen.\r\n\r\nGezonde snoepjes zijn er gelukkig genoeg! Je kunt denken aan:\r\n\r\n1. Gedroogde kruiden of bloemen zoals paardenbloem, kamille of munt.\r\n\r\n2. Kleine stukjes groente zoals wortel of pastinaak (alleen af en toe, vanwege de natuurlijke suikers).\r\n\r\n3. Vers fruit zoals appel, aardbei of een stukje banaan – maar slechts een paar keer per week en in heel kleine hoeveelheden.\r\n\r\n4. Zelfgemaakte snacks van hooi, groente en kruiden zijn vaak beter dan kant-en-klare winkelsnoepjes.\r\n\r\nLet op bij kant-en-klare konijnensnoepjes:\r\nVeel producten uit de dierenwinkel bevatten te veel suiker, honing of granen, wat slecht is voor het gebit en de darmen van je konijn. Lees daarom altijd de ingrediënten en kies voor natuurlijke snacks zonder toegevoegde suikers of kleurstoffen.'),
(147, 52, '_onderwerpen_1_beschrijving', 'field_68f128f6747e6'),
(148, 52, 'onderwerpen_1_afbeelding', '54'),
(149, 52, '_onderwerpen_1_afbeelding', 'field_68f1295fe9880'),
(150, 52, 'onderwerpen_2_naam', 'Biks voor konijnen'),
(151, 52, '_onderwerpen_2_naam', 'field_68f128e9747e5'),
(152, 52, 'onderwerpen_2_beschrijving', 'Biks, ook wel konijnenbrokjes, vormen een aanvulling op het dagelijkse dieet van een konijn. Ze zorgen ervoor dat je konijn voldoende voedingsstoffen binnenkrijgt die niet altijd in hooi of groenvoer zitten. Toch mogen biks maar een klein deel van het menu uitmaken.\r\n\r\nWat is goede biks?\r\nGoede biks bestaat uit één soort uniforme brok in plaats van een gemengde muesli. Zo kan je konijn niet alleen de lekkere stukjes eruit pikken en krijgt het steeds de juiste voedingsbalans binnen. De beste brokken zijn vezelrijk en bevatten weinig suiker en vet.\r\n\r\nHoeveel biks geef je?\r\nEen volwassen konijn heeft meestal genoeg aan ongeveer 20 gram biks per kilo lichaamsgewicht per dag. Dat lijkt niet veel, maar konijnen moeten vooral hooi eten – dat houdt hun tanden gezond en hun darmen actief.\r\n\r\nWaar moet je op letten?\r\n\r\n1. Kies biks met minstens 18% ruwe vezels.\r\n\r\n2. Vermijd merken met melasse, maïs of kleurstoffen.\r\n\r\n3. Geef het liefst biks van een betrouwbaar merk dat speciaal ontwikkeld is voor konijnen.'),
(153, 52, '_onderwerpen_2_beschrijving', 'field_68f128f6747e6'),
(154, 52, 'onderwerpen_2_afbeelding', '56'),
(155, 52, '_onderwerpen_2_afbeelding', 'field_68f1295fe9880'),
(156, 52, 'onderwerpen', '4'),
(157, 52, '_onderwerpen', 'field_68e7778b7a3d6'),
(158, 58, '_edit_lock', '1761777516:1'),
(159, 59, '_wp_attached_file', '2025/10/simbacute.jpg'),
(160, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:21:\"2025/10/simbacute.jpg\";s:8:\"filesize\";i:3657265;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 58, '_edit_last', '1'),
(163, 58, 'afbeelding', '59'),
(164, 58, '_afbeelding', 'field_68fe4c1a3253e'),
(165, 58, 'onderwerpen_0_naam', 'Het verblijf van de konijnen'),
(166, 58, '_onderwerpen_0_naam', 'field_68f128e9747e5'),
(167, 58, 'onderwerpen_0_beschrijving', 'Mijn konijnen leven sindskort samen met mij op mijn kamer, ze hebben het eerste jaar van hun leven in een prachtig hok in onze tuin. Nu hebben ze in de hoek van mijn kamer een mooi vast hok van 3 bij 2 vierkante meter. Buiten dat lopen ze ook los in mijn kamer maar kunnen ze zich altijd terug trekken naar hun vaste hokje.'),
(168, 58, '_onderwerpen_0_beschrijving', 'field_68f128f6747e6'),
(169, 58, 'onderwerpen_0_afbeelding', '60'),
(170, 58, '_onderwerpen_0_afbeelding', 'field_68f1295fe9880'),
(171, 58, 'onderwerpen', '1'),
(172, 58, '_onderwerpen', 'field_68e7778b7a3d6'),
(173, 60, '_wp_attached_file', '2025/10/wortelslaap.jpg'),
(174, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:23:\"2025/10/wortelslaap.jpg\";s:8:\"filesize\";i:699108;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(177, 62, '_wp_attached_file', '2025/10/pixil-frame-0-5.jpg'),
(178, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2025/10/pixil-frame-0-5.jpg\";s:8:\"filesize\";i:14782;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 34, '_wp_old_date', '2025-10-26'),
(192, 65, '_wp_attached_file', '2025/10/simbahooi.jpg'),
(193, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:923;s:6:\"height\";i:1347;s:4:\"file\";s:21:\"2025/10/simbahooi.jpg\";s:8:\"filesize\";i:136650;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(195, 52, 'onderwerpen_3_naam', 'Hooi en stro voor konijnen'),
(196, 52, '_onderwerpen_3_naam', 'field_68f128e9747e5'),
(197, 52, 'onderwerpen_3_beschrijving', 'Hooi is het belangrijkste onderdeel van het dieet van een konijn. Het zorgt voor een gezonde spijsvertering en helpt om de tanden, die blijven doorgroeien, op een natuurlijke manier af te slijten. Konijnen moeten de hele dag door toegang hebben tot vers hooi – het is hun “hoofdmaaltijd”.\r\n\r\nSoorten hooi\r\nEr bestaan verschillende soorten hooi, zoals weidehooi, timothyhooi (Engels raaigras), en kruidenhooi.\r\n\r\n1. Weidehooi is een natuurlijke mix van grassen en kruiden en erg geschikt voor dagelijks gebruik.\r\n\r\n2. Timothyhooi is vezelrijk en wordt vaak aangeraden voor konijnen met gevoelige darmen.\r\n\r\n3. Kruidenhooi ruikt heerlijk en is een lekkere afwisseling, maar geef het niet als enige soort hooi.\r\n\r\nStro, daarentegen, is geen voer, maar wordt gebruikt als bodem- en nestmateriaal. Het is droog, isolerend en houdt je konijn lekker warm, vooral in de winter. Konijnen kunnen er gerust een beetje van knabbelen, maar het bevat nauwelijks voedingswaarde.'),
(198, 52, '_onderwerpen_3_beschrijving', 'field_68f128f6747e6'),
(199, 52, 'onderwerpen_3_afbeelding', '65'),
(200, 52, '_onderwerpen_3_afbeelding', 'field_68f1295fe9880'),
(201, 66, '_edit_lock', '1761736437:1'),
(202, 34, '_wp_old_date', '2025-10-28'),
(206, 58, '_acf_changed', '1'),
(214, 52, '_acf_changed', '1'),
(222, 29, '_acf_changed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-10-09 08:34:55', '2025-10-09 08:34:55', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'trash', 'open', 'open', '', 'hallo-wereld__trashed', '', '', '2025-10-26 14:22:18', '2025-10-26 14:22:18', '', 0, 'http://localhost/module5.2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2025-10-09 08:34:55', '2025-10-09 08:34:55', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële site bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hoi daar! Ik ben een fietskoerier in het dagelijks leven en een beginnende acteur in de avonduren, en dit is mijn site. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve doohickeys aan het publiek geleverd. Gevestigd in Gotham City, heeft XYZ meer dan 2000 mensen in dienst en doet allerlei fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://localhost/module5.2/wordpress/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je inhoud. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'publish', 'closed', 'open', '', 'voorbeeld-pagina', '', '', '2025-10-09 08:34:55', '2025-10-09 08:34:55', '', 0, 'http://localhost/module5.2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-10-09 08:34:55', '2025-10-09 08:34:55', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Wie zijn we</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Ons site adres is: http://localhost/module5.2/wordpress.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Reacties</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als bezoekers reacties achterlaten op de site, verzamelen we de gegevens getoond in het reacties formulier, het IP-adres van de bezoeker en de browser user agent string om te helpen spam te detecteren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina van de Gravatar dienst kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je afbeeldingen naar de site uploadt, moet je het uploaden van afbeeldingen met daarin ingesloten locatiegegevens (EXIF GPS) vermijden. Bezoekers van de site kunnen alle locatiegegevens van afbeeldingen op de site downloaden en extraheren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat op onze site, kun je aangeven of je naam, je e-mailadres en site in een cookie opgeslagen mogen worden. Dit doen we voor je gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Indien je onze inlogpagina bezoekt, slaan we een tijdelijke cookie op om te controleren of je browser cookies accepteert. Deze cookie bevat geen persoonlijke gegevens en wordt verwijderd zodra je je browser sluit.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Wanneer je inlogt, zullen we ook een aantal cookies instellen om je login informatie en je schermweergave keuzes op te slaan. Login cookies gaan twee dagen mee en scherminstellingen cookies gaan een jaar mee. Als je \"Herinner mij\", selecteert, blijft je login twee weken bewaard. Als je uitlogt uit je account, worden de login cookies verwijderd.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonsgegevens en heeft enkel het bericht ID van het artikel wat je hebt bewerkt in zich. Deze cookie is na een dag verlopen.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Ingesloten inhoud van andere sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Berichten op deze site kunnen ingesloten inhoud bevatten (bijvoorbeeld video\'s, afbeeldingen, berichten, enz.). Ingesloten inhoud van andere sites gedraagt zich exact hetzelfde alsof de bezoeker deze andere site heeft bezocht.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Deze sites kunnen gegevens over je verzamelen, cookies gebruiken, extra tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief het vastleggen van de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Met wie we je gegevens delen</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een wachtwoord reset aanvraagt, wordt je IP-adres opgenomen in de reset e-mail.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hoelang we je gegevens bewaren</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolg reacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Voor gebruikers die zich op onze site registreren (indien aanwezig), slaan we ook de persoonlijke informatie op die ze verstrekken in hun gebruikersprofiel. Alle gebruikers kunnen op ieder moment hun persoonlijke informatie bekijken, bewerken of verwijderen (behalve dat ze hun gebruikersnaam niet kunnen wijzigen). Sitebeheerders kunnen deze informatie ook bekijken en bewerken.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Welke rechten je hebt over je gegevens</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een account hebt op deze site of je hebt reacties achtergelaten, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons opgegeven hebt. Je kan ook verzoeken dat we alle persoonlijke gegevens die we van je hebben wissen. Dit is exclusief alle gegevens die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligings doeleinden.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Waar je gegevens naar toe worden gezonden</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Mogelijk worden reacties van bezoekers gecontroleerd via een geautomatiseerde spamdetectie service.</p>\n<!-- /wp:paragraph -->\n', 'Privacybeleid', '', 'draft', 'closed', 'open', '', 'privacybeleid', '', '', '2025-10-09 08:34:55', '2025-10-09 08:34:55', '', 0, 'http://localhost/module5.2/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-10-09 08:35:10', '2025-10-09 08:35:10', '<!-- wp:page-list /-->', 'Navigatie', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-10-09 08:35:10', '2025-10-09 08:35:10', '', 0, 'http://localhost/module5.2/wordpress/2025/10/09/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2025-10-09 09:31:02', '2025-10-09 09:31:02', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"konijnen-informatie\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'info konijnen', 'info-konijnen', 'publish', 'closed', 'closed', '', 'group_68e7778b44818', '', '', '2025-10-26 16:28:42', '2025-10-26 16:28:42', '', 0, 'http://localhost/module5.2/wordpress/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2025-10-09 09:31:02', '2025-10-09 09:31:02', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Onderwerpen', 'onderwerpen', 'publish', 'closed', 'closed', '', 'field_68e7778b7a3d6', '', '', '2025-10-26 16:28:42', '2025-10-26 16:28:42', '', 6, 'http://localhost/module5.2/wordpress/?post_type=acf-field&#038;p=7', 1, 'acf-field', '', 0),
(10, 1, '2025-10-09 09:37:33', '2025-10-09 09:37:33', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2025-10-09 09:37:33', '2025-10-09 09:37:33', '', 0, 'http://localhost/module5.2/wordpress/?p=10', 0, 'wp_global_styles', '', 0),
(12, 1, '2025-10-09 09:41:33', '2025-10-09 09:41:33', '', 'IMG_6238', '', 'inherit', 'open', 'closed', '', 'img_6238', '', '', '2025-10-16 17:24:47', '2025-10-16 17:24:47', '', 29, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/IMG_6238.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2025-10-16 17:19:02', '2025-10-16 17:19:02', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Naam', 'naam', 'publish', 'closed', 'closed', '', 'field_68f128e9747e5', '', '', '2025-10-16 17:19:02', '2025-10-16 17:19:02', '', 7, 'http://localhost/module5.2/wordpress/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2025-10-16 17:19:02', '2025-10-16 17:19:02', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Beschrijving', 'beschrijving', 'publish', 'closed', 'closed', '', 'field_68f128f6747e6', '', '', '2025-10-16 18:02:25', '2025-10-16 18:02:25', '', 7, 'http://localhost/module5.2/wordpress/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(24, 1, '2025-10-16 17:20:44', '2025-10-16 17:20:44', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Afbeelding', 'afbeelding', 'publish', 'closed', 'closed', '', 'field_68f1295fe9880', '', '', '2025-10-16 17:20:44', '2025-10-16 17:20:44', '', 7, 'http://localhost/module5.2/wordpress/?post_type=acf-field&p=24', 2, 'acf-field', '', 0),
(27, 1, '2025-10-16 17:23:01', '2025-10-16 17:23:01', 'a:35:{s:9:\"post_type\";s:19:\"konijnen-informatie\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:19:\"Konijnen informatie\";s:13:\"singular_name\";s:19:\"Konijnen informatie\";s:9:\"menu_name\";s:19:\"Konijnen informatie\";s:9:\"all_items\";s:24:\"Alle Konijnen informatie\";s:9:\"edit_item\";s:28:\"Konijnen informatie bewerken\";s:9:\"view_item\";s:28:\"Konijnen informatie bekijken\";s:10:\"view_items\";s:28:\"Konijnen informatie bekijken\";s:12:\"add_new_item\";s:23:\"Add Konijnen informatie\";s:7:\"add_new\";s:23:\"Add Konijnen informatie\";s:8:\"new_item\";s:25:\"Nieuw Konijnen informatie\";s:17:\"parent_item_colon\";s:26:\"Hoofd Konijnen informatie:\";s:12:\"search_items\";s:26:\"Konijnen informatie zoeken\";s:9:\"not_found\";s:33:\"Geen konijnen informatie gevonden\";s:18:\"not_found_in_trash\";s:50:\"Geen konijnen informatie gevonden in de prullenbak\";s:8:\"archives\";s:29:\"Konijnen informatie archieven\";s:10:\"attributes\";s:30:\"Konijnen informatie attributen\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:31:\"Invoegen in konijnen informatie\";s:21:\"uploaded_to_this_item\";s:39:\"Geüpload naar deze konijnen informatie\";s:17:\"filter_items_list\";s:32:\"Filter konijnen informatie lijst\";s:14:\"filter_by_date\";s:35:\"Filter konijnen informatie op datum\";s:21:\"items_list_navigation\";s:35:\"Konijnen informatie lijst navigatie\";s:10:\"items_list\";s:25:\"Konijnen informatie lijst\";s:14:\"item_published\";s:33:\"Konijnen informatie gepubliceerd.\";s:24:\"item_published_privately\";s:40:\"Konijnen informatie privé gepubliceerd.\";s:22:\"item_reverted_to_draft\";s:48:\"Konijnen informatie teruggezet naar het concept.\";s:14:\"item_scheduled\";s:28:\"Konijnen informatie gepland.\";s:12:\"item_updated\";s:31:\"Konijnen informatie geüpdatet.\";s:9:\"item_link\";s:24:\"Konijnen informatie link\";s:21:\"item_link_description\";s:38:\"Een link naar een konijnen informatie.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:16:\"dashicons-carrot\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:1;s:16:\"has_archive_slug\";s:19:\"konijnen-informatie\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Konijnen informatie', 'konijnen-informatie', 'publish', 'closed', 'closed', '', 'post_type_68f129d097157', '', '', '2025-10-28 10:10:56', '2025-10-28 10:10:56', '', 0, 'http://localhost/module5.2/wordpress/?post_type=acf-post-type&#038;p=27', 0, 'acf-post-type', '', 0),
(29, 1, '2025-10-16 17:24:46', '2025-10-16 17:24:46', '<!-- wp:paragraph -->\n<p>In deze blog maak je kennis met twee schattige huisgenoten met ieder hun eigen unieke persoonlijkheid én charme: Simba en Wortel. Simba is de nieuwsgierige ontdekkingsreiziger van het duo. Altijd op pad, altijd op zoek naar iets nieuws om te verkennen — of het nu een nieuwe hoek van de kamer is of het geritsel van een zak met snacks. Zijn energie en speelse karakter brengen leven in huis, en zijn grote ogen lijken voortdurend te vragen: <em>“Wat doen we nu?”</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wortel daarentegen is de rustige tegenhanger van Simba. Een echte knuffelkoning met een hart van goud, die liever kiest voor een comfortabel plekje op het kleed dan een wilde ontdekkingstocht. Hij geniet van aandacht, zachte aaitjes en de eenvoudige dingen in het leven. Waar Simba zorgt voor avontuur, brengt Wortel rust — samen vormen ze een evenwichtig en onweerstaanbaar duo dat elke dag een beetje vrolijker maakt.</p>\n<!-- /wp:paragraph -->', 'Wie ze zijn?', '', 'publish', 'closed', 'closed', '', 'wie-zijn-ze', '', '', '2025-10-29 23:04:28', '2025-10-29 23:04:28', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&#038;p=29', 0, 'konijnen-informatie', '', 0),
(30, 1, '2025-10-16 17:45:37', '2025-10-16 17:45:37', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"tom-test\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'test', 'test', 'trash', 'closed', 'closed', '', 'group_68f12f393d5cc__trashed', '', '', '2025-10-16 17:46:44', '2025-10-16 17:46:44', '', 0, 'http://localhost/module5.2/wordpress/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2025-10-16 17:45:37', '2025-10-16 17:45:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'euihdwdwau', 'euihdwdwau', 'trash', 'closed', 'closed', '', 'field_68f12f39ab65a__trashed', '', '', '2025-10-16 17:46:44', '2025-10-16 17:46:44', '', 30, 'http://localhost/module5.2/wordpress/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2025-10-16 17:45:58', '2025-10-16 17:45:58', 'a:35:{s:9:\"post_type\";s:8:\"tom-test\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:11:\"Toms Testen\";s:13:\"singular_name\";s:8:\"Tom test\";s:9:\"menu_name\";s:11:\"Toms Testen\";s:9:\"all_items\";s:16:\"Alle Toms Testen\";s:9:\"edit_item\";s:17:\"Tom test bewerken\";s:9:\"view_item\";s:17:\"Tom test bekijken\";s:10:\"view_items\";s:20:\"Toms Testen bekijken\";s:12:\"add_new_item\";s:12:\"Add Tom test\";s:7:\"add_new\";s:12:\"Add Tom test\";s:8:\"new_item\";s:14:\"Nieuw Tom test\";s:17:\"parent_item_colon\";s:15:\"Hoofd Tom test:\";s:12:\"search_items\";s:18:\"Toms Testen zoeken\";s:9:\"not_found\";s:25:\"Geen toms testen gevonden\";s:18:\"not_found_in_trash\";s:42:\"Geen toms testen gevonden in de prullenbak\";s:8:\"archives\";s:18:\"Tom test archieven\";s:10:\"attributes\";s:19:\"Tom test attributen\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:20:\"Invoegen in tom test\";s:21:\"uploaded_to_this_item\";s:28:\"Geüpload naar deze tom test\";s:17:\"filter_items_list\";s:24:\"Filter toms testen lijst\";s:14:\"filter_by_date\";s:27:\"Filter toms testen op datum\";s:21:\"items_list_navigation\";s:27:\"Toms Testen lijst navigatie\";s:10:\"items_list\";s:17:\"Toms Testen lijst\";s:14:\"item_published\";s:22:\"Tom test gepubliceerd.\";s:24:\"item_published_privately\";s:29:\"Tom test privé gepubliceerd.\";s:22:\"item_reverted_to_draft\";s:37:\"Tom test teruggezet naar het concept.\";s:14:\"item_scheduled\";s:17:\"Tom test gepland.\";s:12:\"item_updated\";s:20:\"Tom test geüpdatet.\";s:9:\"item_link\";s:13:\"Tom test link\";s:21:\"item_link_description\";s:27:\"Een link naar een tom test.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:20:\"dashicons-admin-post\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Toms Testen', 'toms-testen', 'trash', 'closed', 'closed', '', 'post_type_68f12f46a1380__trashed', '', '', '2025-10-16 17:46:53', '2025-10-16 17:46:53', '', 0, 'http://localhost/module5.2/wordpress/?post_type=acf-post-type&#038;p=32', 0, 'acf-post-type', '', 0),
(33, 1, '2025-10-16 17:46:17', '2025-10-16 17:46:17', '', 'dwhbvdwuauvdw', '', 'publish', 'closed', 'closed', '', 'dwhbvdwuauvdw', '', '', '2025-10-16 17:46:18', '2025-10-16 17:46:18', '', 0, 'http://localhost/module5.2/wordpress/?post_type=tom-test&#038;p=33', 0, 'tom-test', '', 0),
(34, 1, '2025-10-29 11:23:06', '2025-10-16 17:51:54', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-10-29 11:23:06', '2025-10-29 11:23:06', '', 0, 'http://localhost/module5.2/wordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2025-10-16 17:50:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-16 17:50:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/module5.2/wordpress/?p=35', 1, 'nav_menu_item', '', 0),
(40, 1, '2025-10-26 14:22:18', '2025-10-26 14:22:18', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-10-26 14:22:18', '2025-10-26 14:22:18', '', 1, 'http://localhost/module5.2/wordpress/?p=40', 0, 'revision', '', 0),
(43, 1, '2025-10-26 14:39:24', '2025-10-26 14:39:24', '', 'duimpje', '', 'inherit', 'open', 'closed', '', 'duimpje', '', '', '2025-10-26 14:39:24', '2025-10-26 14:39:24', '', 0, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/duimpje.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2025-10-26 16:28:42', '2025-10-26 16:28:42', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Afbeelding', 'afbeelding', 'publish', 'closed', 'closed', '', 'field_68fe4c1a3253e', '', '', '2025-10-26 16:28:42', '2025-10-26 16:28:42', '', 6, 'http://localhost/module5.2/wordpress/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2025-10-26 16:29:12', '2025-10-26 16:29:12', '', 'konijnen', '', 'inherit', 'open', 'closed', '', 'konijnen', '', '', '2025-10-26 16:29:12', '2025-10-26 16:29:12', '', 29, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/konijnen.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2025-10-26 16:56:01', '2025-10-26 16:56:01', '', 'simba', '', 'inherit', 'open', 'closed', '', 'simba', '', '', '2025-10-26 16:56:01', '2025-10-26 16:56:01', '', 29, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/simba.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2025-10-26 17:02:06', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-26 17:02:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/module5.2/wordpress/?post_type=acf-post-type&p=48', 0, 'acf-post-type', '', 0),
(49, 1, '2025-10-26 17:04:21', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-26 17:04:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&p=49', 0, 'konijnen-informatie', '', 0),
(50, 1, '2025-10-26 18:03:20', '2025-10-26 18:03:20', '', 'Dieet', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-10-26 18:03:20', '2025-10-26 18:03:20', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&#038;p=50', 0, 'konijnen-informatie', '', 0),
(51, 1, '2025-10-26 18:04:11', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-26 18:04:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&p=51', 0, 'konijnen-informatie', '', 0),
(52, 1, '2025-10-26 18:32:20', '2025-10-26 18:32:20', '<!-- wp:paragraph -->\n<p>In deze blog duiken we in het favoriete onderwerp van Simba en Wortel: eten! Simba, de kleine fijnproever, staat altijd vooraan als er iets knispert in de keuken – vooral als het naar groente of een lekker snoepje ruikt. Wortel daarentegen pakt het wat rustiger aan; hij geniet het liefst van een frisse hand hooi en sappige blaadjes sla, op zijn gemakje natuurlijk. Samen maken ze van elke maaltijd een gezellig moment vol gesnuffel, geknabbel en tevreden geluidjes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Dieet', '', 'publish', 'closed', 'closed', '', 'dieet', '', '', '2025-10-29 22:44:55', '2025-10-29 22:44:55', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&#038;p=52', 0, 'konijnen-informatie', '', 0),
(53, 1, '2025-10-26 18:24:21', '2025-10-26 18:24:21', '', 'worteleten', '', 'inherit', 'open', 'closed', '', 'worteleten', '', '', '2025-10-26 18:24:21', '2025-10-26 18:24:21', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/worteleten.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2025-10-26 18:25:17', '2025-10-26 18:25:17', '', 'simbaeten', '', 'inherit', 'open', 'closed', '', 'simbaeten', '', '', '2025-10-26 18:25:17', '2025-10-26 18:25:17', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/simbaeten.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2025-10-26 18:27:13', '2025-10-26 18:27:13', '', 'wortelstaan', '', 'inherit', 'open', 'closed', '', 'wortelstaan', '', '', '2025-10-26 18:27:13', '2025-10-26 18:27:13', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/wortelstaan.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2025-10-26 18:29:09', '2025-10-26 18:29:09', '', 'wortelstaan', '', 'inherit', 'open', 'closed', '', 'wortelstaan-2', '', '', '2025-10-26 18:29:09', '2025-10-26 18:29:09', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/wortelstaan.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2025-10-26 18:32:02', '2025-10-26 18:32:02', '', 'simbazand', '', 'inherit', 'open', 'closed', '', 'simbazand', '', '', '2025-10-26 18:32:02', '2025-10-26 18:32:02', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/simbazand.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2025-10-26 18:47:51', '2025-10-26 18:47:51', '<!-- wp:paragraph -->\n<p>In deze blog ontdek je hoe Simba en Wortel hun dagen doorbrengen. Simba is altijd onderweg – zij springt, snuffelt en verkent elke hoek alsof het een nieuw avontuur is. Geen kartonnen doos of tunnel blijft onontdekt! Wortel daarentegen houdt van rust en regelmaat. Hij geniet van lange dutjes, zachte dekentjes en rustige momenten naast zijn maatje. Samen vormen ze de perfecte balans tussen actie en ontspanning – een duo dat laat zien dat er niet één manier is om gelukkig te zijn.</p>\n<!-- /wp:paragraph -->', 'Leefstijl', '', 'publish', 'closed', 'closed', '', 'leefstijl', '', '', '2025-10-29 12:55:12', '2025-10-29 12:55:12', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&#038;p=58', 0, 'konijnen-informatie', '', 0),
(59, 1, '2025-10-26 18:45:46', '2025-10-26 18:45:46', '', 'simbacute', '', 'inherit', 'open', 'closed', '', 'simbacute', '', '', '2025-10-26 18:45:46', '2025-10-26 18:45:46', '', 58, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/simbacute.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2025-10-26 18:49:14', '2025-10-26 18:49:14', '', 'wortelslaap', '', 'inherit', 'open', 'closed', '', 'wortelslaap', '', '', '2025-10-26 18:49:14', '2025-10-26 18:49:14', '', 58, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/wortelslaap.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2025-10-27 09:41:54', '2025-10-27 09:41:54', '', 'pixil-frame-0 (5)', '', 'inherit', 'open', 'closed', '', 'pixil-frame-0-5', '', '', '2025-10-27 09:41:54', '2025-10-27 09:41:54', '', 0, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/pixil-frame-0-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2025-10-29 10:54:53', '2025-10-29 10:54:53', '', 'simbahooi', '', 'inherit', 'open', 'closed', '', 'simbahooi', '', '', '2025-10-29 10:54:53', '2025-10-29 10:54:53', '', 52, 'http://localhost/module5.2/wordpress/wp-content/uploads/2025/10/simbahooi.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2025-10-29 11:16:19', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 11:16:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/module5.2/wordpress/?post_type=konijnen-informatie&p=66', 0, 'konijnen-informatie', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Niet gecategoriseerd', 'niet-gecategoriseerd', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'hoofdmenu', 'hoofdmenu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(34, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ca00bf8b41c675dae2652f70c9bedcf53c82ad34fdb4d40dcc06fdcc14d0d000\";a:4:{s:10:\"expiration\";i:1762694872;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\";s:5:\"login\";i:1761485272;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:0:\"\";s:4:\"side\";s:100:\"dashboard_right_now,dashboard_activity,dashboard_site_health,dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(21, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:350;}s:9:\"_modified\";s:24:\"2025-10-26T18:04:15.299Z\";}'),
(22, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:23:\"acf-group_68e7778b44818\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings', 'libraryContent=browse'),
(27, 1, 'wp_user-settings', 'libraryContent=browse'),
(28, 1, 'wp_user-settings', 'libraryContent=browse'),
(29, 1, 'wp_user-settings-time', '1760517091'),
(30, 1, 'wp_user-settings-time', '1760517091'),
(31, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(32, 1, 'acf_user_settings', 'a:3:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;s:23:\"options-pages-first-run\";b:1;}'),
(33, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(34, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(35, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(36, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(37, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(38, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(39, 1, 'nav_menu_recently_edited', '3'),
(40, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$2y$10$Swn7EK7MOqxcQdW0VlEiJ.VKQ1fZ12pW.J9286o8HUx8wiVF4tqcG', 'admin', '240060@student.glu.nl', 'http://localhost/module5.2/wordpress', '2025-10-09 08:34:55', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfauditevents`
--

CREATE TABLE `wp_wfauditevents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `event_time` double(14,4) NOT NULL,
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `state` enum('new','sending','sent') NOT NULL DEFAULT 'new',
  `state_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3a3a31, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', 0x746f6d666976656d353040676d61696c2e636f6d, 'yes'),
('alertFreqTrack', 0x613a303a7b7d, 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x35, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('allScansScheduled', 0x613a323a7b693a303b613a323a7b733a393a2274696d657374616d70223b693a313736323336313331323b733a343a2261726773223b613a313a7b693a303b693a313736323336313331323b7d7d693a313b613a323a7b733a393a2274696d657374616d70223b693a313736323632303531323b733a343a2261726773223b613a313a7b693a303b693a313736323632303531323b7d7d7d, 'yes'),
('apiKey', 0x64363030396132343631653433323663303439366537666464323939666265633538653831376634653537326439643430376635336332623663343364363730333535316333666366653564353961313831626463306363653131616266383035326363363065383538656236396538353465343836626463616266393738643965386237656165336131616139356261383363396135643464306131313639, 'yes'),
('auditLogMode', 0x64656661756c74, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('autoUpdateChoice', 0x31, 'yes'),
('bannedURLs', '', 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', 0x333030, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x36393037626464323734666533, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('currentCronKey', '', 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313736323131313632343b733a333a22746466223b613a333a7b733a393a22636f6d6d756e697479223b693a373038343b733a373a227072656d69756d223b693a373132373b733a393a22626c61636b6c697374223b693a393138353b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313736323032333630303b733a313a2263223b693a383534303038313b7d693a313b613a323a7b733a313a2274223b693a313736323032373230303b733a313a2263223b693a383535343432363b7d693a323b613a323a7b733a313a2274223b693a313736323033303830303b733a313a2263223b693a383335303535343b7d693a333b613a323a7b733a313a2274223b693a313736323033343430303b733a313a2263223b693a383433363539303b7d693a343b613a323a7b733a313a2274223b693a313736323033383030303b733a313a2263223b693a383638353139333b7d693a353b613a323a7b733a313a2274223b693a313736323034313630303b733a313a2263223b693a383834303431353b7d693a363b613a323a7b733a313a2274223b693a313736323034353230303b733a313a2263223b693a393036383238313b7d693a373b613a323a7b733a313a2274223b693a313736323034383830303b733a313a2263223b693a383932323035303b7d693a383b613a323a7b733a313a2274223b693a313736323035323430303b733a313a2263223b693a383630393731303b7d693a393b613a323a7b733a313a2274223b693a313736323035363030303b733a313a2263223b693a383837353434333b7d693a31303b613a323a7b733a313a2274223b693a313736323035393630303b733a313a2263223b693a393132373632333b7d693a31313b613a323a7b733a313a2274223b693a313736323036333230303b733a313a2263223b693a393031383436343b7d693a31323b613a323a7b733a313a2274223b693a313736323036363830303b733a313a2263223b693a393031363239323b7d693a31333b613a323a7b733a313a2274223b693a313736323037303430303b733a313a2263223b693a393232323339343b7d693a31343b613a323a7b733a313a2274223b693a313736323037343030303b733a313a2263223b693a393233353236383b7d693a31353b613a323a7b733a313a2274223b693a313736323037373630303b733a313a2263223b693a383436363437303b7d693a31363b613a323a7b733a313a2274223b693a313736323038313230303b733a313a2263223b693a31353135373635343b7d693a31373b613a323a7b733a313a2274223b693a313736323038343830303b733a313a2263223b693a31353430313030333b7d693a31383b613a323a7b733a313a2274223b693a313736323038383430303b733a313a2263223b693a31343631333932363b7d693a31393b613a323a7b733a313a2274223b693a313736323039323030303b733a313a2263223b693a383830353939313b7d693a32303b613a323a7b733a313a2274223b693a313736323039353630303b733a313a2263223b693a383936383438333b7d693a32313b613a323a7b733a313a2274223b693a313736323039393230303b733a313a2263223b693a383932353736373b7d693a32323b613a323a7b733a313a2274223b693a313736323130323830303b733a313a2263223b693a393532373236363b7d693a32333b613a323a7b733a313a2274223b693a313736323130363430303b733a313a2263223b693a393839333432313b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313736313433363830303b733a313a2263223b693a3137323635383839343b7d693a313b613a323a7b733a313a2274223b693a313736313532333230303b733a313a2263223b693a3136323239303631383b7d693a323b613a323a7b733a313a2274223b693a313736313630393630303b733a313a2263223b693a3136303438353633383b7d693a333b613a323a7b733a313a2274223b693a313736313639363030303b733a313a2263223b693a3135393536323935363b7d693a343b613a323a7b733a313a2274223b693a313736313738323430303b733a313a2263223b693a3138383333343931323b7d693a353b613a323a7b733a313a2274223b693a313736313836383830303b733a313a2263223b693a3232393133353734353b7d693a363b613a323a7b733a313a2274223b693a313736313935353230303b733a313a2263223b693a3230333631383830363b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313735393434393630303b733a313a2263223b693a3133313030323336353b7d693a313b613a323a7b733a313a2274223b693a313735393533363030303b733a313a2263223b693a3132363135323931333b7d693a323b613a323a7b733a313a2274223b693a313735393632323430303b733a313a2263223b693a3137353937343434333b7d693a333b613a323a7b733a313a2274223b693a313735393730383830303b733a313a2263223b693a3137333837373333373b7d693a343b613a323a7b733a313a2274223b693a313735393739353230303b733a313a2263223b693a3235383137353534393b7d693a353b613a323a7b733a313a2274223b693a313735393838313630303b733a313a2263223b693a3236393533373534353b7d693a363b613a323a7b733a313a2274223b693a313735393936383030303b733a313a2263223b693a3232303331323537393b7d693a373b613a323a7b733a313a2274223b693a313736303035343430303b733a313a2263223b693a3139343039343030333b7d693a383b613a323a7b733a313a2274223b693a313736303134303830303b733a313a2263223b693a3133393435303236363b7d693a393b613a323a7b733a313a2274223b693a313736303232373230303b733a313a2263223b693a3133383138323739353b7d693a31303b613a323a7b733a313a2274223b693a313736303331333630303b733a313a2263223b693a3136303335353335363b7d693a31313b613a323a7b733a313a2274223b693a313736303430303030303b733a313a2263223b693a3136303832343439343b7d693a31323b613a323a7b733a313a2274223b693a313736303438363430303b733a313a2263223b693a3138363231323135313b7d693a31333b613a323a7b733a313a2274223b693a313736303537323830303b733a313a2263223b693a3231343932343531363b7d693a31343b613a323a7b733a313a2274223b693a313736303635393230303b733a313a2263223b693a3138393234363832323b7d693a31353b613a323a7b733a313a2274223b693a313736303734353630303b733a313a2263223b693a3138313636343436333b7d693a31363b613a323a7b733a313a2274223b693a313736303833323030303b733a313a2263223b693a3138373837323434393b7d693a31373b613a323a7b733a313a2274223b693a313736303931383430303b733a313a2263223b693a3139333236373535333b7d693a31383b613a323a7b733a313a2274223b693a313736313030343830303b733a313a2263223b693a3137343230353132303b7d693a31393b613a323a7b733a313a2274223b693a313736313039313230303b733a313a2263223b693a3136303837373131303b7d693a32303b613a323a7b733a313a2274223b693a313736313137373630303b733a313a2263223b693a3137303930393233323b7d693a32313b613a323a7b733a313a2274223b693a313736313236343030303b733a313a2263223b693a3230353835393031303b7d693a32323b613a323a7b733a313a2274223b693a313736313335303430303b733a313a2263223b693a3231333539323537323b7d693a32333b613a323a7b733a313a2274223b693a313736313433363830303b733a313a2263223b693a3137323635383839343b7d693a32343b613a323a7b733a313a2274223b693a313736313532333230303b733a313a2263223b693a3136323239303631383b7d693a32353b613a323a7b733a313a2274223b693a313736313630393630303b733a313a2263223b693a3136303438353633383b7d693a32363b613a323a7b733a313a2274223b693a313736313639363030303b733a313a2263223b693a3135393536323935363b7d693a32373b613a323a7b733a313a2274223b693a313736313738323430303b733a313a2263223b693a3138383333343931323b7d693a32383b613a323a7b733a313a2274223b693a313736313836383830303b733a313a2263223b693a3232393133353734353b7d693a32393b613a323a7b733a313a2274223b693a313736313935353230303b733a313a2263223b693a3230333631383830363b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a3635353535383734303b7d693a313b613a323a7b733a323a226364223b733a323a224e4c223b733a323a226374223b693a3235363338333737333b7d693a323b613a323a7b733a323a226364223b733a323a225347223b733a323a226374223b693a3139353730303739383b7d693a333b613a323a7b733a323a226364223b733a323a224445223b733a323a226374223b693a3138313938383537313b7d693a343b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a3133343233363731383b7d693a353b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a3130353436393539353b7d693a363b613a323a7b733a323a226364223b733a323a224742223b733a323a226374223b693a38343330323633393b7d693a373b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a37343538343438323b7d693a383b613a323a7b733a323a226364223b733a323a22564e223b733a323a226374223b693a35373830323037353b7d693a393b613a323a7b733a323a226364223b733a323a224944223b733a323a226374223b693a34303939383231363b7d7d7d7d, 'no'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2262383737306430366563623261353636393364356232343061353436366632663038333232656630323662353037643363343433643262326139616538623031223b7d, 'no'),
('dbVersion', 0x31302e342e33322d4d617269614442, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31373632373139383235, 'no'),
('detectProxyNonce', 0x62373764656334303764383531366138313536336166663236613835363663363866613262336434323864393430343235666664366538373533366234376638, 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x31, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelAuditLog', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('enableRemoteIpLookup', 0x31, 'yes'),
('encKey', 0x38303039643238356362313664656539, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('hasKeyConflict', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('howGetIPs_trusted_proxy_preset', '', 'yes'),
('ipResolutionList', 0x7b22636c6f756466726f6e74223a7b226e616d65223a22416d617a6f6e20436c6f756446726f6e74222c2269707634223a5b223132302e35322e32322e39365c2f3237222c223230352e3235312e3234392e305c2f3234222c223138302e3136332e35372e3132385c2f3236222c223230342e3234362e3136382e305c2f3232222c223131312e31332e3137312e3132385c2f3236222c2231382e3136302e302e305c2f3135222c223230352e3235312e3235322e305c2f3233222c2235342e3139322e302e305c2f3136222c223230342e3234362e3137332e305c2f3234222c2235342e3233302e3230302e305c2f3231222c223132302e3235332e3234302e3139325c2f3236222c223131362e3132392e3232362e3132385c2f3236222c223133302e3137362e302e305c2f3137222c22332e3137332e3139322e305c2f3138222c223130382e3135362e302e305c2f3134222c2239392e38362e302e305c2f3136222c2231332e33322e302e305c2f3135222c223132302e3235332e3234352e3132385c2f3236222c2231332e3232342e302e305c2f3134222c2237302e3133322e302e305c2f3138222c2231352e3135382e302e305c2f3136222c223131312e31332e3137312e3139325c2f3236222c2231332e3234392e302e305c2f3136222c2231382e3233382e302e305c2f3135222c2231382e3234342e302e305c2f3135222c223230352e3235312e3230382e305c2f3230222c22332e3136352e302e305c2f3136222c22332e3136382e302e305c2f3134222c2236352e392e3132382e305c2f3138222c223133302e3137362e3132382e305c2f3138222c2235382e3235342e3133382e305c2f3235222c223230352e3235312e3230362e305c2f3233222c2235342e3233302e3230382e305c2f3230222c22332e3136302e302e305c2f3134222c223131362e3132392e3232362e305c2f3235222c2232332e39312e302e305c2f3139222c2235322e3232322e3132382e305c2f3137222c2231382e3136342e302e305c2f3135222c223131312e31332e3138352e33325c2f3237222c2236342e3235322e3132382e305c2f3138222c223230352e3235312e3235342e305c2f3234222c22332e3136362e302e305c2f3135222c2235342e3233302e3232342e305c2f3139222c2237312e3135322e302e305c2f3137222c223231362e3133372e33322e305c2f3139222c223230342e3234362e3137322e305c2f3234222c223230352e3235312e3230322e305c2f3233222c2231382e3137322e302e305c2f3135222c223132302e35322e33392e3132385c2f3237222c223131382e3139332e39372e36345c2f3236222c22332e3136342e36342e305c2f3138222c2231382e3135342e302e305c2f3135222c22332e3137332e302e305c2f3137222c2235342e3234302e3132382e305c2f3138222c223230352e3235312e3235302e305c2f3233222c223138302e3136332e35372e305c2f3235222c2235322e34362e302e305c2f3138222c22332e3137342e302e305c2f3135222c2235322e38322e3132382e305c2f3139222c2235342e3233302e302e305c2f3137222c2235342e3233302e3132382e305c2f3138222c2235342e3233392e3132382e305c2f3138222c223133302e3137362e3232342e305c2f3230222c2233362e3130332e3233322e3132385c2f3236222c2235322e38342e302e305c2f3135222c223134332e3230342e302e305c2f3136222c223134342e3232302e302e305c2f3136222c223132302e35322e3135332e3139325c2f3236222c223131392e3134372e3138322e305c2f3235222c223132302e3233322e3233362e305c2f3235222c223131312e31332e3138352e36345c2f3237222c22332e3136342e302e305c2f3138222c22332e3137322e36342e305c2f3138222c2235342e3138322e302e305c2f3136222c2235382e3235342e3133382e3132385c2f3236222c223132302e3235332e3234352e3139325c2f3237222c2235342e3233392e3139322e305c2f3139222c2231382e36382e302e305c2f3136222c2231382e36342e302e305c2f3134222c223132302e35322e31322e36345c2f3236222c2232342e3131302e33322e305c2f3139222c2239392e38342e302e305c2f3136222c223230352e3235312e3230342e305c2f3233222c223133302e3137362e3139322e305c2f3139222c2235322e3132342e3132382e305c2f3137222c223230342e3234362e3136342e305c2f3232222c2231332e33352e302e305c2f3136222c223230342e3234362e3137342e305c2f3233222c22332e3136342e3132382e305c2f3137222c22332e3137322e302e305c2f3138222c2233362e3130332e3233322e305c2f3235222c223131392e3134372e3138322e3132385c2f3236222c223131382e3139332e39372e3132385c2f3235222c223132302e3233322e3233362e3132385c2f3236222c223230342e3234362e3137362e305c2f3230222c2236352e382e302e305c2f3136222c2236352e392e302e305c2f3137222c223130382e3133382e302e305c2f3135222c223132302e3235332e3234312e3136305c2f3237222c22332e3137332e3132382e305c2f3138222c2236342e3235322e36342e305c2f3138222c2231332e3131332e3139362e36345c2f3236222c2231332e3131332e3230332e305c2f3234222c2235322e3139392e3132372e3139325c2f3236222c2235372e3138322e3235332e305c2f3234222c2235372e3138332e34322e305c2f3235222c2231332e3132342e3139392e305c2f3234222c22332e33352e3133302e3132385c2f3235222c2235322e37382e3234372e3132385c2f3236222c2231332e3230332e3133332e305c2f3236222c2231332e3233332e3137372e3139325c2f3236222c2231352e3230372e31332e3132385c2f3235222c2231352e3230372e3231332e3132385c2f3235222c2235322e36362e3139342e3132385c2f3236222c2231332e3232382e36392e305c2f3234222c2234372e3132392e38322e305c2f3234222c2234372e3132392e38332e305c2f3234222c2234372e3132392e38342e305c2f3234222c2235322e3232302e3139312e305c2f3236222c2231332e3231302e36372e3132385c2f3236222c2231332e35342e36332e3132385c2f3236222c22332e3130372e34332e3132385c2f3235222c22332e3130372e34342e305c2f3235222c22332e3130372e34342e3132385c2f3235222c2234332e3231382e35362e3132385c2f3236222c2234332e3231382e35362e3139325c2f3236222c2234332e3231382e35362e36345c2f3236222c2234332e3231382e37312e305c2f3236222c2239392e37392e3136392e305c2f3234222c2231382e3139322e3134322e305c2f3233222c2231382e3139392e36382e305c2f3232222c2231382e3139392e37322e305c2f3232222c2231382e3139392e37362e305c2f3232222c2233352e3135382e3133362e305c2f3234222c2235322e35372e3235342e305c2f3234222c2231382e3230302e3231322e305c2f3233222c2235322e3231322e3234382e305c2f3236222c2231332e3133342e32342e305c2f3233222c2231332e3133342e39342e305c2f3233222c2231382e3137352e36352e305c2f3234222c2231382e3137352e36362e305c2f3234222c2231382e3137352e36372e305c2f3234222c22332e31302e31372e3132385c2f3235222c22332e31312e35332e305c2f3234222c2235322e35362e3132372e305c2f3235222c2231352e3138382e3138342e305c2f3234222c2235312e34342e3233342e305c2f3233222c2235312e34342e3233362e305c2f3233222c2235312e34342e3233382e305c2f3233222c2235322e34372e3133392e305c2f3234222c22332e32392e34302e3132385c2f3236222c22332e32392e34302e3139325c2f3236222c22332e32392e34302e36345c2f3236222c22332e32392e35372e305c2f3236222c2231382e3232392e3232302e3139325c2f3236222c2231382e3233302e3232392e305c2f3234222c2231382e3233302e3233302e305c2f3235222c2235342e3233332e3235352e3132385c2f3236222c2235362e3132352e34362e305c2f3234222c2235362e3132352e34372e305c2f3332222c2235362e3132352e34382e305c2f3234222c22332e3233312e322e305c2f3235222c22332e3233342e3233322e3232345c2f3237222c22332e3233362e3136392e3139325c2f3236222c22332e3233362e34382e305c2f3233222c2233342e3139352e3235322e305c2f3234222c2233342e3232362e31342e305c2f3234222c2234342e3232302e3139342e305c2f3233222c2234342e3232302e3139362e305c2f3233222c2234342e3232302e3139382e305c2f3233222c2234342e3232302e3230302e305c2f3233222c2234342e3232302e3230322e305c2f3233222c2234342e3232322e36362e305c2f3234222c2231332e35392e3235302e305c2f3236222c2231382e3231362e3137302e3132385c2f3235222c22332e3132382e39332e305c2f3234222c22332e3133342e3231352e305c2f3234222c22332e3134362e3233322e305c2f3232222c22332e3134372e3136342e305c2f3232222c22332e3134372e3234342e305c2f3232222c2235322e31352e3132372e3132385c2f3236222c22332e3130312e3135382e305c2f3233222c2235322e35322e3139312e3132385c2f3236222c2233342e3231362e35312e305c2f3235222c2233342e3232332e31322e3232345c2f3237222c2233342e3232332e38302e3139325c2f3236222c2233352e3136322e36332e3139325c2f3236222c2233352e3136372e3139312e3132385c2f3236222c2233352e39332e3136382e305c2f3233222c2233352e39332e3137302e305c2f3233222c2233352e39332e3137322e305c2f3233222c2234342e3232372e3137382e305c2f3234222c2234342e3233342e3130382e3132385c2f3235222c2234342e3233342e39302e3235325c2f3330225d2c2269707636223a5b22323630303a393030303a333030303a3a5c2f3336222c22323630303a393030303a663630303a3a5c2f3339222c22323630303a393030303a663534303a3a5c2f3432222c22323430393a386330303a323432313a3330303a3a5c2f3536222c22323630303a393030303a663030303a3a5c2f3338222c22323630303a393030303a663530303a3a5c2f3433222c22323630303a393030303a6464643a3a5c2f3438222c22323630303a393030303a663830303a3a5c2f3337222c22323630303a393030303a663430303a3a5c2f3430222c22323630303a393030303a663533383a3a5c2f3435222c22323630303a393030303a353338303a3a5c2f3431222c22323630303a393030303a313030303a3a5c2f3336222c22323630303a393030303a323030303a3a5c2f3336222c22323430303a376663303a3530303a3a5c2f3430222c22323630303a393030303a343030303a3a5c2f3336222c22323630303a393030303a6666663a3a5c2f3438222c22323430393a386330303a323432313a3430303a3a5c2f3536222c22323430343a633263303a3530303a3a5c2f3430222c22323630303a393030303a353330383a3a5c2f3435222c22323630303a393030303a663533343a3a5c2f3436222c22323630303a393030303a663532303a3a5c2f3434222c22323630303a393030303a353332303a3a5c2f3433222c22323630303a393030303a353331303a3a5c2f3434222c22323630303a393030303a663538303a3a5c2f3431222c22323630303a393030303a353334303a3a5c2f3432222c22323630303a393030303a6565653a3a5c2f3438222c22323630303a393030303a353230303a3a5c2f3430225d2c2274696d657374616d70223a313736323033313330387d2c22657a6f6963223a7b226e616d65223a22457a6f6963222c2274696d657374616d70223a313639383334383436392c2269707634223a5b2235322e32302e36332e3235222c22332e3232352e3230322e313338222c22332e3231372e3230302e313930222c2235342e3231322e37312e323237222c2235322e31322e3137302e3638222c2233342e3231382e32312e3831222c22332e372e39302e313434222c2231332e3132372e3234302e323139222c2231382e3133392e362e3639222c2231382e3134302e3138342e30222c22332e3130362e362e313634222c22332e3130362e3137362e36222c2231332e3233372e3133312e3637222c2231352e3232322e37372e313434222c2231352e3232322e3130382e3532222c2231382e3135372e3133312e313837222c2231382e3135372e3130352e313832222c22332e3132362e32352e313630222c2233342e3234382e3137342e323337222c2235322e31362e38352e313339222c2233342e3235352e36312e323332222c2231352e3233362e3136352e3832222c2231352e3233362e3133372e323238222c2231352e3233362e3136362e3330222c2231382e3232382e32302e313239222c2231382e3232382e3130372e313935225d2c2269707636223a5b22323630303a316631303a346335353a653230303a3a5c2f3536222c22323630303a316631333a3339333a3630303a3a5c2f3536222c22323430363a646131613a6531303a3a5c2f3536222c22323430363a646131383a3964303a313430303a3a5c2f3536222c22323430363a646131633a3538613a653130303a3a5c2f3536222c22323630303a316631313a6633393a366630303a3a5c2f3536222c22326130353a643031343a3737363a613630303a3a5c2f3536222c22326130353a643031383a64643a373830303a3a5c2f3536222c22326130353a643031323a3464383a363830303a3a5c2f3536222c22323630303a316631653a3334323a326630303a3a5c2f3536225d7d2c22717569632d636c6f7564223a7b226e616d65223a22517569632e636c6f7564222c2274696d657374616d70223a313736323131333630322c2269707634223a5b223130322e3232312e33362e3938222c223130332e3130362e3232392e3832222c223130332e3130362e3232392e3934222c223130332e3134362e36332e3432222c223130332e3135322e3131382e323139222c223130332e3135322e3131382e3732222c223130332e3136342e3230332e313633222c223130332e3136372e3135312e3834222c223130332e37322e3136332e323232222c223130332e37352e3131372e313639222c223130342e3234342e37372e3337222c223130382e36312e3135382e323233222c223130382e36312e3230302e3934222c223130392e3234382e34332e313935222c223133362e3234332e3130362e323238222c223133392e38342e3233302e3339222c223134312e3136342e33382e3635222c223134342e3230322e39302e37222c223134352e3233392e3235322e3635222c223134362e38382e3233392e313937222c223134372e37382e302e313635222c223134372e37382e332e313631222c223134392e3230322e37312e3833222c223134392e32382e3133362e323435222c223134392e32382e34372e313133222c223134392e32382e38352e323339222c2231352e3230342e3233312e3234222c2231352e3233352e3138312e323237222c223135322e35332e3136322e323436222c223135322e35332e33362e3134222c223135322e35332e33382e3134222c223135342e3230352e3134342e313932222c223135352e3133382e3232312e3831222c223135362e36372e3231382e313430222c223135372e39302e3135342e313134222c223135382e35312e3132332e323439222c223136322e3235342e3131372e3830222c223136322e3235342e3131382e3239222c223136332e3138322e3137342e313631222c223136332e34372e32312e313638222c223136342e35322e3230322e313030222c223136372e37312e3138352e323034222c223136372e38382e36312e323131222c223137302e3234392e3231382e3938222c223137332e3233342e32362e3734222c223137362e392e3131342e313138222c223137382e31372e3137312e313737222c223137382e32322e3132342e323531222c223137382e3235352e3232302e3132222c2231382e3139322e3134362e323030222c223138352e3131362e36302e323331222c223138352e3131362e36302e323332222c223138352e3132362e3233372e3531222c223138352e3231322e3136392e3931222c223138352e3232382e32362e3430222c223138352e3233312e3233332e313330222c223138352e35332e35372e3430222c223138352e35332e35372e3839222c223138382e3137322e3232382e313832222c223138382e3137322e3232392e313133222c223138382e36342e3138342e3731222c223139302e39322e3137362e35222c223139312e39362e3130312e313430222c223139322e3234382e3135362e323031222c223139322e3234382e3139312e313335222c223139322e39392e33382e313137222c223139332e3230332e3139312e313839222c223139342e33362e3134342e323231222c223139352e3133372e3232302e323433222c223139352e3233312e31372e313431222c223139392e3234372e32382e3931222c223139392e35392e3234372e323432222c223230312e3138322e39372e3730222c223230342e31302e3136332e323337222c223230392e3132342e38342e313931222c223230392e3230382e32362e323138222c223231312e32332e3134332e3837222c223231332e3135392e312e3735222c223231332e3138332e34382e313730222c223231332e3138342e38352e323435222c223231362e3132382e3137392e313935222c223231362e3233382e3130342e3438222c223231362e3233382e37312e3133222c2232332e3136302e35362e313235222c2232332e39352e37322e3136222c2233312e3133312e342e323434222c2233312e32322e3131352e313836222c2233312e34302e3231322e313532222c2233372e3132302e3136332e313635222c2233382e3131342e3132312e3430222c2233382e35342e33302e323238222c2233382e35342e37392e313837222c2233382e36302e3235332e323337222c2234302e3136302e3232352e3331222c2234302e3136302e3234312e313935222c2234312e3138352e32392e323130222c2234312e3232332e35322e313730222c2234352e3132342e36352e3836222c2234352e3234382e37372e3631222c2234352e33322e3132332e323031222c2234352e33322e3138332e313132222c2234352e33322e3230332e313434222c2234352e33322e36372e313434222c2234352e33322e37372e323233222c2234352e36332e36372e313831222c2234352e37362e3235322e313331222c2234352e37372e3134382e3734222c2234352e37372e3136352e323136222c2234352e37372e35312e313731222c2234362e3235302e3232302e313333222c2234392e31322e3130322e3239222c22352e3133342e3131392e313033222c2235312e3135382e3230322e313039222c2235312e38312e3135342e313839222c2235312e38312e33332e313536222c2235342e33362e3130332e3937222c2236312e3231392e3234372e3837222c2236312e3231392e3234372e3930222c2236342e3137362e3136352e38222c2236342e3137362e342e323531222c2236342e3232372e31362e3933222c2236352e3130382e3130342e323332222c2236352e3130392e33392e313735222c2236352e32302e37362e313333222c2236352e32312e38312e3530222c2236352e32312e38312e3531222c2236362e34322e3132342e313031222c2236362e34322e37352e313231222c2236372e3231392e39392e313032222c2236392e35302e39352e323530222c2237302e33342e3230362e3536222c2237392e3137322e3233392e323439222c2238312e33312e3135362e323435222c2238312e33312e3135362e323436222c2238332e3133382e31322e323436222c2238362e3130352e31342e323331222c2238362e3130352e31342e323332222c2238392e3134372e3131302e313330222c2238392e35382e33382e34222c2239312e3134382e3133352e3533222c2239312e3230312e36372e313231222c2239312e3232382e372e3637222c2239322e3131382e3230352e3735222c2239342e37352e3233322e3930222c2239352e3137392e3134352e3837222c2239352e3137392e3234352e313632222c2239352e3231362e3131362e323039225d2c2269707636223a5b5d7d7d, 'yes'),
('ipResolutionListHash', 0x30333237653832623134663633303738656164346631333433643235393236666334663039633038393366353534363239653738653939643931303766353739, 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastAuditEvents', 0x613a333a7b693a303b613a313a7b693a303b613a323a7b693a303b733a32313a22736974652e706c7567696e2e616374697661746564223b693a313b693a313736323131353533383b7d7d693a313b613a313a7b693a303b613a323a7b693a303b733a32313a22736974652e706c7567696e2e696e7374616c6c6564223b693a313b693a313736323131353433383b7d7d693a323b613a313a7b693a303b613a323a7b693a303b733a32313a22736974652e706c7567696e2e616374697661746564223b693a313b693a313736323131353032363b7d7d7d, 'yes'),
('lastBlockAggregation', 0x31373632313135303234, 'yes'),
('lastDailyCron', 0x31373632313135303632, 'yes'),
('lastDashboardCheck', 0x31373632313135303633, 'yes'),
('lastPermissionsTemplateCheck', 0x31373632313135303634, 'yes'),
('lastQuickScan', 0x313736323131353036332e39343335, 'yes'),
('lastScanCompleted', 0x6f6b, 'yes'),
('lastScanFailureType', '', 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableApplicationPasswords', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', 0x66303664366464663134376135366432376464633865653532316165363361626362323939616362626365633433633330316636323764373232373965623531, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('lowResourceScanWaitStep', '', 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_auditlog', 0x31, 'yes'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x30, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_auditlog', 0x30, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('noc1ScanSchedule', 0x613a323a7b693a303b693a313736323336313331333b693a313b693a313736323632303531333b7d, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x31, 'yes'),
('onboardingDelayedAt', 0x30, 'yes'),
('onboardingLastVersion', '', 'no'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('previousWflogsFileList', 0x5b222e6874616363657373222c2261747461636b2d646174612e706870222c22636f6e6669672d6c6976657761662e706870222c22636f6e6669672d73796e6365642e706870222c22636f6e6669672d7472616e7369656e742e706870222c22636f6e6669672e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c226970732e706870222c2272756c65732e706870222c2274656d706c6174652e706870225d, 'yes'),
('satisfactionPromptDismissed', 0x30, 'yes'),
('satisfactionPromptInstallDate', 0x31373632313135303234, 'yes'),
('satisfactionPromptOverride', 0x31, 'yes'),
('scanAjaxTestSuccessful', 0x31, 'yes'),
('scanMonitorLastAttempt', 0x31373632313135303633, 'yes'),
('scanMonitorLastAttemptMode', 0x717569636b, 'yes'),
('scanMonitorLastAttemptWasFork', '', 'yes'),
('scanMonitorLastSuccess', 0x31373632313135303638, 'yes'),
('scanMonitorRemainingResumeAttempts', 0x32, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanTime', 0x313736323131353037302e30383232, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_force_ipv4_start', 0x30, 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_max_resume_attempts', 0x32, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x3135, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('showWfCentralUI', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes');
INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('supportContent', 0x7b22746f70223a5b7b227469746c65223a22426c6f636b696e672054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a307d2c7b227469746c65223a224f7074696d697a696e6720546865204669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a317d2c7b227469746c65223a22576f726466656e636520576562204170706c69636174696f6e204669726577616c6c202857414629222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c226f72646572223a327d2c7b227469746c65223a225363616e2054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d2c7b227469746c65223a22576f726466656e636520616e64204c6974655370656564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f6c69746573706565645c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a224669726577616c6c204c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a367d2c7b227469746c65223a225363616e20526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a377d2c7b227469746c65223a224920616d206c6f636b6564206f7574206f66206d792073697465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f23692d616d2d6c6f636b65642d6f75742d6f662d6d792d73697465222c226f72646572223a387d2c7b227469746c65223a2250485020466174616c206572726f723a204661696c6564206f70656e696e6720726571756972656420776f726466656e63652d7761662e706870222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f237068702d666174616c2d6572726f722d6661696c65642d6f70656e696e672d72657175697265642d776f726466656e63652d7761662d706870222c226f72646572223a397d5d2c22616c6c223a5b7b227469746c65223a22576f726466656e63652046726565222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d667265655c2f222c2265786365727074223a22576f726466656e6365204672656520697320616e20616c6c2d696e2d6f6e6520736563757269747920736f6c7574696f6e20666f7220576f72645072657373207765627369746573207468617420696e636c7564657320616e20656e64706f696e74206669726577616c6c2c207365637572697479207363616e6e65722c206c6f67696e2073656375726974792c20616c657274732c2063656e7472616c697a6564206d616e6167656d656e742c20616e64206d6f72652e222c226f72646572223a307d2c7b227469746c65223a2256756c6e65726162696c697479204d616e6167656d656e743a20576562686f6f6b204e6f74696669636174696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776562686f6f6b2d6e6f74696669636174696f6e735c2f222c2265786365727074223a22537461792075702d746f2d64617465207769746820696d706f7274616e74206576656e74732072656c6174696e6720746f2076756c6e65726162696c697469657320646973636f766572656420696e20796f757220736f6674776172652c20696e207265616c2d74696d652c207573696e672074686520576562686f6f6b204e6f74696669636174696f6e73206665617475726520696e20796f75722056756c6e65726162696c697479204d616e6167656d656e7420506f7274616c2e222c226f72646572223a317d2c7b227469746c65223a22576f726466656e6365205072656d69756d222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d7072656d69756d5c2f222c2265786365727074223a22576f726466656e6365205072656d69756d20636f6d65732077697468207265616c2d74696d65206669726577616c6c2070726f74656374696f6e2c207265616c2d74696d65207363616e207369676e6174757265732c20616e204950206164647265737320626c6f636b6c6973742c20636f756e74727920626c6f636b696e672c20616e64205072656d69756d20737570706f72742e222c226f72646572223a327d2c7b227469746c65223a22576f726466656e63652043617265222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d636172655c2f222c2265786365727074223a22576f726466656e6365204361726520697320666f7220627573696e657373206f776e6572732077686f20706c6163652061207072656d69756d206f6e2074686569722074696d652e204f7572207465616d20696e7374616c6c732c20636f6e666967757265732c206f7074696d697a65732c20616e64206d61696e7461696e7320796f757220576f7264507265737320736974652073656375726974792e222c226f72646572223a337d2c7b227469746c65223a22576f726466656e636520526573706f6e7365222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d726573706f6e73655c2f222c2265786365727074223a22576f726466656e636520526573706f6e736520697320666f72206d697373696f6e2d637269746963616c20576f72645072657373207765627369746573207468617420726571756972652032345c2f375c2f333635207365637572697479206d6f6e69746f72696e672077697468206120312d686f757220726573706f6e73652074696d6520616e642032342d686f75722072656d6564696174696f6e2e222c226f72646572223a347d2c7b227469746c65223a22496e636964656e7420526573706f6e7365205365727669636573222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f696e636964656e742d726573706f6e73652d73657276696365735c2f222c2265786365727074223a224c6574206f6e65206f66206f757220536563757269747920416e616c797374732068656c7020796f7520636c65616e20796f757220696e6665637465642073697465206f7220696e737065637420697420666f722076756c6e65726162696c69746965732e222c226f72646572223a357d2c7b227469746c65223a224c6963656e7365204b6579222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6170692d6b65795c2f222c2265786365727074223a22416c6c20576f726466656e636520696e7374616c6c6174696f6e73206e6565642061206c6963656e7365206b65792c20616c736f206b6e6f776e20617320616e204150492d6b65792e20546865206b65792063616e20626520612066726565206b6579206f722061205072656d69756d206b65792e20222c226f72646572223a367d2c7b227469746c65223a224163636f756e7420616e642042696c6c696e6720486973746f7279222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6163636f756e745c2f222c2265786365727074223a22486f7720746f206e6176696761746520616e642075736520796f757220576f726466656e6365206163636f756e742e222c226f72646572223a377d2c7b227469746c65223a22576f726466656e63652043656e7472616c20546f6f6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f222c2265786365727074223a2254686520576f726466656e63652043656e7472616c20746f6f6c2070726f7669646573206120706f77657266756c20616e6420656666696369656e742077617920746f206d616e61676520746865207365637572697479206f66206d616e7920576f726450726573732073697465732076696120612073696e676c6520696e746572666163652e205468697320746f6f6c20697320617661696c61626c6520746f20616c6c207573657273206f662066726565206c6963656e7365206b657973206f72205072656d69756d206c6963656e7365206b6579732e222c226368696c6472656e223a5b7b227469746c65223a22436f6e6e656374696e6720796f757220736974657320746f20576f726466656e63652043656e7472616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e6e6563745c2f222c226f72646572223a307d2c7b227469746c65223a2253657474696e672075702074776f2d666163746f722061757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f3266615c2f222c226f72646572223a317d2c7b227469746c65223a225573696e67207468652044617368626f6172642070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f63656e7472616c5c2f222c226f72646572223a327d2c7b227469746c65223a225573696e672074686520436f6e66696775726174696f6e2070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e66696775726174696f6e5c2f222c226f72646572223a337d2c7b227469746c65223a225573696e6720576f726466656e636520706c7567696e206f7074696f6e732054656d706c61746573222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f74656d706c617465735c2f222c226f72646572223a347d2c7b227469746c65223a2256696577696e67207363616e2046696e64696e6773222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f66696e64696e67735c2f222c226f72646572223a357d2c7b227469746c65223a225573696e67207468652053657474696e67732070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f73657474696e67735c2f222c226f72646572223a367d2c7b227469746c65223a225573696e6720576f726466656e63652043656e7472616c205465616d73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f7465616d735c2f222c226f72646572223a377d5d2c226f72646572223a387d2c7b227469746c65223a2244617368626f617264222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f222c2265786365727074223a2254686520576f726466656e63652044617368626f6172642070726f766964657320696e736967687420696e746f207468652063757272656e74207374617465206f6620796f75722073697465e28099732073656375726974792e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22416c65727473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f616c657274735c2f222c226f72646572223a317d5d2c226f72646572223a397d2c7b227469746c65223a224669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c2265786365727074223a2254686520576f726466656e636520576562204170706c69636174696f6e204669726577616c6c2069732061205048502062617365642c206170706c69636174696f6e206c6576656c206669726577616c6c20746861742066696c74657273206f7574206d616c6963696f757320726571756573747320746f20796f757220736974652e20222c226368696c6472656e223a5b7b227469746c65223a224f7074696d697a696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a307d2c7b227469746c65223a2253746174697374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f737461746973746963735c2f222c226f72646572223a317d2c7b227469746c65223a224c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a327d2c7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696f6e735c2f222c226f72646572223a337d2c7b227469746c65223a224d7953514c692073746f7261676520656e67696e65222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6d7973716c692d73746f726167652d656e67696e655c2f222c226f72646572223a347d2c7b227469746c65223a22427275746520466f7263652050726f74656374696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f62727574652d666f7263655c2f222c226f72646572223a357d2c7b227469746c65223a2252617465204c696d6974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f726174652d6c696d6974696e675c2f222c226f72646572223a367d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a377d5d2c226f72646572223a31307d2c7b227469746c65223a22426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f222c2265786365727074223a2241736964652066726f6d20746865206669726577616c6c2072756c657320746861742070726f7465637420616761696e737420766172696f75732061747461636b732c20576f726466656e636520616c736f2068617320637573746f6d20666561747572657320666f72206164646974696f6e616c20626c6f636b696e672e20222c226368696c6472656e223a5b7b227469746c65223a22436f756e74727920426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f636f756e7472792d626c6f636b696e675c2f222c226f72646572223a307d2c7b227469746c65223a22426c6f636b696e672054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a317d5d2c226f72646572223a31317d2c7b227469746c65223a225363616e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f222c2265786365727074223a224120576f726466656e6365207363616e206578616d696e657320616c6c2066696c6573206f6e20796f757220576f726450726573732077656273697465206c6f6f6b696e6720666f72206d616c6963696f757320636f64652c206261636b646f6f72732c20616e64207368656c6c732074686174206861636b657273206861766520696e7374616c6c65642e20497420616c736f207363616e7320666f72206b6e6f776e206d616c6963696f75732055524c7320616e64206b6e6f776e207061747465726e73206f6620696e66656374696f6e732e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a317d2c7b227469746c65223a225363686564756c696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363686564756c696e675c2f222c226f72646572223a327d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d5d2c226f72646572223a31327d2c7b227469746c65223a22546f6f6c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f222c2265786365727074223a22576f726466656e636520546f6f6c7320696e636c756465204c697665205472616666696320616e616c797369732c2057484f4953204c6f6f6b75702c20496d706f72745c2f4578706f7274204f7074696f6e732c20616e6420446961676e6f73746963732e222c226368696c6472656e223a5b7b227469746c65223a224c6976652054726166666963222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c6976652d747261666669635c2f222c226f72646572223a307d2c7b227469746c65223a2257484f4953204c6f6f6b7570222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f77686f69732d6c6f6f6b75705c2f222c226f72646572223a317d2c7b227469746c65223a22496d706f72745c2f4578706f7274222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f696d706f72742d6578706f72745c2f222c226f72646572223a327d2c7b227469746c65223a22446961676e6f7374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f646961676e6f73746963735c2f222c226f72646572223a337d2c7b227469746c65223a224c65676163792054776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c65676163792d74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d5d2c226f72646572223a31337d2c7b227469746c65223a224175646974204c6f67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f61756469742d6c6f675c2f222c2265786365727074223a2254686520576f726466656e6365204175646974204c6f672069732061207072656d69756d20666561747572652074686174207265636f726473206120686973746f7279206f66206576656e7473206f6e20796f7572207369746520746f2061737369737420696e206d6f6e69746f72696e6720666f7220756e617574686f72697a656420616374696f6e73206f72207369676e73206f6620636f6d70726f6d6973652e204576656e74732063616e20696e636c7564652065766572797468696e672066726f6d2075736572206372656174696f6e20616e642065646974696e6720746f20706c7567696e5c2f7468656d6520696e7374616c6c6174696f6e20616e6420757064617465732e20416c6c206461746120636170747572656420666f722072656c6576616e74206576656e74732069732073617665642072656d6f74656c7920746f20576f726466656e63652043656e7472616c20746f2070726576656e7420616e792074616d706572696e672074686174206d617920696e74657266657265207769746820706f73742d696e636964656e7420616e616c7973697320616e6420726573706f6e73652e222c226f72646572223a31347d2c7b227469746c65223a224c6f67696e205365637572697479222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974795c2f222c2265786365727074223a22546865204c6f67696e20536563757269747920706167652063757272656e746c7920636f6e7461696e732073657474696e677320666f722074776f2d666163746f722061757468656e7469636174696f6e20283246412920616e64207265434150544348412e20496e20612066757475726520576f726466656e63652076657273696f6e2c206578697374696e67206c6f67696e2d72656c617465642066656174757265732077696c6c20616c736f206d6f766520746f207468652073616d6520706167652e222c226f72646572223a31357d2c7b227469746c65223a22426173696320506c7567696e2053657474696e6773222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f62617369632d706c7567696e2d73657474696e67735c2f222c2265786365727074223a224865726520617265206f7572206d696e696d616c207265636f6d6d656e6465642073657474696e677320746f20736574207570206f6e636520796f75206861766520696e7374616c6c656420616e6420616374697661746564206f757220706c7567696e2e222c226f72646572223a31367d2c7b227469746c65223a22416476616e636564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f222c2265786365727074223a22496620796f752077616e7420746f206b6e6f77206d6f72652061626f75742074686520746563686e6963616c2064657461696c73206f6620576f726466656e63652c20796f752077696c6c2066696e642074686520616e737765727320696e20746869732073656374696f6e2e222c226368696c6472656e223a5b7b227469746c65223a22546563686e6963616c2044657461696c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f746563686e6963616c2d64657461696c735c2f222c226f72646572223a307d2c7b227469746c65223a22436f6d7061746962696c697479222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f636f6d7061746962696c6974795c2f222c226f72646572223a317d2c7b227469746c65223a224368616e67656c6f67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f6368616e67656c6f675c2f222c226f72646572223a327d2c7b227469746c65223a22436f6e7374616e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f636f6e7374616e74735c2f222c226f72646572223a337d2c7b227469746c65223a2252656d6f7665206f72205265736574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f72656d6f76652d6f722d72657365745c2f222c226f72646572223a347d2c7b227469746c65223a2253797374656d20726571756972656d656e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f222c226f72646572223a357d2c7b227469746c65223a22576f726466656e636520415049222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f776f726466656e63652d6170695c2f222c226f72646572223a367d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a377d2c7b227469746c65223a22506c7567696e205c2f205468656d6520436f6e666c69637473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f706c7567696e2d7468656d652d636f6e666c696374735c2f222c226f72646572223a387d5d2c226f72646572223a31377d2c7b227469746c65223a224150492043616c6c6261636b73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6170692d63616c6c6261636b735c2f222c2265786365727074223a224c6561726e20686f7720746f206964656e746966792063616c6c6261636b73206d6164652066726f6d20576f726466656e6365207365727665727320746f20796f757220736974652e222c226f72646572223a31387d2c7b227469746c65223a22576f726466656e636520616e642047445052202d2047656e6572616c20446174612050726f74656374696f6e20526567756c6174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f67656e6572616c2d646174612d70726f74656374696f6e2d726567756c6174696f6e5c2f222c2265786365727074223a2244656669616e742c2074686520636f6d70616e7920626568696e6420576f726466656e63652c20686173207570646174656420697473207465726d73206f66207573652c207072697661637920706f6c696369657320616e6420736f6674776172652c2061732077656c6c206173206d61646520617661696c61626c65207374616e6461726420636f6e747261637475616c20636c617573657320746f206d656574204744505220636f6d706c69616e63652e20437573746f6d657273206d7573742072657669657720616e6420616772656520746f2075706461746564207465726d7320696e206f7264657220746f20636f6e74696e7565207573696e67206f75722070726f647563747320616e642073657276696365732e222c226368696c6472656e223a5b7b227469746c65223a225375622d50726f636573736f7273204c697374222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f67656e6572616c2d646174612d70726f74656374696f6e2d726567756c6174696f6e5c2f7375622d70726f636573736f72732d6c6973745c2f222c226f72646572223a307d5d2c226f72646572223a31397d2c7b227469746c65223a224c6f67696e20536563757269747920506c7567696e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974792d706c7567696e5c2f222c2265786365727074223a2254686520576f726466656e6365204c6f67696e20536563757269747920706c7567696e20636f6e7461696e73206120737562736574206f662074686520666561747572657320666f756e6420696e207468652066756c6c20576f726466656e636520706c7567696e3a2054776f2d666163746f722041757468656e7469636174696f6e2c20584d4c2d5250432050726f74656374696f6e20616e64204c6f67696e205061676520434150544348412e20497420697320696465616c20666f722073697465732074686174206e656564206c6f67696e2073656375726974792066756e6374696f6e616c69747920627574206569746865722063616ee2809974206f7220646f6ee28099742077616e7420746f2072756e207468652066756c6c20576f726466656e636520706c7567696e2e222c226f72646572223a32307d2c7b227469746c65223a22576f726466656e636520496e74656c6c6967656e6365222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d696e74656c6c6967656e63655c2f222c2265786365727074223a22576f726466656e636520496e74656c6c6967656e636520697320616e20696e6475737472792d6c656164696e6720576f726450726573732076756c6e65726162696c69747920646174616261736520616e642065766f6c76696e672054687265617420496e74656c6c6967656e636520706c6174666f726d207468617420636f6e7461696e73206f7665722031322c303030207265636f72647320666f722076756c6e65726162696c697469657320696e20576f7264507265737320706c7567696e732c207468656d65732c20616e6420636f72652e222c226368696c6472656e223a5b7b227469746c65223a2256323a20416363657373696e6720616e6420436f6e73756d696e67207468652056756c6e65726162696c69747920446174612046656564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d696e74656c6c6967656e63655c2f76322d616363657373696e672d616e642d636f6e73756d696e672d7468652d76756c6e65726162696c6974792d646174612d666565645c2f222c226f72646572223a307d2c7b227469746c65223a2256313a20416363657373696e6720616e6420436f6e73756d696e67207468652056756c6e65726162696c69747920446174612046656564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d696e74656c6c6967656e63655c2f616363657373696e672d616e642d636f6e73756d696e672d7468652d76756c6e65726162696c6974792d646174612d666565645c2f222c226f72646572223a317d2c7b227469746c65223a22576f726466656e636520496e74656c6c6967656e636520576562686f6f6b204e6f74696669636174696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d696e74656c6c6967656e63655c2f776f726466656e63652d696e74656c6c6967656e63652d776562686f6f6b2d6e6f74696669636174696f6e735c2f222c226f72646572223a327d5d2c226f72646572223a32317d2c7b227469746c65223a22576f726466656e63652056756c6e65726162696c697479204d616e6167656d656e7420506f7274616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d76756c6e65726162696c6974792d6d616e6167656d656e742d706f7274616c5c2f222c2265786365727074223a22576562686f6f6b204e6f74696669636174696f6e73222c226f72646572223a32327d5d7d, 'no'),
('supportHash', 0x35633839363239633963333738336438373563666137333664313566643561623731636333386532666562616266393665666161393631626331643164386164, 'yes'),
('timeoffset_wf', 0x31, 'yes'),
('timeoffset_wf_updated', 0x31373632313135303434, 'yes'),
('tldlist', 0x7c636f6d7c6f72677c6e65747c6564757c6161617c6162627c6162637c61636f7c6164737c6165677c61666c7c6169677c616e7a7c616f6c7c6170707c6172747c6177737c6178617c6261727c6262637c6262747c6263677c62636e7c6265747c6269647c62696f7c62697a7c626d737c626d777c626f6d7c626f6f7c626f747c626f787c6275797c627a687c6361627c63616c7c63616d7c6361727c6361747c6362617c63626e7c63656f7c6366617c6366647c6370617c6372737c6461647c6461797c6464737c6465767c64686c7c6469797c646e707c646f677c646f747c6474767c6476727c6561747c65636f7c6573717c6575737c66616e7c6669747c666c797c666f6f7c666f787c66726c7c6674727c66756e7c6679697c67616c7c6761707c6761797c67646e7c6765617c676c657c676d6f7c676d787c676f6f7c676f707c676f747c676f767c68626f7c6869767c686b747c686f747c686f777c69626d7c6963657c6963757c69666d7c696e637c696e677c696e6b7c696e747c6973747c6974767c6a63627c6a696f7c6a6c6c7c6a6d707c6a6e6a7c6a6f747c6a6f797c6b66687c6b69617c6b696d7c6b706e7c6b72647c6c61747c6c61777c6c64737c6c6c637c6c6c707c6c6f6c7c6c706c7c6c74647c6d616e7c6d61707c6d62617c6d65647c6d656e7c6d696c7c6d69747c6d6c627c6d6c737c6d6d617c6d6f657c6d6f697c6d6f6d7c6d6f767c6d73647c6d746e7c6d74727c6e61627c6e62617c6e65637c6e65777c6e666c7c6e676f7c6e686b7c6e6f777c6e72617c6e72777c6e74747c6e79637c6f62697c6f6e657c6f6e677c6f6e6c7c6f6f6f7c6f74747c6f76687c7061797c7065747c7068647c7069647c70696e7c706e637c70726f7c7072757c7075627c7077637c7265647c72656e7c72696c7c72696f7c7269707c72756e7c7277657c7361707c7361737c7362697c7362737c7363627c7365777c7365787c7366727c736b697c736b797c736f797c7370617c73726c7c7374637c7461627c7461787c7463697c74646b7c74656c7c7468647c746a787c746f707c7472767c7475697c7476737c7562737c756e6f7c756f6c7c7570737c7665747c7669677c76696e7c7669707c7765647c77696e7c776d657c776f777c7774637c7774667c78696e7c7878787c78797a7c796f757c79756e7c7a69707c61637c61647c61657c61667c61677c61697c616c7c616d7c616f7c61717c61727c61737c61747c61757c61777c61787c617a7c62617c62627c62647c62657c62667c62677c62687c62697c626a7c626d7c626e7c626f7c62727c62737c62747c62767c62777c62797c627a7c63617c63637c63647c63667c63677c63687c63697c636b7c636c7c636d7c636e7c636f7c63727c63757c63767c63777c63787c63797c637a7c64657c646a7c646b7c646d7c646f7c647a7c65637c65657c65677c65727c65737c65747c65757c66697c666a7c666b7c666d7c666f7c66727c67617c67627c67647c67657c67667c67677c67687c67697c676c7c676d7c676e7c67707c67717c67727c67737c67747c67757c67777c67797c686b7c686d7c686e7c68727c68747c68757c69647c69657c696c7c696d7c696e7c696f7c69717c69727c69737c69747c6a657c6a6d7c6a6f7c6a707c6b657c6b677c6b687c6b697c6b6d7c6b6e7c6b707c6b727c6b777c6b797c6b7a7c6c617c6c627c6c637c6c697c6c6b7c6c727c6c737c6c747c6c757c6c767c6c797c6d617c6d637c6d647c6d657c6d677c6d687c6d6b7c6d6c7c6d6d7c6d6e7c6d6f7c6d707c6d717c6d727c6d737c6d747c6d757c6d767c6d777c6d787c6d797c6d7a7c6e617c6e637c6e657c6e667c6e677c6e697c6e6c7c6e6f7c6e707c6e727c6e757c6e7a7c6f6d7c70617c70657c70667c70677c70687c706b7c706c7c706d7c706e7c70727c70737c70747c70777c70797c71617c72657c726f7c72737c72757c72777c73617c73627c73637c73647c73657c73677c73687c73697c736a7c736b7c736c7c736d7c736e7c736f7c73727c73737c73747c73757c73767c73787c73797c737a7c74637c74647c74667c74677c74687c746a7c746b7c746c7c746d7c746e7c746f7c74727c74747c74767c74777c747a7c75617c75677c756b7c75737c75797c757a7c76617c76637c76657c76677c76697c766e7c76757c77667c77737c79657c79747c7a617c7a6d7c7a777c616172707c61626c657c6165726f7c6164756c747c616b646e7c616c6c797c61726d797c617270617c6163746f727c6165746e617c616d65787c617261627c617274657c617364617c617369617c617564697c6175746f7c626162797c62616e647c62616e6b7c626276617c617a7572657c626565727c626573747c62696b657c62696e677c626c6f677c626c75657c626f66617c626f6e647c626f6f6b7c62757a7a7c636166657c63616c6c7c63616d707c636172737c636173617c636173657c63616e6f6e7c636172657c63617264737c636173687c636272657c6365726e7c636861747c636974697c636974797c636f6f6c7c636f6f707c63796f757c646174617c646174657c64636c6b7c6465616c7c6175746f737c636c75627c64656c6c7c646573697c646965747c646973687c646f63737c647661677c6c65676f7c6c6762747c6c69646c7c6c6966657c6c696b657c6c696d6f7c6c696e6b7c6c6976657c6c6f616e7c6c6f76657c6c7464617c6c7578657c6d6169667c6d6565747c6d656d657c6d656e757c6d696e697c6d696e747c6d6f62697c6d6f64617c6d6f746f7c6e616d657c6e6176797c6e6577737c6e6578747c6e69636f7c6e696b657c6f6c6c6f7c6f70656e7c706167657c706172737c706363777c706963737c70696e677c70696e6b7c706c61797c706c75737c706f686c7c706f726e7c706f73747c70726f647c70726f667c71706f6e7c726561647c726569747c72656e747c726573747c726963687c62616964757c736176657c62656174737c6269626c657c62696e676f7c626c61636b7c726f6f6d7c727376707c727568727c736166657c73616c657c7361726c7c7361786f7c626f6174737c6275696c647c73636f747c736561747c736578797c736869617c73686f707c73686f777c73696c6b7c73696e617c736974657c626f7363687c7365656b7c736b696e7c616d66616d7c61726368697c63686173657c736e63667c746f776e7c616d6963617c736f68757c736f6e677c6170706c657c736f6e797c73706f747c737572667c63796d72757c746576617c64726976657c64756261697c746970737c64656c74617c6564656b617c74616c6b7c746178697c7465616d7c746961617c6465616c737c746563687c64616e63657c65617274687c746f79737c747562657c636c69636b7c77696e657c63686561707c636973636f7c776569727c77696b697c617564696f7c7769656e7c63697469637c76616e617c77616e677c78626f787c7a6f6e657c636c6f75647c766976617c636f6163687c7a6172617c636f6465737c766973617c7669766f7c766f74657c766f746f7c63726f776e7c776f726b7c796f67617c7a65726f7c656d61696c7c6c616e647c66656465787c67616c6c6f7c62726f61647761797c6570736f6e7c65726e697c666167657c6661696c7c66616974687c66616e737c6661726d7c666173747c62726f6b65727c6669646f7c63616d6572617c6361706974616c7c636172656572737c66756e647c6361726565727c6361726176616e7c6361706974616c6f6e657c636173696e6f7c63617065746f776e7c63656e7465727c6368757263687c636972636c657c636c61696d737c62726f746865727c6368726f6d657c63616c76696e6b6c65696e7c6368616e656c7c6368616e6e656c7c6361746572696e677c636174686f6c69637c636861726974797c6368696e7461697c6368726973746d61737c636c696e69637c6272757373656c737c6275696c646572737c6369707269616e697c6369746164656c7c627573696e6573737c636c65616e696e677c636c696e697175657c66696c6d7c66696e616c7c636c6f7468696e677c636f75706f6e7c636f75727365737c666972657c666973687c636f6c6c6567657c636f6c6f676e657c636f6d6d62616e6b7c666c69727c666f6f647c666f72647c666f7265787c666f72756d7c636f666665657c636c75626d65647c636f75706f6e737c636f6d6d756e6974797c636f6d7365637c636f6e646f737c636f6d70616e797c636f6d706172657c636f6e746163747c636f6f6b696e677c636f72736963617c636f756e7472797c636f6d70757465727c636f6e73756c74696e677c636f6e737472756374696f6e7c667265657c636f6e74726163746f72737c70617269737c616c73746f6d7c616d617a6f6e7c71756573747c726164696f7c616c697061797c616e7175616e7c616c69626162617c616e64726f69647c616c6c66696e616e7a7c616c6c73746174657c616d7374657264616d7c616e616c79746963737c70726573737c70726f6d6f7c616c736163657c7072696d657c61706172746d656e74737c70617274737c70617274797c70686f6e657c706c6163657c706f6b65727c70726178697c72656861627c616d65726963616e657870726573737c70697a7a617c616d65726963616e66616d696c797c70686f746f7c62726964676573746f6e657c72656973657c61697274656c7c73616c6f6e7c6162626f74747c73656e65727c736576656e7c7368656c6c7c6162627669657c73686172707c61626f6761646f7c61627564686162697c6163636f756e74616e747c7269636f687c726f636b737c726f64656f7c72756762797c61636164656d797c616363656e747572657c73686f65737c6163636f756e74616e74737c736b7970657c736c696e677c736d6172747c736d696c657c6166726963617c616972666f7263657c736f6c61727c6167616b68616e7c6167656e63797c6169726275737c627261646573636f7c73706163657c617574686f727c62617965726e7c626175686175737c6265617574797c61756374696f6e7c626172636c6179737c6261726761696e737c6265726c696e7c61756469626c657c62617265666f6f747c626573746275797c6268617274697c62616e616d65787c7469726f6c7c617573706f73747c6174746f726e65797c746d616c6c7c626f6f6b696e677c746f6461797c746f6b796f7c746f6f6c737c746f7261797c746f74616c7c746f7572737c74726164657c74727573747c74756e65737c74757368757c7562616e6b7c77656265727c6172616d636f7c626f7374696b7c626f73746f6e7c6174686c6574617c7961686f6f7c6261736562616c6c7c6261736b657462616c6c7c626f656872696e6765727c73706f72747c6171756172656c6c657c626f7574697175657c73746164617c73746f72657c73747564797c7374796c657c74617461727c6173736f6369617465737c7375636b737c73776973737c74697265737c766f646b617c766f6c766f7c776f726c647c7865726f787c62617263656c6f6e617c626c6f6f6d626572677c626e70706172696261737c626c61636b6672696461797c626c6f636b6275737465727c76656761737c766964656f7c626172636c6179636172647c77616c65737c77617463687c776569626f7c776f726b737c6372656469747c637265646974636172647c63756973696e656c6c617c646f63746f727c6762697a7c6578706572747c637275697365737c67656e747c67697665737c6372756973657c66616d696c797c637269636b65747c637265646974756e696f6e7c6576656e74737c666c69636b727c67616d657c67656f7267657c676765657c676966747c676d62687c676f6c647c676c6173737c676c6f626f7c676d61696c7c67616c6c75707c67617264656e7c676f6c667c646174696e677c64617473756e7c677567657c677572757c686169727c686175737c686466637c6469726563747c646973636f756e747c68656c707c67616d65737c686572657c64757262616e7c656e657267797c667574626f6c7c6469726563746f72797c6475706f6e747c656d6572636b7c67696674737c67726f75707c6465616c65727c6465677265657c64656e74616c7c6573746174657c64656c69766572797c6d757369637c64656c6f697474657c64656d6f637261747c64656e746973747c6e657875737c64657369676e7c676f6f677c677265656e7c67726970657c6469616d6f6e64737c67756964657c6469676974616c7c67756363697c676976696e677c686f6c696461797c686f6e64617c687362637c686f7573657c696362637c696565657c6772617469737c67616c6c6572797c686f6c64696e67737c686f73747c696d64627c696d6d6f7c696e666f7c686f7273657c697461757c6a6176617c68796174747c6a6565707c6a6f62737c67726170686963737c686f6d65737c6a7072737c676f6f676c657c677261696e6765727c6b6464697c6b6964737c676f6f64796561727c6b6977697c6b706d677c6b7265647c6879756e6461697c696b616e6f7c67726f636572797c6b6f656c6e7c6b796f746f7c6c616d65727c6c656173657c6c6567616c7c6c657875737c6c696c6c797c6c6f7474657c6c6f74746f7c6865616c74687c6c6f616e737c6c6f6375737c6d6f6e65797c676c6f62616c7c68656c73696e6b697c6d6f7669657c6865726d65737c6a65747a747c677569746172737c68616e676f75747c686f636b65797c686f74656c737c68616d627572677c686974616368697c686f7374696e677c686f746d61696c7c6d69616d697c646973636f7665727c6864666362616e6b7c686973616d697473757c686f6d656465706f747c686f6d6573656e73657c69726973687c6d616e676f7c6d656469617c6865616c7468636172657c686970686f707c686f6d65676f6f64737c6875676865737c686f73706974616c7c696d616d61747c646f6d61696e737c66617368696f6e7c66697368696e677c6a61677561727c666572726172697c6665727265726f7c696e747569747c66696e616e63657c696e737572657c6669746e6573737c666c69676874737c666c6f726973747c666c6f776572737c6f6d6567617c666f7273616c657c6669726573746f6e657c67656e74696e677c6a6577656c72797c666565646261636b7c666964656c6974797c696d6d6f62696c69656e7c696e64757374726965737c696e66696e6974697c66696e616e6369616c7c6669726d64616c657c666f6f7462616c6c7c696e737469747574657c696e737572616e63657c697374616e62756c7c696e7465726e6174696f6e616c7c69736d61696c697c69706972616e67617c696e766573746d656e74737c6a6f627572677c6a706d6f7267616e7c6a7565676f737c6661726d6572737c66726f67616e737c6c6174696e6f7c6c61777965727c6c656672616b7c6f73616b617c66756a697473757c646f776e6c6f61647c6675726e69747572657c6b6f736865727c66726f6e746965727c676f64616464797c6b617566656e7c6a756e697065727c666f756e646174696f6e7c6b6572727970726f706572746965737c6b696e646c657c6c6f636b65727c6b65727279686f74656c737c6b69746368656e7c6c6976696e677c6b6f6d617473757c66726573656e6975737c6c6163616978617c6c65636c6572637c6c696d697465647c6b756f6b67726f75707c6c616e786573737c6c6966657374796c657c6c69676874696e677c6c616d626f726768696e697c6c6173616c6c657c6c6174726f62657c6c696e636f6c6e7c6c696665696e737572616e63657c6c6f6e646f6e7c6d61647269647c6d6169736f6e7c6d617474656c7c6d757365756d7c6e61676f79617c6e6574666c69787c6e6574776f726b7c6e696b6f6e7c65786368616e67657c6c756e646265636b7c6e696e6a617c6c75787572797c6e657462616e6b7c6575726f766973696f6e7c6d61726b65747c6d6f726d6f6e7c6d6f73636f777c6c706c66696e616e6369616c7c6d616b6575707c6d6f62696c657c6d6f6e6173687c6e6f7774767c6e697373616e7c6e6575737461727c6d616e6167656d656e747c6e6f6b69617c6e6f72746f6e7c6c616e64726f7665727c6d61726b6574696e677c6e69737361797c657874726173706163657c6e6f7772757a7c6f7261636c657c70687973696f7c7175656265637c6578706f7365647c657870726573737c6f66666963657c6f6c6179616e7c6f6e6c696e657c6f72616e67657c6f7473756b617c7066697a65727c70686f746f737c7069637465747c6f6b696e6177617c7068696c6970737c70696374757265737c70696f6e6565727c7265616c74797c676f6c64706f696e747c70686f746f6772617068797c726163696e677c706f6c697469657c72656973656e7c73656c6563747c656e67696e6565727c726f676572737c7363686f6f6c7c736368756c657c7365637572657c6f726967696e737c7265766965777c73616e6f66697c7365617263687c756e69636f6d7c7265616c746f727c766f74696e677c6d61726b6574737c6f7267616e69637c7961636874737c656475636174696f6e7c6d6f6e737465727c706172746e6572737c78696875616e7c726563697065737c7a6170706f737c70616e61736f6e69637c79616e6465787c72656e74616c737c7265706f72747c766f796167657c77656263616d7c6572696373736f6e7c73686f756a697c77616c7465727c706861726d6163797c726576696577737c726578726f74687c766973696f6e7c65717569706d656e747c7265706169727c7279756b79757c736161726c616e647c76697267696e7c656e7465727072697365737c7361666574797c73616b7572617c76696b696e677c76696c6c61737c656e67696e656572696e677c7669616a65737c73616d73636c75627c73616d73756e677c6d617272696f74747c6d6f7274676167657c6d6f746f726379636c65737c7363686d6964747c70726f70657274797c73616e6476696b7c7363687761727a7c736369656e63657c72656c69616e63657c73656375726974797c7368696b7368617c6f627365727665727c6661697277696e64737c70726f706572746965737c70726f74656374696f6e7c70726f67726573736976657c72657075626c6963616e7c70726f64756374696f6e737c73657276696365737c6d61727368616c6c737c7368616e6772696c617c70727564656e7469616c7c736f6c7574696f6e737c7265616c6573746174657c73616e6476696b636f726f6d616e747c737461706c65737c7363686f6c617273686970737c73686f7070696e677c726564756d6272656c6c617c736368616566666c65727c6f6c6179616e67726f75707c737461727c736f636365727c736f6369616c7c73747265616d7c73747564696f7c737570706c797c73757a756b697c7461726765747c746a6d6178787c6e6578746469726563747c74616f62616f7c73746f726167657c7461697065697c6d656c626f75726e657c7379646e65797c73696e676c65737c7377617463687c737570706f72747c746f796f74617c6d656d6f7269616c7c6d6572636b6d73647c737461746562616e6b7c73746174656661726d7c73746367726f75707c73746f636b686f6c6d7c74726176656c7c737570706c6965737c746b6d6178787c72657374617572616e747c737572676572797c746174746f6f7c74656e6e69737c74656d6173656b7c7469636b6574737c74726164696e677c77616c6d6172747c6d636b696e7365797c77656464696e677c706c756d62696e677c746865617465727c746865617472657c736f667462616e6b7c747261696e696e677c786e2d2d393061657c786e2d2d6e6f64657c786e2d2d703161697c786e2d2d7178616d7c6d6963726f736f66747c7469656e64617c746f73686962617c736f6674776172657c73797374656d737c74726176656c6572737c76616e67756172647c76656e74757265737c766572697369676e7c7661636174696f6e737c77616e67676f757c776174636865737c776561746865727c726963686172646c697c776562736974657c77686f7377686f7c77696e646f77737c77696e6e6572737c776f6f64736964657c786e2d2d3830617377677c786e2d2d3930613361637c786e2d2d39306169737c786e2d2d63316176677c786e2d2d65316134637c786e2d2d3964627132617c786e2d2d3965743532757c786e2d2d6332627237677c786e2d2d636734626b697c786e2d2d66686265697c786e2d2d35747a6d35677c786e2d2d6e717637667c746174616d6f746f72737c746563686e6f6c6f67797c786e2d2d6a316165667c786e2d2d6a31616d687c756e69766572736974797c786e2d2d6c316163637c786e2d2d6e676272787c7a7565726963687c74726176656c657273696e737572616e63657c786e2d2d3330727237797c786e2d2d70316163667c6d6974737562697368697c796f75747562657c796f6b6f68616d617c786e2d2d33707875386b7c786e2d2d3435713131637c786e2d2d34676272696d7c79616d6178756e7c766c61616e646572656e7c786e2d2d71786136617c786e2d2d3535717835647c786e2d2d74636b77657c786e2d2d76687175767c796f646f62617368697c786e2d2d637a727330747c786e2d2d6431616c667c786e2d2d7073737932757c786e2d2d743630623536617c786e2d2d3830616478686b737c786e2d2d3830616f3231617c786e2d2d38306173656864627c786e2d2d7137636536617c786e2d2d756e757034797c786e2d2d71396a796234637c786e2d2d38793061303633617c786e2d2d396b72743030617c786e2d2d6f33637734687c786e2d2d6e7971793236617c786e2d2d6f7475373936647c786e2d2d706762733064687c786e2d2d733962726a39637c786e2d2d6f6762706638666c7c786e2d2d736573353534677c786e2d2d767571383631627c786e2d2d71636b6131706d637c786e2d2d726871763936677c786e2d2d726f76753838627c786e2d2d383061716563647231617c786e2d2d727663316530616d33657c786e2d2d74697134397871796a7c786e2d2d7767626831637c786e2d2d623477363035666572647c786e2d2d6e71763766733030656d617c786e2d2d7734727334306c7c786e2d2d7767626c36617c706c617973746174696f6e7c786e2d2d336863726a39637c786e2d2d343263326439617c766572736963686572756e677c776561746865726368616e6e656c7c77696c6c69616d68696c6c7c776f6c746572736b6c757765727c786e2d2d313162346333647c786e2d2d31636b326531627c786e2d2d317171773233617c786e2d2d327363726a39637c786e2d2d3362737430306d7c786e2d2d336473343433677c786e2d2d343562726a39637c786e2d2d353571773432677c786e2d2d3666727a3832677c786e2d2d63636b326233627c786e2d2d33653062373037657c786e2d2d786871353231627c786e2d2d343562723563796c7c786e2d2d346462726b3063657c786e2d2d353462376674613063637c786e2d2d35737533346a393336626773677c786e2d2d3671713938366233786c7c786e2d2d7939613361717c786e2d2d7a6672313634627c786e2d2d65636b7664746339647c786e2d2d7966726f346936376f7c786e2d2d7967626932616d6d787c786e2d2d786b6332616c3368796532617c786e2d2d62636b316239613564726534637c786e2d2d637a727532647c786e2d2d643161636a33627c786e2d2d656676793838687c786e2d2d6663743432396b7c786e2d2d6669713634627c786e2d2d6669717338737c786e2d2d6669717a39737c786e2d2d666a71373230617c786e2d2d696f306137697c786e2d2d637a72363934627c786e2d2d666c77333531657c786e2d2d673278783438637c786e2d2d667a633263396532637c786e2d2d636c636863306561306232673261396763647c786e2d2d687874383134657c786e2d2d696d723531336e7c786e2d2d6a3677313933677c786e2d2d6a76723138396d7c786e2d2d67636b72336630667c786e2d2d676563726a39637c786e2d2d676b33617431657c786e2d2d683262726a39637c786e2d2d667063726a396333647c786e2d2d683262726a396338637c786e2d2d683262726567336576657c786e2d2d69316236623161366132657c786e2d2d6b7072773133647c786e2d2d666971323238633568737c786e2d2d667a7973386436397576676d7c786e2d2d6a6c713438306e3272677c786e2d2d6b637278373764317834617c786e2d2d6b7072793537647c786e2d2d6b70757433697c786e2d2d6d6762626831617c786e2d2d6e67626335617a647c786e2d2d63636b7763786574647c786e2d2d6d787471316d7c786e2d2d6d6762747832627c786e2d2d6d6978383931667c786e2d2d6d676239617762667c786e2d2d6d6762706c3266687c786e2d2d6d6b3162753434637c786e2d2d6d676261336133656a747c786e2d2d6d676274336468647c786e2d2d6d676261616d376138687c786e2d2d6d676261623262647c786e2d2d6d676267753832617c786e2d2d6d6762617968376770617c786e2d2d6e676265396530617c786e2d2d6d6762616939617a677170366a7c786e2d2d6d6762626831613731657c786e2d2d6c6762626174316164386a7c786e2d2d6d6762636137647a646f7c786e2d2d6d676261336134663136617c786e2d2d6d67626137633062626e30617c786e2d2d6d6762693465636578707c786e2d2d6d67626168316133686a6b72647c786e2d2d6d676263306139617a63677c786e2d2d6d67626370713667706131617c786e2d2d6d6762657270346135643461727c786e2d2d6d6762783463643061627c786e2d2d7665726d67656e73626572617465722d6374627c786e2d2d786b6332646c336135656530687c786e2d2d7665726d67656e736265726174756e672d7077627c786e2d2d7734723835656c3866687535646e72617c, 'no'),
('tldlistHash', 0x36336364326230623133303962396431303435636661303735393337343833653030363966393764636436636463313861653237336637326666653538333036, 'yes'),
('totalScansRun', 0x31, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', '', 'yes'),
('vulnerabilities_core', 0x613a313a7b733a373a2263757272656e74223b613a343a7b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b733a353a2273636f7265223b4e3b733a363a22766563746f72223b4e3b7d7d, 'no'),
('vulnerabilities_plugin', 0x613a363a7b693a303b613a343a7b733a343a22736c7567223b733a373a22616b69736d6574223b733a31313a2266726f6d56657273696f6e223b733a333a22352e35223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a313b613a343a7b733a343a22736c7567223b733a32333a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e223b733a31313a2266726f6d56657273696f6e223b733a353a22372e313030223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a323b613a343a7b733a343a22736c7567223b733a31313a226175746f7074696d697a65223b733a31313a2266726f6d56657273696f6e223b733a363a22332e312e3133223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a333b613a343a7b733a343a22736c7567223b733a31313a2268656c6c6f2d646f6c6c79223b733a31313a2266726f6d56657273696f6e223b733a353a22312e372e32223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a343b613a343a7b733a343a22736c7567223b733a32303a227365637572652d637573746f6d2d6669656c6473223b733a31313a2266726f6d56657273696f6e223b733a353a22362e352e37223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a353b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a353a22382e312e30223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d7d, 'no'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 0x6c6561726e696e672d6d6f6465, 'yes'),
('wfKillRequested', 0x30, 'no'),
('wfPeakMemory', 0x3632393134353630, 'no'),
('wfsbskip', 0x49416355647863327155326f6b5946333639496b726f333471744e2b795177426734446b6736313772506e704a38532b694e41504d545a4d44413650305a444f537a7651764865734d5a4c2f596d6d384953474d3963457046614f75635646574a644f4e6b5172486d6172336836646259596f646f3952736c313366687a39414b7a7272414352674f4278764a5936446c644d4362316366445a70325349334e67335935735472744d575667525a4647345a6e504746474f476837564d4e716135766643687845334265744e48766259536c594b456439632f7a47744b665439737148354c30313737457972716275584a5934636170422b443870794846386339513d3d, 'no'),
('wfsbskipHash', 0x30333335646462346330306663343734356364643334356634393831333366356461313533303564653162666566633938303132616533356462396532393839, 'yes'),
('wfScanStartVersion', 0x362e382e33, 'yes'),
('wfStatusStartMsgs', 0x613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d, 'yes'),
('wf_scanLastStatusTime', 0x30, 'yes'),
('wf_scanRunning', '', 'yes'),
('wf_summaryItems', 0x613a383a7b733a31323a227363616e6e6564506f737473223b693a303b733a31353a227363616e6e6564436f6d6d656e7473223b693a303b733a31323a227363616e6e656446696c6573223b693a303b733a31343a227363616e6e6564506c7567696e73223b693a303b733a31333a227363616e6e65645468656d6573223b693a303b733a31323a227363616e6e65645573657273223b693a303b733a31313a227363616e6e656455524c73223b693a303b733a31303a226c617374557064617465223b693a313736323131353036383b7d, 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('whitelistHash', 0x65626465313937353564356665356662303264306365636134616235656336623234363130623439323534313439373136386566356238303163386432363237, 'yes');
INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('whitelistPresets', 0x7b22776f726466656e6365223a7b226e223a22576f726466656e6365222c2268223a747275652c2264223a747275652c2266223a747275652c2272223a5b2235342e36382e33322e323437222c2234342e3233352e3231312e323332222c2235342e37312e3230332e313734225d7d2c22737563757269223a7b226e223a22537563757269222c2264223a747275652c2272223a5b223139322e38382e3133342e305c2f3233222c223138352e39332e3232382e305c2f3232222c2236362e3234382e3230302e305c2f3232222c22326130323a666538303a3a5c2f3239222c223230382e3130392e302e305c2f3232225d7d2c2266616365626f6f6b223a7b226e223a2246616365626f6f6b222c2264223a747275652c2272223a5b2233312e31332e32342e305c2f3231222c2233312e31332e36342e305c2f3138222c2234352e36342e34302e305c2f3232222c2235372e3134312e302e305c2f3234222c2235372e3134312e312e305c2f3234222c2235372e3134312e322e305c2f3234222c2235372e3134312e332e305c2f3234222c2235372e3134312e342e305c2f3234222c2235372e3134312e352e305c2f3234222c2235372e3134312e362e305c2f3234222c2235372e3134312e372e305c2f3234222c2235372e3134312e382e305c2f3234222c2235372e3134312e392e305c2f3234222c2235372e3134312e31302e305c2f3234222c2235372e3134312e31312e305c2f3234222c2235372e3134312e31322e305c2f3234222c2235372e3134312e31332e305c2f3234222c2235372e3134342e302e305c2f3134222c2236362e3232302e3134342e305c2f3230222c2236392e36332e3137362e305c2f3230222c2236392e3137312e3232342e305c2f3139222c2237342e3131392e37362e305c2f3232222c223130322e3133322e39362e305c2f3230222c223130332e342e39362e305c2f3232222c223132392e3133342e302e305c2f3136222c223134372e37352e3230382e305c2f3230222c223135372e3234302e302e305c2f3136222c223136332e37302e3132382e305c2f3137222c223136332e37372e3132382e305c2f3137222c223137332e3235322e36342e305c2f3138222c223137392e36302e3139322e305c2f3232222c223138352e36302e3231362e305c2f3232222c223138352e38392e3231362e305c2f3232222c223230342e31352e32302e305c2f3232222c22323430313a646230303a3a5c2f3332222c22323632303a303a316330303a3a5c2f3430222c22326130333a323838303a3a5c2f3332222c22326130333a323838313a3a5c2f3332222c22326130333a323838373a666632633a3a5c2f3438222c22326130333a323838373a666632643a3a5c2f3438222c22326130333a383365303a3a5c2f3332222c22326131303a663738313a31303a636565303a3a5c2f3634225d7d2c22757074696d65726f626f74223a7b226e223a22557074696d6520526f626f74222c2264223a747275652c2272223a5b223231362e3134342e3235302e313530222c2236392e3136322e3132342e323236222c2236392e3136322e3132342e323237222c2236392e3136322e3132342e323238222c2236392e3136322e3132342e323239222c2236392e3136322e3132342e323330222c2236392e3136322e3132342e323331222c2236392e3136322e3132342e323332222c2236392e3136322e3132342e323333222c2236392e3136322e3132342e323334222c2236392e3136322e3132342e323335222c2236392e3136322e3132342e323336222c2236392e3136322e3132342e323337222c2236392e3136322e3132342e323338222c2236332e3134332e34322e323432222c2236332e3134332e34322e323433222c2236332e3134332e34322e323434222c2236332e3134332e34322e323435222c2236332e3134332e34322e323436222c2236332e3134332e34322e323437222c2236332e3134332e34322e323438222c2236332e3134332e34322e323439222c2236332e3134332e34322e323530222c2236332e3134332e34322e323531222c2236332e3134332e34322e323532222c2236332e3134332e34322e323533222c223231362e3234352e3232312e3832222c223231362e3234352e3232312e3833222c223231362e3234352e3232312e3834222c223231362e3234352e3232312e3835222c223231362e3234352e3232312e3836222c223231362e3234352e3232312e3837222c223231362e3234352e3232312e3838222c223231362e3234352e3232312e3839222c223231362e3234352e3232312e3930222c223231362e3234352e3232312e3931222c223231362e3234352e3232312e3932222c223231362e3234352e3232312e3933222c223230382e3131352e3139392e3138222c223230382e3131352e3139392e3139222c223230382e3131352e3139392e3230222c223230382e3131352e3139392e3231222c223230382e3131352e3139392e3232222c223230382e3131352e3139392e3233222c223230382e3131352e3139392e3234222c223230382e3131352e3139392e3235222c223230382e3131352e3139392e3236222c223230382e3131352e3139392e3237222c223230382e3131352e3139392e3238222c223230382e3131352e3139392e3239222c223230382e3131352e3139392e3330222c223231362e3134342e3234382e3138222c223231362e3134342e3234382e3139222c223231362e3134342e3234382e3230222c223231362e3134342e3234382e3231222c223231362e3134342e3234382e3232222c223231362e3134342e3234382e3233222c223231362e3134342e3234382e3234222c223231362e3134342e3234382e3235222c223231362e3134342e3234382e3236222c223231362e3134342e3234382e3237222c223231362e3134342e3234382e3238222c223231362e3134342e3234382e3239222c223231362e3134342e3234382e3330222c2234362e3133372e3139302e313332222c223132322e3234382e3233342e3233222c223136372e39392e3230392e323334222c223137382e36322e35322e323337222c2235342e37392e32382e313239222c2235342e39342e3134322e323138222c223130342e3133312e3130372e3633222c2235342e36372e31302e313237222c2235342e36342e36372e313036222c223135392e3230332e33302e3431222c2234362e3130312e3235302e313335222c2231382e3232312e35362e3237222c2235322e36302e3132392e313830222c223135392e38392e382e313131222c223134362e3138352e3134332e3134222c223133392e35392e3137332e323439222c223136352e3232372e38332e313438222c223132382e3139392e3139352e313536222c223133382e3139372e3135302e313531222c2233342e3233332e36362e313137222c2235322e37302e38342e313635222c2235342e3232352e38322e3435222c2235342e3232342e37332e323131222c22332e37392e39322e313137222c22332e32312e3133362e3837222c2233352e3137302e3231352e313936222c2233352e3135332e3234332e313438222c2231382e3131362e3135382e313231222c2231382e3232332e35302e3136222c2235342e3234312e3137352e313437222c22332e3231322e3132382e3632222c2235322e32322e3233362e3330222c2235342e3136372e3232332e313734222c22332e31322e3235312e313533222c2235322e31352e3134372e3237222c2231382e3131362e3230352e3632222c22332e32302e36332e313738222c2231332e35362e33332e34222c2235322e382e3230382e313433222c2233342e3139382e3230312e3636222c2233352e38342e3131382e313731222c2234342e3232372e33382e323533222c2233352e3136362e3232382e3938222c2239392e38302e3137332e313931222c2239392e38302e312e3734222c22332e3131312e38382e313538222c2231332e3132372e3138382e313234222c2231382e3138302e3230382e323134222c2235342e3234392e3137302e3237222c22332e3130352e3139302e323231222c22332e3130352e3133332e323339222c2237382e34372e39382e3535222c223135372e39302e3135352e323430222c2234392e31332e32342e3831222c223136382e3131392e39362e323339222c223135372e39302e3135362e3633222c2238382e39392e38302e323237222c2234392e31332e3133342e313435222c2234392e31332e3133302e3239222c223136382e3131392e35332e313630222c223134322e3133322e3138302e3339222c2234392e31332e3136342e313438222c223132382e3134302e3130362e313134222c2237382e34372e3137332e3736222c223135392e36392e3135382e313839222c223132382e3134302e34312e313933222c223136372e3233352e3134332e313133222c2234392e31332e3136372e313233222c2237382e34362e3231352e31222c2237382e34362e3139302e3633222c223136382e3131392e3132332e3735222c223133352e3138312e3135342e39222c2233372e32372e38372e313439222c2233372e32372e33342e3439222c2233372e32372e38322e323230222c2236352e3130392e3132392e313635222c2233372e32372e32382e313533222c2233372e32372e32392e3638222c2233372e32372e33302e323133222c2236352e3130392e3134322e3738222c2236352e3130392e382e323032222c22352e3136312e37352e37222c22352e3136312e36312e323338222c22352e37382e38372e3338222c22352e37382e3131382e313432222c22323630373a666636383a3130373a3a33222c22323630373a666636383a3130373a3a34222c22323630373a666636383a3130373a3a35222c22323630373a666636383a3130373a3a36222c22323630373a666636383a3130373a3a37222c22323630373a666636383a3130373a3a38222c22323630373a666636383a3130373a3a39222c22323630373a666636383a3130373a3a3130222c22323630373a666636383a3130373a3a3131222c22323630373a666636383a3130373a3a3132222c22323630373a666636383a3130373a3a3133222c22323630373a666636383a3130373a3a3134222c22323630373a666636383a3130373a3a3135222c22323630373a666636383a3130373a3a3136222c22323630373a666636383a3130373a3a3137222c22323630373a666636383a3130373a3a3138222c22323630373a666636383a3130373a3a3139222c22323630373a666636383a3130373a3a3230222c22323630373a666636383a3130373a3a3231222c22323630373a666636383a3130373a3a3232222c22323630373a666636383a3130373a3a3233222c22323630373a666636383a3130373a3a3234222c22323630373a666636383a3130373a3a3235222c22323630373a666636383a3130373a3a3236222c22323630373a666636383a3130373a3a3237222c22323630373a666636383a3130373a3a3238222c22323630373a666636383a3130373a3a3239222c22323630373a666636383a3130373a3a3330222c22323630373a666636383a3130373a3a3331222c22323630373a666636383a3130373a3a3332222c22323630373a666636383a3130373a3a3333222c22323630373a666636383a3130373a3a3334222c22323630373a666636383a3130373a3a3335222c22323630373a666636383a3130373a3a3336222c22323630373a666636383a3130373a3a3337222c22323630373a666636383a3130373a3a3338222c22323630373a666636383a3130373a3a3339222c22323630373a666636383a3130373a3a3430222c22323630373a666636383a3130373a3a3431222c22323630373a666636383a3130373a3a3432222c22323630373a666636383a3130373a3a3433222c22323630373a666636383a3130373a3a3434222c22323630373a666636383a3130373a3a3435222c22323630373a666636383a3130373a3a3436222c22323630373a666636383a3130373a3a3437222c22323630373a666636383a3130373a3a3438222c22323630373a666636383a3130373a3a3439222c22323630373a666636383a3130373a3a3530222c22323630373a666636383a3130373a3a3531222c22323630373a666636383a3130373a3a3532222c22323630373a666636383a3130373a3a3533222c22323630373a666636383a3130373a3a3534222c22323630373a666636383a3130373a3a3535222c22323630373a666636383a3130373a3a3536222c22323630373a666636383a3130373a3a3537222c22323630373a666636383a3130373a3a3538222c22323630373a666636383a3130373a3a3539222c22323630373a666636383a3130373a3a3630222c22323630373a666636383a3130373a3a3631222c22323630373a666636383a3130373a3a3632222c22326130333a623063303a323a64303a3a6661333a65303031222c22326130333a623063303a313a64303a3a6535343a61303031222c22323630343a613838303a3830303a31303a3a3465363a66303031222c22323630343a613838303a6361643a64303a3a3132323a37303031222c22326130333a623063303a333a64303a3a3333653a34303031222c22323630303a316631363a3737353a336130313a373064363a363031613a316562353a64626239222c22323630303a316631313a3536613a393030303a32333a363531623a646163303a39626534222c22326130333a623063303a333a64303a3a34343a66303031222c22326130333a623063303a303a313031303a3a32623a62303031222c22326130333a623063303a313a64303a3a32323a35303031222c22323630343a613838303a3430303a64303a3a34663a33303031222c22323430303a363138303a303a64303a3a31363a64303031222c22323630343a613838303a6361643a64303a3a31383a66303031222c22323630303a316631383a3137393a663930303a383862323a6233643a653438373a65326634222c22323630303a316631383a3137393a663930303a313937373a3931363a656533643a37313165222c22326130353a643031343a313831353a333430303a353838613a656531373a363563333a33623039222c22323630303a316631363a3737353a336130303a623732393a633232363a323733373a66653439222c22323630303a316631633a6564663a313430313a323132343a363532653a633564663a66383962222c22323630303a316631363a3737353a336130303a616362373a656338343a313166323a32626634222c22323630303a316631363a3737353a336130303a363662323a353330633a6534383a35373365222c22323630303a316631383a3137393a663930303a3830333a633831653a363035393a62373866222c22323630303a316631383a3137393a663930303a343733643a376532313a313962653a33623964222c22323630303a316631633a6564663a313430313a626436383a313437383a666537643a63303266222c22323630303a316631633a6564663a313430313a363139623a663138383a333430333a39346338222c22323630303a316631363a3737353a336130303a386332633a326261363a373738663a35626535222c22323630303a316631363a3737353a336130303a6163333a633565623a373038313a39343265222c22323630303a316631363a3737353a336130303a646262653a333662303a336334353a64613332222c22323630303a316631363a3737353a336130303a333762663a363032363a653534613a66303361222c22323630303a316631383a3137393a663930303a343639363a373732393a376262333a66353266222c22323630303a316631383a3137393a663930303a346237643a643163633a326431303a323131222c22323630303a316631383a3137393a663930303a356336383a393162363a356437353a356437222c22323630303a316631383a3137393a663930303a37313a616639613a616465373a64373732222c22323630303a316631343a3230333a653430643a633836623a316532343a666162343a37643033222c22323630303a316631343a3230333a653438623a353533383a373762323a366531333a34663864222c22323630303a316631343a3230333a653436633a366338633a6263623a353234353a37613063222c22326130313a3466383a633031333a333463303a3a5c2f3634222c22326130313a3466383a633031333a336335323a3a5c2f3634222c22326130313a3466383a633031333a336335333a3a5c2f3634222c22326130313a3466383a633031333a6331383a3a5c2f3634222c22326130313a3466383a633031323a633630653a3a5c2f3634222c22326130313a3466383a633031333a336335353a3a5c2f3634222c22326130313a3466383a6331373a343265343a3a5c2f3634222c22326130313a3466383a633031333a336335343a3a5c2f3634222c22326130313a3466383a633031333a336335363a3a5c2f3634222c22326130313a3466383a633031333a336230663a3a5c2f3634222c22326130313a3466383a316331623a376563633a3a5c2f3634222c22326130313a3466383a316331633a353335333a3a5c2f3634222c22326130313a3466383a316331623a346566343a3a5c2f3634222c22326130313a3466383a316331623a356235613a3a5c2f3634222c22326130313a3466383a316331633a313161613a3a5c2f3634222c22326130313a3466383a316331633a373234303a3a5c2f3634222c22326130313a3466383a6330633a383366613a3a5c2f3634222c22326130313a3466383a6332633a626561653a3a5c2f3634222c22326130313a3466383a6332633a396663363a3a5c2f3634222c22326130313a3466383a316331633a613938613a3a5c2f3634222c22326130313a3466393a633031303a623437333a3a5c2f3634222c22326130313a3466393a633031323a643561363a3a5c2f3634222c22326130313a3466393a633031323a613935343a3a5c2f3634222c22326130313a3466393a633031303a646330333a3a5c2f3634222c22326130313a3466393a633031323a353932613a3a5c2f3634222c22326130313a3466393a633031303a653730623a3a5c2f3634222c22326130313a3466393a633031323a393763353a3a5c2f3634222c22326130313a3466393a633031323a623234363a3a5c2f3634222c22326130313a3466393a633031323a613534343a3a5c2f3634222c22326130313a3466663a66303a653963663a3a5c2f3634222c22326130313a3466663a66303a623266323a3a5c2f3634222c22326130313a3466663a3166303a393039323a3a5c2f3634222c22326130313a3466663a3166303a653832313a3a5c2f3634225d7d2c2273746174757363616b65223a7b226e223a2253746174757343616b65222c2264223a747275652c2272223a5b223132382e3139392e3130352e313734222c223136372e3137322e3137312e313032222c223134392e3234382e35302e3239222c223134362e3139302e32302e313133222c2234352e33322e36392e3134222c2234352e33322e3139352e323235222c223134392e32382e37392e313430222c223130382e36312e3136322e323134222c2233342e39322e34332e3634222c2234352e37362e3132332e323131222c2233342e36352e3131362e3830222c223133382e36382e3138372e323235222c2231332e34382e3233382e313537222c2234352e36332e3130342e3131222c2234352e33322e3135312e3231222c223139382e3139392e3131322e3637222c223133382e3139372e3230312e3637222c223139382e3231312e3132332e323037222c223134362e3139302e32302e31222c223139382e3231312e3132312e323137222c2234352e33322e3230322e3537222c223134362e3139302e32342e323331222c223130382e36312e3131392e313533222c223139382e3231312e3132332e3534222c2234352e33322e3134312e313633222c223130382e36312e3235322e313437222c223135352e3133382e3234372e3937222c223130382e36312e3232342e3336222c223137382e36322e36322e323532222c223230392e3232322e33302e323432222c223135392e36352e31392e3238222c223130382e36312e3231322e313431222c223136352e32322e3132322e323338222c223133382e36382e3133392e3938222c223139382e3231312e3132322e3634222c223134362e3139302e32302e3133222c223139382e3231312e3131382e3332222c223133392e35392e3137392e313532222c223230362e3138392e3137382e3134222c223137342e3133382e35372e323533222c223138382e3136362e3135302e3438222c223139322e3234312e3234332e3732222c2234362e3130312e31312e313436222c223136322e3234332e33372e3430222c223135392e3232332e3137352e323130222c223137382e36322e38352e313035222c223137382e36322e38332e313432222c223137382e36322e34302e313832222c223136352e3232372e37342e323234222c223135372e3234352e33322e3333222c223135392e38392e38322e3333222c223230372e3134382e31332e3535222c223135392e36352e39332e313338222c223136372e37312e3134332e3736222c2231362e3137302e3131342e3139222c2231332e3234362e35342e313232222c223136372e3137322e3137352e313638222c223136372e3137322e3136312e313131222c223136372e37312e36312e3838222c223138382e3136362e3134352e3739222c2233342e3136352e38302e313435222c223134332e3131302e3231362e323238222c2231382e3130322e312e3632222c223231362e3233382e37332e313032222c2231332e3234352e3232322e323033222c223135392e3232332e37342e313231222c223136372e3137322e3136332e3531222c223136372e3137322e3137312e3839222c223136372e3137322e3136332e323338222c2236382e3138332e33392e313032222c223136352e32322e3132352e313839222c223133382e36382e38332e323331222c2233352e3139352e3138382e323234222c2231352e3136302e36382e313739222c2233342e3131362e3135362e313330222c223134332e3131302e3137372e323532222c2234352e36332e3132312e313539222c2234352e33322e3134352e3739222c223139392e3234372e31322e313030222c223134332e3139382e3135332e3939222c223130372e3139312e34372e313331222c223134332e3234342e3137382e313839222c223133382e36382e3235322e323039222c223139382e3139392e3130302e3133222c223134332e3131302e3231362e313539222c223134332e3131302e3231362e3634222c223134332e3131302e3231362e3437222c223136372e3137322e3137312e3130222c223136372e3137322e3136332e323239222c223230392e39372e3137382e313135222c223136372e3137322e3136332e313238222c223136352e32322e3231302e323138222c2234352e36332e38382e323133222c2234352e36332e38362e313230222c2234352e33322e3132382e3830222c223130342e3135362e3232392e3234222c2234352e33322e3231322e3536222c223130342e3135362e3235352e313834222c223130382e36312e3231352e313739222c2234352e33322e3136362e313935222c2234352e33322e3136302e313732222c2234352e33322e3137312e3234222c223130372e3139312e35372e323337222c2234352e36332e32362e3738222c2234352e37362e3139322e3530222c2234352e33322e33362e313538222c223134332e3131302e3137372e323534222c223134332e3131302e3137372e3138222c223130342e3233382e3136342e313035222c2234352e36332e37362e3638222c2234352e36332e37382e3834222c2234352e33322e3139352e313836222c2234352e37362e332e313132222c2234352e33322e372e3232222c2234352e37362e312e3434222c223136352e3232372e3130342e3631222c223136322e3234332e33372e3538222c223136372e39392e3232342e313533222c2234352e36332e35312e3633222c2234352e36332e36312e323133222c223130382e36312e3230352e323031222c2234352e33322e3139322e313938222c2234352e33322e3139352e3933222c2234352e36332e39372e34222c223130342e3233382e3138352e313735222c223130342e3233382e3138352e3436222c223130342e3233382e3138362e323039222c2234352e37362e3132382e323530222c223130342e3233382e3137312e313736222c223136372e3137322e3137332e313635222c223130342e3233382e3138372e3631222c223130342e3233382e3137342e323334222c223130382e36312e3139362e3337222c223130382e36312e3139372e313437222c2234352e37362e3133342e313634222c2234352e37362e3133352e323533222c223130382e36312e3137332e30222c2234352e36332e39362e3638222c2234352e37362e3133342e3835222c2234352e33322e3138332e313238222c2234352e37362e3133302e3433222c2234352e37362e3132392e323132222c2234352e37362e3133342e313938222c2234352e37362e3133342e323337222c2234352e37362e3133352e3134222c2234352e33322e3139332e3133222c2234352e37362e34342e323231222c223134302e38322e35322e313939222c223139392e3234372e392e3633222c223134302e38322e35322e3531222c2234352e37372e36312e313838222c223134392e32382e3132342e313430222c223130382e36312e3232392e323532222c2235342e37322e3234372e313933222c223134322e39332e3130302e323335222c2231332e3234352e3139392e313538222c2235342e3139342e362e323533222c2234352e37362e3132322e3731222c2234352e37372e3233352e323436222c223136372e3137322e3137312e313530222c223231362e3233382e37362e323135222c223230372e3134382e3130362e313832222c2234352e37372e32332e3831222c223134312e3136342e35382e39222c223134312e3136342e34382e313631222c223134312e3136342e33352e323333222c2231332e34392e3134312e313332222c2231332e34382e3131302e323134222c2233342e36352e3134362e313038222c2233342e36352e39372e323531222c2233342e39352e3136332e313231222c2233342e39352e3231342e313837222c2233352e3139392e39362e323433222c2233342e37382e3132332e313230222c2233342e39322e3137312e313139222c2233342e3131382e35392e313438222c2233342e3131382e35332e3132222c2233342e36352e39372e3939222c2233342e3131362e3232392e313032222c2233342e3136352e31332e313930222c223230392e39372e3137312e3434222c2233342e3136352e3231392e313932222c2233342e3136352e3132302e313038222c2233352e3138372e3131392e313030222c2233342e33342e3138352e323336222c2233352e3234372e3234382e3237222c2231332e3234372e31372e3630222c2235342e3137302e372e3134222c2235322e34382e35322e3935222c2233342e39362e3133392e3835222c2233342e3135302e33352e3134222c223231362e3233382e38342e323037222c223231362e3233382e37372e313131222c2231352e3136312e38382e313539222c2231382e3130322e3235332e323032222c223134302e38322e342e323139222c2233342e32322e39362e313932222c2233352e3139382e3233322e323434222c2233342e3137352e34392e3234222c2233342e3137352e31392e313939222c2233342e3137352e32312e313635222c2233342e3137352e38362e3231222c2233342e31332e3136362e33222c2233342e31332e3138352e313133222c2233342e33342e39372e323133222c2233342e31332e3138382e3735222c2233342e3134312e31362e323032222c2233342e3135392e3137382e313936222c2233342e34302e33392e3331222c2233342e3130372e3131322e3434222c2233352e3139372e3235312e313136222c2233352e3139372e3139352e323133222c2233352e3139372e3233322e3137222c2233342e3134372e3231392e313432222c2233342e3135352e3134332e3537222c2233342e3136332e3134372e323530222c2233342e3135352e3233322e323239222c2233342e3135352e35382e313830222c2233352e3233352e3131352e313436222c2233342e39342e3137352e313232222c2233342e39342e3231362e323135222c2233342e3130322e3132312e323530222c2233342e3137342e392e323032222c2233342e3137342e34392e313639222c2233342e3137342e31362e313132222c2233342e3137342e31362e323030222c223136352e32322e37372e313937222c223139382e3139392e39352e323136222c223130382e36312e39392e323332222c2234352e33322e3235312e323130222c223139382e3139392e3131312e313232222c22326130333a623063303a313a64303a3a61343a36303031222c223137382e36322e34372e3833222c22326130333a623063303a313a61313a3a3361353a33303031222c2234362e3130312e38362e323533222c223138382e3136362e3137302e323333222c22323430303a363138303a303a64303a3a3235373a31222c223132382e3139392e3233302e3436222c223132382e3139392e3235322e3833222c22326130333a623063303a333a64303a3a6236643a34303031222c2234362e3130312e3137322e3339222c22326130333a623063303a333a64303a3a6236643a35303031222c2234362e3130312e3232372e323332222c223139382e3139392e39312e323434222c22323630343a613838303a3430303a64303a3a32633a31222c223139322e33342e36332e3737222c22323630343a613838303a3430303a64303a3a3639393a37303031222c223139382e3231312e3130342e3130222c22323630343a613838303a3430303a64303a3a3639393a39303031222c223139382e3139392e39312e3332222c22323430303a363138303a3130303a64303a3a39343a39303031222c223133392e35392e362e313635222c22323630343a613838303a6361643a64303a3a3264343a63303031222c223135392e3230332e36302e323139222c22326130333a623063303a333a64303a3a353736343a66303031222c2234362e3130312e3231372e313831222c22326130333a623063303a303a313031303a3a3361653a31222c223139382e3139392e3132362e3636222c22326130333a623063303a303a313031303a3a313430343a33303031222c223138382e3232362e3136312e323330222c223139322e3234312e3135312e313737222c2236372e3230372e38322e3933222c223133392e35392e3137302e3338222c22323630343a613838303a6361643a64303a3a6234353a64303031222c223136352e3232372e34372e323139222c223137382e3132382e34352e3931222c2234352e37362e3131392e313536222c2239352e3137392e3231302e3332222c223137382e3132382e34362e36222c22326130333a623063303a313a64303a3a313433323a37303031222c223137382e36322e35392e313936222c22326130333a623063303a313a65303a3a3261623a37303031222c223230392e39372e3134332e313836222c2234362e3130312e33372e3234222c223137342e3133382e34362e313031222c22326130333a623063303a313a65303a3a3236343a64303031222c223230392e39372e3133322e3339222c223137382e3132382e33372e313739222c223139322e3234312e3234322e313133222c22326130333a623063303a333a64303a3a65323a61303031222c223230372e3135342e3234362e313835222c223136322e3234332e32392e323235222c2231332e34392e38352e3237222c22323630343a613838303a323a64303a3a323134373a37303031222c223134322e39332e33312e313238222c223136322e3234332e33302e3734222c223130372e3137302e3234382e313739222c223134322e39332e34372e313338222c223136322e3234332e33322e313533222c223130372e3137302e3230332e3635222c22326130333a623063303a313a65303a3a3662303a36303031222c223136352e3233322e34342e323434222c223136322e3234332e33332e323035222c2234362e3130312e37352e313335222c223136352e3233322e39382e313833222c223136322e3234332e32302e313734222c2234352e36332e32372e3330222c223136372e39392e3234322e3431222c223136322e3234332e31392e313133222c223133392e3138302e3136342e313632222c223139382e3139392e3131352e313835222c223136322e3234332e3134312e313335222c223130372e3137302e3233352e323430222c223130342e3233362e3136332e3930222c223230392e39372e3133322e323430222c223138382e3136362e3135382e323234225d7d2c226d616e6167657770223a7b226e223a224d616e6167655750222c2264223a66616c73652c2272223a5b2235342e3139312e3133372e3137222c2233342e3231312e3138302e3636222c2235342e37302e36352e313037222c2233342e3231302e3232342e37222c2235322e34312e352e313038222c2235322e33352e37322e313239222c2233352e3136322e3235342e323533222c2235322e31312e31322e323331222c2235322e31312e32392e3730222c2235322e31312e35342e313631222c2235322e32342e3134322e313539222c2235322e32352e3139312e323535222c2235322e33342e3132362e313137222c2235322e33342e3235342e3437222c2235322e33352e38322e3939222c2235322e33362e32382e3830222c2235322e33392e3137372e313532222c2235322e34312e3233372e3132222c2235322e34332e31332e3731222c2235322e34332e37362e323234222c2235322e38382e39362e313130222c2235322e38392e3135352e3531222c2235342e3138372e39322e3537222c2235342e3139312e33322e3635222c2235342e3139312e36372e3233222c2235342e3139312e38302e313139222c2235342e3139312e3133352e323039222c2235342e3139312e3133362e313736222c2235342e3139312e3134382e3835222c2235342e3139312e3134392e38222c2235322e32362e3132322e3231222c2235322e32342e3138372e3239222c2235322e38392e38352e313037222c2235342e3138362e3132382e313637222c2235342e3139312e34302e313336222c2235322e38382e3131392e313232222c2235322e38392e39342e313231222c2235322e32352e3131362e313136222c2235322e38382e3231352e323235222c2235342e3138362e3134332e313834222c2235322e38382e3139372e313830222c2235322e32372e3137312e313236222c2233342e3231312e3137382e323431222c2235322e32342e3233322e313538222c2235322e32362e3138372e323130222c2235322e34322e3138392e313139222c2235342e3138362e3234342e313238222c2235342e37312e35342e313032222c2233342e3231302e33352e323134222c2233342e3231332e37372e313838222c2233342e3231382e3132312e313736222c2235322e31302e3139302e313931222c2235322e31302e3232352e3936222c2235322e31312e3138372e313638222c2235322e32352e3133392e3736222c2235322e34332e3132372e323030222c2235342e3139312e3130382e39222c2235342e37302e3230312e323238222c2234342e3232342e3137342e313639222c2235322e33322e35372e3831222c2234342e3232352e3137372e313630222c2233342e3232332e3138362e323439222c2234342e3232342e3133352e323338222c2234342e3232362e3131312e3134222c2234342e3232352e3230332e313034222c2234342e3232362e3130302e313232222c2234342e3232342e3235302e313434222c2234342e3232352e3131382e323131222c2235342e3138392e39332e3639222c2234342e3233312e3138342e313132222c2234342e3233382e31302e3237222c2235342e3138352e3131362e3330222c2234342e3233382e35382e3935222c2235322e31332e32332e313534222c2235342e3134392e31362e3335222c2234342e3232362e39372e3230222c2235342e3234342e3234322e313434222c2234342e3233382e36372e313335222c2234342e3233352e31352e3736222c2235342e3231342e34372e313634222c2233342e3231342e34382e313335222c2235342e3138342e3233342e323237222c2234342e3233382e3234312e3935222c2235322e33372e3231372e313730222c2233342e3231342e3231322e3432222c2235342e3230332e3130392e313739225d7d2c2273657a6e616d223a7b226e223a2253657a6e616d2053656172636820456e67696e65222c2264223a747275652c2272223a5b2237372e37352e37322e305c2f3231222c2237372e37352e37322e305c2f3233222c2237372e37352e37322e305c2f3233222c2237372e37352e37342e305c2f3234222c2237372e37352e37352e305c2f3234222c2237372e37352e37352e305c2f3234222c2237372e37352e37362e305c2f3233222c2237372e37352e37382e305c2f3233222c223138352e36362e3138382e305c2f3232222c22326130323a3539383a3a5c2f3332222c22326130323a3539383a323a3a5c2f3438222c22326130323a3539383a613a3a5c2f3438222c22326130323a3539383a623a3a5c2f3438222c22326130323a3539383a333333333a3a5c2f3438222c22326130323a3539383a343434343a3a5c2f3438225d7d7d, 'yes'),
('wordfenceI18n', 0x31, 'yes'),
('wordpressPluginVersions', 0x613a373a7b733a373a22616b69736d6574223b733a333a22352e35223b733a32333a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e223b733a353a22372e313030223b733a31313a226175746f7074696d697a65223b733a363a22332e312e3133223b733a353a2268656c6c6f223b733a353a22312e372e32223b733a32303a227365637572652d637573746f6d2d6669656c6473223b733a353a22362e352e37223b733a393a22776f726466656e6365223b733a353a22382e312e30223b733a31343a2277702d73757065722d6361636865223b733a353a22332e302e32223b7d, 'yes'),
('wordpressThemeVersions', 0x613a353a7b733a31323a226c69616e6e652d7468656d65223b733a32333a22312e312028726573706f6e736976652075706461746529223b733a31363a227477656e74797477656e747966697665223b733a333a22312e33223b733a31363a227477656e74797477656e7479666f7572223b733a333a22312e33223b733a31373a227477656e74797477656e74797468726565223b733a333a22312e36223b733a31353a227477656e74797477656e747974776f223b733a333a22322e30223b7d, 'yes'),
('wordpressVersion', 0x362e382e33, 'yes'),
('wp_home_url', 0x687474703a2f2f6c6f63616c686f73742f6d6f64756c65352e322f776f72647072657373, 'yes'),
('wp_site_url', 0x687474703a2f2f6c6f63616c686f73742f6d6f64756c65352e322f776f72647072657373, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_role_counts`
--

CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('2fa-user-grace-period', 0x3130, 'yes'),
('allow-disabling-ntp', 0x31, 'yes'),
('allow-xml-rpc', 0x31, 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('disable-temporary-tables', 0x30, 'yes'),
('enable-auth-captcha', '', 'yes'),
('enable-login-history-columns', 0x31, 'yes'),
('enable-shortcode', '', 'yes'),
('enable-woocommerce-account-integration', '', 'yes'),
('enable-woocommerce-integration', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31373632313135303233, 'yes'),
('ntp-failure-count', 0x30, 'yes'),
('ntp-offset', 0x312e35323537383934393932383238, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('schema-version', 0x32, 'yes'),
('shared-hash-secret', 0x35626163323962653961336638626663343661323065323531623336623163626430613661313361626662636231663065613364613539336362373239306138, 'yes'),
('shared-symmetric-secret', 0x33376636663938656638396633323038343131633762393562653438316361313930616434323234663539363737313730393932396334643762366330366339, 'yes'),
('stack-ui-columns', 0x31, 'yes'),
('use-ntp', 0x31, 'yes'),
('user-count-query-state', 0x30, 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsecurityevents`
--

CREATE TABLE `wp_wfsecurityevents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `event_time` double(14,4) NOT NULL,
  `state` enum('new','sending','sent') NOT NULL DEFAULT 'new',
  `state_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfstatus`
--

INSERT INTO `wp_wfstatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1762115068.345268, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(2, 1762115068.351678, 1, 'info', 'Initiating quick scan'),
(3, 1762115068.357131, 10, 'info', 'SUM_START:Checking Web Application Firewall status'),
(4, 1762115068.359144, 10, 'info', 'SUM_ENDOK:Checking Web Application Firewall status'),
(5, 1762115068.368651, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(6, 1762115070.033323, 10, 'info', 'SUM_ENDOK:Scanning for old themes, plugins and core files'),
(7, 1762115070.039701, 1, 'info', '-------------------'),
(8, 1762115070.044690, 2, 'info', 'Wordfence used 0 B of memory for scan. Server peak memory usage was: 60 MB'),
(9, 1762115070.073365, 1, 'info', 'Quick Scan Complete. Scanned in 2 seconds.'),
(10, 1762115070.075903, 10, 'info', 'SUM_FINAL:Scan complete. Congratulations, no new problems found.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wftrafficrates`
--

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfwaffailures`
--

CREATE TABLE `wp_wfwaffailures` (
  `id` int(10) UNSIGNED NOT NULL,
  `throwable` text NOT NULL,
  `rule_id` int(10) UNSIGNED DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wfauditevents`
--
ALTER TABLE `wp_wfauditevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indexes for table `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wfls_role_counts`
--
ALTER TABLE `wp_wfls_role_counts`
  ADD PRIMARY KEY (`serialized_roles`,`two_factor_inactive`);

--
-- Indexes for table `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfsecurityevents`
--
ALTER TABLE `wp_wfsecurityevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wftrafficrates`
--
ALTER TABLE `wp_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- Indexes for table `wp_wfwaffailures`
--
ALTER TABLE `wp_wfwaffailures`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wfauditevents`
--
ALTER TABLE `wp_wfauditevents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsecurityevents`
--
ALTER TABLE `wp_wfsecurityevents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_wfwaffailures`
--
ALTER TABLE `wp_wfwaffailures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
