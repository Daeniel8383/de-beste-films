-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 22 nov 2021 om 10:00
-- Serverversie: 5.7.24
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmsdb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Een WordPress commentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-18 13:09:21', '2021-11-18 13:09:21', 'Hoi, dit is een reactie.\nOm te beginnen met beheren, bewerken en verwijderen van reacties, ga je naar het Reacties scherm op het dashboard.\nAvatars van auteurs komen van <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/de-beste-films', 'yes'),
(2, 'home', 'http://localhost/de-beste-films', 'yes'),
(3, 'blogname', 'De beste films', 'yes'),
(4, 'blogdescription', 'En nog een WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@daan-webdesign.nl', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:123:{s:8:\"films/?$\";s:25:\"index.php?post_type=films\";s:38:\"films/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=films&feed=$matches[1]\";s:33:\"films/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=films&feed=$matches[1]\";s:25:\"films/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=films&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"films/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"films/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"films/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"films/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"films/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"films/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"films/([^/]+)/embed/?$\";s:38:\"index.php?films=$matches[1]&embed=true\";s:26:\"films/([^/]+)/trackback/?$\";s:32:\"index.php?films=$matches[1]&tb=1\";s:46:\"films/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?films=$matches[1]&feed=$matches[2]\";s:41:\"films/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?films=$matches[1]&feed=$matches[2]\";s:34:\"films/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?films=$matches[1]&paged=$matches[2]\";s:41:\"films/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?films=$matches[1]&cpage=$matches[2]\";s:30:\"films/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?films=$matches[1]&page=$matches[2]\";s:22:\"films/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"films/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"films/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"films/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"films/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"films/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:27:\"index.php?genre=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=53&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'movietheme', 'yes'),
(41, 'stylesheet', 'movietheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '53', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1652792961', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'nl_NL', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:165:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Meest recente berichten</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente reacties</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archieven</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorieën</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1637575761;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1637586561;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1637586570;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637586572;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637932161;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1637314426;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:23:\"HTTPS aanvraag mislukt.\";}}', 'yes'),
(133, '_site_transient_timeout_browser_f8256d37159e3faf28ae61a6406601c3', '1637845771', 'no'),
(134, '_site_transient_browser_f8256d37159e3faf28ae61a6406601c3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.69\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', '1637845772', 'no'),
(136, '_site_transient_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, 'can_compress_scripts', '0', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(170, 'current_theme', 'Movie Theme', 'yes'),
(171, 'theme_mods_movietheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:14:\"my-custom-menu\";i:16;s:11:\"header-menu\";i:16;s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(184, 'genre_children', 'a:0:{}', 'yes'),
(191, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(227, 'jaar_children', 'a:0:{}', 'yes'),
(229, 'recovery_mode_email_last_sent', '1637406830', 'yes'),
(233, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(238, '_site_transient_timeout_theme_roots', '1637576564', 'no'),
(239, '_site_transient_theme_roots', 'a:1:{s:10:\"movietheme\";s:7:\"/themes\";}', 'no'),
(240, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1637574766;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-21 23:19:58\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(241, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1637574766;s:7:\"checked\";a:1:{s:10:\"movietheme\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(242, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1637574766;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1637317323'),
(5, 1, '_wp_desired_post_slug', 'hallo-wereld'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1637402883:1'),
(9, 10, '_edit_last', '1'),
(10, 10, '_edit_lock', '1637402882:1'),
(11, 12, '_edit_last', '1'),
(12, 12, '_edit_lock', '1637402882:1'),
(13, 14, '_edit_last', '1'),
(14, 14, '_edit_lock', '1637402882:1'),
(15, 16, '_edit_last', '1'),
(16, 16, '_edit_lock', '1637402881:1'),
(17, 18, '_edit_last', '1'),
(18, 18, '_edit_lock', '1637402881:1'),
(19, 20, '_edit_last', '1'),
(20, 20, '_edit_lock', '1637402880:1'),
(21, 22, '_edit_last', '1'),
(22, 22, '_edit_lock', '1637402880:1'),
(23, 24, '_edit_last', '1'),
(24, 24, '_edit_lock', '1637402879:1'),
(25, 26, '_edit_last', '1'),
(26, 26, '_edit_lock', '1637406779:1'),
(27, 3, '_wp_trash_meta_status', 'draft'),
(28, 3, '_wp_trash_meta_time', '1637320456'),
(29, 3, '_wp_desired_post_slug', 'privacybeleid'),
(30, 2, '_wp_trash_meta_status', 'publish'),
(31, 2, '_wp_trash_meta_time', '1637320456'),
(32, 2, '_wp_desired_post_slug', 'voorbeeld-pagina'),
(33, 30, '_edit_lock', '1637320323:1'),
(36, 42, '_wp_attached_file', '2021/11/12angrymen.jpg'),
(37, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:214;s:6:\"height\";i:321;s:4:\"file\";s:22:\"2021/11/12angrymen.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 43, '_wp_attached_file', '2021/11/fellowship.jpg'),
(39, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:640;s:4:\"file\";s:22:\"2021/11/fellowship.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 44, '_wp_attached_file', '2021/11/godfather-aaangepast_eline.jpg'),
(41, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:929;s:4:\"file\";s:38:\"2021/11/godfather-aaangepast_eline.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 45, '_wp_attached_file', '2021/11/godfather2.jpg'),
(43, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1791;s:6:\"height\";i:2552;s:4:\"file\";s:22:\"2021/11/godfather2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 46, '_wp_attached_file', '2021/11/goodbadugly.jpg'),
(45, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1063;s:6:\"height\";i:1500;s:4:\"file\";s:23:\"2021/11/goodbadugly.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 47, '_wp_attached_file', '2021/11/pulp-fiction-cover-i1288.jpg'),
(47, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:471;s:6:\"height\";i:707;s:4:\"file\";s:36:\"2021/11/pulp-fiction-cover-i1288.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 48, '_wp_attached_file', '2021/11/returnoftheking.jpg'),
(49, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1481;s:4:\"file\";s:27:\"2021/11/returnoftheking.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 49, '_wp_attached_file', '2021/11/schindler.jpg'),
(51, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:710;s:4:\"file\";s:21:\"2021/11/schindler.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 50, '_wp_attached_file', '2021/11/shawshank_.jpg'),
(53, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:22:\"2021/11/shawshank_.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 51, '_wp_attached_file', '2021/11/thedarkknight.jpg'),
(55, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1383;s:6:\"height\";i:2048;s:4:\"file\";s:25:\"2021/11/thedarkknight.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 10, '_thumbnail_id', '44'),
(57, 12, '_thumbnail_id', '45'),
(58, 14, '_thumbnail_id', '51'),
(59, 16, '_thumbnail_id', '42'),
(60, 18, '_thumbnail_id', '49'),
(61, 20, '_thumbnail_id', '48'),
(62, 22, '_thumbnail_id', '47'),
(63, 24, '_thumbnail_id', '46'),
(64, 26, '_thumbnail_id', '43'),
(65, 53, '_edit_lock', '1637331949:1'),
(66, 55, '_wp_trash_meta_status', 'publish'),
(67, 55, '_wp_trash_meta_time', '1637326860'),
(68, 8, '_thumbnail_id', '50'),
(123, 62, '_edit_lock', '1637410816:1'),
(133, 65, '_menu_item_type', 'post_type'),
(134, 65, '_menu_item_menu_item_parent', '0'),
(135, 65, '_menu_item_object_id', '53'),
(136, 65, '_menu_item_object', 'page'),
(137, 65, '_menu_item_target', ''),
(138, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 65, '_menu_item_xfn', ''),
(140, 65, '_menu_item_url', ''),
(142, 66, '_menu_item_type', 'post_type'),
(143, 66, '_menu_item_menu_item_parent', '0'),
(144, 66, '_menu_item_object_id', '62'),
(145, 66, '_menu_item_object', 'page'),
(146, 66, '_menu_item_target', ''),
(147, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 66, '_menu_item_xfn', ''),
(149, 66, '_menu_item_url', ''),
(151, 67, '_menu_item_type', 'taxonomy'),
(152, 67, '_menu_item_menu_item_parent', '0'),
(153, 67, '_menu_item_object_id', '2'),
(154, 67, '_menu_item_object', 'genre'),
(155, 67, '_menu_item_target', ''),
(156, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 67, '_menu_item_xfn', ''),
(158, 67, '_menu_item_url', ''),
(160, 68, '_menu_item_type', 'taxonomy'),
(161, 68, '_menu_item_menu_item_parent', '0'),
(162, 68, '_menu_item_object_id', '3'),
(163, 68, '_menu_item_object', 'genre'),
(164, 68, '_menu_item_target', ''),
(165, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 68, '_menu_item_xfn', ''),
(167, 68, '_menu_item_url', ''),
(169, 69, '_menu_item_type', 'taxonomy'),
(170, 69, '_menu_item_menu_item_parent', '0'),
(171, 69, '_menu_item_object_id', '4'),
(172, 69, '_menu_item_object', 'genre'),
(173, 69, '_menu_item_target', ''),
(174, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 69, '_menu_item_xfn', ''),
(176, 69, '_menu_item_url', ''),
(178, 70, '_menu_item_type', 'taxonomy'),
(179, 70, '_menu_item_menu_item_parent', '0'),
(180, 70, '_menu_item_object_id', '5'),
(181, 70, '_menu_item_object', 'genre'),
(182, 70, '_menu_item_target', ''),
(183, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 70, '_menu_item_xfn', ''),
(185, 70, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-18 13:09:21', '2021-11-18 13:09:21', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'trash', 'open', 'open', '', 'hallo-wereld__trashed', '', '', '2021-11-19 10:22:03', '2021-11-19 10:22:03', '', 0, 'http://localhost/de-beste-films/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-18 13:09:21', '2021-11-18 13:09:21', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële site bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hoi daar! Ik ben een fietskoerier in het dagelijks leven en een beginnende acteur in de avonduren, en dit is mijn site. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve doohickeys aan het publiek geleverd. Gevestigd in Gotham City, heeft XYZ meer dan 2000 mensen in dienst en doet allerlei fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://localhost/de-beste-films/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je inhoud. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'trash', 'closed', 'open', '', 'voorbeeld-pagina__trashed', '', '', '2021-11-19 11:14:16', '2021-11-19 11:14:16', '', 0, 'http://localhost/de-beste-films/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-18 13:09:21', '2021-11-18 13:09:21', '<!-- wp:heading --><h2>Wie zijn we</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Ons site adres is: http://localhost/de-beste-films.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Reacties</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als bezoekers reacties achterlaten op de site, verzamelen we de gegevens getoond in het reactieformulier, het IP-adres van de bezoeker en de browser user agent om te helpen spam te detecteren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina van de Gravatar dienst kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een geregistreerde gebruiker bent en afbeeldingen naar de site upload, moet je voorkomen dat je afbeeldingen uploadt met daarin EXIF GPS locatie gegevens. Bezoekers van de site kunnen de afbeeldingen van de site downloaden en de locatiegegevens inzien.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat op onze site, kun je aangeven of je naam, je e-mailadres en site in een cookie opgeslagen mogen worden. Dit doen we voor je gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Indien je onze inlogpagina bezoekt, slaan we een tijdelijke cookie op om te controleren of je browser cookies accepteert. Deze cookie bevat geen persoonlijke gegevens en wordt verwijderd zodra je je browser sluit.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zodra je inlogt, zullen we enkele cookies bewaren in verband met je login informatie en schermweergave opties. Login cookies zijn 2 dagen geldig en cookies voor schermweergave opties 1 jaar. Als je &quot;Herinner mij&quot; selecteert, wordt je login 2 weken bewaard. Zodra je uitlogt van je account, worden login cookies verwijderd.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonlijke data en heeft enkel het post ID van het artikel wat je hebt bewerkt in zich. Deze cookie is na een dag verlopen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ingesloten inhoud van andere sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Berichten op deze site kunnen ingesloten inhoud bevatten (bijvoorbeeld video\'s, afbeeldingen, berichten, enz.). Ingesloten inhoud van andere sites gedraagt zich exact hetzelfde alsof de bezoeker deze andere site heeft bezocht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Deze sites kunnen gegevens over je verzamelen, cookies gebruiken, extra tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief het vastleggen van de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Met wie we je gegevens delen</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een wachtwoord reset aanvraagt, wordt je IP-adres opgenomen in de reset e-mail.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hoelang we je gegevens bewaren</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolgreacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Voor gebruikers die zich op onze site registreren (indien aanwezig), slaan we ook de persoonlijke informatie op die ze verstrekken in hun gebruikersprofiel. Alle gebruikers kunnen op ieder moment hun persoonlijke informatie bekijken, bewerken of verwijderen (behalve dat ze hun gebruikersnaam niet kunnen wijzigen). Site beheerders kunnen deze informatie ook bekijken en bewerken.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke rechten je hebt over je gegevens</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een account hebt op deze site of je hebt reacties achter gelaten, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons opgegeven hebt. Je kan ook verzoeken dat we alle persoonlijke gegevens die we van je hebben wissen. Dit bevat geen gegevens die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligings doeleinden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Waar we je gegevens naartoe sturen</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Mogelijk worden reacties van bezoekers gecontroleerd via een geautomatiseerde spamdetectie service.</p><!-- /wp:paragraph -->', 'Privacybeleid', '', 'trash', 'closed', 'open', '', 'privacybeleid__trashed', '', '', '2021-11-19 11:14:16', '2021-11-19 11:14:16', '', 0, 'http://localhost/de-beste-films/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-11-18 13:09:32', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-18 13:09:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/de-beste-films/?p=4', 0, 'post', '', 0),
(5, 1, '2021-11-19 10:22:03', '2021-11-19 10:22:03', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-11-19 10:22:03', '2021-11-19 10:22:03', '', 1, 'http://localhost/de-beste-films/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-11-19 10:52:49', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-11-19 10:52:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/de-beste-films/?post_type=films&p=6', 0, 'films', '', 0),
(7, 1, '2021-11-19 10:53:50', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-19 10:53:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/de-beste-films/?post_type=films&p=7', 0, 'films', '', 0),
(8, 1, '2021-11-19 11:01:55', '2021-11-19 11:01:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', 'The Shawshank Redemption', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'publish', 'closed', 'closed', '', 'the-shawshank-redemption', '', '', '2021-11-20 10:10:20', '2021-11-20 10:10:20', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=8', 0, 'films', '', 0),
(9, 1, '2021-11-19 11:01:55', '2021-11-19 11:01:55', '', 'The Shawshank Redemption', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-19 11:01:55', '2021-11-19 11:01:55', '', 8, 'http://localhost/de-beste-films/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-19 11:02:06', '2021-11-19 11:02:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Godfather', '', 'publish', 'closed', 'closed', '', 'the-godfather', '', '', '2021-11-20 10:09:50', '2021-11-20 10:09:50', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=10', 0, 'films', '', 0),
(11, 1, '2021-11-19 11:02:06', '2021-11-19 11:02:06', '', 'The Godfather', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-19 11:02:06', '2021-11-19 11:02:06', '', 10, 'http://localhost/de-beste-films/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-11-19 11:02:12', '2021-11-19 11:02:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Godfather: Part II', '', 'publish', 'closed', 'closed', '', 'the-godfather-part-ii', '', '', '2021-11-19 11:32:36', '2021-11-19 11:32:36', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=12', 0, 'films', '', 0),
(13, 1, '2021-11-19 11:02:12', '2021-11-19 11:02:12', '', 'The Godfather: Part II', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-19 11:02:12', '2021-11-19 11:02:12', '', 12, 'http://localhost/de-beste-films/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-11-19 11:02:20', '2021-11-19 11:02:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Dark Knight', '', 'publish', 'closed', 'closed', '', 'the-dark-knight', '', '', '2021-11-20 10:09:30', '2021-11-20 10:09:30', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=14', 0, 'films', '', 0),
(15, 1, '2021-11-19 11:02:20', '2021-11-19 11:02:20', '', 'The Dark Knight', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-11-19 11:02:20', '2021-11-19 11:02:20', '', 14, 'http://localhost/de-beste-films/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-11-19 11:02:27', '2021-11-19 11:02:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'De 12 gezworenen', '', 'publish', 'closed', 'closed', '', 'de-12-gezworenen', '', '', '2021-11-20 10:09:18', '2021-11-20 10:09:18', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=16', 0, 'films', '', 0),
(17, 1, '2021-11-19 11:02:27', '2021-11-19 11:02:27', '', 'De 12 gezworenen', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-11-19 11:02:27', '2021-11-19 11:02:27', '', 16, 'http://localhost/de-beste-films/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-11-19 11:02:41', '2021-11-19 11:02:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'Schindler\'s List', '', 'publish', 'closed', 'closed', '', 'schindlers-list', '', '', '2021-11-20 10:09:10', '2021-11-20 10:09:10', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=18', 0, 'films', '', 0),
(19, 1, '2021-11-19 11:02:41', '2021-11-19 11:02:41', '', 'Schindler\'s List', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-11-19 11:02:41', '2021-11-19 11:02:41', '', 18, 'http://localhost/de-beste-films/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-11-19 11:02:51', '2021-11-19 11:02:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Lord of the Rings: The Return of the King', '', 'publish', 'closed', 'closed', '', 'the-lord-of-the-rings-the-return-of-the-king', '', '', '2021-11-20 10:08:59', '2021-11-20 10:08:59', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=20', 0, 'films', '', 0),
(21, 1, '2021-11-19 11:02:51', '2021-11-19 11:02:51', '', 'The Lord of the Rings: The Return of the King', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-19 11:02:51', '2021-11-19 11:02:51', '', 20, 'http://localhost/de-beste-films/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-11-19 11:03:00', '2021-11-19 11:03:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'Pulp Fiction', '', 'publish', 'closed', 'closed', '', 'pulp-fiction', '', '', '2021-11-20 10:08:51', '2021-11-20 10:08:51', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=22', 0, 'films', '', 0),
(23, 1, '2021-11-19 11:03:00', '2021-11-19 11:03:00', '', 'Pulp Fiction', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-11-19 11:03:00', '2021-11-19 11:03:00', '', 22, 'http://localhost/de-beste-films/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-11-19 11:03:11', '2021-11-19 11:03:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Good, the Bad and the Ugly', '', 'publish', 'closed', 'closed', '', 'the-good-the-bad-and-the-ugly', '', '', '2021-11-20 10:08:38', '2021-11-20 10:08:38', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=24', 0, 'films', '', 0),
(25, 1, '2021-11-19 11:03:11', '2021-11-19 11:03:11', '', 'The Good, the Bad and the Ugly', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-11-19 11:03:11', '2021-11-19 11:03:11', '', 24, 'http://localhost/de-beste-films/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-11-19 11:03:24', '2021-11-19 11:03:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Lord of the Rings: The Fellowship of the Ring', '', 'publish', 'closed', 'closed', '', 'the-lord-of-the-rings-the-fellowship-of-the-ring', '', '', '2021-11-20 10:08:11', '2021-11-20 10:08:11', '', 0, 'http://localhost/de-beste-films/?post_type=films&#038;p=26', 0, 'films', '', 0),
(27, 1, '2021-11-19 11:03:24', '2021-11-19 11:03:24', '', 'The Lord of the Rings: The Fellowship of the Ring', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-11-19 11:03:24', '2021-11-19 11:03:24', '', 26, 'http://localhost/de-beste-films/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-11-19 11:14:16', '2021-11-19 11:14:16', '<!-- wp:heading --><h2>Wie zijn we</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Ons site adres is: http://localhost/de-beste-films.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Reacties</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als bezoekers reacties achterlaten op de site, verzamelen we de gegevens getoond in het reactieformulier, het IP-adres van de bezoeker en de browser user agent om te helpen spam te detecteren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina van de Gravatar dienst kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een geregistreerde gebruiker bent en afbeeldingen naar de site upload, moet je voorkomen dat je afbeeldingen uploadt met daarin EXIF GPS locatie gegevens. Bezoekers van de site kunnen de afbeeldingen van de site downloaden en de locatiegegevens inzien.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat op onze site, kun je aangeven of je naam, je e-mailadres en site in een cookie opgeslagen mogen worden. Dit doen we voor je gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Indien je onze inlogpagina bezoekt, slaan we een tijdelijke cookie op om te controleren of je browser cookies accepteert. Deze cookie bevat geen persoonlijke gegevens en wordt verwijderd zodra je je browser sluit.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zodra je inlogt, zullen we enkele cookies bewaren in verband met je login informatie en schermweergave opties. Login cookies zijn 2 dagen geldig en cookies voor schermweergave opties 1 jaar. Als je &quot;Herinner mij&quot; selecteert, wordt je login 2 weken bewaard. Zodra je uitlogt van je account, worden login cookies verwijderd.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonlijke data en heeft enkel het post ID van het artikel wat je hebt bewerkt in zich. Deze cookie is na een dag verlopen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ingesloten inhoud van andere sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Berichten op deze site kunnen ingesloten inhoud bevatten (bijvoorbeeld video\'s, afbeeldingen, berichten, enz.). Ingesloten inhoud van andere sites gedraagt zich exact hetzelfde alsof de bezoeker deze andere site heeft bezocht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Deze sites kunnen gegevens over je verzamelen, cookies gebruiken, extra tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief het vastleggen van de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Met wie we je gegevens delen</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een wachtwoord reset aanvraagt, wordt je IP-adres opgenomen in de reset e-mail.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hoelang we je gegevens bewaren</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolgreacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Voor gebruikers die zich op onze site registreren (indien aanwezig), slaan we ook de persoonlijke informatie op die ze verstrekken in hun gebruikersprofiel. Alle gebruikers kunnen op ieder moment hun persoonlijke informatie bekijken, bewerken of verwijderen (behalve dat ze hun gebruikersnaam niet kunnen wijzigen). Site beheerders kunnen deze informatie ook bekijken en bewerken.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke rechten je hebt over je gegevens</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een account hebt op deze site of je hebt reacties achter gelaten, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons opgegeven hebt. Je kan ook verzoeken dat we alle persoonlijke gegevens die we van je hebben wissen. Dit bevat geen gegevens die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligings doeleinden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Waar we je gegevens naartoe sturen</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Mogelijk worden reacties van bezoekers gecontroleerd via een geautomatiseerde spamdetectie service.</p><!-- /wp:paragraph -->', 'Privacybeleid', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-11-19 11:14:16', '2021-11-19 11:14:16', '', 3, 'http://localhost/de-beste-films/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-11-19 11:14:16', '2021-11-19 11:14:16', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële site bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hoi daar! Ik ben een fietskoerier in het dagelijks leven en een beginnende acteur in de avonduren, en dit is mijn site. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve doohickeys aan het publiek geleverd. Gevestigd in Gotham City, heeft XYZ meer dan 2000 mensen in dienst en doet allerlei fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://localhost/de-beste-films/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je inhoud. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-11-19 11:14:16', '2021-11-19 11:14:16', '', 2, 'http://localhost/de-beste-films/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-11-19 11:14:21', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-19 11:14:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/de-beste-films/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-11-19 11:19:48', '2021-11-19 11:19:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\n\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\n\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', 'The Shawshank Redemption', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2021-11-19 11:19:48', '2021-11-19 11:19:48', '', 8, 'http://localhost/de-beste-films/?p=31', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(33, 1, '2021-11-19 11:22:06', '2021-11-19 11:22:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', 'The Shawshank Redemption', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-19 11:22:06', '2021-11-19 11:22:06', '', 8, 'http://localhost/de-beste-films/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-11-19 11:23:09', '2021-11-19 11:23:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Godfather', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-19 11:23:09', '2021-11-19 11:23:09', '', 10, 'http://localhost/de-beste-films/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-11-19 11:23:18', '2021-11-19 11:23:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Godfather: Part II', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-19 11:23:18', '2021-11-19 11:23:18', '', 12, 'http://localhost/de-beste-films/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-11-19 11:23:32', '2021-11-19 11:23:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Dark Knight', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-11-19 11:23:32', '2021-11-19 11:23:32', '', 14, 'http://localhost/de-beste-films/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-11-19 11:24:13', '2021-11-19 11:24:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'De 12 gezworenen', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-11-19 11:24:13', '2021-11-19 11:24:13', '', 16, 'http://localhost/de-beste-films/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-11-19 11:24:32', '2021-11-19 11:24:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'Schindler\'s List', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-11-19 11:24:32', '2021-11-19 11:24:32', '', 18, 'http://localhost/de-beste-films/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-11-19 11:25:11', '2021-11-19 11:25:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Lord of the Rings: The Return of the King', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-19 11:25:11', '2021-11-19 11:25:11', '', 20, 'http://localhost/de-beste-films/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-11-19 11:25:18', '2021-11-19 11:25:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'Pulp Fiction', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-11-19 11:25:18', '2021-11-19 11:25:18', '', 22, 'http://localhost/de-beste-films/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-11-19 11:25:29', '2021-11-19 11:25:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Lord of the Rings: The Fellowship of the Ring', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-11-19 11:25:29', '2021-11-19 11:25:29', '', 26, 'http://localhost/de-beste-films/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-11-19 11:32:02', '2021-11-19 11:32:02', '', '12angrymen', '', 'inherit', 'open', 'closed', '', '12angrymen', '', '', '2021-11-19 11:32:02', '2021-11-19 11:32:02', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/12angrymen.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-11-19 11:32:02', '2021-11-19 11:32:02', '', 'fellowship', '', 'inherit', 'open', 'closed', '', 'fellowship', '', '', '2021-11-19 11:32:02', '2021-11-19 11:32:02', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/fellowship.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 'godfather aaangepast_eline', '', 'inherit', 'open', 'closed', '', 'godfather-aaangepast_eline', '', '', '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/godfather-aaangepast_eline.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 'godfather2', '', 'inherit', 'open', 'closed', '', 'godfather2', '', '', '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/godfather2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 'goodbadugly', '', 'inherit', 'open', 'closed', '', 'goodbadugly', '', '', '2021-11-19 11:32:03', '2021-11-19 11:32:03', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/goodbadugly.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-11-19 11:32:04', '2021-11-19 11:32:04', '', 'pulp-fiction-cover-i1288', '', 'inherit', 'open', 'closed', '', 'pulp-fiction-cover-i1288', '', '', '2021-11-19 11:32:04', '2021-11-19 11:32:04', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/pulp-fiction-cover-i1288.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-11-19 11:32:04', '2021-11-19 11:32:04', '', 'returnoftheking', '', 'inherit', 'open', 'closed', '', 'returnoftheking', '', '', '2021-11-19 11:32:04', '2021-11-19 11:32:04', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/returnoftheking.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 'schindler', '', 'inherit', 'open', 'closed', '', 'schindler', '', '', '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/schindler.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 'shawshank_', '', 'inherit', 'open', 'closed', '', 'shawshank_', '', '', '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/shawshank_.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 'thedarkknight', '', 'inherit', 'open', 'closed', '', 'thedarkknight', '', '', '2021-11-19 11:32:05', '2021-11-19 11:32:05', '', 0, 'http://localhost/de-beste-films/wp-content/uploads/2021/11/thedarkknight.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-11-19 11:34:56', '2021-11-19 11:34:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla eros, molestie ac ante nec, tincidunt commodo est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin placerat, nulla ut pretium viverra, libero libero lobortis eros, consectetur eleifend mi ante sed turpis. Nullam finibus consequat elit quis facilisis. Sed ut aliquet tortor, et ullamcorper nunc. Integer a augue rutrum, convallis tortor vitae, elementum sem. Etiam arcu lacus, porta eu semper sed, tincidunt non dui.\r\n\r\nSuspendisse potenti. Pellentesque efficitur semper enim nec posuere. Etiam ac tortor ac ex sodales interdum non at lorem. Quisque porta tristique ex, sed sagittis ante blandit vel. Curabitur rhoncus est sed magna consequat, non egestas tortor volutpat. Proin lacus dui, feugiat luctus suscipit a, pharetra a ipsum. Cras in orci a sapien sagittis semper quis quis erat. Sed lectus dolor, porttitor eget nisi eget, blandit feugiat velit. Aenean ut vehicula diam.\r\n\r\nMauris eu auctor nisi. Donec lobortis magna non dolor molestie blandit. Ut cursus nec lorem non lacinia. Cras nec neque placerat lacus convallis bibendum ut ut ipsum. Donec egestas sapien a lacus aliquet, vel imperdiet odio egestas. Quisque lectus lectus, ultrices a commodo vitae, sodales nec augue. Aliquam sollicitudin turpis a nisl hendrerit molestie. Donec accumsan nisi eros, euismod feugiat sapien sollicitudin ut. Integer faucibus consequat dui vel luctus. Nam risus nibh, faucibus sed eleifend ut, sodales nec tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin venenatis, nibh sed facilisis lacinia, eros augue tristique lorem, in imperdiet libero dui at elit. Pellentesque dictum vulputate tortor nec consequat. Maecenas venenatis libero non efficitur euismod. Proin vestibulum purus magna, sed placerat eros consequat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum sed faucibus justo, ac euismod risus. Nulla a metus turpis. Mauris ultricies ex justo, eget luctus ex mattis nec. Praesent malesuada cursus lacus vitae pellentesque. Ut sit amet eros quis sem dictum imperdiet. Duis tincidunt diam vel est commodo ultricies. Aenean aliquet sapien ut tristique tincidunt. Curabitur finibus commodo velit, sit amet maximus urna tincidunt vel. Pellentesque hendrerit pulvinar ornare. Pellentesque convallis tristique metus vel mattis.', 'The Good, the Bad and the Ugly', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-11-19 11:34:56', '2021-11-19 11:34:56', '', 24, 'http://localhost/de-beste-films/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-11-19 13:00:30', '2021-11-19 13:00:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-11-19 13:00:30', '2021-11-19 13:00:30', '', 0, 'http://localhost/de-beste-films/?page_id=53', 0, 'page', '', 0),
(54, 1, '2021-11-19 13:00:30', '2021-11-19 13:00:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2021-11-19 13:00:30', '2021-11-19 13:00:30', '', 53, 'http://localhost/de-beste-films/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-11-19 13:01:00', '2021-11-19 13:01:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-19 13:01:00\"\n    },\n    \"page_on_front\": {\n        \"value\": \"53\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-19 13:01:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '70ca5dea-9f09-4496-9a8a-b6963580029b', '', '', '2021-11-19 13:01:00', '2021-11-19 13:01:00', '', 0, 'http://localhost/de-beste-films/2021/11/19/70ca5dea-9f09-4496-9a8a-b6963580029b/', 0, 'customize_changeset', '', 0),
(62, 1, '2021-11-20 12:22:39', '2021-11-20 12:22:39', '', 'Films', '', 'publish', 'closed', 'closed', '', 'films', '', '', '2021-11-20 12:22:39', '2021-11-20 12:22:39', '', 0, 'http://localhost/de-beste-films/?page_id=62', 0, 'page', '', 0),
(63, 1, '2021-11-20 12:22:39', '2021-11-20 12:22:39', '', 'Films', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2021-11-20 12:22:39', '2021-11-20 12:22:39', '', 62, 'http://localhost/de-beste-films/?p=63', 0, 'revision', '', 0),
(65, 1, '2021-11-20 12:55:35', '2021-11-20 12:47:58', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2021-11-20 12:55:35', '2021-11-20 12:47:58', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2021-11-20 12:55:35', '2021-11-20 12:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=67', 4, 'nav_menu_item', '', 0),
(68, 1, '2021-11-20 12:55:35', '2021-11-20 12:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2021-11-20 12:55:35', '2021-11-20 12:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=69', 6, 'nav_menu_item', '', 0),
(70, 1, '2021-11-20 12:55:35', '2021-11-20 12:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2021-11-20 12:55:35', '2021-11-20 12:55:35', '', 0, 'http://localhost/de-beste-films/?p=70', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Niet gecategoriseerd', 'niet-gecategoriseerd', 0),
(2, 'Drama', 'drama', 0),
(3, 'Actie', 'actie', 0),
(4, 'Filmhuis', 'filmhuis', 0),
(5, 'Fantasy', 'fantasy', 0),
(6, '2001', '2001', 0),
(7, '1966', '1966', 0),
(8, '1994', '1994', 0),
(9, '2003', '2003', 0),
(10, '1993', '1993', 0),
(11, '1957', '1957', 0),
(12, '2008', '2008', 0),
(13, '1974', '1974', 0),
(14, '1972', '1972', 0),
(16, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 8, 0),
(10, 2, 0),
(10, 14, 0),
(12, 2, 0),
(14, 3, 0),
(14, 12, 0),
(16, 4, 0),
(16, 11, 0),
(18, 4, 0),
(18, 10, 0),
(20, 5, 0),
(20, 9, 0),
(22, 3, 0),
(22, 8, 0),
(24, 3, 0),
(24, 7, 0),
(26, 5, 0),
(26, 6, 0),
(65, 16, 0),
(66, 16, 0),
(67, 16, 0),
(68, 16, 0),
(69, 16, 0),
(70, 16, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'genre', '', 0, 3),
(3, 3, 'genre', '', 0, 3),
(4, 4, 'genre', '', 0, 2),
(5, 5, 'genre', '', 0, 2),
(6, 6, 'jaar', '', 0, 1),
(7, 7, 'jaar', '', 0, 1),
(8, 8, 'jaar', '', 0, 2),
(9, 9, 'jaar', '', 0, 1),
(10, 10, 'jaar', '', 0, 1),
(11, 11, 'jaar', '', 0, 1),
(12, 12, 'jaar', '', 0, 1),
(13, 13, 'jaar', '', 0, 0),
(14, 14, 'jaar', '', 0, 1),
(16, 16, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admind@@n'),
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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'session_tokens', 'a:2:{s:64:\"cdbd00ad4369b5f7327f7aaf684af1d58cccba6c76ac80020f4e16b7ee24aeee\";a:4:{s:10:\"expiration\";i:1637483323;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36\";s:5:\"login\";i:1637310523;}s:64:\"2268c8c972c6df2e2a0fadf1027e3dc0c42ce84408b3fd13275da1357ef66e37\";a:4:{s:10:\"expiration\";i:1637574102;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36\";s:5:\"login\";i:1637401302;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1637320921'),
(21, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:8:\"add-jaar\";}'),
(25, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(26, 1, 'nav_menu_recently_edited', '16');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admind@@n', '$P$BCO.X0C9CHTXbsmsBmbiLaFhzQilac/', 'admindn', 'info@daan-webdesign.nl', 'http://localhost/de-beste-films', '2021-11-18 13:09:21', '', 0, 'Admind@@n');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexen voor tabel `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexen voor tabel `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexen voor tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexen voor tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexen voor tabel `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexen voor tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexen voor tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT voor een tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT voor een tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT voor een tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
