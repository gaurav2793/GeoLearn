-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2014 at 05:18 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geo`
--
CREATE DATABASE IF NOT EXISTS `geo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `geo`;

-- --------------------------------------------------------

--
-- Table structure for table `landmarks`
--

CREATE TABLE IF NOT EXISTS `landmarks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landmarks`
--

INSERT INTO `landmarks` (`id`, `name`, `city`, `state`, `info`, `image`) VALUES
(1, 'City Palace', 'Udaipur', 'Jaipur', 'City Palace, Udaipur, is a palace complex in Udaipur, in the Indian state Rajasthan. It was built over a period of nearly 400 years being contributed by several kings of the dynasty, starting by the Maharana Udai Singh as the capital of the Sisodia Rajput clan in 1559, after he moved from Chittor. It is located on the east bank of the Lake Pichola and has several palaces built within its complex. Udaipur was the historic capital of the former kingdom of Mewar in the Rajputana Agency and its last capital', 'land_im/city.jpg'),
(2, 'Qutab Minar', 'New Delhi', 'New Delhi', 'Qutb Minar , also written Qutub Minar or Qutab Minar, is the 2nd tallest minar (73 metres) in India after Fateh Burj in Chappar Chiri at Mohali which stands 100 meters tall. Qutb Minar originally an early Islamic Monument inscribed with Arabic inscriptions is a UNESCO World Heritage Site. Located in Delhi, the Qutb Minar is made of red sandstone and marble. The stair of the tower has 379 steps, is 72.5 metres (237.8 ft) high, and has a base diameter of 14.3 metres, which narrows to 2.7 metres at the top. Construction was started in 1192 by Qutb-ud-din Aibak and was carried on by his successor, Iltutmish. In 1368, Firoz Shah Tughlaq constructed the fifth and the last storey.It is surrounded by several other ancient and medieval structures and ruins, collectively known as the Qutb complex', 'land_im/qutb.jpg'),
(3, 'Taj Mahal', 'Agra', 'Uttar Pradesh', 'The Taj Mahal from Persian and Arabic, "crown of palaces" also "the Taj" is a white marble mausoleum located in Agra, Uttar Pradesh, India. It was built by Mughal emperor Shah Jahan in memory of his third wife, Mumtaz Mahal. The Taj Mahal is widely recognized as "the jewel of Muslim art in India and one of the universally admired masterpieces of the world''s heritage', 'land_im/taj.jpg'),
(4, 'Agra Fort', 'Agra', 'Uttar Pradesh', 'Agra Fort is a UNESCO World Heritage site located in Agra, Uttar Pradesh, India. It is about 2.5 km northwest of its more famous sister monument, the Taj Mahal. The fort can be more accurately described as a walled city.The present-day structure was built by the Mughals, though a fort had stood there since at least the 11th century. Agra Fort was originally a brick fort, held by the Hindu Sikarwar Rajputs. It was mentioned for the first time in 1080 AD when a Ghaznavide force captured it. Sikandar Lodi (1488â?"1517) was the first Sultan of Delhi who shifted to Agra and lived in the fort. He governed the country from here and Agra assumed the importance of the second capital. He died in the fort at 1517 and his son, Ibrahim Lodi, held it for nine years until he was defeated and killed at Panipat in 1526. Several palaces, wells and a mosque were built by him in the fort during his period.', 'land_im/agra.jpg'),
(5, 'Swaminarayan Akshardham', 'New Delhi', 'New Delhi', 'Akshardham is a Hindu temple complex in Delhi, India. Also referred to as Delhi Akshardham or Swaminarayan Akshardham, the complex displays millennia of traditional Hindu and Indian culture, spirituality, and architecture. The building was inspired and developed by Pramukh Swami Maharaj, the spiritual head of the Bochasanwasi Shri Akshar Purushottam Swaminarayan Sanstha, whose 3,000 volunteers helped 7,000 artisans construct Akshardham', 'land_im/swami.jpg'),
(6, 'Amer Fort And Palace', 'Jaipur', 'Rajasthan', 'Amer Palace is located in Amer (a town with an area of 4 square kilometres (1.5 sq mi)), 11 kilometres (6.8 mi) from Jaipur, Rajasthan state, India. It is the principal tourist attractions in the Jaipur area, located high on a hill. Amer Fort was built by Raja Man Singh I. Amer Fort is known for its artistic style of Hindu elements. With its large ramparts, series of gates and cobbled paths, the fort overlooks the Maota Lake, at its forefront', 'land_im/amer.jpg'),
(7, 'Golden Temple, Harmandir Sahib', 'Amritsar', 'Punjab', 'The Harmandir Sahib , also Darbar Sahib,  and informally referred to as the "Golden Temple", is a prominent Sikh gurdwara located in the city of Amritsar, Punjab, India. It was built by the fourth Sikh guru, Guru Ramdaas Sahib Ji, in the 16th century. In 1604, Guru Arjun completed the Adi Granth, the holy scripture of Sikhism, and installed it in the Gurudwara', 'land_im/gold.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques` varchar(500) NOT NULL,
  `op1` varchar(300) NOT NULL,
  `op2` varchar(300) NOT NULL,
  `correct` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `ques`, `op1`, `op2`, `correct`) VALUES
(1, 'Which state of india has a seprate constitution of its own ?', 'Jammu & Kashmir', 'Nagaland', 'Jammu & Kashmir'),
(2, 'Which union territory is the capital of two states of India ?', 'Pondicherry', 'Chandigarh', 'Chandigarh'),
(3, 'A special landmark of Delhi which attracts 70% of its tourists?', 'Swaminarayan Akshardham', 'Chandani Chownk', 'Swaminarayan Akshardham'),
(4, 'Which state has the smallest land area ?', 'Goa', 'Jharkhand', 'Goa'),
(5, 'Which state has the highest literacy rate ?', 'Tamil Nadu', 'Kerela', 'Kerela'),
(6, 'Which state has a seprate capital during summer and winter ?', 'Jammu & Kashmir', 'Punjab', 'Jammu & Kashmir'),
(7, 'Which is the official language of Goa ?', 'Konkani', 'Garo', 'Konkani'),
(8, 'Which is the largest steel producing state ?', 'Chattisgarh', 'Jharkhand', 'Chattisgarh'),
(9, 'Which state is famous for its abundant natural beauty ?', 'Himachal Pradesh', 'Haryana', 'Himachal Pradesh'),
(10, 'The name of which state means "The Land of Five Rivers " ?', 'Sikkim', 'Punjab', 'Punjab'),
(11, 'Which city was the historic capital of the former kingdom of Mewar in the Rajputana Agency and its last capital ?', 'Jaipur', 'Udaipur', 'Udaipur'),
(12, 'Which Indian king held the Agra Fort for 9 years until he was defeated in Panipat in 1526?', 'Maharana Pratap', 'Ibrahim Lodi', 'Ibrahim Lodi'),
(13, 'Which Indian king built the Amer Fort?', 'Mann Singh', 'Udai Singh', 'Mann Singh'),
(14, 'In which city of India is GoldenTemple situated?', 'Ludhiana', 'Amritsar', 'Amritsar'),
(15, 'Which is the largest minar (tower) in India ?', 'Qutb Minar', 'Fateh Burj', 'Fateh Burj');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(40) NOT NULL,
  `population` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `literacy_rate` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `info` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `population`, `area`, `languages`, `capital`, `literacy_rate`, `image`, `info`) VALUES
(1, 'Arunachal Pradesh', '1,382,611', '83,743', 'English', 'Itanagar', '66.95%', 'state_images/arunachal.jpg', 'Arunachal Pradesh  is one of the 29 states of India. Located in northeast India, it holds the most north-eastern position among the other states in the north-east region of India. Arunachal Pradesh borders the states of Assam and Nagaland to the south, and shares international borders with Bhutan in the west, Myanmar in the east and China in the north. Itanagar is the capital of the state. China claims the northern part of the state as a part of the Tibet Autonomous Region'),
(2, 'Assam', '31,169,272', '78,550 km2', 'Assamese; Regional: Bodo, Bengali', 'Dispur', '73.18%', 'state_images/assam.jpg', 'Assam is a state of India in the north-eastern region. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak river valleys along with the Karbi Anglong and the North Cachar Hills with an area of 30,285 square miles (78,438 kmA²). Assam is surrounded by six of the other Seven Sister States: Arunachal Pradesh, Nagaland, Manipur, Mizoram, Tripura, and Meghalaya'),
(3, 'Chattisgarh', '25,540,196', '135,194km2', 'Chattisgarhi, Hindi', 'Raipur', '71.04%', 'state_images/chattisgarh.jpg', 'Chhattisgarh is a state in Central India. It is the 10th largest state in India, with an area of 135,190 km2 (52,200 sq mi). With a population of 25.5 million, Chhattisgarh is the 16th most-populated state of the nation. It is a source of electricity and steel for India.Chhattisgarh accounts for 15% of the total steel produced in the country. Chhattisgarh is one of the fastest-developing states in India.'),
(4, 'Himachal Pradesh', '6,856,509', '55,673 km2', 'Hindi, Pahari', 'Shimla', '83.78', 'state_images/himachal.jpg', 'Himachal Pradesh is famous for its abundant natural beauty. After the war between Nepal and Britain, also known as the Anglo-Gorkha War (1814â?"1816), the British colonial government came into power. In 1950 Himachal was declared a union territory, but after the State of Himachal Pradesh Act 1971, Himachal emerged as the 18th state of the Republic of India. Hima means snow in Sanskrit, and the literal meaning of the state''s name is In the lap of Himalayas. It was named by Acharya Diwakar Datt Sharma, one of the great Sanskrit scholars of Himachal Pradesh'),
(5, 'Jammu and Kashmir', '12,548,926', '222,236 km2', 'Dogri, Kashmiri, Ladakhi, Urdu', 'Srinagar (summer) , Jammu (winter)', '68.74%', 'state_images/jammu.jpg', 'Jammu and Kashmir is a state in northern India, granted special autonomy under Article 370 of the Constitution of India.It is located mostly in the Himalayan mountains, and shares a border with the states of Himachal Pradesh and Punjab to the south. Jammu and Kashmir has an international border with China in the north and east, and the Line of Control separates it from the Pakistani-controlled territories of Azad Kashmir and Gilgitâ?"Baltistan in the west and northwest, respectively'),
(6, 'Karnataka', '61,130,704', '191,791', 'Kannada', 'Bangalore', '75.60%', 'state_images/karnataka.jpg', 'Karnataka is a state in South West India. It was formed on 1 November 1956, with the passage of the States Reorganisation Act. Originally known as the State of Mysore, it was renamed Karnataka in 1973. The capital and largest city is Bangalore. Karnataka is bordered by the Arabian Sea and the Laccadive Sea to the west, Goa to the north west, Maharashtra to the north, Telangana to the North east, Andhra Pradesh to the east, Tamil Nadu to the south east, and Kerala to the south west. The state covers an area of 191,976 square kilometres (74,122 sq mi), or 5.83 per cent of the total geographical area of India. It is the seventh largest Indian state by area. With 61,130,704 inhabitants at the 2011 census, Karnataka is the eighth largest state by population, comprising 30 districts. Kannada is the most widely spoken and official language of the state'),
(7, 'Kerala', '33,387,677', '38,863 km2', 'Malayalam', 'Thiruvananthapuram', '93.91%', 'state_images/kerala.jpg', 'Kerala, often referred to as Keralam, is a state in the south-west region of India on the Malabar coast. It was formed on 1 November 1956 as per the States Reorganisation Act by combining various Malayalam-speaking regions. Spread over 38,863 km2 (15,005 sq mi) it is bordered by Karnataka to the north and north east, Tamil Nadu to the east and south, and the Lakshadweep Sea to the west. With 33,387,677 inhabitants as per the 2011 census, Kerala is the twelfth largest state by population and is divided into 14 districts with the state capital being Thiruvananthapuram. Malayalam is the most widely spoken and official language of the state'),
(8, 'Madhya Pradesh', '72,597,565', '308,252 km2', 'Hindi', 'Bhopal', '70.63%', 'state_images/madhya.jpg', 'Madhya Pradesh (MP), literally "Central Province") is a state in central India. Its capital is Bhopal, and the largest city is Indore. Nicknamed the "heart of India" due to its geographical location in India, Madhya Pradesh is the second largest state in the country by area. With over 75 million inhabitants, it is the sixth largest state in India by population. It borders the states of Uttar Pradesh to the northeast, Chhattisgarh to the southeast, Maharashtra to the south, Gujarat to the west, and Rajasthan to the northwest.'),
(9, 'Maharashtra', '112,372,972', '307,713 km2', 'Marathi', 'Mumbai', '82.91%', 'state_images/maharashtra.jpg', 'Maharashtra is a state in the western region of India and is the nation''s as well as the world''s second-most populous sub-national entity. It has over 110 million inhabitants and its capital, Mumbai, has a population of approximately 15.2 million people. Mumbai is also the financial capital of the nation and the headquarters of all major banks, financial institutions and insurance companies in the country. India''s Hindi film industry, Bollywood, and Marathi film and television industry are also located in this state. Maharashtra''s business opportunities, as well as its potential to offer a higher standard of living, attract migrants from all over India'),
(10, 'Punjab', '27,704,236', '50,362 km2', 'Punjabi', 'Chandigarh', '76.68', 'state_images/punjab.jpg', 'Punjab, also spelt Panjab, is a state in the northwest of the Republic of India, forming part of the larger Punjab region.The state is bordered by the Indian states of Himachal Pradesh to the east, Haryana to the south and southeast, Rajasthan to the southwest, and the Pakistani province of Punjab to the west. To the north it is bounded by the Indian state of Jammu and Kashmir. The state capital is located in Chandigarh, a Union Territory and also the capital of the neighbouring state of Haryana.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
