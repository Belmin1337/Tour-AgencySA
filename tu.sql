-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 10:20 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'sarajevo', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(4, 11, 'belmin.muhovic@hotmail.com', '2021-06-07', '2021-06-09', 'Sjajno iskustvo', '2021-06-06 22:31:14', 0, NULL, NULL),
(5, 1, 'dzevad@hotmail.com', '2021-06-08', '2021-06-15', 'Sjajno iskustvo', '2021-06-07 08:35:15', 0, NULL, NULL),
(6, 3, 'mirsada@gmail.com', '2021-06-08', '2021-06-30', 'Želim da se opustim', '2021-06-07 10:50:37', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'Želim povrat novca', '2020-07-08 06:56:29', NULL, '2021-06-06 22:24:21'),
(8, NULL, NULL, NULL, '2021-06-06 22:58:57', NULL, NULL),
(9, NULL, NULL, NULL, '2021-06-06 23:02:30', NULL, NULL),
(10, NULL, NULL, NULL, '2021-06-06 23:04:39', NULL, NULL),
(11, NULL, NULL, NULL, '2021-06-06 23:08:40', NULL, NULL),
(12, NULL, NULL, NULL, '2021-06-06 23:21:00', NULL, NULL),
(13, NULL, NULL, NULL, '2021-06-06 23:22:32', NULL, NULL),
(14, NULL, NULL, NULL, '2021-06-06 23:25:12', NULL, NULL),
(15, NULL, NULL, NULL, '2021-06-07 08:16:24', NULL, NULL),
(16, NULL, NULL, NULL, '2021-06-07 08:19:00', NULL, NULL),
(17, NULL, NULL, NULL, '2021-06-07 08:21:16', NULL, NULL),
(18, NULL, NULL, NULL, '2021-06-07 08:33:17', NULL, NULL),
(19, NULL, NULL, NULL, '2021-06-07 10:49:45', NULL, NULL),
(20, NULL, NULL, NULL, '2021-06-10 19:48:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">&nbsp;Bosna i hercegovina, Sarajevo, adresa - Smaila Šikala 13</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Odmaralište - NEUM', 'Obiteljski paket', 'Bosnia and Herzegovina', 800, 'WiFi, Besplatan prijevoz od odmarališta/hotela do autobuske stanice', 'Neum je jedini primorski turisticki gradic u Bosni i Hercegovini iznikao na strmim obroncima zaljeva Neum Klek, koji prijateljski, otvorena srca i mediteranske duse, docekuje svakog dobronamjernog gosta iz bilo kojeg kraja svijeta.', 'neum.jpg', '2020-07-08 05:21:58', NULL),
(2, 'Kanarski otoci', 'Obiteljski paket', 'Okruzenje Spanije', 7000, 'Sve pogodnosti ponude ukljucene su u ovaj paket (prijevoz,hotel,vodic itd). Za vise informacija o ovoj ponudi kontaktirajte nas na jedan od brojeva stacioniranih u sekciji Kontakti.', 'Jos jedno odmaraliste na otocima i ukljuceno je u rejting rezultata i u njemu dosljedno visoke pozicije - canaras. Ovo odmaraliste pripada Spanjolskoj i, prema tome, to je blizu najljepsih i najpoznatijih atrakcija Europe. Prisutnost schengenske vize ce se kompatibilizirati odmor na plazi S posjetom najpopularnijim gradovima u Spanjolskoj, Italiji ili Francuskoj, ako je vrijeme dopusteno.', 'canari.jpg', '2020-07-08 05:37:40', '2021-05-23 15:54:23'),
(3, 'Maldivi specijalni paket samo za parove', 'Super ponuda za parove.', 'Republika maldivi.', 6600, 'Prijevoz, WiFi, Povezica sa odredenim top destinacijama i njihovim hotelima te odredeni popusti uz odgovarajuci ugovor.', 'Maldivi se sastoje od nekoliko tisuca atolova (koraljni otoci s laguni), na kojima možete pronaci bilo kakav odmor - od aktivnog na skroviste. U isto vrijeme, lokalna naselja ne mogu se pripisati najjeftinijem, iako za one koji nisu previse uznemiruju razinu usluge i udobnosti situacije, a dostupna su mjesta za smjestaj. ', 'maldivi.jpg', '2020-07-08 05:41:07', '2021-05-23 16:05:45'),
(4, 'Mostar', 'Obiteljski paket', 'Bosnia and Herzegovina', 50, 'Besplatan WiFi uz prijevoz do lokacije odmarališta kao i nazad u dogovoreno vrijeme', 'Mostar je grad u Bosni i Hercegovini. Smjesten je na obalama rijeke Neretve i kulturno je i gospodarsko srediste Hercegovine, a ujedno i najveci grad u Hercegovini. Mostar je upravno sjediste Hercegovacko-neretvanske zupanije te sveucilisno, kulturno, gospodarsko i politicko središte Hrvata u Bosni i Hercegovini.\r\nGrad na rijeci Neretvi, 80 km jugozapadno od Sarajeva, BiH; 105.797 stanovnika. Najveci i tradicionalno najvazniji grad Hercegovine. Nalazi se na zeljeznickoj pruzi Sarajevo–Ploce (Hrvatska). Nekad vazno srediste tekstilne, duhanske i prehrambene industrije te rudarstva (boksit). Industrija je tesko stradala u ratu 1990-ih. Stari most preko Neretve iz XVI. stoljeca (dug 29,5 m; konstruirao ga turski graditelj Mimar Hajrudin 1566.) srusen je u studenome 1993., ponovno sagraden 2004. ', 'mostar.jpg', '2020-07-08 05:45:58', NULL),
(5, 'Kratko putovanje u Dubai', 'Obiteljski paket', 'Dubai', 3000, 'Prijevoz, WiFi, dorucak', 'Vikend paket za cijelu obitelj.', 'unnamed.jpg', '2020-07-08 05:49:13', NULL),
(6, 'Kolumbija', 'Grupno putovanje', 'Bogota', 4000, 'Prijevoz uz sve pratece segmente, WiFi', 'Kolumbija se odlikuje visokim stepenom biodiverziteta i brojnim prirodnim ljepotama. Nakon Brazila i Argentine ima vodecu ulogu u privrednom razvoju regije.\r\n\r\nGlavni i najveci grad drzave je Bogota sa oko 7,2 miliona stanovnika. Ostali veci gradovi su: Medellin, Cali, Cartagena de Indias, Barranquilla, Ibague, Manizales, Pasto, Cucuta i Bucaramanga. Ima oko 49,9 miliona stanovnika.', 'kolumbija.jpg', '2020-07-08 05:51:26', NULL),
(7, 'Jednodnevni izlet u Jajce', 'Obiteljski paket', 'Bosnia and Hezegovina', 75, 'Prijevoz, rucak', 'Jajce, grad na uscu Plive i Vrbasa, jedan je od najpozitivnijih primjera kada je u pitanju razvoj turizma u BiH. Grad je poznat po svojim jezerima, vodopadu i drugim prirodnim ljepotama, ali i po tome sto ima cak 29 nacionalnih spomenika.', 'jajce.jpg', '2020-07-08 05:54:42', NULL),
(8, 'Putovanje i obilazak Grand Canyon-a ', 'Obiteljski paket', 'Arizona', 8000, 'Prijevoz,vodic,WiFi,obroci- Podsjetnik- put i boravak traju 4 dana ', 'Nacionalni park Grand Canyon (Grand Canyon National Park) je jedan od 58 nacionalnih parkova Sjedinjenih Americkih Drzava i UNESCO-va je svjetska bastina. Grand Canyon je naziv dobio zahvaljujuci svojoj velicini, duljini i izrazito dubokim ponorima. Zapravo Grand Canyon se zbog svoje velicine smatra jednim od sedam svjetskih cuda prirode. ', 'kanjon.jpg', '2020-07-08 06:05:24', NULL),
(9, 'Dvodnevna posjeta Beogradu', 'Obiteljski paket', 'Srbija', 850, 'Besplatan WiFi, prijevoz', 'Dugu i zanimljivu istoriju Beograda nagovestava njegova arhitektura – u njegovim starijim cetvrtima se uocavaju gradevine kako u vizantijskom i otomanskom, tako i u neoklasicistickom i romanticarskom stilu, dok se u Novom Beogradu prevashodno uocavaju detalji u secesionistickom, brutalistickom i neovizantijskom stilu. Bogat i raznovrstan kulturni zivot grada ogleda se u mnostvu pozorista, muzeja, spomenika i opera, dok plaze i rijeke privlace kupace, ljubitelje sportskih aktivnosti i ljude zeljne dobre zabave, koji se okupljaju na popularnim splavovima koji su pretvoreni u nocne klubove.\r\n', 'beograd.jpg', '2020-07-08 06:07:48', NULL),
(10, 'Bosnia and Hezegovina\'s beauty', 'Sveobuhvatna tura oko Bosne i Hercegovine', 'Bosnia and Herzegovina', 800, 'Prijevoz, WiFi , Podsjetnik- tura traje 3 dana.', 'Turizam u Bosni i Hercegovini brzorastuci je sektor koji u posljednje vrijeme cini vazan dio u ekonomiji drzave.\r\n\r\nBosna i Hercegovina bila je u grupi drzava sa znacajnim turistickim razvojem u nekoliko posljednjih godina. Dolazak turista porastao je u prosjeku za 24% godisnje izmedu 1995. i 2000. Prema podacima Svjetske turisticke organizacije za 2008, Bosna i Hercegovina nasla se u vrhu spiska zemalja po porastu broja turista s rastom 20%. U 2016. u Bosni i Hercegovini registrovano je 1.148.530 turista, što je povecanje za 11,6% u poredenju s prethodnom godinom, dok je ostvareno 2.376.743 nocenja, što predstavlja porast za 10,9%. ', 'slika.jpg', '2021-05-22 17:14:39', NULL),
(11, 'Turska', 'Obiteljski paket', 'Istambul', 1000, 'Osiguran prijevoz u oba smijera uz WiFi usluge', 'Plava dzamija sa svojim kupolama, visokim minaretima i interijerom ispunjenim plavim Iznik plocicama jos je jedan prekrasan primjer spoja bizantinske i osmanske arhitekture. Ako vas zanima potpuni pregled dizajna džamije, udite u nju kroz rusevne ostatke rimskog hipodroma na trgu Sultanahmet.\r\n\r\nNo najstarije znamenitosti Istanbula lako vam mogu promaknuti. Duboko ispod površine tla nalazi se vise stotina drevnih cisterni u koje se voda dovodila putem akvedukata dugih 20 km iz lokalnih sabirališta. Najveca je Cisterna Bazilike koju možete istraziti setajuci drvenim platformama.', 'istanbul-4785964_1920.jpg', '2021-06-06 21:42:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(9, 'Adis', '925925', 'adis.pžg@hotmail.com', 'hrasno', '2021-06-06 23:27:38', NULL),
(10, 'Belmin', NULL, 'white.hack@gmail.com', 'sarajevo', '2021-06-06 23:37:00', NULL),
(11, 'Emira', NULL, 'emira@gmail.com', 'bugojno', '2021-06-06 23:37:00', NULL),
(12, 'Tomislav', NULL, 'tomislav.fsk@hotmail.com', 'web', '2021-06-06 23:38:39', NULL),
(15, 'Muhamed', '4342342342', 'muha@gmail.com', 'sarajevo', '2021-06-07 08:21:16', NULL),
(16, 'Dzevad', '0645435345', 'dzevad@hotmail.com', 'igman', '2021-06-07 08:33:17', NULL),
(17, 'Mirsada', '3432432423', 'mirsada@gmail.com', 'bugojno', '2021-06-07 10:49:45', NULL),
(18, 'Belmin', '033461021', 'Belmin@gmail.com', 'sarajevo', '2021-06-10 19:48:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
