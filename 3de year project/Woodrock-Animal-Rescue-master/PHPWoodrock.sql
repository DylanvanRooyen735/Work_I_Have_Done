-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 28, 2019 at 05:27 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodrock`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_medical_diagnosis_table`
--

DROP TABLE IF EXISTS `animal_medical_diagnosis_table`;
CREATE TABLE IF NOT EXISTS `animal_medical_diagnosis_table` (
  `Animal_Medical_Diagnosis_ID` int(255) NOT NULL,
  `Animal_ID` int(255) NOT NULL,
  `Medical_Diagnosis_ID` int(255) NOT NULL,
  `Diagnosis_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `animal_table`
--

DROP TABLE IF EXISTS `animal_table`;
CREATE TABLE IF NOT EXISTS `animal_table` (
  `Animal_ID` int(255) NOT NULL,
  `Animal_Species_ID` int(255) NOT NULL,
  `Colour` varchar(255) NOT NULL,
  `Age` int(255) NOT NULL,
  `Weight` double NOT NULL,
  `Food_ID` int(255) NOT NULL,
  `Breed_ID` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `animal_vaccination_table`
--

DROP TABLE IF EXISTS `animal_vaccination_table`;
CREATE TABLE IF NOT EXISTS `animal_vaccination_table` (
  `Animal_Vacination_ID` int(255) NOT NULL,
  `Vacination_ID` int(255) NOT NULL,
  `Animal_ID` int(255) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Animal_Vacination_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_medication_table`
--

DROP TABLE IF EXISTS `diagnosis_medication_table`;
CREATE TABLE IF NOT EXISTS `diagnosis_medication_table` (
  `Medication_Diagnosis_ID` int(255) NOT NULL,
  `Medication_ID` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_table`
--

DROP TABLE IF EXISTS `food_table`;
CREATE TABLE IF NOT EXISTS `food_table` (
  `Food_ID` int(255) NOT NULL,
  `Food_Name` varchar(255) NOT NULL,
  `Stock` int(255) NOT NULL,
  `Food_Portions` int(255) NOT NULL,
  `Cost_KG` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_diagnosis_table`
--

DROP TABLE IF EXISTS `medical_diagnosis_table`;
CREATE TABLE IF NOT EXISTS `medical_diagnosis_table` (
  `Medical_Diagnosis_ID` int(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Treatment` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication_table`
--

DROP TABLE IF EXISTS `medication_table`;
CREATE TABLE IF NOT EXISTS `medication_table` (
  `Medication_ID` int(255) NOT NULL,
  `Medication_Name` varchar(255) NOT NULL,
  `Stock` int(255) NOT NULL,
  `Cost` double NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `detailID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `cellphone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `personType` varchar(255) NOT NULL,
  PRIMARY KEY (`detailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacinations_table`
--

DROP TABLE IF EXISTS `vacinations_table`;
CREATE TABLE IF NOT EXISTS `vacinations_table` (
  `Vacination_ID` int(255) NOT NULL,
  `Information` varchar(255) NOT NULL,
  `Cost` double NOT NULL,
  `Frequency` varchar(255) NOT NULL,
  PRIMARY KEY (`Vacination_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
