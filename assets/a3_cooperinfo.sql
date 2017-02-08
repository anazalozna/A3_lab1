-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 08, 2017 at 03:10 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `a3_cooperinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodel`
--

CREATE TABLE `mainmodel` (
`id` int(11) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `model`, `modelName`, `pricing`, `modelDetails`) VALUES
(0, 'F55', 'Mini 5 Door', '22,240', 'The Mini Countryman was announced in January 2010, and formally launched at the 2010 Geneva Motor Show. It is the first Mini crossover SUV, and the first five-door model to be launched in the BMW-era. It is offered with a choice of two- or four-wheel drive (known as ALL4), and with 1.6 L petrol or diesel and 2.0 L diesel four-cylinder engines in various states of tune.[46] Sales started in September 2010 as a 2011 model-year vehicle.  The Countryman has a longer wheelbase, more interior room, and higher ground clearance than the Clubman. It uses the same engines as the Hatch/Clubman range, but with an optional all-wheel-drive powertrain (dubbed "ALL4") to allow minimal off-road and rugged terrain driving.[47] A six-speed manual transmission is standard on all models, with automatic transmission available on all petrol and diesel models except the 90 bhp One D.'),
(1, 'F56', 'Mini 3 Door', '20,990', 'The Mini Hatch, stylized as MINI hatch or MINI Hardtop in the US, is a three-door hatchback first introduced in late 2000, with a second generation launched in 2006 and a third generation model launched in 2014. A convertible version was introduced in 2004, with the second generation following in 2008.  The Mini is produced in Cowley, Oxfordshire, UK, at Plant Oxford, with additional capacity introduced in the Netherlands for the third generation model due by the summer of 2014. The Mini Hatch was the first model launched by BMW under the Mini marque after the original Mini was discontinued in 2000. The new model built by BMW is technically unrelated to the former.'),
(2, 'R58', 'Mini Convertible', '27,990', 'The MINI Cooper S Coupé is a front wheel drive motor car, with the engine mounted in the front, and a 2 door coupé body. The MINI Cooper S Coupé belongs to the R58 model family from MINI. The power is produced by a turbocharged engine of 1.6 litre capacity. This unit features double overhead camshaft valve gear, 4 cylinder layout, and 4 valves per cylinder. It produces 181 bhp (184 PS/135 kW) of power at 5500 rpm, and maximum torque of 260 N·m (192 lb·ft/26.5 kgm) at 1600 rpm. The engine delivers its power through to the wheels via a 6 speed manual gearbox.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainmodel`
--
ALTER TABLE `mainmodel`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `model` (`model`), ADD UNIQUE KEY `modelDesc` (`modelName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainmodel`
--
ALTER TABLE `mainmodel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
