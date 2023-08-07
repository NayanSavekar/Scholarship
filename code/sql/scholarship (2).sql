-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 05:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `eligible` varchar(255) NOT NULL,
  `how` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `title`, `description`, `eligible`, `how`) VALUES
(1, 'xyz', 'offered by the pillai clg for obc student', '1)OBC certificate', 'contact office'),
(2, 'abc', 'offered by the goverment of india', '1)indian citizen\r\n2)2nd yr student\r\n3)has 9cgp in 1st and 2nd sem', 'www.mahadbt.com'),
(3, 'extra ordinary', 'this is a special scholarship provided by prof. nayan ', '1)plays sports\r\n2)has 8cgp\r\n3)any year', 'contact prof. nayan'),
(4, 'drama', 'schloarship offered by the drama club`s founder prof tejas ', '1)is part of the drama club\r\n2)has good acting skills', 'contact prof. tejas'),
(6, 'VSC Scholarship in electrical engineering', 'This  scholarship is provided by VSC institute\r\n', 'B.Tech / BE students from electronics department.\r\n2nd,3rd,4th year students\r\ntop 5', 'login to vsc.org fill the form and submit a copy of it in the office'),
(7, 'Schaeffler India Hope Engineering Scholarship', 'This Scholarship provides support to those students who have scored above 85%', '2nd year student\r\nno kt and above 85%', 'office'),
(8, 'Keep india Smiling foundation Scholarship', 'This scholarship is provided for the students who have completed  the 12th  with distiution', 'after 12th admission through cape round', '1)adhar card xerox\r\n2)pancard xerox\r\n3)12th marksheet\r\n4) Take form from office\r\nfill form and submit it in the office'),
(9, 'Ericsson Empowering girls scholarship', 'This scholarship is established in year 2015 for the girls by the ericsson group', 'girls only, scored 80 and above in academics and wants to perceive careers in engineering', 'contact office, fill form'),
(10, 'samaj shikshak scholarship 2022-23', 'This scholarship is for the under privilage child who wants to study and build a future. This scholarship is provided by the political party samaj to help the poor ', 'annul family income 5l or less\r\nincome certificate provided by the taluka office\r\n1st year students', 'submit the xerox of xyz in the office and fill the form provided in the samaj shikshak website'),
(11, 'EBC', 'This scholarship is provided by the government for the students of btech and be having family income of 8l and less.', '1)comes under open category\r\n2) income certificate by taluka office\r\n3) not kt\r\n4) any year student', 'login to the mahadbt portal, create a profile, fill in all the info that is required, go to apply section and look for ebc press apply.\r\nsubmit a xerox of all the documents in the office'),
(12, 'OBC', 'scholarship provided by the indian government to help low cast like obc to come forward.', '1)comes under OBC category 2) cast certificate by taluka office 3) not kt 4) any year student', 'login to the mahadbt portal, create a profile, fill in all the info that is required, go to apply section and look for ebc press apply. submit a xerox of all the documents in the office'),
(13, 'CENTRAL SECTOR SCHEME OF SCHOLARSHIPS FOR COLLEGE AND UNIVERSITY STUDENTS', 'National Scholarships Portal is one-stop solution through which various services starting from student application, application receipt, processing, sanction and disbursal of various scholarships to Students are enabled. National Scholarships Portal is ta', 'Scholarship will be awarded to the students who have secured not less than 50% marks  in the previous final examination and annual income of their parents/guardian from all  sources does not exceed Rs. 1.00 lakh.', 'login to nsp.com'),
(14, 'PRIME MINISTERS SCHOLARSHIP SCHEME for RPF (Ministry of Railways)', 'Prime Minister’s Scholarship Scheme (PMSS) under the aegis of the National Defence Fund,\r\nwas announced by the then Hon’ble Prime Ministers of India in his address to the nation \r\nform the historical Red Ford on 15th August, 2005. Prime Ministers Scholar', 'Students who have taken regular admission in 2022-23 are only eligible for PMSS 2022-23. \r\nStudents should have secured 60% and above in Minimum Entry Qualification (MEQ) i.e. \r\n12th Std., Diploma/Graduation.\r\nThe scholarship is admissible for only two wa', 'From the academic year 2017-18 onwards, the PMSS for RPF (Ministry of Railways) is being\r\nimplemented through National Scholarship Portal (NSP2.0). For this, all the eligible applicants \r\nneed to apply online on the website www.scholarship.gov.in for the '),
(15, 'Prime Ministers Scholarship Scheme For the Wards of Central Armed Police Forces, Assam Rifles & States/UTs Police Personnel Ministry of Home Affairs', 'Prime Ministers Scholarship Scheme (PMSS) under the aegis of the National Defence Fund, was introduced from the academic year 2006-07 to encourage higher technical & professional education for the dependent wards & widows of Central Armed Police Fo', 'A) For CAPFs & Assam Rifles :-I) Wards/widows of deceased CII) CAPFs & AR personnel died in harness/election duty, wards of personnel disabled due to causes attributable to Government service and Wards of ExCAPFs & AR personnel in receipt of Gallan', 'From the academic year 2022-23 onwards, the Prime Ministers Scholarship Scheme (PMSS) for CAPFs, AR personnel & States/UTs Police personnel will be implemented through National Scholarship Portal (NSP) 2.0 version.? For this, all the eligible app'),
(16, 'PRADHAN MANTRI UCHCHATAR SHIKSHA PROTSAHAN (PM-USP) YOJANA GUIDELINES FOR THE COMPONENT SCHEME – CENTRAL SECTOR SCHEME OF SCHOLARSHIP FOR COLLEGE AND  UNIVERSITY STUDENTS (PM-USP CSSS)', 'The total number of scholarships are divided amongst the State Education Boards \r\nbased on the States population in the age group of 18-25 years, after segregating \r\nshare of CBSE and ICSE on the basis of number of students passing out from various \r\nBoa', 'i. Students who are above 80th percentile of successful candidates in the relevant \r\nstream from the respective Board of Examination in Class XII of 10+2 pattern or \r\nequivalent;\r\nii. Pursuing regular degree courses and not correspondence or distance mode', 'Contact us:\r\nSection Officer\r\nNational Scholarship Division\r\nDepartment of Higher Education, Ministry of Education, \r\nWest Block 1, 2nd Floor, Wing 6, Room No. 6,\r\nR. K. Puram, Sector 1, New Delhi 110066.\r\nTele: 011- 20862360\r\nE-mail: es3.edu@nic.in\r\n'),
(17, 'DEPARTMENT OF EMPOWERMENT OF PERSONS WITH  DISABILITIES (DIVYANGJAN) MINISTRY OF SOCIAL JUSTICE & EMPOWERMENT GOVERNMENT OF INDIA SCHEME   OF  SCHOLARSHIP FOR STUDENTS WITH DISABILITIES (Effective from 1st April 2022)  DEPARTMENT OF EMPOWERMENT OF PERSONS', 'Education plays a pivotal role in socio-economic empowerment of Persons \r\nwith Disabilities. Recognizing its crucial role, the Directive Principles of \r\nState Policy, in the Constitution of India and the Rights of Persons with \r\nDisabilities Act, 2016, ha', 'The general conditions of eligibility for all the components of the scheme are given \r\nbelow: \r\n(i) The scholarships are open only to Indian nationals. \r\n(ii) All six scholarships are open to students with students with benchmark \r\ndisability and having a', 'a) Applications will be called for through National Scholarship Portal \r\n(www.scholarships.gov.in). Documents uploaded should be in .pdf \r\nformat. \r\nb) The applicants should submit application within the last date prescribed \r\nfor receipt of applications '),
(18, 'POST-MATRIC SCHOLARSHIP FOR STUDENT WITH  BENCHMARK DISABILITIES', 'a) To support students with disabilities for their studies in classes XI onwards \r\nso that the incidence of drop-out, especially in the transition from the \r\nsecondary to the higher secondary stage is minimized, \r\nb) To improve enrolment of students with ', 'These scholarships will be given for study of all recognized post-matriculation or \r\npost-secondary courses pursued in recognized institutions with the following \r\nexceptions: \r\nScholarships are not awarded for training courses like Aircraft Maintenance ', 'a) Applications will be called for through National Scholarship Portal \r\n(www.scholarships.gov.in). \r\nb) The applicants should submit their application through the on-line system \r\nwithin the last date prescribed for receipt of applications. All requisite');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
