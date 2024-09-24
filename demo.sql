-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 04:13 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Client'),
(1, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 2, 1),
(26, 2, 2),
(27, 2, 3),
(28, 2, 4),
(29, 2, 8),
(30, 2, 12),
(31, 2, 14),
(32, 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add snapshot list', 7, 'add_snapshotlist'),
(26, 'Can change snapshot list', 7, 'change_snapshotlist'),
(27, 'Can delete snapshot list', 7, 'delete_snapshotlist'),
(28, 'Can view snapshot list', 7, 'view_snapshotlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$870000$xbPjj2aor0oZKEtvbbb6nj$85L1bQy21UrZJm23HAQ23r7lFxMrIb9ycW14NbBMeNY=', '2024-09-23 17:04:15.172699', 1, 'anhkreal2', '', '', 'anhkhoahp@gmail.com', 1, 1, '2024-09-22 09:58:55.929463'),
(3, 'pbkdf2_sha256$870000$cZ81DdfTKqIogfE3edNMw7$OM03X3TKwQjoxmjV+O535i4ll1FK6BlL2/F8lGQXAeM=', NULL, 0, 'user01', 'hjbhj', 'jhv', 'vdhbvdsjfds@gmail.com', 0, 1, '2024-09-22 10:01:33.000000'),
(4, 'pbkdf2_sha256$870000$yBJI2gtG4ivWimMerOweLG$DNhp+7bvrDhENhmxqD7BBkeYO664BbGct/st7H066U4=', '2024-09-22 10:09:26.733190', 0, 'cloneuser', 'fghjm', 'bvc', 'aaa@gmail.com', 0, 1, '2024-09-22 10:09:06.594700');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-22 10:00:20.339289', '1', 'Mana', 1, '[{\"added\": {}}]', 3, 2),
(2, '2024-09-22 10:00:35.595314', '1', 'Manager', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]', 3, 2),
(3, '2024-09-22 10:01:10.380844', '2', 'Client', 1, '[{\"added\": {}}]', 3, 2),
(4, '2024-09-22 10:06:19.687884', '3', 'user01', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'snapshotlist'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-22 09:50:42.458897'),
(2, 'auth', '0001_initial', '2024-09-22 09:50:42.863171'),
(3, 'admin', '0001_initial', '2024-09-22 09:50:42.962908'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-22 09:50:42.971026'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-22 09:50:42.982149'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-22 09:50:43.065023'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-22 09:50:43.160152'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-22 09:50:43.193495'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-22 09:50:43.202488'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-22 09:50:43.240378'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-22 09:50:43.246246'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-22 09:50:43.253779'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-22 09:50:43.281309'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-22 09:50:43.313123'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-22 09:50:43.351247'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-22 09:50:43.360097'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-22 09:50:43.387582'),
(18, 'sessions', '0001_initial', '2024-09-22 09:50:43.428631'),
(19, 'app', '0001_initial', '2024-09-22 14:50:49.331342');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `snapshot_list`
--

CREATE TABLE `snapshot_list` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL,
  `event` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` time NOT NULL,
  `camera` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snapshot_list`
--

INSERT INTO `snapshot_list` (`id`, `time`, `event`, `image_url`, `end_time`, `camera`, `date`) VALUES
(1, '16:24:41', 'Chụp hình', 'snapshot_16_24_41_22_9_2024.png', '16:24:41', 1, '2024-09-22'),
(2, '16:24:51', 'Chụp hình', 'snapshot_16_24_51_22_9_2024.png', '16:24:51', 1, '2024-09-22'),
(3, '16:25:01', 'Chụp hình', 'snapshot_16_25_1_22_9_2024.png', '16:25:01', 1, '2024-09-22'),
(4, '16:25:11', 'Chụp hình', 'snapshot_16_25_11_22_9_2024.png', '16:25:11', 1, '2024-09-22'),
(5, '16:25:21', 'Chụp hình', 'snapshot_16_25_21_22_9_2024.png', '16:25:21', 1, '2024-09-22'),
(6, '16:25:31', 'Chụp hình', 'snapshot_16_25_31_22_9_2024.png', '16:25:31', 1, '2024-09-22'),
(7, '16:25:41', 'Chụp hình', 'snapshot_16_25_41_22_9_2024.png', '16:25:41', 1, '2024-09-22'),
(8, '21:06:25', 'Chụp hình', 'snapshot_21_06_25_23_09_2024.png', '21:06:25', 1, '2024-09-23'),
(9, '21:06:35', 'Chụp hình', 'snapshot_21_06_35_23_09_2024.png', '21:06:35', 1, '2024-09-23'),
(10, '21:08:45', 'Chụp hình', 'snapshot_21_08_45_23_09_2024.png', '21:08:45', 1, '2024-09-23'),
(11, '21:14:14', 'Chụp hình', 'snapshot_21_14_14_23_09_2024.png', '21:14:14', 1, '2024-09-23'),
(12, '21:14:24', 'Chụp hình', 'snapshot_21_14_24_23_09_2024.png', '21:14:24', 1, '2024-09-23'),
(13, '21:14:34', 'Chụp hình', 'snapshot_21_14_34_23_09_2024.png', '21:14:34', 1, '2024-09-23'),
(14, '21:15:29', 'Chụp hình', 'snapshot_21_15_29_23_09_2024.png', '21:15:29', 1, '2024-09-23'),
(15, '21:16:54', 'Chụp hình', 'snapshot_21_16_54_23_09_2024.png', '21:16:54', 1, '2024-09-23'),
(16, '21:17:04', 'Chụp hình', 'snapshot_21_17_04_23_09_2024.png', '21:17:04', 1, '2024-09-23'),
(17, '21:17:14', 'Chụp hình', 'snapshot_21_17_14_23_09_2024.png', '21:17:14', 1, '2024-09-23'),
(18, '21:17:24', 'Chụp hình', 'snapshot_21_17_24_23_09_2024.png', '21:17:24', 1, '2024-09-23'),
(19, '21:20:42', 'Chụp hình', 'snapshot_21_20_42_23_09_2024.png', '21:20:42', 1, '2024-09-23'),
(20, '21:20:52', 'Chụp hình', 'snapshot_21_20_52_23_09_2024.png', '21:20:52', 1, '2024-09-23'),
(21, '21:42:22', 'Chụp hình', 'snapshot_21_42_22_23_09_2024.png', '21:42:22', 1, '2024-09-23'),
(22, '21:42:32', 'Chụp hình', 'snapshot_21_42_32_23_09_2024.png', '21:42:32', 1, '2024-09-23'),
(23, '21:42:42', 'Chụp hình', 'snapshot_21_42_42_23_09_2024.png', '21:42:42', 1, '2024-09-23'),
(24, '21:42:52', 'Chụp hình', 'snapshot_21_42_52_23_09_2024.png', '21:42:52', 1, '2024-09-23'),
(25, '21:43:02', 'Chụp hình', 'snapshot_21_43_02_23_09_2024.png', '21:43:02', 1, '2024-09-23'),
(26, '21:43:12', 'Chụp hình', 'snapshot_21_43_12_23_09_2024.png', '21:43:12', 1, '2024-09-23'),
(27, '23:37:43', 'Chụp hình', 'snapshot_23_37_43_23_09_2024.png', '23:37:43', 1, '2024-09-23'),
(28, '23:37:54', 'Chụp hình', 'snapshot_23_37_54_23_09_2024.png', '23:37:54', 1, '2024-09-23'),
(29, '23:38:03', 'Chụp hình', 'snapshot_23_38_03_23_09_2024.png', '23:38:03', 1, '2024-09-23'),
(30, '23:38:13', 'Chụp hình', 'snapshot_23_38_13_23_09_2024.png', '23:38:13', 1, '2024-09-23'),
(31, '23:38:31', 'Chụp hình', 'snapshot_23_38_31_23_09_2024.png', '23:38:31', 1, '2024-09-23'),
(32, '23:45:14', 'Chụp hình', 'snapshot_23_45_14_23_09_2024.png', '23:45:14', 1, '2024-09-23'),
(33, '23:45:24', 'Chụp hình', 'snapshot_23_45_24_23_09_2024.png', '23:45:24', 1, '2024-09-23'),
(34, '23:45:34', 'Chụp hình', 'snapshot_23_45_34_23_09_2024.png', '23:45:34', 1, '2024-09-23'),
(35, '23:45:44', 'Chụp hình', 'snapshot_23_45_44_23_09_2024.png', '23:45:44', 1, '2024-09-23'),
(36, '23:45:54', 'Chụp hình', 'snapshot_23_45_54_23_09_2024.png', '23:45:54', 1, '2024-09-23'),
(37, '23:46:04', 'Chụp hình', 'snapshot_23_46_04_23_09_2024.png', '23:46:04', 1, '2024-09-23'),
(38, '23:47:31', 'Chụp hình', 'snapshot_23_47_31_23_09_2024.png', '23:47:31', 1, '2024-09-23'),
(39, '23:47:41', 'Chụp hình', 'snapshot_23_47_41_23_09_2024.png', '23:47:41', 1, '2024-09-23'),
(40, '00:04:25', 'Chụp hình', 'snapshot_00_04_25_24_09_2024.png', '00:04:25', 1, '2024-09-24'),
(41, '00:04:35', 'Chụp hình', 'snapshot_00_04_35_24_09_2024.png', '00:04:35', 1, '2024-09-24'),
(42, '00:04:45', 'Chụp hình', 'snapshot_00_04_45_24_09_2024.png', '00:04:45', 1, '2024-09-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `snapshot_list`
--
ALTER TABLE `snapshot_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `snapshot_list`
--
ALTER TABLE `snapshot_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
