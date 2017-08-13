-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 �?06 �?14 �?10:13
-- 服务器版本: 5.5.53
-- PHP 版本: 5.5.38

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `xj`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_email` varchar(32) NOT NULL,
  `body_password` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `administrators`
--

INSERT INTO `administrators` (`id`, `body_email`, `body_password`, `created_at`, `updated_at`) VALUES
(1, '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `captchas`
--

CREATE TABLE IF NOT EXISTS `captchas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_mobile` varchar(11) NOT NULL,
  `body_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `day_executes`
--

CREATE TABLE IF NOT EXISTS `day_executes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '开始执行时间',
  `end` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '结束执行时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `day_execute_logs`
--

CREATE TABLE IF NOT EXISTS `day_execute_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `remark` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_content` text NOT NULL,
  `body_tool` varchar(20) NOT NULL,
  `body_number` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `lines`
--

CREATE TABLE IF NOT EXISTS `lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object` int(11) NOT NULL,
  `body_period` int(11) NOT NULL,
  `body_open` decimal(10,5) NOT NULL,
  `body_close` decimal(10,5) NOT NULL,
  `body_high` decimal(10,5) NOT NULL,
  `body_low` decimal(10,5) NOT NULL,
  `body_volume` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `month_executes`
--

CREATE TABLE IF NOT EXISTS `month_executes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '执行者',
  `start` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '开始执行时间',
  `end` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '结束执行时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `month_execute_logs`
--

CREATE TABLE IF NOT EXISTS `month_execute_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `remark` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_profit` decimal(8,2) NOT NULL DEFAULT '0.80',
  `body_rank` int(11) NOT NULL DEFAULT '0',
  `body_name` varchar(255) NOT NULL,
  `body_status` int(1) NOT NULL DEFAULT '1',
  `body_name_english` varchar(50) NOT NULL,
  `body_tag` varchar(255) NOT NULL,
  `body_tag_forex` varchar(20) NOT NULL,
  `body_price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_previous` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_min` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_max` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_interval` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_decimal` int(1) NOT NULL DEFAULT '5',
  `body_price_repeat` int(11) NOT NULL DEFAULT '0',
  `is_disabled` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `objects`
--

INSERT INTO `objects` (`id`, `body_profit`, `body_rank`, `body_name`, `body_status`, `body_name_english`, `body_tag`, `body_tag_forex`, `body_price`, `body_price_previous`, `body_price_min`, `body_price_max`, `body_price_interval`, `body_price_decimal`, `body_price_repeat`, `is_disabled`, `created_at`, `updated_at`) VALUES
(1, '0.80', 3, '澳元/美元', 1, 'AUDUSD', 'fx_saudusd', 'AUDUSD', '0.75842', '0.75847', '0.75842', '0.75842', '0.00000', 5, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:47'),
(2, '0.80', 2, '欧元/美元', 1, 'EURUSD', 'fx_seurusd', 'EURUSD', '1.12033', '1.12030', '1.12033', '1.12033', '0.00000', 5, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:54'),
(3, '0.80', 2, '英镑/美元', 1, 'GBPUSD', 'fx_sgbpusd', 'GBPUSD', '1.27332', '1.27316', '1.27332', '1.27332', '0.00000', 5, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:54'),
(4, '0.80', 5, '英镑/日元', 1, 'GBPJPY', 'fx_sgbpjpy', 'GBPJPY', '140.34300', '140.32900', '140.34300', '140.34300', '0.00000', 3, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:55'),
(5, '0.80', 5, '美元/日元', 1, 'USDJPY', 'fx_susdjpy', 'USDJPY', '110.21300', '110.21200', '110.21300', '110.21300', '0.00000', 3, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:55'),
(6, '0.80', 5, '欧元/日元', 1, 'EURJPY', 'fx_seurjpy', 'EURJPY', '123.48200', '123.47900', '123.48200', '123.48200', '0.00000', 3, 0, 0, '2016-04-17 16:00:00', '2017-06-14 09:43:55'),
(7, '0.80', 1, '黄金', 1, 'XAUUSD', 'hf_GC', 'XAUUSD', '1267.94000', '1268.04000', '1267.94000', '1267.94000', '0.00000', 2, 0, 0, '2016-05-16 16:00:00', '2017-06-14 09:43:50'),
(8, '0.80', 1, '白银', 1, 'XAGUSD', 'hf_SI', 'XAGUSD', '16.94900', '16.95000', '16.94900', '16.94900', '0.00000', 3, 0, 0, '2016-05-16 16:00:00', '2017-06-14 09:43:56'),
(9, '0.80', 0, '比特币', 1, 'BTCCNY', 'BTCCNY', 'BTCCNY', '19406.00000', '19410.00000', '19406.00000', '19406.00000', '0.00000', 1, 0, 0, '2016-04-17 16:00:00', '2017-06-14 07:05:55');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL,
  `id_object` int(11) NOT NULL,
  `body_price_buying` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_striked` decimal(10,5) DEFAULT '0.00000',
  `body_stake` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_bonus` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_direction` int(1) NOT NULL DEFAULT '0',
  `body_time` int(11) NOT NULL DEFAULT '60',
  `body_is_win` int(1) DEFAULT NULL,
  `body_is_draw` int(1) DEFAULT NULL,
  `body_is_controlled` int(1) NOT NULL DEFAULT '0',
  `times` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `striked_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pay_requests`
--

CREATE TABLE IF NOT EXISTS `pay_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(12) NOT NULL,
  `body_stake` int(5) NOT NULL,
  `body_gateway` varchar(32) NOT NULL,
  `body_transfer_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object` int(11) NOT NULL,
  `body_price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `body_price_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body_rank` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL DEFAULT '0',
  `id_payRequest` int(11) NOT NULL DEFAULT '0',
  `id_withdrawRequest` int(11) NOT NULL DEFAULT '0',
  `id_refer` varchar(15) NOT NULL DEFAULT '0',
  `id_order` int(11) NOT NULL DEFAULT '0',
  `body_name` varchar(255) NOT NULL,
  `body_direction` int(1) NOT NULL DEFAULT '0',
  `body_stake` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `systems`
--

CREATE TABLE IF NOT EXISTS `systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `convert_max` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `convert_min` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `agentnote` text COLLATE utf8_unicode_ci,
  `interest_rate` char(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `systems`
--

INSERT INTO `systems` (`id`, `convert_max`, `convert_min`, `agentnote`, `interest_rate`) VALUES
(1, '6.5', '6.3', '   各代理商，即日起，开盘时间由早上五点调整为六点，同时，下午休盘时间凌晨五点调整为二点，请大家广为告之。', '0.02');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wechat` varchar(32) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_introducer` varchar(12) NOT NULL DEFAULT '0',
  `body_phone` varchar(11) NOT NULL DEFAULT '0',
  `body_balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `body_transactions` decimal(10,2) NOT NULL DEFAULT '0.00',
  `body_transactions_network` decimal(10,2) NOT NULL DEFAULT '0.00',
  `body_bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_disabled` int(1) NOT NULL DEFAULT '0',
  `grade` int(1) DEFAULT NULL,
  `rname` varchar(32) DEFAULT NULL,
  `idcard` varchar(32) DEFAULT NULL,
  `tjm` varchar(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `id_wechat`, `password`, `id_introducer`, `body_phone`, `body_balance`, `body_transactions`, `body_transactions_network`, `body_bonus`, `is_disabled`, `grade`, `rname`, `idcard`, `tjm`, `created_at`, `updated_at`) VALUES
(1, '13337710406', 'e10adc3949ba59abbe56e057f20f883e', '0', '13337710406', '2796.00', '400.00', '0.00', '0.00', 0, 1, '测试', '1234567890', '123456', '2017-06-24 16:00:00', '2017-06-14 09:44:02');

-- --------------------------------------------------------

--
-- 表的结构 `withdraw_requests`
--

CREATE TABLE IF NOT EXISTS `withdraw_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(15) NOT NULL,
  `body_stake` decimal(8,2) NOT NULL,
  `body_name` varchar(30) NOT NULL,
  `body_bank` varchar(255) NOT NULL,
  `body_deposit` varchar(255) NOT NULL,
  `body_number` varchar(30) NOT NULL,
  `body_transfer_number` varchar(255) NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
