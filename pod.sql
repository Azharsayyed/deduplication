-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               6.0.3-alpha-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pod
CREATE DATABASE IF NOT EXISTS `pod` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pod`;

-- Dumping structure for table pod.fileinfo
CREATE TABLE IF NOT EXISTS `fileinfo` (
  `username` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `fileid` varchar(50) DEFAULT NULL,
  `sha_value` varchar(150) DEFAULT NULL,
  `refrence_id` varchar(50) DEFAULT NULL,
  `start_chunk_id` varchar(50) DEFAULT NULL,
  `num_chunk` int(11) DEFAULT NULL,
  `file_size` mediumtext,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pod.fileinfo: ~24 rows (approximately)
/*!40000 ALTER TABLE `fileinfo` DISABLE KEYS */;
INSERT INTO `fileinfo` (`username`, `filename`, `fileid`, `sha_value`, `refrence_id`, `start_chunk_id`, `num_chunk`, `file_size`, `status`) VALUES
	('sayyed', 'info.txt', 'sayyed_info.txt', 'c7b3867f7206e75f8a87ac012a394a9b6cc10e6c', 'none', 'info.txt_chunk0.txt', 3, '224', 4),
	('sayyed', 'innov.txt', 'sayyed_innov.txt', '9ccfa2572cd4b51596cbb3221dd13582ebe723a7', 'sayyed_intex.txt', 'innov.txt_chunk0.txt', 3, '252', 4),
	('azhar', 'info.txt', 'azhar_info.txt', 'c7b3867f7206e75f8a87ac012a394a9b6cc10e6c', 'sayyed_info.txt', 'info.txt_chunk0.txt', 3, '224', 4),
	('azhar', 'abc.txt', 'azhar_abc.txt', '8df6acc39c63a709bb5cd4e586f0c322a7ffdbf9', 'none', 'abc.txt_chunk0.txt', 5, '542', 4),
	('sayyed', 'cs.txt', 'sayyed_cs.txt', '8df6acc39c63a709bb5cd4e586f0c322a7ffdbf9', 'azhar_abc.txt', 'cs.txt_chunk0.txt', 5, '542', 4),
	('sayyed', 'intex.txt', 'sayyed_intex.txt', '9ccfa2572cd4b51596cbb3221dd13582ebe723a7', 'sayyed_intex.txt', 'intex.txt_chunk0.txt', 3, '252', 4),
	('azhar', 'inform.txt', 'azhar_inform.txt', 'd0ee1cbb7e692c9ad554c450cb646c406cfaca7c', 'none', 'inform.txt_chunk0.txt', 3, '338', 4),
	('azhar', 'lab.docx', 'azhar_lab.docx', '189c710293d3607ca46618b0ec7d285364919cab', 'none', 'lab.docx_chunk0.docx', 10, '17829', 4),
	('sethi', 'lab1.docx', 'sethi_lab1.docx', 'd377f957b2eaf0eddf3b45fbc76d948737f740ba', 'azhar_lab1.docx', 'lab1.docx_chunk0.docx', 10, '18192', 4),
	('sethi', 'cs.txt', 'sethi_cs.txt', '8df6acc39c63a709bb5cd4e586f0c322a7ffdbf9', 'azhar_abc.txt', 'cs.txt_chunk0.txt', 5, '542', 4),
	('azhar', 'APPLICATION1.docx', 'azhar_APPLICATION1.docx', '9fbb7efab57afd1b5aa9bab5a230276908d4aa87', 'none', 'APPLICATION1.docx_chunk0.docx', 10, '14317', 4),
	('azhar', 'APPLI.docx', 'azhar_APPLI.docx', '2bf80ea35387647266b57747cb2f49f6cdfa376c', 'none', 'APPLI.docx_chunk0.docx', 10, '14258', 4),
	('sethi', 'APPLI.docx', 'sethi_APPLI.docx', '2bf80ea35387647266b57747cb2f49f6cdfa376c', 'azhar_APPLI.docx', 'APPLI.docx_chunk0.docx', 10, '14258', 4),
	('sayyed', 'APPLI.docx', 'sayyed_APPLI.docx', '98526b77d9adff339832da80c88d1cb21dbf3016', 'none', 'APPLI.docx_chunk0.docx', 10, '14657', 4),
	('sethi', 'ACKNOWLEDGEMENT.docx', 'sethi_ACKNOWLEDGEMENT.docx', '1252f1ba670ec24b6b2ce716e86823676c322422', 'none', 'ACKNOWLEDGEMENT.docx_chunk0.docx', 10, '13862', 4),
	('sayyed', 'ACKNOWLEDGEMENT.docx', 'sayyed_ACKNOWLEDGEMENT.docx', '1252f1ba670ec24b6b2ce716e86823676c322422', 'sethi_ACKNOWLEDGEMENT.docx', 'ACKNOWLEDGEMENT.docx_chunk0.docx', 10, '13862', 4),
	('azhar', 'ackno.txt', 'azhar_ackno.txt', 'f8cd483863156de6c773e7b6c78c3ba2fe7a16b5', 'none', 'ackno.txt_chunk0.txt', 5, '976', 4),
	('sethi', 'ackno.txt', 'sethi_ackno.txt', 'f8cd483863156de6c773e7b6c78c3ba2fe7a16b5', 'azhar_ackno.txt', 'ackno.txt_chunk0.txt', 5, '976', 4),
	('sayyed', 'ackno.txt', 'sayyed_ackno.txt', '5ce3adc7e0fcfec386bbe249a4d23be27ca9017b', 'none', 'ackno.txt_chunk0.txt', 5, '942', 4),
	('azhar', 'innov.txt', 'azhar_innov.txt', '9ccfa2572cd4b51596cbb3221dd13582ebe723a7', 'sayyed_intex.txt', 'innov.txt_chunk0.txt', 3, '252', 4),
	('azhar', 'lab1.docx', 'azhar_lab1.docx', 'd377f957b2eaf0eddf3b45fbc76d948737f740ba', 'azhar_lab1.docx', 'lab1.docx_chunk0.docx', 10, '18192', 4),
	('sayyed', 'lab1.docx', 'sayyed_lab1.docx', 'd377f957b2eaf0eddf3b45fbc76d948737f740ba', 'azhar_lab1.docx', 'lab1.docx_chunk0.docx', 10, '18192', 4),
	('sayyed', 'lab.docx', 'sayyed_lab.docx', 'ed7b2c5f345b40f8886fec46032c2e9848a52b1b', 'none', 'lab.docx_chunk0.docx', 10, '18119', 4),
	('azhar', 'intex.txt', 'azhar_intex.txt', '9c106c12b75f950622569715a0e126775eb6cf51', 'none', 'intex.txt_chunk0.txt', 3, '320', 4);
/*!40000 ALTER TABLE `fileinfo` ENABLE KEYS */;

-- Dumping structure for table pod.pod_users
CREATE TABLE IF NOT EXISTS `pod_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pod.pod_users: ~3 rows (approximately)
/*!40000 ALTER TABLE `pod_users` DISABLE KEYS */;
INSERT INTO `pod_users` (`username`, `password`, `contact_no`, `email`, `address`) VALUES
	('azhar', 'azhar', '8888379787', 'azhar@gmail.com', 'Aurangabad'),
	('sayyed', 'sayyed', '8888379787', 'sayyed@gmail.com', 'Aurangabad'),
	('sethi', 'sethi', '9421521515', 'mahindrra@gmail.com', 'CSMSS COE, Aurangabad');
/*!40000 ALTER TABLE `pod_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
