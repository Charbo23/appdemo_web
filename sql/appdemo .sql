-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-09-07 11:41:49
-- 服务器版本： 5.7.14
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appdemo`
--

-- --------------------------------------------------------

--
-- 表的结构 `app_item`
--

CREATE TABLE `app_item` (
  `id` int(11) NOT NULL COMMENT '条目id',
  `title` varchar(30) NOT NULL COMMENT '条目名',
  `content` text COMMENT '条目内容',
  `time` int(10) NOT NULL COMMENT '最后更新时间',
  `uid` int(11) NOT NULL COMMENT '所有者id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `app_item`
--

INSERT INTO `app_item` (`id`, `title`, `content`, `time`, `uid`) VALUES
(1, 'Charbo', 'The best', 1533191767, 1),
(2, 'Test', '123', 1533192176, 1),
(3, '123', '123', 1533194221, 1),
(4, '哈哈哈', '哈哈哈', 1533197449, 1),
(5, '12', '12', 1533197508, 1),
(6, '1234', '123', 1533197585, 1),
(8, '嘻嘻', '嘻嘻', 1533197895, 1),
(9, '1233855', '56235', 1533198130, 1),
(12, '呵呵', '呵呵', 1533198304, 1),
(13, '哈哈哈哈', '哈哈哈哈', 1533198362, 1),
(16, '嘻嘻嘻嘻嘻嘻', '1222', 1533198534, 1),
(17, '测试啦', '测试测试', 1533198917, 1),
(20, '12253', '453222', 1533199237, 1),
(21, '咳咳哦哦', '了啦啊啊啊', 1533199280, 1);

-- --------------------------------------------------------

--
-- 表的结构 `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '用户密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `app_user`
--

INSERT INTO `app_user` (`id`, `username`, `password`) VALUES
(1, 'Charbo', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Test', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_item`
--
ALTER TABLE `app_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `app_item`
--
ALTER TABLE `app_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '条目id', AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `app_item`
--
ALTER TABLE `app_item`
  ADD CONSTRAINT `uid_fk` FOREIGN KEY (`uid`) REFERENCES `app_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
