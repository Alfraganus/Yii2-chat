-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2021 at 05:16 PM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xamkoruz_crafts`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '2', 1626601849),
('Admin', '3', 1626601860),
('User', '1', 1626862361),
('User', '7', 1626609804);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/default/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/default/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/create', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/update', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/menu/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/create', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/update', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/permission/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/assign', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/create', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/delete', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/remove', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/update', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/role/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/assign', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/create', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/route/remove', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/create', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/update', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/rule/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/activate', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/delete', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/login', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/logout', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/signup', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/admin/user/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/chat/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/chat/mark-incorrect-message', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/chat/start-chat', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/chat/write-chat', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/default/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/user/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/edit-message/*', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/edit-message/delete', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/edit-message/index', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/edit-message/update', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/edit-message/view', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/gii/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/action', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/diff', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/preview', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/gii/default/view', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/*', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/about', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/captcha', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/chats', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/contact', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/error', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/index', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/login', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/site/logout', 2, NULL, NULL, NULL, 1626601814, 1626601814),
('/user/*', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/activate', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/change-password', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/create', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/delete', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/index', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/login', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/logout', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/request-password-reset', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/reset-password', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/signup', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/update', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('/user/view', 2, NULL, NULL, NULL, 1626868174, 1626868174),
('Admin', 1, NULL, NULL, NULL, 1626601692, 1626601840),
('User', 1, NULL, NULL, NULL, 1626601799, 1626601799);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Admin', '/*'),
('Admin', '/admin/*'),
('Admin', '/admin/assignment/*'),
('Admin', '/admin/assignment/assign'),
('Admin', '/admin/assignment/index'),
('Admin', '/admin/assignment/revoke'),
('Admin', '/admin/assignment/view'),
('Admin', '/admin/default/*'),
('Admin', '/admin/default/index'),
('Admin', '/admin/menu/*'),
('Admin', '/admin/menu/create'),
('Admin', '/admin/menu/delete'),
('Admin', '/admin/menu/index'),
('Admin', '/admin/menu/update'),
('Admin', '/admin/menu/view'),
('Admin', '/admin/permission/*'),
('Admin', '/admin/permission/assign'),
('Admin', '/admin/permission/create'),
('Admin', '/admin/permission/delete'),
('Admin', '/admin/permission/get-users'),
('Admin', '/admin/permission/index'),
('Admin', '/admin/permission/remove'),
('Admin', '/admin/permission/update'),
('Admin', '/admin/permission/view'),
('Admin', '/admin/role/*'),
('Admin', '/admin/role/assign'),
('Admin', '/admin/role/create'),
('Admin', '/admin/role/delete'),
('Admin', '/admin/role/get-users'),
('Admin', '/admin/role/index'),
('Admin', '/admin/role/remove'),
('Admin', '/admin/role/update'),
('Admin', '/admin/role/view'),
('Admin', '/admin/route/*'),
('Admin', '/admin/route/assign'),
('Admin', '/admin/route/create'),
('Admin', '/admin/route/index'),
('Admin', '/admin/route/refresh'),
('Admin', '/admin/route/remove'),
('Admin', '/admin/rule/*'),
('Admin', '/admin/rule/create'),
('Admin', '/admin/rule/delete'),
('Admin', '/admin/rule/index'),
('Admin', '/admin/rule/update'),
('Admin', '/admin/rule/view'),
('Admin', '/admin/user/*'),
('Admin', '/admin/user/activate'),
('Admin', '/admin/user/change-password'),
('Admin', '/admin/user/delete'),
('Admin', '/admin/user/index'),
('Admin', '/admin/user/login'),
('Admin', '/admin/user/logout'),
('Admin', '/admin/user/request-password-reset'),
('Admin', '/admin/user/reset-password'),
('Admin', '/admin/user/signup'),
('Admin', '/admin/user/view'),
('Admin', '/chat/*'),
('Admin', '/chat/mark-incorrect-message'),
('Admin', '/chat/start-chat'),
('Admin', '/chat/write-chat'),
('Admin', '/debug/*'),
('Admin', '/debug/default/*'),
('Admin', '/debug/default/db-explain'),
('Admin', '/debug/default/download-mail'),
('Admin', '/debug/default/index'),
('Admin', '/debug/default/toolbar'),
('Admin', '/debug/default/view'),
('Admin', '/debug/user/*'),
('Admin', '/debug/user/reset-identity'),
('Admin', '/debug/user/set-identity'),
('Admin', '/edit-message/*'),
('Admin', '/edit-message/delete'),
('Admin', '/edit-message/index'),
('Admin', '/edit-message/update'),
('Admin', '/edit-message/view'),
('Admin', '/gii/*'),
('Admin', '/gii/default/*'),
('Admin', '/gii/default/action'),
('Admin', '/gii/default/diff'),
('Admin', '/gii/default/index'),
('Admin', '/gii/default/preview'),
('Admin', '/gii/default/view'),
('Admin', '/site/*'),
('Admin', '/site/about'),
('Admin', '/site/captcha'),
('Admin', '/site/chats'),
('Admin', '/site/contact'),
('Admin', '/site/error'),
('Admin', '/site/index'),
('Admin', '/site/login'),
('Admin', '/site/logout'),
('Admin', '/user/*'),
('Admin', '/user/activate'),
('Admin', '/user/change-password'),
('Admin', '/user/create'),
('Admin', '/user/delete'),
('Admin', '/user/index'),
('Admin', '/user/login'),
('Admin', '/user/logout'),
('Admin', '/user/request-password-reset'),
('Admin', '/user/reset-password'),
('Admin', '/user/signup'),
('Admin', '/user/update'),
('Admin', '/user/view'),
('Admin', 'User'),
('User', '/chat/*'),
('User', '/chat/start-chat'),
('User', '/chat/write-chat'),
('User', '/debug/*'),
('User', '/debug/default/*'),
('User', '/debug/default/db-explain'),
('User', '/debug/default/download-mail'),
('User', '/debug/default/index'),
('User', '/debug/default/toolbar'),
('User', '/debug/default/view'),
('User', '/debug/user/*'),
('User', '/debug/user/reset-identity'),
('User', '/debug/user/set-identity'),
('User', '/site/*'),
('User', '/site/about'),
('User', '/site/captcha'),
('User', '/site/chats'),
('User', '/site/contact'),
('User', '/site/error'),
('User', '/site/index'),
('User', '/site/login'),
('User', '/site/logout');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`) VALUES
(17, 7, 3),
(18, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` enum('sender','receiver','admin') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`id`, `chat_id`, `message`, `owner`, `user_id`, `active`, `time`) VALUES
(38, 17, 'Hello my friend', 'receiver', 3, 1, 1626865055),
(39, 17, 'Hi, how are you ?', 'sender', 7, 1, 1626865063),
(40, 17, 'fine, thanks', 'receiver', 3, 1, 1626865072),
(42, 18, 'hey Alfra, shall go to market today?', 'receiver', 3, 1, 1626867869),
(43, 18, 'sorry Andrew, today I am busy, maybe next time :)', 'sender', 1, 1, 1626867892),
(44, 18, 'a message from Admin', 'admin', 3, 1, 1626869025);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1626503567),
('m140506_102106_rbac_init', 1626503843),
('m140602_111327_create_menu_table', 1626503576),
('m160312_050000_create_user', 1626503576),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1626503843),
('m180523_151638_rbac_updates_indexes_without_prefix', 1626503843),
('m200409_110543_rbac_update_mssql_trigger', 1626503843),
('m210717_062036_create_chat_table', 1626504262),
('m210717_062049_create_chat_message_table', 1626504262);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'alfra', 'n5jGv2jxtgRsu1yrzhPn1lhbrkCyz9SV', '$2y$13$3gwlhROGIPdqt5dLDhPcS.6p24E5KChMwyptK9iw2SORsGI4KXA86', NULL, 'alfra@gmail.com', 10, 1626505736, 1626505736),
(2, 'admin', '0vJuTsUE0gt-ACtJv8N6dwmKIg4tw0hs', '$2y$13$oW/GL6RtdKSHFHPm/51RYuuimBbsKu03F8nbgq.eu2g/G02ioCQ4a', NULL, 'admin@gmail.com', 10, 1626509162, 1626509162),
(3, 'andrew', 'NQjzjuI4HmxcDbocODjbpZyB_qgOTGOd', '$2y$13$vzrfg4gEbyU1X6EjaCedZ.Q99KIqNd01JveG1O1J9QnR/YgkD9pem', NULL, 'andrew@gmail.com', 10, 1626509351, 1626509351),
(7, 'Patrick', 'gVLwDRDHV5gpfiidVI06HRSNnZ4Gyi7G', '$2y$13$8iU477bcF.x2fJ8OdgTmlO57IrwmQxKZxDB8giKQoL2R3RH/h8v0e', NULL, 'uzpsycholo22gist@gmail.com', 10, 1626609804, 1626609804);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-chat-sender_id` (`sender_id`),
  ADD KEY `idx-chat-receiver_id` (`receiver_id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-chat_message-chat_id` (`chat_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `fk-chat-receiver` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-chat-sender_id` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD CONSTRAINT `fk-chat_message-chat_id` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
