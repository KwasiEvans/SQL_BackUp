

CREATE TABLE `idcode_gen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(25) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `last_idNum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




CREATE TABLE `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` varchar(7) NOT NULL DEFAULT '-',
  `lname` varchar(55) NOT NULL DEFAULT '-',
  `fname` varchar(55) NOT NULL DEFAULT '-',
  `mname` varchar(55) NOT NULL DEFAULT '-',
  `birth_date` varchar(10) NOT NULL DEFAULT '-',
  `age` int(2) NOT NULL,
  `sex` varchar(6) NOT NULL DEFAULT 'Male',
  `phone_num` varchar(13) NOT NULL DEFAULT '+63**********',
  `zip_code` int(4) NOT NULL DEFAULT 0,
  `city_municipal` varchar(55) NOT NULL DEFAULT '-',
  `brgy` varchar(55) NOT NULL DEFAULT '-',
  `street` varchar(55) NOT NULL DEFAULT '-',
  `member_class` varchar(25) NOT NULL DEFAULT 'Visitor',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO members VALUES("1","113","Bermoy","Lyndon","Rife","-","29","Male","+639079373999","8400","-","-","-","Visitor");



CREATE TABLE `tbl_attendance` (
  `attend_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `body_temp` decimal(5,2) NOT NULL DEFAULT 0.00,
  `date_mm` varchar(2) NOT NULL,
  `date_dd` varchar(2) NOT NULL,
  `date_yyyy` varchar(4) NOT NULL,
  `log_time` varchar(12) NOT NULL DEFAULT '00:00:00 AM',
  `action` varchar(3) NOT NULL DEFAULT '-',
  `ref_log_id` int(11) NOT NULL,
  PRIMARY KEY (`attend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;




CREATE TABLE `tbl_daily_hdf` (
  `hdf_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `date_mm` int(11) NOT NULL,
  `date_dd` int(11) NOT NULL,
  `date_yyyy` int(11) NOT NULL,
  `q1` varchar(3) NOT NULL DEFAULT 'No',
  `q2` varchar(3) NOT NULL DEFAULT 'No',
  `q3` varchar(3) NOT NULL DEFAULT 'No',
  `q4` varchar(3) NOT NULL DEFAULT 'No',
  `q5_fever` varchar(4) NOT NULL DEFAULT 'None',
  `q5_cough` varchar(4) NOT NULL DEFAULT 'None',
  `q5_dbreath` varchar(4) NOT NULL DEFAULT 'None',
  `q5_bpains` varchar(4) NOT NULL DEFAULT 'None',
  `q5_sthroat` varchar(4) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`hdf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;




CREATE TABLE `useraccounts` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(11) NOT NULL,
  `lname` varchar(55) NOT NULL,
  `fname` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `access` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO useraccounts VALUES("1","0","Magtolis","Emiloi","admin","admin","Administrator","Active");

