-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 10:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `A_id` int(11) NOT NULL,
  `A_email` varchar(255) NOT NULL,
  `A_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`A_id`, `A_email`, `A_pass`) VALUES
(1, 'a1', 'a1'),
(2, 'a2', 'a2'),
(3, 'Arjun', 'a3');

-- --------------------------------------------------------

--
-- Table structure for table `anonymous_submission`
--

CREATE TABLE `anonymous_submission` (
  `sub_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `problem_disc` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `predicted_category` varchar(255) DEFAULT NULL,
  `predicted_issue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anonymous_submission`
--

INSERT INTO `anonymous_submission` (`sub_id`, `name`, `email`, `phone_no`, `problem_disc`, `time_stamp`, `predicted_category`, `predicted_issue`) VALUES
(1, 'Tarun S', 'tejuspsr@gmail.com', '09663434137', 'im haveing problems with my debit card credit', '2024-04-02 15:09:55', 'Checking or savings account', 'Problem using a debit or ATM card'),
(2, 'John Doe', '1234567890', '123', 'how to get new atm', '2024-04-02 15:31:30', 'Checking or savings account', 'Problem using a debit or ATM card'),
(3, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'i need new bank account', '2024-04-02 15:34:54', 'Checking or savings account', 'Unable to open an account'),
(4, 'e', 'tejuspsr@gmail.com', '55509876', 'svasdvdb', '2024-04-02 17:16:41', 'Debt collection', 'Information belongs to someone else'),
(5, 'bf', 'tejuspsr@gmail.com', '6865356', 'fdbdzfbzrdh', '2024-04-02 17:19:21', 'Debt collection', 'Information belongs to someone else'),
(6, 'Tejus P', 'tejuspsr@gmail.com', '78648638863876', 'dgrsrgzsge', '2024-04-02 17:21:06', 'Debt collection', 'Information belongs to someone else'),
(7, 'Tejus P', 'tejuspsr@gmail.com', '78648638863876', 'pop', '2024-04-02 17:25:51', 'Checking or savings account', 'Debt was result of identity theft'),
(8, 'kushal', 'kusal@gmail.com', '9088826289', 'How do I recover my account?', '2024-04-03 03:29:30', 'Checking or savings account', 'Debt resulted from identity theft'),
(9, 'kushal', 'opji@gmail.com', '9876533688', 'How to get new contact details for my bank account?', '2024-04-03 04:12:46', 'Debt collection', 'Problem accessing account'),
(10, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-04-03 04:53:59', 'Checking or savings account', 'Transaction was not authorized'),
(11, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-04-03 04:54:05', 'Checking or savings account', 'Funds not received from closed account'),
(12, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-04-03 04:54:11', 'Checking or savings account', 'Problem making or receiving payments'),
(13, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-04-03 04:54:17', 'Credit card or prepaid card', 'Problem with fees'),
(14, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-04-03 04:54:22', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(15, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-04-03 04:54:28', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(16, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-04-03 04:54:34', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(17, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-04-03 04:54:39', 'Credit card or prepaid card', 'Other problem'),
(18, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-04-03 04:54:45', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(19, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-04-03 04:54:51', 'Debt collection', 'Frequent or repeated calls'),
(20, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-04-03 04:54:56', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(21, 'kushal', 'opji@gmail.com', '9876533688', 'dbdfbsdfbn', '2024-04-03 11:18:38', 'Debt collection', 'Information belongs to someone else'),
(22, 'Tarun S', 'tejuspsr@gmail.com', '09663434137', 'ytcityctiytykc', '2024-04-03 11:23:42', 'Debt collection', 'Information belongs to someone else'),
(23, 'srsvsb', 'tejuspsr@gmail.com', '09663434137', 'sfbsfbdznbz', '2024-04-03 11:57:28', 'Debt collection', 'Information belongs to someone else'),
(24, 'srsvsb', 'tejuspsr@gmail.com', '09663434137', '222222222222222', '2024-04-03 11:58:55', 'Debt collection', 'Information belongs to someone else'),
(25, 'Tejus P', 'tejuspsr@gmail.com', '3333333', 'vega', '2024-04-03 13:00:36', 'Debt collection', 'Debt was paid'),
(26, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-04-03 14:28:58', 'Checking or savings account', 'Transaction was not authorized'),
(27, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-04-03 14:29:04', 'Checking or savings account', 'Funds not received from closed account'),
(28, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-04-03 14:29:09', 'Checking or savings account', 'Problem making or receiving payments'),
(29, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-04-03 14:29:15', 'Credit card or prepaid card', 'Problem with fees'),
(30, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-04-03 14:29:21', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(31, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-04-03 14:29:27', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(32, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-04-03 14:29:33', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(33, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-04-03 14:29:40', 'Credit card or prepaid card', 'Other problem'),
(34, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-04-03 14:29:46', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(35, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-04-03 14:29:51', 'Debt collection', 'Frequent or repeated calls'),
(36, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-04-03 14:29:57', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(37, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-04-03 14:30:19', 'Checking or savings account', 'Transaction was not authorized'),
(38, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-04-03 14:30:25', 'Checking or savings account', 'Funds not received from closed account'),
(39, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-04-03 14:30:31', 'Checking or savings account', 'Problem making or receiving payments'),
(40, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-04-03 14:30:38', 'Credit card or prepaid card', 'Problem with fees'),
(41, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-04-03 14:30:43', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(42, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-04-03 14:30:50', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(43, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-04-03 14:30:56', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(44, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-04-03 14:31:02', 'Credit card or prepaid card', 'Other problem'),
(45, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-04-03 14:31:08', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(46, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-04-03 14:31:14', 'Debt collection', 'Frequent or repeated calls'),
(47, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-04-03 14:31:20', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(48, 'test', '567890fghjkltyuiop@fgh', '78890458890098905652', 'My debit card is lost.', '2024-04-03 15:17:00', 'Checking or savings account', 'Problem using a debit or ATM card'),
(49, 'test', '567890fghjkltyuiop@fgh', '78890458890098905652', 'abcdefghijlmnopqurstuv', '2024-04-04 13:05:23', 'Debt collection', 'Information belongs to someone else'),
(50, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-05-08 12:20:58', 'Checking or savings account', 'Transaction was not authorized'),
(51, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-05-08 12:21:04', 'Checking or savings account', 'Funds not received from closed account'),
(52, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-05-08 12:21:10', 'Checking or savings account', 'Problem making or receiving payments'),
(53, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-05-08 12:21:17', 'Credit card or prepaid card', 'Problem with fees'),
(54, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-05-08 12:21:25', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(55, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-05-08 12:21:32', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(56, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-05-08 12:21:39', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(57, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-05-08 12:21:45', 'Credit card or prepaid card', 'Other problem'),
(58, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-05-08 12:21:52', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(59, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-05-08 12:21:59', 'Debt collection', 'Frequent or repeated calls'),
(60, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-05-08 12:22:05', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(61, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-05-08 12:23:12', 'Checking or savings account', 'Transaction was not authorized'),
(62, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-05-08 12:23:19', 'Checking or savings account', 'Funds not received from closed account'),
(63, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-05-08 12:23:26', 'Checking or savings account', 'Problem making or receiving payments'),
(64, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-05-08 12:23:32', 'Credit card or prepaid card', 'Problem with fees'),
(65, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-05-08 12:23:38', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(66, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-05-08 12:23:44', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(67, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-05-08 12:23:51', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(68, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-05-08 12:23:58', 'Credit card or prepaid card', 'Other problem'),
(69, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-05-08 12:24:04', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(70, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-05-08 12:24:10', 'Debt collection', 'Frequent or repeated calls'),
(71, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-05-08 12:24:15', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(72, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-05-08 12:24:48', 'Checking or savings account', 'Transaction was not authorized'),
(73, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-05-08 12:24:55', 'Checking or savings account', 'Funds not received from closed account'),
(74, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-05-08 12:25:02', 'Checking or savings account', 'Problem making or receiving payments'),
(75, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-05-08 12:25:09', 'Credit card or prepaid card', 'Problem with fees'),
(76, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-05-08 12:28:57', 'Checking or savings account', 'Transaction was not authorized'),
(77, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-05-08 12:29:03', 'Checking or savings account', 'Funds not received from closed account'),
(78, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-05-08 12:29:10', 'Checking or savings account', 'Problem making or receiving payments'),
(79, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-05-08 12:29:17', 'Credit card or prepaid card', 'Problem with fees'),
(80, 'John Doe', 'john.doe@email.com', '5551234', 'vvwverreg', '2024-05-08 12:39:06', 'Debt collection', 'Information belongs to someone else'),
(81, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'rthnrestdg', '2024-05-08 12:41:27', 'Debt collection', 'Information belongs to someone else'),
(82, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'rthnrestdg', '2024-05-08 12:42:24', 'Debt collection', 'Information belongs to someone else'),
(83, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'gwrg', '2024-05-08 12:44:06', 'Debt collection', 'Information belongs to someone else'),
(84, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'gwrg', '2024-05-08 12:44:20', 'Debt collection', 'Information belongs to someone else'),
(85, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'ger', '2024-05-08 12:47:50', 'Debt collection', 'Investigation took more than 30 days'),
(86, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'ger', '2024-05-08 12:48:12', 'Debt collection', 'Investigation took more than 30 days'),
(87, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'ger', '2024-05-08 12:48:29', 'Debt collection', 'Investigation took more than 30 days'),
(88, 'Tejus P', 'tejuspsr@gmail.com', '09663434137', 'rdsvs', '2024-05-08 12:48:29', 'Debt collection', 'Information belongs to someone else'),
(89, 'Jane Smith', 'tejuspsr@gmail.com', '09663434137', 'rdsvs', '2024-05-08 12:49:13', 'Debt collection', 'Information belongs to someone else'),
(90, 'Jane Smith', 'tejuspsr@gmail.com', '09663434137', 'My credit card payment is denied and is showing limit exceeded when I haven\'t yet done any payments yet', '2024-05-08 12:54:58', 'Credit card or prepaid card', 'Problem during payment process'),
(91, 'John Doe', '[email address removed]', '(555) 555-5555', 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', '2024-05-25 16:49:31', 'Checking or savings account', 'Transaction was not authorized'),
(92, 'Jane Smith', '[email address removed]', '(123) 456-7890', 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', '2024-05-25 16:49:38', 'Checking or savings account', 'Funds not received from closed account'),
(93, 'David Lee', '[email address removed]', '(987) 654-3210', 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', '2024-05-25 16:49:45', 'Checking or savings account', 'Problem making or receiving payments'),
(94, 'Sarah Jones', '[email address removed]', '(222) 222-2222', 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', '2024-05-25 16:49:53', 'Credit card or prepaid card', 'Problem with fees'),
(95, 'William Brown', '[email address removed]', '(333) 333-3333', 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', '2024-05-25 16:50:00', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(96, 'Emily Garcia', '[email address removed]', '(444) 444-4444', 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', '2024-05-25 16:50:07', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit'),
(97, 'Daniel Miller', '[email address removed]', '(777) 777-7777', 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', '2024-05-25 16:50:14', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results'),
(98, 'Elizabeth Taylor', '[email address removed]', '(888) 888-8888', 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', '2024-05-25 16:50:20', 'Credit card or prepaid card', 'Other problem'),
(99, 'Christopher Clark', '[email address removed]', '(999) 999-9999', 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', '2024-05-25 16:50:27', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft'),
(100, 'Amanda Hernandez', '[email address removed]', '(000) 000-0000', 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', '2024-05-25 16:50:34', 'Debt collection', 'Frequent or repeated calls'),
(101, 'Michael Johnson', '[email address removed]', '(111) 111-1111', 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', '2024-05-25 16:50:40', 'Debt collection', 'Didn\'t receive enough information to verify debt');

--
-- Triggers `anonymous_submission`
--
DELIMITER $$
CREATE TRIGGER `insert_from_anonymous_submission` AFTER INSERT ON `anonymous_submission` FOR EACH ROW BEGIN
    INSERT INTO unclassified_problem_category (problem_disc, predicted_category, predicted_issue, Name, Phone_Number, Email)
    VALUES (NEW.problem_disc, NEW.predicted_category, NEW.predicted_issue, NEW.name, NEW.phone_no, NEW.email);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logged_submission`
--

CREATE TABLE `logged_submission` (
  `sub_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `problem_disc` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `predicted_category` varchar(255) DEFAULT NULL,
  `predicted_issue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logged_submission`
--

INSERT INTO `logged_submission` (`sub_id`, `user_id`, `problem_disc`, `time_stamp`, `predicted_category`, `predicted_issue`) VALUES
(53, 1, ' I noticed several transactions on my checking account statement that I didn\'t authorize or recognize. It\'s concerning because I don\'t recall making these purchases or giving anyone permission to use my account.', '2024-04-08 06:36:51', 'Checking or savings account', 'Card was charged for something you did not purchase with the card'),
(54, 1, ' I\'ve been trying to log in to my online banking portal to access my savings account, but I keep encountering errors or getting locked out. It\'s frustrating because I need to check my balance and manage my finances online.', '2024-04-08 06:37:06', 'Checking or savings account', 'Problem accessing account'),
(55, 1, 'Despite carefully monitoring my account balance, I was surprised to see overdraft fees charged to my account. I believe these fees were applied unfairly, as there were no transactions that should have resulted in overdrawing my account.', '2024-04-08 06:37:21', 'Checking or savings account', 'Overdrafts and overdraft fees'),
(56, 1, 'I\'ve been trying to transfer funds from my savings account to my checking account, but the transfer keeps getting rejected or delayed. It\'s inconvenient because I need to move money around for various expenses.', '2024-04-08 06:37:34', 'Checking or savings account', 'Deposits and withdrawals'),
(57, 1, 'I attempted to withdraw cash from an ATM, and although the transaction was processed, the cash was not dispensed. However, the amount was deducted from my account balance. This is concerning because I\'m now missing the money without receiving the service I intended.', '2024-04-08 06:37:47', 'Checking or savings account', 'Funds not handled or disbursed as instructed'),
(58, 1, ' I noticed several charges on my credit card statement that I didn\'t authorize or make. It\'s alarming because someone may have stolen my card information and used it for unauthorized purchases.', '2024-04-08 06:38:06', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card'),
(59, 1, 'Despite having a good credit score, I\'ve been charged an unusually high interest rate on my credit card balance. It\'s frustrating because I believe I should qualify for a lower rate based on my creditworthiness.', '2024-04-08 06:38:16', 'Credit card or prepaid card', 'Charged too much interest'),
(60, 1, ' I reviewed my credit report and noticed several inaccuracies that are negatively impacting my credit score. These errors include accounts that don\'t belong to me and incorrect payment history. It\'s frustrating because it\'s affecting my ability to qualify for loans and other financial products.', '2024-04-08 06:38:27', 'Credit reporting, credit repair services, or other personal consumer reports', 'Information belongs to someone else'),
(61, 1, 'Despite my efforts to dispute inaccuracies on my credit report, I\'ve encountered obstacles and delays in the process. It\'s frustrating because I\'m trying to rectify errors that aren\'t my fault, yet I\'m facing challenges in getting them ', '2024-04-08 06:38:37', 'Credit reporting, credit repair services, or other personal consumer reports', 'Didn\'t receive enough information to verify debt'),
(62, 1, ' I\'ve been receiving harassing phone calls and aggressive letters from debt collectors demanding payment for a debt I don\'t owe. The frequency and tone of their communication are distressing, and I feel harassed and intimidated.', '2024-04-08 06:38:47', 'Debt collection', 'Frequent or repeated calls'),
(63, 1, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', '2024-04-08 06:39:00', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(64, 1, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', '2024-04-08 06:41:26', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(65, 1, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', '2024-04-08 06:41:52', 'Debt collection', 'Didn\'t receive enough information to verify debt'),
(66, 7, 'I\'m getting problem with my depth because I have already paid it long ago but I\'m hitting received. I\'m missing calls saying telling that I haven\'t paid it back yet and I need solution for this.', '2024-04-20 08:24:06', 'Debt collection', 'Debt was paid'),
(67, 7, 'Like I\'m not able to pay or do any payments with my credit card or recently whenever I try I get either the credit limit is exceeded or credit card is not available or working but haven\'t used it this month. How can this be possible?', '2024-04-20 08:26:20', 'Credit card or prepaid card', 'Didn\'t receive notice of right to dispute');

--
-- Triggers `logged_submission`
--
DELIMITER $$
CREATE TRIGGER `insert_from_logged_submission` AFTER INSERT ON `logged_submission` FOR EACH ROW BEGIN
    DECLARE user_name VARCHAR(255);
    DECLARE user_phone VARCHAR(255);
    DECLARE user_email VARCHAR(255);
    
    -- Fetch user details from user_login based on user_id
    SELECT name, phone_no, email INTO user_name, user_phone, user_email
    FROM user_login
    WHERE user_id = NEW.user_id;
    
    -- Insert data into unclassified_problem_category
    INSERT INTO unclassified_problem_category ( problem_disc, predicted_category, predicted_issue, timestamp, Name, Phone_Number, Email, user_id)
    VALUES ( NEW.problem_disc, NEW.predicted_category, NEW.predicted_issue, NEW.time_stamp, user_name, user_phone, user_email, NEW.user_id);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `solved_cases`
--

CREATE TABLE `solved_cases` (
  `Token_Number` int(11) NOT NULL,
  `problem_disc` text DEFAULT NULL,
  `predicted_category` varchar(255) DEFAULT NULL,
  `predicted_issue` text DEFAULT NULL,
  `submission_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `solved_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Complaint_Category_final` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solved_cases`
--

INSERT INTO `solved_cases` (`Token_Number`, `problem_disc`, `predicted_category`, `predicted_issue`, `submission_timestamp`, `solved_timestamp`, `Name`, `Phone_Number`, `Email`, `user_id`, `Complaint_Category_final`) VALUES
(22, 'I need many help from your bank but it is not helping me. What should I do?', 'Checking or savings account', 'Non-sufficient funds and associated fees', '2024-04-08 05:25:07', '2024-04-03 06:18:22', 'John Doe', '1234567890', '12', 1, 'Checking or savings account'),
(23, 'i need life insurance', 'Checking or savings account', 'Deposits and withdrawals', '2024-04-03 06:22:15', '2024-04-03 06:38:14', 'John Doe', '1234567890', '123', 1, 'Checking or savings account'),
(24, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-04-03 04:53:59', '2024-04-03 06:37:36', 'John Doe', '(555) 555-5555', '[email address removed]', 0, 'Checking or savings account'),
(25, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-04-03 04:54:05', '2024-04-03 06:58:04', 'Jane Smith', '(123) 456-7890', '[email address removed]', 0, 'Checking or savings account'),
(26, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-04-03 04:54:11', '2024-04-03 11:59:14', 'David Lee', '(987) 654-3210', '[email address removed]', 0, 'Checking or savings account'),
(27, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-04-03 04:54:17', '2024-04-03 06:38:36', 'Sarah Jones', '(222) 222-2222', '[email address removed]', 0, 'Credit card or prepaid card'),
(28, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-04-03 04:54:22', '2024-04-03 11:59:44', 'William Brown', '(333) 333-3333', '[email address removed]', 0, 'Credit card or prepaid card'),
(29, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-04-03 04:54:28', '2024-04-03 13:01:05', 'Emily Garcia', '(444) 444-4444', '[email address removed]', 0, 'Credit card or prepaid card'),
(30, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-04-08 05:25:18', '2024-04-03 13:17:40', 'Daniel Miller', '(777) 777-7777', '[email address removed]', 1, 'Credit reporting, credit repair services, or other personal consumer reports'),
(31, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-04-08 05:25:32', '2024-04-03 13:18:12', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', 1, ' Credit card or prepaid card'),
(32, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-04-03 04:54:45', '2024-04-03 13:46:32', 'Christopher Clark', '(999) 999-9999', '[email address removed]', 0, 'Credit reporting, credit repair services, or other personal consumer reports'),
(33, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-04-03 04:54:51', '2024-04-03 13:16:05', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', 0, 'Debt collection'),
(34, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-03 04:54:56', '2024-04-03 13:47:15', 'Michael Johnson', '(111) 111-1111', '[email address removed]', 0, 'Debt collection'),
(35, 'dbdfbsdfbn', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:18:38', '2024-04-03 13:50:23', 'kushal', '9876533688', 'opji@gmail.com', 0, 'Debt collection'),
(36, 'ytcityctiytykc', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:23:42', '2024-04-03 13:50:34', 'Tarun S', '09663434137', 'tejuspsr@gmail.com', 0, 'Debt collection'),
(37, 'sfbsfbdznbz', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:57:28', '2024-04-03 13:51:10', 'srsvsb', '09663434137', 'tejuspsr@gmail.com', 0, 'Debt collection'),
(38, 'yuyuyuyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:57:54', '2024-04-03 13:52:48', 'John Doe', '1234567890', '123', 1, 'Debt collection'),
(39, '111111111111111111111111111', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:58:41', '2024-04-03 12:00:27', 'John Doe', '1234567890', '123', 1, 'Debt collection'),
(40, '222222222222222', 'Debt collection', 'Information belongs to someone else', '2024-04-03 11:58:55', '2024-04-03 11:59:58', 'srsvsb', '09663434137', 'tejuspsr@gmail.com', 0, 'Debt collection'),
(41, 'my first test as a problem solver', 'Credit card or prepaid card', 'Credit inquiries on your report that you don\'t recognize', '2024-04-03 12:41:19', '2024-04-03 13:01:28', 'kusuma', '9663434137', 'kusuma@gmail.com', 3, 'Credit card or prepaid card'),
(42, 'vega', 'Debt collection', 'Debt was paid', '2024-04-03 13:00:36', '2024-04-03 14:30:26', 'Tejus P', '3333333', 'tejuspsr@gmail.com', 0, 'Debt collection'),
(43, 'veverv', 'Debt collection', 'Information belongs to someone else', '2024-04-03 13:02:16', '2024-04-03 14:27:53', 'John Doe', '1234567890', '123', 1, 'Debt collection'),
(44, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-04-03 14:28:58', '2024-04-03 14:50:31', 'John Doe', '(555) 555-5555', '[email address removed]', 0, 'Checking or savings account'),
(45, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-04-03 14:29:04', '2024-04-03 14:51:04', 'Jane Smith', '(123) 456-7890', '[email address removed]', 0, 'Checking or savings account'),
(46, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-04-03 14:29:09', '2024-04-03 15:24:26', 'David Lee', '(987) 654-3210', '[email address removed]', 0, 'Checking or savings account'),
(47, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-04-03 14:29:15', '2024-04-05 06:10:40', 'Sarah Jones', '(222) 222-2222', '[email address removed]', 0, 'Credit card or prepaid card'),
(48, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-04-03 14:29:21', '2024-04-24 09:02:25', 'William Brown', '(333) 333-3333', '[email address removed]', 0, 'Credit card or prepaid card'),
(49, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-04-03 14:29:27', '2024-04-03 14:50:00', 'Emily Garcia', '(444) 444-4444', '[email address removed]', 0, 'Credit card or prepaid card'),
(50, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-04-03 14:29:33', '2024-04-03 14:49:35', 'Daniel Miller', '(777) 777-7777', '[email address removed]', 0, 'Credit reporting, credit repair services, or other personal consumer reports'),
(51, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-04-03 14:29:40', '2024-05-25 16:49:03', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', 0, 'Credit card or prepaid card'),
(53, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-04-03 14:29:51', '2024-04-03 14:44:58', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', 0, 'Debt collection'),
(54, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-03 14:29:57', '2024-04-03 14:45:55', 'Michael Johnson', '(111) 111-1111', '[email address removed]', 0, 'Debt collection'),
(55, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-04-03 14:30:19', '2024-04-04 07:14:04', 'John Doe', '(555) 555-5555', '[email address removed]', 0, 'Checking or savings account'),
(56, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-04-03 14:30:25', '2024-05-25 16:50:29', 'Jane Smith', '(123) 456-7890', '[email address removed]', 0, 'Checking or savings account'),
(64, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-04-03 14:31:14', '2024-04-03 14:46:38', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', 0, 'Debt collection'),
(65, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-03 14:31:20', '2024-04-03 14:47:46', 'Michael Johnson', '(111) 111-1111', '[email address removed]', 0, 'Debt collection'),
(68, 'im a mad man', 'Checking or savings account', 'Charged too much interest', '2024-04-03 15:09:38', '2024-04-04 13:07:56', 'John Doe', '1234567890', '123', 1, 'Checking or savings account'),
(78, 'i want universe', 'Credit card or prepaid card', 'Information belongs to someone else', '2024-04-04 13:05:50', '2024-04-04 13:06:45', 'Tejus P', '+919663434137', 'tejuspsr@gmail.com', 5, 'Credit card or prepaid card'),
(93, 'I\'m getting problem with my depth because I have already paid it long ago but I\'m hitting received. I\'m missing calls saying telling that I haven\'t paid it back yet and I need solution for this.', 'Debt collection', 'Debt was paid', '2024-04-20 08:24:06', '2024-04-20 08:28:20', 'Tarun S', '09663434137', 'tr@gmail.com', 7, 'Debt collection');

-- --------------------------------------------------------

--
-- Table structure for table `support_data`
--

CREATE TABLE `support_data` (
  `S_id` int(11) NOT NULL,
  `S_email` varchar(255) NOT NULL,
  `S_pass` varchar(255) NOT NULL,
  `S_cata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `support_data`
--

INSERT INTO `support_data` (`S_id`, `S_email`, `S_pass`, `S_cata`) VALUES
(1, 'u1', 'u1', 'Checking or savings account'),
(5, 'u2', 'u2', 'Checking or savings account'),
(6, 'u3', 'u3', 'Credit reporting, credit repair services, or other personal consumer reports'),
(7, 'Support 1', 'a1', 'Checking or savings account'),
(8, 'vs', 'vs', 'Checking or savings account'),
(9, 'vvs', 'vsv', 'Checking or savings account'),
(10, 'vsdvsvd', 'vsdvsvsd', 'Checking or savings account'),
(11, 'student8', 'dddd', 'Debt collection'),
(12, 'fwf', 'fwffw', 'Checking or savings account'),
(13, 'f', 'f', 'Checking or savings account'),
(14, 'f', 'f', 'Checking or savings account'),
(15, 'es', 'vsdv', 'Checking or savings account'),
(16, 'ere', 're', 'Checking or savings account'),
(17, 'cd', 'dsv', 'Checking or savings account'),
(18, 'dv', 'dvs', 'Checking or savings account'),
(19, 'grsgsg', 'sgs', 'Checking or savings account'),
(20, '1w2', 'wdwd', 'Checking or savings account'),
(21, 'me', 'ddddd', 'Checking or savings account'),
(22, '11', '11', 'Debt collection'),
(23, 'rsvsdv', 'sdvss', 'Checking or savings account'),
(24, 'hdyd', 'vuyfiug', 'Checking or savings account'),
(25, 'me', 'you', 'Checking or savings account');

-- --------------------------------------------------------

--
-- Table structure for table `unclassified_problem_category`
--

CREATE TABLE `unclassified_problem_category` (
  `Token_Number` int(11) NOT NULL,
  `problem_disc` text DEFAULT NULL,
  `predicted_category` varchar(255) DEFAULT NULL,
  `predicted_issue` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unclassified_problem_category`
--

INSERT INTO `unclassified_problem_category` (`Token_Number`, `problem_disc`, `predicted_category`, `predicted_issue`, `timestamp`, `Name`, `Phone_Number`, `Email`, `user_id`) VALUES
(52, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-04-03 14:29:46', 'Christopher Clark', '(999) 999-9999', '[email address removed]', 1),
(57, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-04-03 14:30:31', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(58, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-04-03 14:30:38', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(59, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-04-03 14:30:43', 'William Brown', '(333) 333-3333', '[email address removed]', NULL),
(60, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-04-03 14:30:50', 'Emily Garcia', '(444) 444-4444', '[email address removed]', NULL),
(61, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-04-03 14:30:56', 'Daniel Miller', '(777) 777-7777', '[email address removed]', NULL),
(62, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-04-03 14:31:02', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', NULL),
(63, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-04-03 14:31:08', 'Christopher Clark', '(999) 999-9999', '[email address removed]', NULL),
(66, 'etbhebbdsfbdfb', 'Debt collection', 'Information belongs to someone else', '2024-04-03 14:51:27', 'John Doe', '1234567890', '123', 1),
(67, 'thdrbdrgdr', 'Debt collection', 'Information belongs to someone else', '2024-04-03 14:59:25', 'John Doe', '1234567890', '123', 1),
(69, 'My debit card is lost.', 'Checking or savings account', 'Problem using a debit or ATM card', '2024-04-03 15:17:00', 'test', '78890458890098905652', '567890fghjkltyuiop@fgh', NULL),
(70, 'I want checkbook.', 'Checking or savings account', 'Deposits and withdrawals', '2024-04-03 15:22:33', 'kusuma', '678905678905678', 'kusuma@test.com', 4),
(71, 'I want checkbook.', 'Checking or savings account', 'Deposits and withdrawals', '2024-04-03 15:22:33', 'kusuma', '678905678905678', 'kusuma@test.com', 4),
(72, 'To get everything in this world and cry.', 'Checking or savings account', 'Debt was paid', '2024-04-04 08:26:04', 'John Doe', '1234567890', '123', 1),
(73, 'To get everything in this world and cry.', 'Checking or savings account', 'Debt was paid', '2024-04-04 08:29:11', 'John Doe', '1234567890', '123', 1),
(74, 'To get everything in this world and cry.', 'Checking or savings account', 'Debt was paid', '2024-04-04 08:30:14', 'John Doe', '1234567890', '123', 1),
(75, 'To get everything in this world and cry.', 'Checking or savings account', 'Debt was paid', '2024-04-04 08:30:42', 'John Doe', '1234567890', '123', 1),
(76, 'I need new data in my tables and how can you do that for me?', 'Credit card or prepaid card', 'Difficulty submitting a dispute or getting information about a dispute over the phone', '2024-04-04 08:50:26', 'John Doe', '1234567890', '123', 1),
(77, 'abcdefghijlmnopqurstuv', 'Debt collection', 'Information belongs to someone else', '2024-04-04 13:05:23', 'test', '78890458890098905652', '567890fghjkltyuiop@fgh', NULL),
(79, 'How to get good chickens?', 'Credit card or prepaid card', 'Information belongs to someone else', '2024-04-04 14:59:31', 'John Doe', '1234567890', '123', 1),
(80, ' I noticed several transactions on my checking account statement that I didn\'t authorize or recognize. It\'s concerning because I don\'t recall making these purchases or giving anyone permission to use my account.', 'Checking or savings account', 'Card was charged for something you did not purchase with the card', '2024-04-08 06:36:51', 'John Doe', '1234567890', '123', 1),
(81, ' I\'ve been trying to log in to my online banking portal to access my savings account, but I keep encountering errors or getting locked out. It\'s frustrating because I need to check my balance and manage my finances online.', 'Checking or savings account', 'Problem accessing account', '2024-04-08 06:37:06', 'John Doe', '1234567890', '123', 1),
(82, 'Despite carefully monitoring my account balance, I was surprised to see overdraft fees charged to my account. I believe these fees were applied unfairly, as there were no transactions that should have resulted in overdrawing my account.', 'Checking or savings account', 'Overdrafts and overdraft fees', '2024-04-08 06:37:21', 'John Doe', '1234567890', '123', 1),
(83, 'I\'ve been trying to transfer funds from my savings account to my checking account, but the transfer keeps getting rejected or delayed. It\'s inconvenient because I need to move money around for various expenses.', 'Checking or savings account', 'Deposits and withdrawals', '2024-04-08 06:37:34', 'John Doe', '1234567890', '123', 1),
(84, 'I attempted to withdraw cash from an ATM, and although the transaction was processed, the cash was not dispensed. However, the amount was deducted from my account balance. This is concerning because I\'m now missing the money without receiving the service I intended.', 'Checking or savings account', 'Funds not handled or disbursed as instructed', '2024-04-08 06:37:47', 'John Doe', '1234567890', '123', 1),
(85, ' I noticed several charges on my credit card statement that I didn\'t authorize or make. It\'s alarming because someone may have stolen my card information and used it for unauthorized purchases.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-04-08 06:38:06', 'John Doe', '1234567890', '123', 1),
(86, 'Despite having a good credit score, I\'ve been charged an unusually high interest rate on my credit card balance. It\'s frustrating because I believe I should qualify for a lower rate based on my creditworthiness.', 'Credit card or prepaid card', 'Charged too much interest', '2024-04-08 06:38:16', 'John Doe', '1234567890', '123', 1),
(87, ' I reviewed my credit report and noticed several inaccuracies that are negatively impacting my credit score. These errors include accounts that don\'t belong to me and incorrect payment history. It\'s frustrating because it\'s affecting my ability to qualify for loans and other financial products.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Information belongs to someone else', '2024-04-08 06:38:27', 'John Doe', '1234567890', '123', 1),
(88, 'Despite my efforts to dispute inaccuracies on my credit report, I\'ve encountered obstacles and delays in the process. It\'s frustrating because I\'m trying to rectify errors that aren\'t my fault, yet I\'m facing challenges in getting them ', 'Credit reporting, credit repair services, or other personal consumer reports', 'Didn\'t receive enough information to verify debt', '2024-04-08 06:38:37', 'John Doe', '1234567890', '123', 1),
(89, ' I\'ve been receiving harassing phone calls and aggressive letters from debt collectors demanding payment for a debt I don\'t owe. The frequency and tone of their communication are distressing, and I feel harassed and intimidated.', 'Debt collection', 'Frequent or repeated calls', '2024-04-08 06:38:47', 'John Doe', '1234567890', '123', 1),
(90, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-08 06:39:00', 'John Doe', '1234567890', '123', 1),
(91, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-08 06:41:26', 'John Doe', '1234567890', '123', 1),
(92, 'Despite requesting validation of the debt in writing, the debt collector has failed to provide sufficient proof that the debt is valid and legally owed. They\'re continuing to pursue collection efforts without providing the necessary documentation. It\'s concerning because I\'m being asked to pay a debt without proper verification.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-04-08 06:41:52', 'John Doe', '1234567890', '123', 1),
(94, 'Like I\'m not able to pay or do any payments with my credit card or recently whenever I try I get either the credit limit is exceeded or credit card is not available or working but haven\'t used it this month. How can this be possible?', 'Credit card or prepaid card', 'Didn\'t receive notice of right to dispute', '2024-04-20 08:26:20', 'Tarun S', '09663434137', 'tr@gmail.com', 7),
(95, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-05-08 12:20:58', 'John Doe', '(555) 555-5555', '[email address removed]', NULL),
(96, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-05-08 12:21:04', 'Jane Smith', '(123) 456-7890', '[email address removed]', NULL),
(97, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-05-08 12:21:10', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(98, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-05-08 12:21:17', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(99, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-05-08 12:21:25', 'William Brown', '(333) 333-3333', '[email address removed]', NULL),
(100, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-05-08 12:21:32', 'Emily Garcia', '(444) 444-4444', '[email address removed]', NULL),
(101, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-05-08 12:21:39', 'Daniel Miller', '(777) 777-7777', '[email address removed]', NULL),
(102, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-05-08 12:21:45', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', NULL),
(103, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-05-08 12:21:52', 'Christopher Clark', '(999) 999-9999', '[email address removed]', NULL),
(104, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-05-08 12:21:59', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', NULL),
(105, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-05-08 12:22:05', 'Michael Johnson', '(111) 111-1111', '[email address removed]', NULL),
(106, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-05-08 12:23:12', 'John Doe', '(555) 555-5555', '[email address removed]', NULL),
(107, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-05-08 12:23:19', 'Jane Smith', '(123) 456-7890', '[email address removed]', NULL),
(108, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-05-08 12:23:26', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(109, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-05-08 12:23:32', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(110, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-05-08 12:23:38', 'William Brown', '(333) 333-3333', '[email address removed]', NULL),
(111, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-05-08 12:23:44', 'Emily Garcia', '(444) 444-4444', '[email address removed]', NULL),
(112, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-05-08 12:23:51', 'Daniel Miller', '(777) 777-7777', '[email address removed]', NULL),
(113, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-05-08 12:23:58', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', NULL),
(114, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-05-08 12:24:04', 'Christopher Clark', '(999) 999-9999', '[email address removed]', NULL),
(115, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-05-08 12:24:10', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', NULL),
(116, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-05-08 12:24:15', 'Michael Johnson', '(111) 111-1111', '[email address removed]', NULL),
(117, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-05-08 12:24:48', 'John Doe', '(555) 555-5555', '[email address removed]', NULL),
(118, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-05-08 12:24:55', 'Jane Smith', '(123) 456-7890', '[email address removed]', NULL),
(119, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-05-08 12:25:02', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(120, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-05-08 12:25:09', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(121, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-05-08 12:28:57', 'John Doe', '(555) 555-5555', '[email address removed]', NULL),
(122, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-05-08 12:29:03', 'Jane Smith', '(123) 456-7890', '[email address removed]', NULL),
(123, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-05-08 12:29:10', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(124, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-05-08 12:29:17', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(125, 'vvwverreg', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:39:06', 'John Doe', '5551234', 'john.doe@email.com', NULL),
(126, 'rthnrestdg', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:41:27', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(127, 'rthnrestdg', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:42:24', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(128, 'gwrg', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:44:06', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(129, 'gwrg', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:44:20', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(130, 'ger', 'Debt collection', 'Investigation took more than 30 days', '2024-05-08 12:47:50', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(131, 'ger', 'Debt collection', 'Investigation took more than 30 days', '2024-05-08 12:48:12', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(132, 'ger', 'Debt collection', 'Investigation took more than 30 days', '2024-05-08 12:48:29', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(133, 'rdsvs', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:48:29', 'Tejus P', '09663434137', 'tejuspsr@gmail.com', NULL),
(134, 'rdsvs', 'Debt collection', 'Information belongs to someone else', '2024-05-08 12:49:13', 'Jane Smith', '09663434137', 'tejuspsr@gmail.com', NULL),
(135, 'My credit card payment is denied and is showing limit exceeded when I haven\'t yet done any payments yet', 'Credit card or prepaid card', 'Problem during payment process', '2024-05-08 12:54:58', 'Jane Smith', '09663434137', 'tejuspsr@gmail.com', NULL),
(136, 'Unauthorized debits from checking account, slow fraud resolution, and lack of reimbursement.', 'Checking or savings account', 'Transaction was not authorized', '2024-05-25 16:49:31', 'John Doe', '(555) 555-5555', '[email address removed]', NULL),
(137, 'Bank failed to issue requested cashier\'s check after closing savings account and is unresponsive to inquiries.', 'Checking or savings account', 'Funds not received from closed account', '2024-05-25 16:49:38', 'Jane Smith', '(123) 456-7890', '[email address removed]', NULL),
(138, 'Bank keeps rejecting direct deposit transfer due to alleged information mismatch, despite confirmed accuracy and multiple customer service contacts.', 'Checking or savings account', 'Problem making or receiving payments', '2024-05-25 16:49:45', 'David Lee', '(987) 654-3210', '[email address removed]', NULL),
(139, 'Charged annual fees on credit card despite meeting fee waiver spending requirement. Bank refused to remove the charges after dispute.', 'Credit card or prepaid card', 'Problem with fees', '2024-05-25 16:49:53', 'Sarah Jones', '(222) 222-2222', '[email address removed]', NULL),
(140, 'Bank failed to deactivate lost prepaid card promptly, resulting in unauthorized charges before deactivation.', 'Credit card or prepaid card', 'Card was charged for something you did not purchase with the card', '2024-05-25 16:50:00', 'William Brown', '(333) 333-3333', '[email address removed]', NULL),
(141, 'Repeated requests for credit limit increase denied without explanation, despite good credit history and timely payments.', 'Credit card or prepaid card', 'Credit card company won\'t increase or decrease your credit limit', '2024-05-25 16:50:07', 'Emily Garcia', '(444) 444-4444', '[email address removed]', NULL),
(142, 'Inaccurate information on credit report, including unauthorized accounts and debts. Dispute filed with credit bureau, but no timely response or resolution.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Was not notified of investigation status or results', '2024-05-25 16:50:14', 'Daniel Miller', '(777) 777-7777', '[email address removed]', NULL),
(143, 'Paid upfront fee to credit repair company, but service failed to improve credit score. Company unresponsive to refund requests.', 'Credit card or prepaid card', 'Other problem', '2024-05-25 16:50:20', 'Elizabeth Taylor', '(888) 888-8888', '[email address removed]', NULL),
(144, 'Difficulty obtaining a free credit report due to complex and confusing process, raising concerns about potential identity theft.', 'Credit reporting, credit repair services, or other personal consumer reports', 'Debt was result of identity theft', '2024-05-25 16:50:27', 'Christopher Clark', '(999) 999-9999', '[email address removed]', NULL),
(145, 'Debt collector harassment through excessive and threatening phone calls at all hours, even after requesting communication limitations.', 'Debt collection', 'Frequent or repeated calls', '2024-05-25 16:50:34', 'Amanda Hernandez', '(000) 000-0000', '[email address removed]', NULL),
(146, 'Debt collector applying excessive pressure and resorting to deceptive tactics to collect a disputed debt.', 'Debt collection', 'Didn\'t receive enough information to verify debt', '2024-05-25 16:50:40', 'Michael Johnson', '(111) 111-1111', '[email address removed]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `name`, `email`, `phone_no`, `password`) VALUES
(1, 'John Doe', '123', '1234567890', '123'),
(2, 'John Doe', '12', '1234567890', '12'),
(3, 'kusuma', 'kusuma@gmail.com', '9663434137', '1234'),
(4, 'kusuma', 'kusuma@test.com', '678905678905678', 'skdt'),
(5, 'Tejus P', 'tejuspsr@gmail.com', '+919663434137', '123'),
(6, 'Tarun S', 'tarun@gmail.com', '09663434137', '123'),
(7, 'Tarun S', 'tr@gmail.com', '09663434137', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `anonymous_submission`
--
ALTER TABLE `anonymous_submission`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `logged_submission`
--
ALTER TABLE `logged_submission`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `solved_cases`
--
ALTER TABLE `solved_cases`
  ADD PRIMARY KEY (`Token_Number`);

--
-- Indexes for table `support_data`
--
ALTER TABLE `support_data`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `unclassified_problem_category`
--
ALTER TABLE `unclassified_problem_category`
  ADD PRIMARY KEY (`Token_Number`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data`
--
ALTER TABLE `admin_data`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anonymous_submission`
--
ALTER TABLE `anonymous_submission`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `logged_submission`
--
ALTER TABLE `logged_submission`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `solved_cases`
--
ALTER TABLE `solved_cases`
  MODIFY `Token_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `support_data`
--
ALTER TABLE `support_data`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `unclassified_problem_category`
--
ALTER TABLE `unclassified_problem_category`
  MODIFY `Token_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logged_submission`
--
ALTER TABLE `logged_submission`
  ADD CONSTRAINT `logged_submission_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
