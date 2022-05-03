

CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `content_type_id`, `codename`, `name`) VALUES
(1, 1, 'add_logentry', 'Can add log entry'),
(2, 1, 'change_logentry', 'Can change log entry'),
(3, 1, 'delete_logentry', 'Can delete log entry'),
(4, 1, 'view_logentry', 'Can view log entry'),
(5, 2, 'add_permission', 'Can add permission'),
(6, 2, 'change_permission', 'Can change permission'),
(7, 2, 'delete_permission', 'Can delete permission'),
(8, 2, 'view_permission', 'Can view permission'),
(9, 3, 'add_group', 'Can add group'),
(10, 3, 'change_group', 'Can change group'),
(11, 3, 'delete_group', 'Can delete group'),
(12, 3, 'view_group', 'Can view group'),
(13, 4, 'add_contenttype', 'Can add content type'),
(14, 4, 'change_contenttype', 'Can change content type'),
(15, 4, 'delete_contenttype', 'Can delete content type'),
(16, 4, 'view_contenttype', 'Can view content type'),
(17, 5, 'add_session', 'Can add session'),
(18, 5, 'change_session', 'Can change session'),
(19, 5, 'delete_session', 'Can delete session'),
(20, 5, 'view_session', 'Can view session'),
(21, 6, 'add_user', 'Can add user'),
(22, 6, 'change_user', 'Can change user'),
(23, 6, 'delete_user', 'Can delete user'),
(24, 6, 'view_user', 'Can view user'),
(25, 7, 'add_flight', 'Can add flight'),
(26, 7, 'change_flight', 'Can change flight'),
(27, 7, 'delete_flight', 'Can delete flight'),
(28, 7, 'view_flight', 'Can view flight'),
(29, 8, 'add_place', 'Can add place'),
(30, 8, 'change_place', 'Can change place'),
(31, 8, 'delete_place', 'Can delete place'),
(32, 8, 'view_place', 'Can view place'),
(33, 9, 'add_weekday', 'Can add week day'),
(34, 9, 'change_weekday', 'Can change week day'),
(35, 9, 'delete_weekday', 'Can delete week day'),
(36, 9, 'view_weekday', 'Can view week day'),
(37, 10, 'add_passenger', 'Can add passenger'),
(38, 10, 'change_passenger', 'Can change passenger'),
(39, 10, 'delete_passenger', 'Can delete passenger'),
(40, 10, 'view_passenger', 'Can view passenger'),
(41, 11, 'add_week', 'Can add week'),
(42, 11, 'change_week', 'Can change week'),
(43, 11, 'delete_week', 'Can delete week'),
(44, 11, 'view_week', 'Can view week'),
(45, 12, 'add_ticket', 'Can add ticket'),
(46, 12, 'change_ticket', 'Can change ticket'),
(47, 12, 'delete_ticket', 'Can delete ticket'),
(48, 12, 'view_ticket', 'Can view ticket');










CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-01'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-11-01'),
(3, 'auth', '0001_initial', '2020-11-01'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-11-01'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-11-01'),
(6, 'auth', '0004_alter_user_username_opts', '2020-11-01'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-11-01'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-11-01'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-11-01'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-11-01'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-11-01'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-11-01'),
(13, 'auth', '0011_update_proxy_permissions', '2020-11-01'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2020-11-01'),
(15, 'flight', '0001_initial', '2020-11-01'),
(16, 'admin', '0001_initial', '2020-11-01'),
(17, 'admin', '0002_logentry_remove_auto_add', '2020-11-01'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-01'),
(19, 'sessions', '0001_initial', '2020-11-01'),
(20, 'flight', '0002_auto_20201101_1756', '2020-11-01'),
(21, 'flight', '0003_auto_20201101_1758', '2020-11-01'),
(22, 'flight', '0004_flight_fare', '2020-11-01'),
(23, 'flight', '0005_auto_20201101_1816', '2020-11-01'),
(24, 'flight', '0006_flight_arrival_time', '2020-11-01'),
(25, 'flight', '0007_auto_20201102_1504', '2020-11-02'),
(26, 'flight', '0002_auto_20201102_1559', '2020-11-02'),
(27, 'flight', '0003_auto_20201102_1600', '2020-11-02'),
(28, 'flight', '0004_auto_20201102_1601', '2020-11-02'),
(29, 'flight', '0005_auto_20201118_2320', '2020-11-18'),
(30, 'flight', '0006_auto_20201118_2323', '2020-11-18'),
(31, 'flight', '0007_ticket', '2020-11-18'),
(32, 'flight', '0008_ticket_user', '2020-11-19'),
(33, 'flight', '0009_auto_20201119_1156', '2020-11-19'),
(34, 'flight', '0010_auto_20201119_1255', '2020-11-19'),
(35, 'flight', '0011_auto_20201119_1257', '2020-11-19'),
(36, 'flight', '0012_auto_20201119_1302', '2020-11-19'),
(37, 'flight', '0013_auto_20201121_1355', '2020-11-21'),
(38, 'flight', '0014_auto_20220322_0031', '2022-03-21');

-- --------------------------------------------------------


--
-- Dumping data for table `flight_flight_depart_day`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight_passenger`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight_place`
--



-- --------------------------------------------------------

--
-- Table structure for table `flight_ticket`
--

--
-- Table structure for table `flight_ticket_passengers`
--

--
-- Dumping data for table `flight_ticket_passengers`
--


-- --------------------------------------------------------

--
-- Table structure for table `flight_user`
--

--
-- Dumping data for table `flight_user`
--


--
-- Table structure for table `flight_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(24) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('django_migrations', 38),
('django_content_type', 12),
('auth_permission', 48),
('auth_group', 0),
('django_admin_log', 216),
('flight_user', 5),
('flight_place', 64),
('flight_week', 7),
('flight_flight_depart_day', 168),
('flight_flight', 24),
('flight_passenger', 68),
('flight_ticket_passengers', 78),
('flight_ticket', 72);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
