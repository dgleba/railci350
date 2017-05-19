-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `cilist`;

DROP TABLE IF EXISTS `roles_rr`;
CREATE TABLE `roles_rr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `roles_rr` (`id`, `name`, `description`, `active_status`, `sort`, `created_at`, `updated_at`) VALUES
(1,	'lr_minimal',	'Can\'t do much',	NULL,	NULL,	'2017-05-18 18:02:08',	'2017-05-18 18:02:08'),
(2,	'lr_future1',	'',	NULL,	NULL,	'2017-05-18 18:02:08',	'2017-05-18 18:02:08'),
(3,	'lr_readonly',	'',	NULL,	NULL,	'2017-05-18 18:02:08',	'2017-05-18 18:02:08'),
(4,	'lr_future2',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(5,	'lr_create',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(6,	'lr_future3',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(7,	'lr_regular',	'Can edit data, readonly lookup tables',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(8,	'lr_future4',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(9,	'lr_supervisor',	'Can edit lookup tables',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(10,	'lr_future5',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(11,	'lr_delete',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(12,	'lr_future6',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(13,	'lr_vip',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(14,	'lr_future7',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(15,	'lr_special1',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(16,	'lr_seller',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(17,	'lr_future8',	'',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09'),
(18,	'lr_admin',	'Can perform any CRUD operation on any resource',	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name` = VALUES(`name`), `description` = VALUES(`description`), `active_status` = VALUES(`active_status`), `sort` = VALUES(`sort`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`);

DROP TABLE IF EXISTS `users_rr`;
CREATE TABLE `users_rr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_rr_on_email` (`email`),
  UNIQUE KEY `index_users_rr_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_rr_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles_rr` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users_rr` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`, `role_id`) VALUES
(1,	'a@e',	'',	NULL,	NULL,	NULL,	0,	NULL,	NULL,	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09',	'admin',	18),
(2,	'a',	'',	NULL,	NULL,	NULL,	0,	NULL,	NULL,	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09',	'admin',	18),
(3,	'r',	'',	NULL,	NULL,	NULL,	0,	NULL,	NULL,	NULL,	NULL,	'2017-05-18 18:02:09',	'2017-05-18 18:02:09',	'reg',	7),
(4,	'dgleba',	'',	NULL,	NULL,	NULL,	1,	'2017-05-18 18:05:46',	'2017-05-18 18:05:46',	'10.4.10.232',	'10.4.10.232',	'2017-05-18 18:05:46',	'2017-05-18 18:05:46',	NULL,	9)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `email` = VALUES(`email`), `encrypted_password` = VALUES(`encrypted_password`), `reset_password_token` = VALUES(`reset_password_token`), `reset_password_sent_at` = VALUES(`reset_password_sent_at`), `remember_created_at` = VALUES(`remember_created_at`), `sign_in_count` = VALUES(`sign_in_count`), `current_sign_in_at` = VALUES(`current_sign_in_at`), `last_sign_in_at` = VALUES(`last_sign_in_at`), `current_sign_in_ip` = VALUES(`current_sign_in_ip`), `last_sign_in_ip` = VALUES(`last_sign_in_ip`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`), `name` = VALUES(`name`), `role_id` = VALUES(`role_id`);

-- 2017-05-18 18:36:25