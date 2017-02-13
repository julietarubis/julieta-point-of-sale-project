-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2016 at 11:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cafe1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE IF NOT EXISTS `ospos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', '1015 METROPOLITAN AVE. BRGY STA. CRUZ, MAKATI CITY'),
('company', 'M Suite Heart Cafe'),
('currency_side', '0'),
('currency_symbol', ''),
('custom10_name', ''),
('custom1_name', ''),
('custom2_name', ''),
('custom3_name', ''),
('custom4_name', ''),
('custom5_name', ''),
('custom6_name', ''),
('custom7_name', ''),
('custom8_name', ''),
('custom9_name', ''),
('default_tax_1_name', 'VAT'),
('default_tax_1_rate', '12'),
('default_tax_2_name', 'VAT'),
('default_tax_2_rate', '0'),
('default_tax_rate', '8'),
('email', 'julieta.descartin@yahoo.com'),
('fax', ''),
('language', 'english'),
('phone', '007-917-722-000'),
('print_after_sale', 'print_after_sale'),
('return_policy', 'No Return'),
('timezone', 'Asia/Hong_Kong'),
('website', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE IF NOT EXISTS `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `account_number`, `taxable`, `deleted`) VALUES
(3, NULL, 1, 0),
(4, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE IF NOT EXISTS `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
('casher1', '68c0151b883f6de35c7a9c8f20054dad', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE IF NOT EXISTS `ospos_giftcards` (
`giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE IF NOT EXISTS `ospos_inventory` (
`trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_senior` varchar(40) NOT NULL,
  `trans_take_type` varchar(40) NOT NULL,
  `trans_inventory` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_senior`, `trans_take_type`, `trans_inventory`) VALUES
(1, 1, 1, '2015-07-24 17:37:28', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 10),
(2, 1, 1, '2015-07-24 17:41:01', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 0),
(3, 2, 1, '2015-07-24 21:52:07', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 10),
(4, 2, 1, '2015-07-24 21:52:41', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 0),
(5, 1, 1, '2015-07-24 22:33:15', 'POS 1', 'POS 1', 'POS 1', -1),
(6, 1, 1, '2015-07-24 23:01:23', 'POS 2', 'POS 2', 'POS 2', -1),
(7, 1, 1, '2015-07-25 20:37:47', 'POS 3', 'POS 3', 'POS 3', -1),
(8, 1, 1, '2015-07-25 22:35:18', 'POS 4', 'POS 4', 'POS 4', -5),
(9, 3, 1, '2015-07-25 22:37:21', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 10),
(10, 3, 1, '2015-07-25 22:37:34', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 0),
(11, 3, 1, '2015-07-25 22:37:34', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 'Manual Edit of Quantity', 0),
(12, 1, 1, '2015-07-31 19:02:02', 'POS 5', 'POS 5', 'POS 5', -1),
(13, 1, 1, '2015-08-03 18:26:27', 'POS 6', 'POS 6', 'POS 6', -1),
(14, 2, 1, '2015-08-03 18:52:47', 'POS 7', 'POS 7', 'POS 7', -1),
(15, 1, 1, '2015-08-03 18:53:47', 'POS 8', 'POS 8', 'POS 8', -1),
(16, 2, 1, '2015-08-03 18:55:13', 'POS 9', 'POS 9', 'POS 9', -1),
(17, 1, 1, '2015-08-13 20:35:49', 'POS 10', 'POS 10', 'POS 10', -1),
(18, 2, 1, '2015-08-13 21:47:05', 'POS 11', 'POS 11', 'POS 11', -1),
(19, 2, 1, '2015-08-13 21:53:21', 'POS 12', 'POS 12', 'POS 12', -1),
(20, 1, 1, '2015-08-13 21:55:12', 'POS 13', 'POS 13', 'POS 13', -1),
(21, 2, 1, '2015-08-13 21:56:52', 'POS 14', 'POS 14', 'POS 14', -1),
(22, 2, 1, '2015-08-13 21:59:08', 'POS 15', 'POS 15', 'POS 15', -1),
(23, 2, 1, '2015-08-14 00:23:06', 'POS 16', 'POS 16', 'POS 16', -1),
(24, 2, 1, '2015-08-14 19:20:38', 'POS 17', 'POS 17', 'POS 17', -1),
(25, 2, 1, '2015-08-16 18:25:40', 'POS 18', 'POS 18', 'POS 18', -1),
(26, 2, 1, '2015-08-18 17:23:10', 'POS 19', 'POS 19', 'POS 19', -1),
(27, 2, 1, '2015-08-25 16:04:22', 'POS 20', 'POS 20', 'POS 20', -1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE IF NOT EXISTS `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` double(15,2) NOT NULL,
  `unit_price` double(15,2) NOT NULL,
  `quantity` double(15,2) NOT NULL DEFAULT '0.00',
  `reorder_level` double(15,2) NOT NULL DEFAULT '0.00',
  `location` varchar(255) NOT NULL,
`item_id` int(10) NOT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(25) NOT NULL,
  `custom2` varchar(25) NOT NULL,
  `custom3` varchar(25) NOT NULL,
  `custom4` varchar(25) NOT NULL,
  `custom5` varchar(25) NOT NULL,
  `custom6` varchar(25) NOT NULL,
  `custom7` varchar(25) NOT NULL,
  `custom8` varchar(25) NOT NULL,
  `custom9` varchar(25) NOT NULL,
  `custom10` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `quantity`, `reorder_level`, `location`, `item_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('Burger', 'Snack', NULL, NULL, '', 0.00, 50.00, -3.00, 0.00, '', 1, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Banna', 'Fruits', NULL, NULL, '0', 0.00, 100.00, -1.00, 0.00, '0', 2, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Grape', 'Fruits', NULL, NULL, '0', 0.00, 150.00, 10.00, 0.00, '0', 3, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(1, 'VAT', '12'),
(2, 'VAT', '12'),
(3, 'VAT', '12');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE IF NOT EXISTS `ospos_item_kits` (
`item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE IF NOT EXISTS `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_config', 'module_config_desc', 100, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE IF NOT EXISTS `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
`person_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Julz', 'Rubis', '09228467412', 'julieta.descartin@yahoo.com', 'Paranaque', '', '', '', '', '', '0', 1),
('Juvz', 'Vallecera', '', '', '', '', '', '', '', '', '0', 2),
('Cj', 'Rubis', '', 'cj@gmail.com', '', '', '', '', '', '', '0', 3),
('Cj', 'Rubis', '', '', '', '', '', '', '', '', '0', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE IF NOT EXISTS `ospos_permissions` (
  `module_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`module_id`, `person_id`) VALUES
('config', 1),
('customers', 1),
('employees', 1),
('items', 1),
('reports', 1),
('sales', 1),
('customers', 2),
('sales', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE IF NOT EXISTS `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `senior` varchar(40) NOT NULL,
  `take_type` varchar(40) NOT NULL,
`receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE IF NOT EXISTS `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` int(10) NOT NULL DEFAULT '0',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE IF NOT EXISTS `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `senior` varchar(40) NOT NULL,
  `take_type` varchar(40) NOT NULL,
`sale_id` int(6) unsigned zerofill NOT NULL,
  `payment_type` varchar(512) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `senior`, `take_type`, `sale_id`, `payment_type`) VALUES
('2015-07-24 22:33:15', 4, 1, '', '0', 'Take OUT', 000001, 'Cash: Php50.00<br />'),
('2015-07-24 23:01:23', NULL, 1, '', '0', 'Take out', 000002, 'Cash: Php50.00<br />'),
('2015-07-25 20:37:46', 4, 1, '', '0', 'Take Out', 000003, 'Cash: Php50.00<br />'),
('2015-07-25 22:35:17', NULL, 1, '', '0', 'Take away', 000004, 'Cash: Php500.00<br />'),
('2015-07-31 19:02:02', NULL, 1, '', '0', '0', 000005, 'Cash: Php50.00<br />'),
('2015-08-03 18:26:26', NULL, 1, '', '0', '0', 000006, 'Cash: Php50.00<br />'),
('2015-08-03 18:52:47', NULL, 1, '', '0', '0', 000007, 'Cash: Php100.00<br />'),
('2015-08-03 18:53:47', NULL, 1, '', '0', '0', 000008, 'Cash: Php50.00<br />'),
('2015-08-03 18:55:13', NULL, 1, '', '0', '0', 000009, 'Cash: Php100.00<br />'),
('2015-08-13 20:35:49', NULL, 1, '', '0', '0', 000010, 'Cash: Php100.00<br />'),
('2015-08-13 21:47:05', NULL, 1, '', '0', '0', 000011, 'Cash: Php100.00<br />'),
('2015-08-13 21:53:21', NULL, 1, '', '0', '0', 000012, 'Cash: Php100.00<br />'),
('2015-08-13 21:55:12', NULL, 1, '', '0', '0', 000013, 'Cash: Php50.00<br />'),
('2015-08-13 21:56:51', NULL, 1, '', '0', '0', 000014, 'Cash: Php100.00<br />'),
('2015-08-13 21:59:08', NULL, 1, '', '0', '0', 000015, 'Cash: Php100.00<br />'),
('2015-08-14 00:23:06', NULL, 1, '', '0', '0', 000016, 'Cash: Php100.00<br />'),
('2015-08-14 19:20:38', NULL, 1, '', '0', '0', 000017, 'Cash: Php100.00<br />'),
('2015-08-16 18:25:40', NULL, 1, '', '0', '0', 000018, 'Cash: Php100.00<br />'),
('2015-08-18 17:23:10', NULL, 1, '', '0', '0', 000019, 'Cash: Php100.00<br />'),
('2015-08-25 16:04:22', NULL, 1, '', '0', '0', 000020, 'Cash: Php100.00<br />');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_items` (
  `sale_id` int(6) unsigned zerofill NOT NULL DEFAULT '000000',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` double(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`) VALUES
(000001, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000002, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000003, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000004, 1, '', '', 1, 5.00, '0.00', 50.00, 0),
(000005, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000006, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000007, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000008, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000009, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000010, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000011, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000012, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000013, 1, '', '', 1, 1.00, '0.00', 50.00, 0),
(000014, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000015, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000016, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000017, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000018, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000019, 2, '0', '', 1, 1.00, '0.00', 100.00, 0),
(000020, 2, '0', '', 1, 1.00, '0.00', 100.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_items_taxes` (
  `sale_id` int(6) unsigned zerofill NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` double(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
(000001, 1, 1, 'VAT', 12.000),
(000002, 1, 1, 'VAT', 12.000),
(000003, 1, 1, 'VAT', 12.000),
(000004, 1, 1, 'VAT', 12.000),
(000005, 1, 1, 'VAT', 12.000),
(000006, 1, 1, 'VAT', 12.000),
(000008, 1, 1, 'VAT', 12.000),
(000010, 1, 1, 'VAT', 12.000),
(000013, 1, 1, 'VAT', 12.000),
(000007, 2, 1, 'VAT', 12.000),
(000009, 2, 1, 'VAT', 12.000),
(000011, 2, 1, 'VAT', 12.000),
(000012, 2, 1, 'VAT', 12.000),
(000014, 2, 1, 'VAT', 12.000),
(000015, 2, 1, 'VAT', 12.000),
(000016, 2, 1, 'VAT', 12.000),
(000017, 2, 1, 'VAT', 12.000),
(000018, 2, 1, 'VAT', 12.000),
(000019, 2, 1, 'VAT', 12.000),
(000020, 2, 1, 'VAT', 12.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_payments` (
  `sale_id` int(6) unsigned zerofill NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_amount`) VALUES
(000001, 'Cash', '50.00'),
(000002, 'Cash', '50.00'),
(000003, 'Cash', '50.00'),
(000004, 'Cash', '500.00'),
(000005, 'Cash', '50.00'),
(000006, 'Cash', '50.00'),
(000007, 'Cash', '100.00'),
(000008, 'Cash', '50.00'),
(000009, 'Cash', '100.00'),
(000010, 'Cash', '100.00'),
(000011, 'Cash', '100.00'),
(000012, 'Cash', '100.00'),
(000013, 'Cash', '50.00'),
(000014, 'Cash', '100.00'),
(000015, 'Cash', '100.00'),
(000016, 'Cash', '100.00'),
(000017, 'Cash', '100.00'),
(000018, 'Cash', '100.00'),
(000019, 'Cash', '100.00'),
(000020, 'Cash', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
`sale_id` int(6) unsigned zerofill NOT NULL,
  `payment_type` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items` (
  `sale_id` int(6) unsigned zerofill NOT NULL DEFAULT '000000',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` double(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items_taxes` (
  `sale_id` int(6) unsigned zerofill NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` double(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_payments`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_payments` (
  `sale_id` int(6) unsigned zerofill NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE IF NOT EXISTS `ospos_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('20b4485c640b0bd740ac0d93acd7e23b', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1439893362, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('71bc04097e64b6f596660fc1ec22c8ab', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1440493438, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('7c3c428df605fdbe4910ce0122a6da6f', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1451654381, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('81a40f619b4ed63f846dbb32166bfe40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450814464, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('8740768c47a7277d18701a5c2488715f', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1456135568, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('bb2d2493d4509b448d252519ac1986bc', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1446464475, ''),
('bf0e66df575d26bc9051693507d98305', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1446464836, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('d84895e1c9429d3d7837b89dd56a37bb', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455619620, ''),
('ed26667484c1292d8bedddade32493f9', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454932355, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE IF NOT EXISTS `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
 ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
 ADD UNIQUE KEY `account_number` (`account_number`), ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
 ADD UNIQUE KEY `username` (`username`), ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
 ADD PRIMARY KEY (`giftcard_id`), ADD UNIQUE KEY `giftcard_number` (`giftcard_number`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
 ADD PRIMARY KEY (`trans_id`), ADD KEY `ospos_inventory_ibfk_1` (`trans_items`), ADD KEY `ospos_inventory_ibfk_2` (`trans_user`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
 ADD PRIMARY KEY (`item_id`), ADD UNIQUE KEY `item_number` (`item_number`), ADD KEY `ospos_items_ibfk_1` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
 ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
 ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
 ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`), ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
 ADD PRIMARY KEY (`module_id`), ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`), ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
 ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
 ADD PRIMARY KEY (`module_id`,`person_id`), ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
 ADD PRIMARY KEY (`receiving_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
 ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
 ADD PRIMARY KEY (`sale_id`), ADD KEY `customer_id` (`customer_id`), ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
 ADD PRIMARY KEY (`sale_id`,`item_id`,`line`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
 ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
 ADD PRIMARY KEY (`sale_id`,`payment_type`);

--
-- Indexes for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
 ADD PRIMARY KEY (`sale_id`), ADD KEY `customer_id` (`customer_id`), ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
 ADD PRIMARY KEY (`sale_id`,`item_id`,`line`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
 ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
 ADD PRIMARY KEY (`sale_id`,`payment_type`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
 ADD UNIQUE KEY `account_number` (`account_number`), ADD KEY `person_id` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
MODIFY `sale_id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
MODIFY `sale_id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`),
ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`);

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
ADD CONSTRAINT `ospos_sales_suspended_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
ADD CONSTRAINT `ospos_sales_suspended_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended_items` (`sale_id`),
ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
ADD CONSTRAINT `ospos_sales_suspended_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
