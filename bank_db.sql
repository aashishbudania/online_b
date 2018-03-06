
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `bank`
--

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'admin', 'M', '1994-01-01', 'unmarried', 'developer', 'globsyn kolkata', '18003004000', 'admin', 'admin', '0000-00-00 00:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

DROP TABLE IF EXISTS `beneficiary1`;
CREATE TABLE IF NOT EXISTS `beneficiary1` (
`id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`id`, `sender_id`, `sender_name`, `reciever_id`, `reciever_name`, `status`) VALUES
(21, 34, 'Rashid feroz', 35, 'Deepak rajwar', 'ACTIVE'),
(22, 34, 'Rashid feroz', 36, 'Shailesh kumar', 'ACTIVE'),
(23, 36, 'Shailesh kumar', 34, 'Rashid feroz', 'ACTIVE'),
(24, 35, 'Deepak rajwar', 34, 'Rashid feroz', 'ACTIVE'),
(25, 34, 'Rashid feroz', 38, 'isha dey', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `branch`, `ifsc`, `lastlogin`, `accstatus`) VALUES
(34, 'Rashid feroz', 'M', '1993-12-30', 'ramu', 'savings', 'agapara', '9999955555', 'rashid@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'KOLKATA', 'K421A', '2015-01-11 10:29:30', 'ACTIVE'),
(35, 'Deepak rajwar', 'M', '1990-12-26', 'ramu', 'savings', 'agarpara', '9999955556', 'deepak@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'DELHI', 'D30AC', '2015-01-11 10:11:07', 'ACTIVE'),
(36, 'Shailesh kumar', 'M', '1993-06-26', 'ramu', 'savings', 'sodepur', '9999955556', 'shailesh@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'BANGALORE', 'B6A9E', '0000-00-00 00:00:00', 'ACTIVE'),
(37, 'Ravi nandan', 'M', '0000-00-00', 'ramu', 'savings', 'durgapur', '9999955556', 'ravi@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'DELHI', 'D30AC', '2015-01-11 10:18:57', 'ACTIVE'),
(38, 'Isha dey', 'F', '1990-12-26', 'ramu', 'savings', 'agarpara', '9999955556', 'isha@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'KOLKATA', 'K421A', '0000-00-00 00:00:00', 'ACTIVE'),
(39, 'sunny kumar', 'M', '2015-01-14', 'ramu', 'savings', 'agarpara', '9804381248', 'sunny@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'DELHI', 'D30AC', '2015-01-11 10:09:36', 'ACTIVE'),
(40, 'Pankaj kumar', 'M', '1996-02-18', 'Deepak', 'savings', 'agarpara', '8956231245', 'pankaj@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'DELHI', 'D30AC', '2015-01-11 09:42:43', 'ACTIVE'),
(41, 'Sharique hassan', 'M', '1993-12-26', 'ramu', 'savings', 'sodepur', '8956231245', 'sarik@gmail.com', 'b638866443ed874cd5a9449a090cb8dce66e4a3a', 'KOLKATA', 'K421A', '2015-01-11 10:27:48', 'ACTIVE');

-- --


--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
