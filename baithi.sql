CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `khachhang` (`id`, `fname`, `lname`, `email`, `address`) VALUES
(2, 'tuan', 'huy', 'huynt@gmail.com', 'abc');

ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
