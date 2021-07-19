-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 19, 2021 at 03:04 PM
-- Server version: 8.0.19
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '2', 1626601849),
('Admin', '3', 1626601860),
('User', '1', 1626608608),
('User', '7', 1626609804);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
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
('User', '/chat/*'),
('Admin', '/chat/start-chat'),
('User', '/chat/start-chat'),
('Admin', '/chat/write-chat'),
('User', '/chat/write-chat'),
('Admin', '/debug/*'),
('User', '/debug/*'),
('Admin', '/debug/default/*'),
('User', '/debug/default/*'),
('Admin', '/debug/default/db-explain'),
('User', '/debug/default/db-explain'),
('Admin', '/debug/default/download-mail'),
('User', '/debug/default/download-mail'),
('Admin', '/debug/default/index'),
('User', '/debug/default/index'),
('Admin', '/debug/default/toolbar'),
('User', '/debug/default/toolbar'),
('Admin', '/debug/default/view'),
('User', '/debug/default/view'),
('Admin', '/debug/user/*'),
('User', '/debug/user/*'),
('Admin', '/debug/user/reset-identity'),
('User', '/debug/user/reset-identity'),
('Admin', '/debug/user/set-identity'),
('User', '/debug/user/set-identity'),
('Admin', '/gii/*'),
('User', '/gii/*'),
('Admin', '/gii/default/*'),
('User', '/gii/default/*'),
('Admin', '/gii/default/action'),
('User', '/gii/default/action'),
('Admin', '/gii/default/diff'),
('User', '/gii/default/diff'),
('Admin', '/gii/default/index'),
('User', '/gii/default/index'),
('Admin', '/gii/default/preview'),
('User', '/gii/default/preview'),
('Admin', '/gii/default/view'),
('User', '/gii/default/view'),
('Admin', '/site/*'),
('User', '/site/*'),
('Admin', '/site/about'),
('User', '/site/about'),
('Admin', '/site/captcha'),
('User', '/site/captcha'),
('Admin', '/site/chats'),
('User', '/site/chats'),
('Admin', '/site/contact'),
('User', '/site/contact'),
('Admin', '/site/error'),
('User', '/site/error'),
('Admin', '/site/index'),
('User', '/site/index'),
('Admin', '/site/login'),
('User', '/site/login'),
('Admin', '/site/logout'),
('User', '/site/logout');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int NOT NULL,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`) VALUES
(10, 1, 1),
(11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `id` int NOT NULL,
  `chat_id` int DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `owner` enum('sender','receiver','admin') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `active` int DEFAULT '1',
  `time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`id`, `chat_id`, `message`, `owner`, `user_id`, `active`, `time`) VALUES
(8, 10, 'test1', 'sender', 1, 1, 1626526629),
(9, 10, 'test2', 'receiver', 2, 1, 1626526630),
(10, 11, 'test3', 'sender', 1, 1, 1626526631),
(11, 11, 'test4', 'receiver', 3, 1, 1626526632),
(13, 11, 'test5', 'sender', 1, 1, 1626533115),
(16, 11, '12e', 'receiver', 3, 1, 1626533451),
(17, 11, 'wqe', 'sender', 1, 0, 1626533454),
(20, 11, 'I am sender', 'receiver', 1, 0, 1626592402),
(21, 11, 'I am receiver', 'sender', 3, 0, 1626592409),
(28, 11, 'test2 by Alfra\r\n', 'sender', 3, 1, 1626677425),
(29, 11, 'test', 'admin', 7, 1, 1626681288),
(30, 11, 'test', 'admin', 7, 1, 1626681317),
(31, 11, '32r', 'admin', 7, 1, 1626681322),
(32, 11, '32r2', 'sender', 3, 0, 1626683614);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int DEFAULT NULL
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
  `id` int NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'alfrabek', 'n5jGv2jxtgRsu1yrzhPn1lhbrkCyz9SV', '$2y$13$3gwlhROGIPdqt5dLDhPcS.6p24E5KChMwyptK9iw2SORsGI4KXA86', NULL, 'alfra@gmail.com', 10, 1626505736, 1626505736),
(2, 'admin', '0vJuTsUE0gt-ACtJv8N6dwmKIg4tw0hs', '$2y$13$oW/GL6RtdKSHFHPm/51RYuuimBbsKu03F8nbgq.eu2g/G02ioCQ4a', NULL, 'admin@gmail.com', 10, 1626509162, 1626509162),
(3, 'andrew', 'NQjzjuI4HmxcDbocODjbpZyB_qgOTGOd', '$2y$13$vzrfg4gEbyU1X6EjaCedZ.Q99KIqNd01JveG1O1J9QnR/YgkD9pem', NULL, 'andrew@gmail.com', 10, 1626509351, 1626509351),
(7, 'andrew3', 'gVLwDRDHV5gpfiidVI06HRSNnZ4Gyi7G', '$2y$13$8iU477bcF.x2fJ8OdgTmlO57IrwmQxKZxDB8giKQoL2R3RH/h8v0e', NULL, 'uzpsycholo22gist@gmail.com', 10, 1626609804, 1626609804);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
