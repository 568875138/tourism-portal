-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.13 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 db6.title 结构
CREATE TABLE IF NOT EXISTS `title` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classify` int(11) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `titleimg` varchar(1000) DEFAULT NULL,
  `adescribe` varchar(1000) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `datime` datetime DEFAULT NULL,
  `readc` bigint(20) DEFAULT NULL,
  `author` varchar(1000) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db6.title 的数据：~1 rows (大约)
DELETE FROM `title`;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` (`id`, `classify`, `title`, `titleimg`, `adescribe`, `tags`, `datime`, `readc`, `author`, `content`) VALUES
	(1, 1, '城市简介', '', '城市简介', '城市简介', '2019-05-31 11:52:09', 1, '管理员', '城市简介');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
