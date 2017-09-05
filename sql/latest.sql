#
# TABLE STRUCTURE FOR: aboutus
#

DROP TABLE IF EXISTS `aboutus`;

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aboutus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `aboutus` (`id`, `aboutus`) VALUES ('1', '<h1>WE USE FRESH INGREDIENTS.<br />\r\nWHY IS THAT?</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost:8081/codeigniter_lartista/upload-foto/vegies.jpg\" /></p>\r\n\r\n<h1>OUR TEAM</h1>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost:8081/codeigniter_lartista/upload-foto/team.jpg\" /></p>\r\n');


#
# TABLE STRUCTURE FOR: admin_groups
#

DROP TABLE IF EXISTS `admin_groups`;

CREATE TABLE `admin_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('1', 'webmaster', 'Webmaster');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('2', 'admin', 'Administrator');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('3', 'manager', 'Manager');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('4', 'staff', 'Staff');


#
# TABLE STRUCTURE FOR: admin_login_attempts
#

DROP TABLE IF EXISTS `admin_login_attempts`;

CREATE TABLE `admin_login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: admin_users
#

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('1', '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, NULL, '1451900190', '1504140948', '1', 'Webmaster', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('2', '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, '1451900228', '1451903990', '1', 'Admin', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('3', '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, '1451900430', NULL, '1', 'Manager', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('4', '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, '1451900439', NULL, '1', 'Staff', '');


#
# TABLE STRUCTURE FOR: admin_users_groups
#

DROP TABLE IF EXISTS `admin_users_groups`;

CREATE TABLE `admin_users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('1', '1', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('2', '2', '2');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('3', '3', '3');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('4', '4', '4');


#
# TABLE STRUCTURE FOR: api_access
#

DROP TABLE IF EXISTS `api_access`;

CREATE TABLE `api_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: api_keys
#

DROP TABLE IF EXISTS `api_keys`;

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: api_limits
#

DROP TABLE IF EXISTS `api_limits`;

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: api_logs
#

DROP TABLE IF EXISTS `api_logs`;

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: demo_blog_categories
#

DROP TABLE IF EXISTS `demo_blog_categories`;

CREATE TABLE `demo_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `demo_blog_categories` (`id`, `pos`, `title`) VALUES ('1', '1', 'Category 1');
INSERT INTO `demo_blog_categories` (`id`, `pos`, `title`) VALUES ('2', '2', 'Category 2');
INSERT INTO `demo_blog_categories` (`id`, `pos`, `title`) VALUES ('3', '3', 'Category 3');


#
# TABLE STRUCTURE FOR: demo_blog_posts
#

DROP TABLE IF EXISTS `demo_blog_posts`;

CREATE TABLE `demo_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `author_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content_brief` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('draft','active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `demo_blog_posts` (`id`, `category_id`, `author_id`, `title`, `image_url`, `content_brief`, `content`, `publish_time`, `status`) VALUES ('1', '1', '2', 'Blog Post 1', '', '<p>\r\n	Blog Post 1 Content Brief</p>\r\n', '<p>\r\n	Blog Post 1 Content</p>\r\n', '2015-09-25 19:00:00', 'active');


#
# TABLE STRUCTURE FOR: demo_blog_posts_tags
#

DROP TABLE IF EXISTS `demo_blog_posts_tags`;

CREATE TABLE `demo_blog_posts_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `demo_blog_posts_tags` (`id`, `post_id`, `tag_id`) VALUES ('1', '1', '2');
INSERT INTO `demo_blog_posts_tags` (`id`, `post_id`, `tag_id`) VALUES ('2', '1', '1');
INSERT INTO `demo_blog_posts_tags` (`id`, `post_id`, `tag_id`) VALUES ('3', '1', '3');


#
# TABLE STRUCTURE FOR: demo_blog_tags
#

DROP TABLE IF EXISTS `demo_blog_tags`;

CREATE TABLE `demo_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `demo_blog_tags` (`id`, `title`) VALUES ('1', 'Tag 1');
INSERT INTO `demo_blog_tags` (`id`, `title`) VALUES ('2', 'Tag 2');
INSERT INTO `demo_blog_tags` (`id`, `title`) VALUES ('3', 'Tag 3');


#
# TABLE STRUCTURE FOR: demo_cover_photos
#

DROP TABLE IF EXISTS `demo_cover_photos`;

CREATE TABLE `demo_cover_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` int(11) NOT NULL DEFAULT '0',
  `image_url` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `demo_cover_photos` (`id`, `pos`, `image_url`, `status`) VALUES ('1', '2', '45296-2.jpg', 'active');
INSERT INTO `demo_cover_photos` (`id`, `pos`, `image_url`, `status`) VALUES ('2', '1', '2934f-1.jpg', 'active');
INSERT INTO `demo_cover_photos` (`id`, `pos`, `image_url`, `status`) VALUES ('3', '3', '3717d-3.jpg', 'active');


#
# TABLE STRUCTURE FOR: foto
#

DROP TABLE IF EXISTS `foto`;

CREATE TABLE `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_foto` varchar(250) NOT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('35', '524735_165354476960769_138323915_n.jpg', '0.2572782843680901');
INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('25', '7016622-colorful-daisies-flowers-wallpaper.jpg', '0.5235718800901106');
INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('26', 'daisies-52595_960_720.jpg', '0.9572739527010461');
INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('33', 'vegies.jpg', '0.9744186204073124');
INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('28', 'images.jpg', '0.8873791196367069');
INSERT INTO `foto` (`id`, `nama_foto`, `token`) VALUES ('34', 'team.jpg', '0.5162695995966844');


#
# TABLE STRUCTURE FOR: groups
#

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('1', 'members', 'General User');


#
# TABLE STRUCTURE FOR: login_attempts
#

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: menu_category
#

DROP TABLE IF EXISTS `menu_category`;

CREATE TABLE `menu_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;

INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('1', 'aperitive');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('2', 'salate');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('3', 'paste');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('5', 'ciorbe');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('6', 'peste');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('8', 'preparate din carne');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('9', 'orez');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('10', 'garnituri');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('11', 'pizze');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('12', 'pizze  cu  pui');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('13', 'pizze  cu  peste');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('14', 'pizze  de  post');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('15', 'calzoni');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('16', 'desert');
INSERT INTO `menu_category` (`category_id`, `category`) VALUES ('17', 'gustari');


#
# TABLE STRUCTURE FOR: menu_ingredients
#

DROP TABLE IF EXISTS `menu_ingredients`;

CREATE TABLE `menu_ingredients` (
  `ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `ingredient_alergic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;

INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('1', 'pâine prăjită', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('2', 'usturoi', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('3', 'ulei de măsline', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('4', 'sare', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('5', 'busuioc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('6', 'unt', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('7', 'anșoa', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('8', 'pătrunjel', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('9', 'somon', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('10', 'lămâie', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('11', 'prosciutto crudo', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('12', 'mozzarella fresca', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('13', 'roșii', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('14', 'gorgonzola', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('15', 'brie', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('16', 'parmezan', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('17', 'ou', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('18', 'piept  de  porc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('19', 'ardei', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('20', 'ceapă', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('21', 'salată verde', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('22', 'varză', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('23', 'ridichi', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('24', 'lipie', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('25', 'lipie libaneză', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('26', 'piept  de  pui', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('27', 'crutoane', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('28', 'sos Cesar', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('29', 'rucola', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('30', 'roșii cherry', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('31', 'ciuperci', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('32', 'oțet balsamic', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('33', 'ulei', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('34', 'brânză telemea', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('35', 'șuncă presată', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('36', 'parmezan felii', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('37', 'morcovi', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('38', 'ton', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('39', 'măsline', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('40', 'porumb', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('41', 'nuci', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('42', 'somon afumat', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('43', 'mărar', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('44', 'șalău', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('45', 'creveți', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('46', 'muștar Dijon', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('47', 'ficăței de pui', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('48', 'castraveți', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('49', 'piept de porc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('50', 'sos de carne', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('51', 'sos de carne cu ciuperci și piept de porc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('52', 'speck', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('53', 'piept de porc afumat', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('54', 'mazăre', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('55', 'broccoli', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('56', 'vinete', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('57', 'dovlecei', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('58', 'cașcaval afumat', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('59', 'vin alb', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('60', 'mânătărci', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('61', 'midii', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('62', 'gamberi', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('63', 'caracatiță', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('64', 'calmar', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('65', 'sepie', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('66', 'mozzarella', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('67', 'smântână', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('68', 'bacon', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('69', 'văcuță', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('70', 'burtă', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('71', 'perișoare', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('72', 'pui', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('73', 'legume', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('74', 'brocoli', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('75', 'caracatiță baby', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('76', 'garnitură de legume', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('77', 'cu sos roșu și pâine prăjită', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('78', 'cu 200g garnitură de varză de Bruxelles și morcovei', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('79', 'tagliatelle aglio', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('80', 'olio e peperoncino', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('81', 'sos alb', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('82', 'cu garnitură de cartofi la cuptor', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('83', 'cu legume la grătar', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('84', 'escalop de porc la grătar cu salvie', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('85', 'pui cu ciuperci în sos de smântână', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('86', 'garnitură de cartofi', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('87', 'piept de pui umplut cu unt și mirodenii', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('88', 'orez', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('89', 'fasole verde', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('90', 'ardei gras', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('91', 'praz', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('92', 'cartofi', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('93', 'ceapă roșie', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('94', 'sos de roșii', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('95', 'salam', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('96', 'ardei iute', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('97', 'kaizer', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('98', 'cârnați', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('99', 'ou bătut', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('100', 'cartofi prăjiți', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('101', 'cașcaval', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('103', 'capere', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('104', 'surimi', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('105', 'oregano', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('106', 'afine', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('107', 'cireșe', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('108', 'vișine', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('109', 'brânză dulce', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('110', 'stafide', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('111', 'fructe', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('112', 'frișcă', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('113', 'brânzeturi', '1');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('114', 'vinete în parmezan', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('115', 'cotlet', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('116', 'ceafă', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('117', 'coaste de porc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('118', 'cârnați de oaie și porc', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('119', 'cartofi aurii', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('120', 'varză călită', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('121', 'ing_test1', '0');
INSERT INTO `menu_ingredients` (`ingredient_id`, `ingredient`, `ingredient_alergic`) VALUES ('122', 'ing_test2', '0');


#
# TABLE STRUCTURE FOR: menu_item_ingredien
#

DROP TABLE IF EXISTS `menu_item_ingredien`;

CREATE TABLE `menu_item_ingredien` (
  `ingredient_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('4', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '7', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '9', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('6', '7', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('10', '8', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '7', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '7', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('7', '7', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '8', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('6', '8', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '8', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '8', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '9', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '1', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '9', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '9', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '10', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('12', '10', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '10', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '10', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('15', '11', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('14', '11', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('12', '11', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '11', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('18', '12', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('10', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('24', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('25', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('23', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('22', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('48', '16', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('48', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('27', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('28', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('22', '17', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('32', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('30', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('29', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('33', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '18', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('34', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('48', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('23', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '19', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('36', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '20', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('37', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('40', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('38', '21', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('30', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('29', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('41', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '22', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('14', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('43', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('41', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('30', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('29', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('42', '23', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '24', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '24', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '24', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '24', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('44', '24', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('47', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('46', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('1', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '25', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '26', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '26', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('49', '26', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '26', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '27', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '27', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('49', '27', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '27', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '27', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '28', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '29', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('51', '29', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '30', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('50', '30', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '31', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '31', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('49', '31', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '31', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '32', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '32', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('52', '32', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('14', '33', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '33', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '33', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('6', '33', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('54', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('53', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('6', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '34', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('55', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('56', '35', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('68', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('58', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('59', '36', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('60', '37', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '37', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '37', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('59', '37', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('58', '38', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('60', '38', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '38', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '39', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '39', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('38', '39', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '39', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '40', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '40', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '40', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('9', '40', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '40', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '41', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('62', '41', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('61', '41', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '41', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '41', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('64', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('63', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('61', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('65', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '42', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('70', '43', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('73', '43', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('71', '43', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('72', '43', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('69', '43', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('74', '44', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '44', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('73', '44', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '44', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('64', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('75', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('76', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('61', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('9', '45', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('81', '46', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('77', '47', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('78', '53', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('80', '54', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('79', '54', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('82', '57', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('83', '58', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('84', '65', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('80', '65', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '65', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('79', '65', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('86', '66', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('85', '66', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('76', '67', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('87', '67', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('80', '68', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('79', '68', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('80', '73', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('79', '73', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('89', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('54', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('61', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('88', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '74', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '75', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '75', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '75', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('88', '75', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '75', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('55', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('54', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('88', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('40', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('91', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('22', '76', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('34', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('92', '77', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('92', '78', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('5', '78', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('93', '78', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '78', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '83', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '83', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '83', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('19', '85', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '85', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '85', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('56', '85', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '88', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '88', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '89', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '89', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '89', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '90', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '90', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '90', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('96', '91', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '91', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '91', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '91', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '92', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '92', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '92', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '92', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '93', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '93', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '93', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '93', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '94', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '94', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '94', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '94', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '94', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('17', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '95', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '96', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '96', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '96', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '96', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '96', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '97', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('15', '98', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('14', '98', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '98', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '98', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '98', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '99', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '99', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '99', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('29', '99', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '99', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('98', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('97', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '100', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('96', '101', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('98', '101', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '101', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('40', '101', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '101', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('97', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('99', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '102', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('100', '103', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('97', '103', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '103', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '103', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '103', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('97', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '104', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('100', '105', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '105', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '105', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '105', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('101', '106', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '106', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('67', '106', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '106', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '106', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('15', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '107', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('101', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('21', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '108', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('56', '109', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('13', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('56', '110', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '111', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '111', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '111', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '111', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '111', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('100', '112', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '112', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '112', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '112', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '112', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '113', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '113', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '113', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '113', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('38', '113', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('7', '114', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('103', '114', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '114', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '114', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('7', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('103', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('38', '115', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('7', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('96', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('103', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('20', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('38', '116', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('10', '117', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '117', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '117', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('106', '117', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('64', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('63', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('45', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('61', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('104', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '118', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('105', '119', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '119', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('2', '119', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('90', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('57', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('8', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('40', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('3', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('56', '120', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '121', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '121', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '121', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '121', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '122', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '122', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '122', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '122', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('35', '122', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('15', '123', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('14', '123', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('66', '123', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('16', '123', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('94', '123', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('106', '124', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('107', '124', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('108', '124', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('112', '126', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('111', '126', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('109', '127', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('110', '127', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('106', '132', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('107', '132', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('108', '132', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('113', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('31', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('73', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('39', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('11', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('95', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('114', '133', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('119', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('118', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('116', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('117', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('115', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('26', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('120', '134', '0');
INSERT INTO `menu_item_ingredien` (`ingredient_id`, `item_id`, `priority`) VALUES ('121', '133', '0');


#
# TABLE STRUCTURE FOR: menu_items
#

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_information` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `item_weight` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `item_price` varchar(11) COLLATE utf8mb4_romanian_ci NOT NULL,
  `item_image` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;

INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('1', 'bruschete cu roșii', '1', '', '50', '5', '5f140-3c144-bg-pizza.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('7', 'bruschete  cu anșoa', '1', '', '150', '9', '58f6c-59e4a-slide5.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('8', 'bruschete  cu  somon', '1', '', '150', '10', '31881-59e4a-slide5.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('9', 'bruschete cu prosciutto crudo', '1', '', '150', '9', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('10', 'caprese', '1', '', '200', '12', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('11', 'aperitiv cu brânzeturi', '1', '', '200', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('12', 'omletă mixtă', '1', '', '250', '10', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('13', 'omletă cu ciuperci/ șuncă/ bacon', '1', '', '200', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('14', 'omletă cu brânză', '1', 'conține lactoză', '200', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('15', 'cașcaval pane', '1', 'conține lactoză', '200', '13', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('16', 'salată fatush', '2', 'de post, conține gluten', '300', '13', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('17', 'salată de pui', '2', 'conține lactoză, ou, gluten', '350', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('18', 'salată cu pui și ciuperci', '2', 'conține lactoză', '350', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('19', 'salată grecească', '2', 'conține lactoză', '400', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('20', 'salată cesar', '2', 'conține lactoză, ou, gluten', '300', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('21', 'salată cu ton', '2', '', '350', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('22', 'salată parma', '2', 'conține lactoză', '300', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('23', 'salată cu somon', '2', 'conține lactoză, pește, nuci', '250', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('24', 'salată mixtă cu șalău', '2', '', '250', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('25', 'salată Damien', '2', '', '350', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('26', 'penne all\'amatriciana', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('27', 'penne al forno', '3', 'conține gluten', '500', '18', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('28', 'penne con pollo', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('29', 'spaghetti bolognese', '3', 'conține gluten', '500', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('30', 'fusilli con ragu\'', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('31', 'spaghetti alla carbonara', '3', 'conține gluten', '450', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('32', 'penne tirolese', '3', 'conține gluten', '450', '17', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('33', 'penne ai formaggi', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('34', 'spaghetti alla romana', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('35', 'fusilli alle verdure', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('36', 'tagliatelle grimini', '3', 'conține gluten', '450', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('37', 'tagliatelle ai fungi porcini', '3', 'conține gluten', '450', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('38', 'tagliatelle porcini con panna', '3', 'conține gluten', '500', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('39', 'spaghetti al tonno', '3', 'conține gluten', '450', '16', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('40', 'farfalle con salmone e zucchine', '3', 'conține gluten', '450', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('41', 'spaghetti l\'artista', '3', 'conține gluten', '450', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('42', 'linguine di mare', '3', 'conține gluten', '450', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('43', 'ciorbe diverse', '5', 'pot  conține ou, lactoză, gluten', '100/400', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('44', 'supe cremă', '5', 'pot conține ou, lactoză, gluten', '400', '9', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('45', 'mix de pește', '6', '', '300/100', '40', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('46', 'inele de calmar pane ', '6', '', '200', '22', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('47', 'mâncare de midii', '6', '', '200', '22', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('48', 'creveți  la grătar', '6', '', '150', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('49', 'file de somon la grătar', '6', '', '200', '25', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('50', 'file de șalău la grătar', '6', '', '200', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('51', 'file de șalău pane', '6', '', '150', '18', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('52', 'saramură de șalău cu mămăliguță', '6', '', '400/200', '25', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('53', 'șalău în prosciutto crudo', '6', '', '200', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('54', 'șalău în sos de migdale', '6', 'conține lactoză', '200', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('55', 'saramură de crap cu mămăliguță', '6', '', '400/200', '25', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('56', 'antricot de vițel la grătar', '8', '', '300', '40', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('57', 'mușchi de vită în crustă de parmezan', '8', 'conține lactoză', '180', '49', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('58', 'mușchi de vită cu sos de piper verde', '8', 'conține lactoză', '180', '49', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('59', 'mușchi de vită cu mânătărci', '8', 'conține lactoză', '180', '45', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('60', 'medalion de vită cu sos formaggi', '8', 'conține lactoză', '180', '45', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('61', 'cotlet de berbecuț', '8', '', '200', '35', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('62', 'pastramă de oaie cu mămăliguță și mujdei', '8', '', '200', '28', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('63', 'șnițel vienez de porc', '8', '', '200', '14', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('64', 'frigărui de porc', '8', '', '200', '15', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('65', 'saltimbocca alla romana', '8', 'conține lactoză', '200', '27', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('66', 'pui cu ciuperci', '8', 'conține lactoză', '450', '25', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('67', 'pui l\'artista', '8', 'conține lactoză', '230/200', '25', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('68', 'escalop de pui în sos de lămâie', '8', 'conține unt, gluten', '200', '23', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('69', 'șnițel vienez de pui', '8', '', '200', '14', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('70', 'frigărui de pui', '8', '', '200', '15', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('71', 'sote de ficăței de pui', '8', '', '250', '13', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('72', 'ficăței de pui la grătar', '8', '', '200', '11', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('73', 'piept de rață cu sos de portocale', '8', '', '200', '40', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('74', 'paella', '9', '', '600', '32', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('75', 'orez cu pui și ciuperci', '9', '', '500', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('76', 'orez chinezesc', '9', '', '550', '15', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('77', 'cartofi grecești ', '10', 'conțin lactoză', '400', '13', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('78', 'cartofi grecești de post', '10', '', '350', '10', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('79', 'cartofi cu sos de gorgonzola', '10', 'conțin lactoză', '300', '10', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('80', 'cartofi țărănești', '10', '', '300', '9', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('81', 'orez cu ciuperci', '10', '', '250', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('82', 'ciuperci la grătar', '10', '', '150', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('83', 'sote de ciuperci', '10', '', '200', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('84', 'amestec de legume mexicane', '10', '', '200', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('85', 'legume asortate la grătar', '10', '', '200', '10', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('86', 'brocoli cu unt și usturoi', '10', 'conține lactoză', '200', '7', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('87', 'spanac cu unt', '10', 'conține lactoză', '200', '7', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('88', 'margherita', '11', 'conține gluten', '450', '13', '76d6a-rsz_1pizza-margherita.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('89', 'funghi', '11', 'conține gluten', '500', '16', 'bd0c6-rsz_funghi.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('90', 'prosciutto', '11', 'conține gluten', '550/1100', '17/34', 'ed7c2-rsz_pizza-prosciutto.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('91', 'diavola', '11', 'conține gluten', '500', '17', '31aec-rsz_pizza-diavola.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('92', 'prosciutto e funghi', '11', 'conține gluten', '600', '19', '4add8-rsz_pizzaprosciuttoefunghi.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('93', 'delicioasa', '11', 'conține gluten', '550', '19', 'd028a-rsz_delocioasa.jpg');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('94', 'capricciosa', '11', 'conține gluten', '600/1200', '21/24', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('95', 'quattro stagioni', '11', 'conține gluten', '600/1200', '21/42', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('96', 'roma', '11', 'conține gluten', '550', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('97', 'ozn', '11', 'conține gluten', '800', '24', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('98', 'quattro formaggi', '11', 'conține gluten', '550', '22', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('99', 'crudo e rucola', '11', 'conține gluten', '600', '23', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('100', 'tradițională', '11', 'conține gluten', '600', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('101', 'mexicană', '11', 'conține gluten', '600', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('102', 'carbonara', '11', 'conține gluten', '600', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('103', 'neptun', '11', 'conține gluten', '600', '18', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('104', 'fantasia', '11', 'conține gluten', '600', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('105', 'anglia', '11', 'conține gluten', '600', '23', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('106', 'franța', '11', 'conține gluten', '650', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('107', 'hawaii', '11', 'conține gluten', '600', '22', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('108', 'rustică', '11', 'conține gluten', '550', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('109', 'l\'artista', '11', 'conține gluten', '700/1400', '23/44', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('110', 'vegetariana', '11', 'conține gluten', '600', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('111', 'pollo', '12', 'conține gluten', '600', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('112', 'marte', '12', 'conține gluten', '600', '20', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('113', 'tonno', '13', 'conține gluten', '500', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('114', 'romana', '13', 'conține gluten', '500', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('115', 'pugliese', '13', 'conține gluten', '550', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('116', 'siciliana', '13', 'conține gluten', '600', '24', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('117', 'salmone', '13', 'conține gluten', '500', '23', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('118', 'caraibi', '13', 'conține gluten', '500', '30', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('119', 'marinara', '14', 'conține gluten', '350', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('120', 'pizza de post', '14', 'conține gluten', '450', '14', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('121', 'prosciutto e funghica', '15', 'conține gluten', '550', '19', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('122', 'capriccioso', '15', 'conține gluten', '550', '21', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('123', 'quattro formaggi ', '15', 'conține gluten', '550', '22', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('124', 'papanași cu dulceață și smântână', '16', 'conțin lactoză și gluten', '250', '12', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('125', 'tiramisu', '16', 'conține gluten, ou, lactoză', '250', '9', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('126', 'salată de fructe', '16', '', '200', '8', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('127', 'clătite gratinate', '16', 'conțin gluten, lactoză', '300', '13', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('128', 'clătite cu banane și caramel', '16', 'conțin gluten, lactoză', '250', '7', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('129', 'clătite cu înghețată', '16', '', '200', '7', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('130', 'clătite cu miere și nuci', '16', 'conțin gluten, lactoză', '150', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('131', 'clătite cu fineti și frișcă', '16', 'conțin gluten, lactoză', '200', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('132', 'clătite cu dulceață', '16', 'conțin gluten, lactoză', '200', '6', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('133', 'platou aperativ', '17', 'pentru 6 persoane', '2000', '100', '');
INSERT INTO `menu_items` (`item_id`, `item_name`, `category_id`, `item_information`, `item_weight`, `item_price`, `item_image`) VALUES ('134', 'platou mixt de friptură', '17', 'pentru 6 persoane', '1500+1500', '120', '');


#
# TABLE STRUCTURE FOR: slides
#

DROP TABLE IF EXISTS `slides`;

CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

INSERT INTO `slides` (`id`, `title`, `url`, `priority`) VALUES ('199', 'Clasic', '59e4a-slide5.jpg', '3');
INSERT INTO `slides` (`id`, `title`, `url`, `priority`) VALUES ('200', 'Margherita', '3c144-bg-pizza.jpg', '4');
INSERT INTO `slides` (`id`, `title`, `url`, `priority`) VALUES ('211', 'test', 'cadbd-iStock_000046272610_Large.jpg', NULL);
INSERT INTO `slides` (`id`, `title`, `url`, `priority`) VALUES ('208', 'Calzone', 'f0b95-thumb-1920-786492.jpg', '2');
INSERT INTO `slides` (`id`, `title`, `url`, `priority`) VALUES ('198', 'Mexican', '436a3-slide4.jpg', '1');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES ('1', '127.0.0.1', 'member', '$2y$08$kkqUE2hrqAJtg.pPnAhvL.1iE7LIujK5LZ61arONLpaBBWh/ek61G', NULL, 'member@member.com', NULL, NULL, NULL, NULL, '1451903855', '1451905011', '1', 'Member', 'One', NULL, NULL);


#
# TABLE STRUCTURE FOR: users_groups
#

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('1', '1', '1');


