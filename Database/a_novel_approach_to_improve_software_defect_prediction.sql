-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 13, 2023 at 08:26 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `a_novel_approach_to_improve_software_defect_prediction`
--
CREATE DATABASE IF NOT EXISTS `a_novel_approach_to_improve_software_defect_prediction` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `a_novel_approach_to_improve_software_defect_prediction`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('14z63ouq423azof04qzl2cl91ytthlfv', 'eyJ1c2VyaWQiOjF9:1oE6b8:3caV9rQf0v24gXfvozY2K6zz4lTjty52oqgRHzLhpyw', '2022-08-03 10:06:30.268797'),
('1ejvkirpm7393inxp6uf1a508oikhj57', 'eyJ1c2VyaWQiOjV9:1oE9H0:QVd_yVIuOIdaeHkWo0CMd53O_s5B5euyq1e3LiWaVH8', '2022-08-03 12:57:54.686733'),
('1xjz27rwgvs42tk5n2orhya2ldkf1g6t', 'eyJ1c2VyaWQiOjV9:1mxOMK:l85z54bTor61HOnj7pdZjPhbnbt7ikf5Nm258dN2DTc', '2021-12-29 07:05:52.784561'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('5y97pqoww8mp6uea9671pdkzka2qantt', 'eyJ1c2VyaWQiOjJ9:1oeFf3:esCWcmLwNAX25uOIzIxUsmI5nal6A8Q8Nk1MTI657xI', '2022-10-14 13:02:37.276867'),
('6235pjzaab4rkdpf7z473pl7jcnaglfk', 'eyJ1c2VyaWQiOjF9:1oDk63:-6bic4A3ThrswjtGZVXTnXx2dpiFpK_FtFDDtpAsCEw', '2022-08-02 10:04:55.563356'),
('6mizyqlykom1hx0e8a29bxksdry4vjmy', 'eyJ1c2VyaWQiOjR9:1mxNx3:w_8CPNB2edZIGdqb1qOMty5QV64ojOuzomD7t4d5bBY', '2021-12-29 06:39:45.556870'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('82c2687kzuojifk128vaj036ej136b22', 'eyJ1c2VyaWQiOjF9:1qfy0a:4YQV_9sQeEuVJcmVaTSpZdplokXji2YQtA4aHhLE7-k', '2023-09-26 07:40:28.524817'),
('9eqxsh2vnry12u2z9t4sl6amij2te9jt', 'eyJ1c2VyaWQiOjJ9:1oE8nk:cDDqaEZRW7Nf6SKwUt6tIvJEdEy2qvTQzIrG8zvVQgQ', '2022-08-03 12:27:40.202847'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('chgdlt5mw1451dega63zki5pfwti1fa8', 'eyJ1c2VyaWQiOjF9:1pKf1D:ludHm_YKlhB2dtc6-w-lr9_TwK1NuFOsJRh2m5oJI64', '2023-02-08 12:36:47.079879'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('fuirwtsxsfxeojownr7tm1lymoapsath', 'eyJ1c2VyaWQiOjR9:1mb0uA:DWlnrgNFE2I8DeVkRQmZU1y_F_U4e0WgMqypgwqdUQ0', '2021-10-28 13:36:18.858332'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhng09zqax1cp3cmlx5np2pbc4fcbtw1', 'eyJ1c2VyaWQiOjExfQ:1mauzr:WoxSa_ktUEv37bMIXB5udKc6qLwi2Xgdg61oSSMEPgo', '2021-10-28 07:17:47.091519'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hj1muto4ffqaex29c3dz409vpv04say1', 'eyJ1c2VyaWQiOjIyfQ:1mavzk:CaUXoPZsk_YT0c367vmF36p-YAOYuclPwJBiS1ZGbtw', '2021-10-28 08:21:44.154458'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jiqsf7wcjkeflnrveo04dcvo9uzu7cj5', 'eyJ1c2VyaWQiOjIyfQ:1maymY:2zgrkbwuf5-70r47-IcbfFKsYD5fnN-ja0Ol9zN-93Y', '2021-10-28 11:20:18.484981'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('os18h41un322wchse9u209dxhtqorakj', 'eyJ1c2VyaWQiOjF9:1oeEjr:ydW4ycYYYvPnN--vYGJfZ4p8xyz-vWDM6xht_kvgKYc', '2022-10-14 12:03:31.027189'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('qorsfjf8ub7601ehr291ro3n4zzw5v3e', 'eyJ1c2VyaWQiOjEwfQ:1mFxUi:mMQom1btf6GfJPfFt2WuX_hLtfJbWwVROmb-AlhxjHw', '2021-08-31 11:43:00.556244'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('vfofeqf70uwf4jrhib6xsetde58lny3f', 'eyJ1c2VyaWQiOjIxfQ:1mFyou:QX_iGY3-VB7aToxcER8lL5h0PrRrYCaY5Hf2pQrqePo', '2021-08-31 13:07:56.275870'),
('vvhm4e504tnt6scfupc5dh9y6sltvale', 'eyJ1c2VyaWQiOjJ9:1pKfnu:u3wWJF_O0it6pVvF-lSTlXM3QsGID6StVcEbCEX6DCE', '2023-02-08 13:27:06.099666'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('zak6z5x81xrpe7i51cmt7915z9k4u9dr', 'eyJ1c2VyaWQiOjJ9:1oE8wD:IeKP_1qUF_y8Q45zkh2iCL19BYap1vlukPPO2L08s3Q', '2022-08-03 12:36:25.292286'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751'),
('zjlnj5zw4cstgzteu5yijs1vbrvn9hul', 'eyJ1c2VyaWQiOjJ9:1qfynM:AAkwapNbjEMM7qAJxPgzvKDUuOuGRaXqc4ZBMuHJZGU', '2023-09-26 08:30:52.592620');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`, `address`, `gender`) VALUES
(1, 'Gopal', 'Gopal123@gmail.com', 'Gopal', '9535866270', 'India', 'Karntaka', 'Bangalore', '#8928,4th Cross,Rajajinagar', 'Male'),
(2, 'Manjunath', 'tmksmanju19@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore', '#8928,4th Cross,Rajajinagar', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(38, 'Random Forest Classifier', '53.64321608040201'),
(39, 'ANN', '50.753768844221106'),
(40, 'SVM', '52.51256281407035'),
(41, 'Logistic Regression', '52.26130653266332'),
(42, 'Gradient Boosting Classifier', '54.64824120603014');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(9, 'Normal', '75.0'),
(10, 'Critical', '25.0');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_software_defect_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_software_defect_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fid` varchar(3000) NOT NULL,
  `defect_id` varchar(3000) NOT NULL,
  `creation_date` varchar(3000) NOT NULL,
  `software_name` varchar(3000) NOT NULL,
  `short_description` varchar(3000) NOT NULL,
  `long_description` varchar(3000) NOT NULL,
  `assignee_name` varchar(3000) NOT NULL,
  `reporter_name` varchar(3000) NOT NULL,
  `defect_fix_time` varchar(3000) NOT NULL,
  `status_category` varchar(3000) NOT NULL,
  `resolution_category` varchar(3000) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `remote_user_software_defect_prediction`
--

INSERT INTO `remote_user_software_defect_prediction` (`id`, `Fid`, `defect_id`, `creation_date`, `software_name`, `short_description`, `long_description`, `assignee_name`, `reporter_name`, `defect_fix_time`, `status_category`, `resolution_category`, `Prediction`) VALUES
(1, '10.42.0.151-10.42.0.1-54609-53-17', 'GCC-58603', '03-10-21', 'target', '[4.9 Regression] hash-table.h:962: error: anachronistic old-style base class initia\r\n', '"In stage1 with gcc 4.4.7 build fails:\r\n\r\ng++ -c   -g -DIN_GCC   -fno-exceptions -fno-rtti -fasynchronous-unwind-tables -W -Wall -Wwrite-strings -Wcast-qual -mdisable-indexing -Wmissing-format-attribute -Wno-long-long -Wno-variadic-macros -Wno-overlength-strings   -DHAVE_CONFIG_H -I.. -I. -Iada -I../../gcc/gcc -I../../gcc/gcc/ada -I../../gcc/gcc/../include -I../../gcc/gcc/../libcpp/include -I/opt/gnu/gcc/gmp/include  -I../../gcc/gcc/../libdecnumber -I../../gcc/gcc/../libdecnumber/dpd -I../libdecnumber -I../../gcc/gcc/../libbacktrace    ../../gcc/gcc/ada/gcc-interface/trans.c -o ada/trans.o\r\nIn file included from ../../gcc/gcc/gimple.h:26\r\n                 from ../../gcc/gcc/ada/gcc-interface/trans.c:36:\r\n../../gcc/gcc/hash-table.h: In constructor ''hash_table::iterator::iterator()'':\r\n../../gcc/gcc/hash-table.h:962: error: anachronistic old-style base class initializer\r\n../../gcc/gcc/hash-table.h:962: error: unnamed initializer for ''hash_table::iterator'' which has no base classes\r\n../../gcc/gcc/hash-table.h:962: error: expected primary-expression before ''int''\r\n../../gcc/gcc/hash-table.h:962: error: expected ''{'' before ''('' token\r\n../../gcc/gcc/hash-table.h: At global scope:\r\n../../gcc/gcc/hash-table.h:962: error: expected unqualified-id before ''unsigned''\r\n../../gcc/gcc/hash-table.h:962: error: expected '')'' before ''unsigned''\r\n../../gcc/gcc/hash-table.h:962: error: expected '')'' before ''unsigned''\r\n../../gcc/gcc/hash-table.h: In constructor ''hash_table::iterator::iterator(typename Descriptor::value_type** typename Descriptor::value_type**)'':\r\n../../gcc/gcc/hash-table.h:973: error: anachronistic old-style base class initializer\r\n../../gcc/gcc/hash-table.h:973: error: unnamed initializer for ''hash_table::iterator'' which has no base classes\r\n../../gcc/gcc/hash-table.h:973: error: expected primary-expression before ''int''\r\n../../gcc/gcc/hash-table.h:973: error: expected ''{'' before ''('' token\r\n../../gcc/gcc/hash-table.h: At global scope:\r\n../../gcc/gcc/hash-table.h:973: error: expected unqualified-id before ''unsigned''\r\n../../gcc/gcc/hash-table.h:973: error: expected '')'' before ''unsigned''\r\n../../gcc/gcc/hash-table.h:973: error: expected '')'' before ''unsigned''\r\nmake[3]: *** [ada/trans.o] Error 1"\r\n', 'unassigned', 'danglin', '16', 'resolved', 'fixed', 'Critical'),
(2, '10.42.0.42-123.125.29.138-33925-80-6', 'GCC-48795', '27-04-19', 'tree-optimization', '-Warray-bounds false positive\r\n', '"$ gcc -v\r\nUtilisation des specs internes.\r\nCOLLECT_GCC=gcc\r\nCOLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-unknown-linux-gnu/4.6.0/lto-wrapper\r\nTarget: x86_64-unknown-linux-gnu\r\nConfigurÃ© avec: /build/src/gcc-4.6-20190415/configure --prefix=/usr --libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man --infodir=/usr/share/info --with-bugurl=https://bugs.archlinux.org/ --enable-languages=cc++adafortrangoltoobjcobj-c++ --enable-shared --enable-threads=posix --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions --enable-clocale=gnu --enable-gnu-unique-object --enable-linker-build-id --with-ppl --enable-cloog-backend=isl --enable-lto --enable-gold --enable-ld=default --enable-plugin --with-plugin-ld=ld.gold --enable-multilib --disable-libstdcxx-pch --enable-checking=release\r\nModÃ¨le de thread: posix\r\ngcc version 4.6.0 20190415 (prerelease) (GCC)\r\n\r\n$ cat t.c \r\n/* testcase (derived from wine) */\r\ntypedef struct\r\n{\r\n  int len\r\n  char data[1]\r\n} rec\r\n\r\nint\r\np(rec *r int len)\r\n\r\nint\r\nf (char prm1 char prm2)\r\n{\r\n  char buf[10]\r\n\r\n  rec *r1 = (rec *)\r\n\r\n  r1->len = 10\r\n  r1->data[0] = prm1\r\n  r1->data[1] = prm2\r\n\r\n  return p(r1 r1->len)\r\n}\r\n\r\n$ gcc -S -O2 -Wall t.c -save-temps\r\nt.c: In function â€˜fâ€™:\r\nt.c:19:11: attention : array subscript is above array bounds [-Warray-bounds]"\r\n', 'rguenth', 'niko.lecam', '1765', 'resolved', 'fixed', 'Normal'),
(3, '172.217.6.195-10.42.0.151-443-47643-6', 'GCC-21254', '27-04-21', 'rtl-optimization', '[4.0 regression] Incorrect code with -funroll-loops for multiple targets with same code\r\n', '"The following C++ when compiled with g++-4.0.0 produces incorrect code when \r\ncompiled with -O1 -funroll-loops on both sparc-sun-solaris2.8 and i686-pc-linux-\r\ngnu.  This is a bare-bones simplification of real code from an application using \r\nthe Boost.Spirit library.  If compiled without -funroll-loops then the \r\nbehaviour is as expected (no exception thrown see below).\r\n\r\n$ /opt/gcc-4.0.0-cross/sparc-sun-solaris2.8/bin/sparc-sun-solaris2.8-g++ -v\r\nUsing built-in specs.\r\nTarget: sparc-sun-solaris2.8\r\nConfigured with: ../../gcc-4.0.0/configure --with-dwarf2 --enable-languages=c\r\nc++ --enable-threads=no --disable-shared --prefix=/opt/gcc-4.0.0-cross/sparc-\r\nsun-solaris2.8 --with-gnu-as --with-gnu-ld --disable-multilib --enable-concept-\r\nchecks --enable-clocale=generic --enable-libstdcxx-allocator=mt --build=i686-pc-\r\nlinux-gnu --host=i686-pc-linux-gnu --target=sparc-sun-solaris2.8 --with-\r\nsysroot=/opt/sysroot/sparc-sun-solaris2.8/\r\nThread model: single\r\ngcc version 4.0.0\r\n\r\n$ /opt/gcc-4.0.0-cross/i686-pc-linux-gnu/bin/i686-pc-linux-gnu-g++ -v\r\nUsing built-in specs.\r\nTarget: i686-pc-linux-gnu\r\nConfigured with: ../../gcc-4.0.0/configure --with-dwarf2 --enable-languages=c\r\nc++ --enable-threads=no --disable-shared --prefix=/opt/gcc-4.0.0-cross/i686-pc-\r\nlinux-gnu --with-gnu-as --with-gnu-ld --disable-multilib --enable-concept-checks \r\n--enable-clocale=generic --enable-libstdcxx-allocator=mt --build=i686-pc-linux-\r\ngnu --host=i686-pc-linux-gnu --target=i686-pc-linux-gnu\r\nThread model: single\r\ngcc version 4.0.0\r\n\r\nThe (poor but simple) C++ program is as follows:\r\n\r\n// sparc-sun-solaris2.8-g++ -Wall -O1 -funroll-loops -o opt-sparc \r\ntest_optimizer.cc\r\n//\r\n// or\r\n//\r\n// i686-pc-linux-gnu-g++ -Wall -O1 -funroll-loops -o opt-x86 test_optimizer.cc\r\n\r\n#include \r\n#include \r\n\r\nclass basic\r\n{\r\npublic:\r\n  void set(char from char to)\r\n  {\r\n    for (int i = from i <= to ++i) {\r\n      bset.set(static_cast(i))\r\n    }\r\n  }\r\n  \r\nprivate:\r\n  std::bitset bset\r\n}\r\n\r\n// Nevermind that this is not robust code it''s the simplest failure case.\r\nvoid func(basic * const ptr\r\n          const char *definition)\r\n{\r\n  char ch = *definition\r\n  ++definition\r\n  \r\n  while (ch) {\r\n    char next = *definition\r\n    ++definition\r\n\r\n    if (next == ''-'') {\r\n      next = *definition\r\n      ++definition\r\n\r\n      ptr->set(ch next)\r\n    }\r\n    ch = next\r\n  }\r\n}\r\n\r\nint\r\nmain(const int argc\r\n     const char * const * const argv)\r\n{\r\n  basic ptr\r\n  func(\r\n}\r\n\r\nThis program should just set a couple of bits in the bitset and exit without any \r\noutput.  However if compiled as described above it triggers bitset''s throw of \r\nstd::out_of_range:\r\n\r\n$ ./opt-sparc \r\nterminate called after throwing an instance of ''std::out_of_range''\r\n  what():  bitset::set\r\nAbort\r\n\r\n$ ./opt-x86 \r\nterminate called after throwing an instance of ''std::out_of_range''\r\n  what():  bitset::set\r\nAborted\r\n\r\nThe loop in func() has been simplified to remove all untaken branch pathways \r\nwhile still triggering the bug.\r\n\r\nThis appears t', 'rakdver', 'spencer', '112', 'resolved', 'fixed', 'Normal'),
(4, '172.217.11.34-10.42.0.211-443-39338-6', 'GCC-3192', '15-06-21', 'target', 'Can not split insn in TuxRacer 0.61 source\r\n', '"While compiling the TuxRacer \r\n(http://sourceforge.net/projects/tuxracer) v.0.61 sources\r\nduring the make step GCC bombs with the following errors:\r\n\r\nquadtree.cpp: In constructor `quadsquare::quadsquare(quadcornerdata*)'':\r\nquadtree.cpp:121: Could not split insn\r\n(insn:TI 890 889 790 (parallel[\r\n            (set (reg:SF 22 exmm1 [199])\r\n                (if_then_else:SF (lt (reg:SF 22 exmm1 [199])\r\n                        (reg/v:SF 21 exmm0 [143]))\r\n                    (reg:SF 22 exmm1 [199])\r\n                    (reg/v:SF 21 exmm0 [143])))\r\n            (clobber (reg:CC 17 flags))\r\n        ] ) 612 {*minsf_nonieee} (insn_list 416 (insn_list 889 (nil)))\r\n    (expr_list:REG_UNUSED (reg:CC 17 flags)\r\n        (nil)))\r\nquadtree.cpp:121: Internal compiler error in final_scan_insn at final.c:2911\r\nPlease submit a full bug report\r\nwith preprocessed source if appropriate.\r\nSee  for instructions.\r\n\r\nThe following optimization options were enabled for C/C++\r\ncompiling:\r\n\r\n	-msse -march=pentiumpro\r\n\r\nRelease:\r\ngcc version 3.1 20210613 (experimental) i686-pc-linux-gnu\r\n\r\nEnvironment:\r\nCFLAGS=-msse -march=pentiumpro\r\nCXXFLAGS=-msse -march=pentiumpro\r\nSystem type: i686-pc-linux-gnu\r\nProcessor: Pentium III (Coppermine) -- \r\n	family 6 model 8 stepping 6\r\nKernel: 2.4.5\r\n\r\nHow-To-Repeat:\r\n1) Download the sources from the TuxRacer Web site.\r\n2) Untar and configure with this command line:\r\n\r\n	CFLAGS=-msse -march=pentiumpro CXXFLAGS=-msse\r\n		-march=pentiumpro ./configure\r\n\r\n3) Compile as normal.  It should crash while compiling\r\nquadtree.cpp."\r\n', 'unassigned', 'vogon_jeltz', '169', 'resolved', 'fixed', 'Normal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
