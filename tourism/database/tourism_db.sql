-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 11:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
(4, 6, 1, 2, '2022-03-13', '2022-03-13 12:06:15'),
(5, 6, 9, 1, '2022-04-12', '2022-04-03 11:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Nepal Tour Package', 'Kathmandu, Nagarkot', 27000, '&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot; color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;Kathmandu is situated in a valley that is an open-air museum of popular sites, classical temples and shrines, golden pagodas and the encouraging deities. The city&rsquo;s infinite traditional picturesque and cultural interest attracts the travellers for a trip to Kathmandu, Nepal, from around the world. Witnessing the majestic beauty of Himalayan peaks from several points around the valley makes it even more appealing. Stepping into Kathmandu is like stepping into another world. You will never get enough of this city no matter how many times you may arrive.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot; color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 18px; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;&lt;b&gt;Itinerary&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; text-align: left;&quot;&gt;&lt;b&gt;Day 1 : Arrive Kathmandu Airport&ndash;Transfer to Kathmandu Hotel &lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; font-weight: inherit; text-align: left; white-space: break-spaces;&quot;&gt;Welcome at Kathmandu International airport by our representative who will take you to the hotel by our own private car. Check-in at hotel and stay at Kathmandu hotel.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; text-align: left;&quot;&gt;&lt;b&gt;Day 2 : Kathmanduto To Nagarkot Transfer - Nagarkot Stay&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; font-weight: inherit; text-align: left;&quot;&gt;Breakfast at hotel. Transfer to Nagarkot and . Check-in at Nagarkot hotel. Overnight stay at Nagarkot hotel.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; text-align: left;&quot;&gt;&lt;b&gt;Day 3 :Nagarkot Stay &lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; font-weight: inherit; text-align: left;&quot;&gt;Free day at Nagarkot.Overnight stay at Nagarkot hotel.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; text-align: left;&quot;&gt;&lt;b&gt;Day 4 :Nagarkot Hotel to Kathmandu Transfer- Kathmandu Stay &lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; font-weight: inherit; text-align: left;&quot;&gt;Breakfast at Nagarkot hotel after which we will start for Kathmandu. Visit Bhaktipur on the way. Lunch on the way at a highway restaurant. After we reach the Kathmandu hotel you have the rest of the day free. Overnight stay at Kathmandu hotel.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; text-align: left;&quot;&gt;&lt;b&gt;Day 5 :Kathmandu Sightseeing- Depart Back to Home&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: inherit; font-size: 1rem; font-style: inherit; white-space: break-spaces; font-weight: inherit; text-align: left;&quot;&gt;Breakfast at hotel. Sightseeing in Kathmandu which includes Kathmandu Swyambhunath and Patan Durbar square. After the brief tour we will drop you off at the airport for your return flight to Home.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; line-height: 1.4;&quot;&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot; color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot; color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Glorious Nepal', 'Pokhara, Sarangkot, Kathmandu, Manakamana', 25000, '&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-align: left; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Pokhara the largest municipality of Nepal in terms of area, and the second largest in terms of the population leaves you fascinated with its hilltop views and panoramic visions encompassing the bustling streets of the region.This Pokhara trip in Nepal will lift your spirits to the heights of Himalayas as you will feel your best as ever. The home to numerous lakes and caves, this city welcomes you with all the delights to offer. From Landscapes to the thrilling adventures, to the ultra-modern restaurants, and the charming experience of nightlife, everything seems indescribable in words. There is no other way to undergo these experiences except for living them on your own. Make sure you are visiting Pokhara, once you fly to Nepal.&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 18px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 18px; white-space: break-spaces;&quot;&gt;Itinerary:&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;/p&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-align: left; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 1: Kathmandu Airport:&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;span style=&quot;text-align: left; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: break-spaces; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Arrival at Int&#039;l/Dom Airport, welcome with soft drinks Nepali represents ancient Nepali culture, transfers to hotel, refresh and briefing about the evening plan, walking Thamel for enjoyment by self &amp;amp; Night stay.&lt;/span&gt;&lt;/div&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;font face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 2: Kathmandu- Pokhara (200Km. 5-6 Hours &amp;amp; Manakamana Darshan 2 Hour)&lt;/b&gt;\r\nAfter breakfast and check out from the Hotel and proceed on a scenic drive  to Pokhara. En-route enjoy cable car ride to Manakamana Darshan for 2 Hours &amp;amp; continue drive 3 Hours to Pokhara. Evening arrive Pokhara and check-in the Hotel Overnight at hotel in Pokhara.\r\n\r\n&lt;b&gt;Day 3: Pokhara Sightseeing&lt;/b&gt;\r\nWake up early to watch the gorgeous peaks during sunrise &amp;amp; the marvelous view from Hotel, a charming city &amp;amp; After breakfast, proceed for a Full day city tour of Pokhara including Dave&rsquo;s fall, Gupteswore Cave, Seti river, Pokhara museum Bindhabasini temple and enjoy boating on Fewa lake by self. Overnight at Hotel.\r\n\r\n&lt;b&gt;Day 4: Pokhara-Sarangkot-Kathmandu (200 Km. 5-6 Hours)&lt;/b&gt;\r\nEarly morning, drive from Pokhara to Sarangkot, enjoy gorgeous sunrise then general sightseen of Sarangkot and back to hotel after breakfast and check out from the Hotel and proceed on a scenic drive to Kathmandu &amp;amp; Afternoon arrive Kathmandu and checkin the Hotel. Overnight in Kathmandu.\r\n\r\n&lt;b&gt;Day 5: Kathmandu Sightseeing&lt;/b&gt;\r\nAfter having breakfast start full day sightseeing of Kathmandu valley which includes, Pashupatinath temple, Bouddhanath Stupa (Temple of Buddhist), Soyambunath Stupa (Monkey Temple) from there we can view Kathmandu valley), Durbar Square(Historical Temple and living god house ) drop Hotel &amp;amp; overnight stay at hotel.\r\n\r\n&lt;b&gt;Day 6: Airport Drop:&lt;/b&gt;\r\n&lt;div style=&quot;text-align: justify;&quot;&gt;After breakfast, &amp;amp; then depart to Tribhuvan International Airport for your flight home It&rsquo;s time to say good bye to all new friends you have made and take back warm memories of your trip.&lt;/div&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;p&gt;&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Enchanting Nepal', 'Chitwan, Kathmandu, Pokhara, Nagarkot', 43000, '&lt;p&gt;&lt;span style=&quot;font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;Chitwan, known for its beauty of the dense forests, lies in the south-western part of Narayani Zone of Nepal. Chitwan is worldwide famous as one of the best wildlife-viewings. Best known for its flora and fauna, the region cultivates food and cash crops in great amount across the state and the fauna is guarded by a battalion of the Nepal Army and patrolled by anti-poaching units. The exotic nature is on its full glory in our Chitwan national park tour package.The biodiversity of wildlife in the Chitwan national park is far beyond amazing and the conservation of this natural aura is carried out by the wise and hardworking locals of the area along with military unit&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px; white-space: break-spaces; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;s.&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 700; text-align: justify; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 700; text-align: justify; white-space: break-spaces;&quot;&gt;Itinerary:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Helvetica; white-space: pre; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Day 1: ARRIVE KATHMANDU: &lt;/b&gt;\r\nMeeting at airport upon arrival by Office Personnel. Kathmandu is the capital of Nepal and the Kathmandu Valley is the political and cultural heart of the Kingdom. The urban sprawl that makes up modern Kathmandu is in fact two cities, Patan and Kathmandu. Overnight at hotel. \r\n\r\n&lt;b&gt;Day 2: KATHMANDU - CHITWAN (180 KMS/05HRS):&lt;/b&gt;\r\nDrive to Chitwan. Chitwan is 180 Km from Kathmandu &amp;amp; is a 05 hours drive from Kathmandu. Chitwan is one of Asia&#039;s premier wildlife reserves.  Its 360 square miles of tall grasslands and forests are home to a wide variety of mammals and birds, including several endangered species.\r\nOn the way you have an option at an extra cost of doing the river rafting ( Inr. 2000 per person if required ) or visit the Manakamana Temple &ldquo; Goddess of Fulfilling Wishes&rdquo; where you are taken by a cable ride of 10 mins ( Inr. 500 per person for the cable car tickets if required ). Overnight at hotel.\r\n\r\n&lt;b&gt;Day 3: CHITWAN:&lt;/b&gt;\r\nEnjoy Jungle observation at Chitwan National park. The highlight being the Elephant Safari in the jungles. Other activities are Canoeing, Dugout canoe, Nature Walk and Bird Watching. Also experience walking through the forests with naturalists and watch the Native folk dances of the Terais. Overnight at hotel.\r\n\r\n&lt;b&gt;Day 4: CHITWAN - POKHARA :&lt;/b&gt;\r\nDrive to Pokhara. Pokhara is 180 Km &amp;amp; is a 04 hours drive from Chitwan. From Pokhara town (2,352 feet) the 25,000+ peaks of the Annapurna and Dhaulagiri ranges rise a scant 20 miles away with no intervening ridges to spoil the view. Overnight at hotel.\r\n\r\n&lt;b&gt;Day 5: POKHARA:&lt;/b&gt;\r\nThis morning you will go for a excursion trip to Sarangkot. Sarangkot is the most popular tourist destination from where the tourist can enjoy the great view of the Pokhara Valley and the magnificent view of the mountains.\r\nFrom Sarangkot, on the northern direction we can see Dhaulagiri in the far west. Annapurna range is visible when the weather is clear on the same side. On the southern direction the village overlooks the city of Pokhara and its lake on the north-western outskirts of the city.This afternoon you will visit Bindebasini Temple. This is one of the oldest temples in Pokhara was a part of Kaski Kingdom, the main deity of the temple,Goddess Durga, was brought from India .The temple is in the area of the bazaar, hence,a journey of the old bazaar can be combined with a visit to the temple. Sightseeing to Devi&rsquo;s fall, also known as Patale Chango is an awesome waterfall lying 2 km southwest of Pokhara.Just opposite of Devi&rsquo;s fall, on the other side of the road, there is Gupteshwor Cave. This cave is popular for the different natural forms made from limestone deposits.\r\n&lt;b&gt;\r\nDay 6: POKHARA - NAGARKOT:&lt;/b&gt;\r\nDrive back to Kathmandu (taking the ring road) continuing the drive to Nagarkot. Nagarkot is situated 35 kms around 1.5  hrs drive east of Kathmandu at an altitude of 2,175 meters. The panoramic view of the major peaks including Mt. Everest can be seen from here. This place is also famous for viewing sunrise and sunset. Overnight at hotel.\r\n\r\n&lt;b&gt;Day 7: NAGARKOT / AIRPORT:&lt;/b&gt;\r\nDrive straight to the international airport which is 1.5 hours drive approx from Nagarkot to board your flight for onward journey.&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Whitney, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 700; text-align: justify; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Annapurna Base Camp ', 'Annapurna, Pokhara, Nayapul, Ghandruk, Sinuwa, Deurali, Jhinu Hot Spring ', 30000, '&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;The Annapurna Base Camp is perched on a cloud-piercing height of 13,550 ft in the northern region of Nepal. Starting from Banthanti to Annapurna Base Camp offers a stunning opportunity to relish the breathtaking heights of giant Himalayan ranges.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;The mountain ranges included in this tour bring you through Oak, Pine, Rhododendron, and lush green rice fields engraved with a diamond-like carpet of snow amidst majestic slopes of misty valleys. Since the Annapurna Base Camp Trek happens around a vast area of Annapurna Conservation Area. You&#039;ll be walking across the Modi river and discover some of the massive peaks of 7000-8000m.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 18px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Itinerary:&lt;/b&gt;&lt;/span&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#000000&quot; face=&quot;Whitney, Helvetica Neue, Helvetica, Arial, sans-serif&quot;&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 1: Arrive in Pokhara (820m/2,690ft)&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;On the first day, you will have to arrive in Pokhara, where the representative will meet you and take you to the accommodation. Overnight at Pokhara for acclimatization.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 2: Drive from Pokhara to Nayapul and trek to Ghandruk (1940m/6,364ft) 6-7 hour&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;Marking the first day of the trek, you will start with a short bus to Nayapul where the trekking begins. You will first trek downhill to Birethanti by crossing the suspension bridge built over the Bhurungdi River. This small village is where you will be signing formalities with the authorities. Following this, the trek starts to climb upwards towards Ghandruk via Chane. The trek to Ghandruk is initially flat along the Modi River, before winding till Kimche and rising till Ghandruk.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;Spend the evening in the village and sleep overnight at a lodge in Ghandruk.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 3: Trek from Ghandruk to Sinuwa (2,360m/7,742ft) 6-7 hour&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;This morning, we will leave the village of Ghandruk behind as we begin the trek towards Sinuwa. The 6 to 7 hours long trek first goes along the Modi River, before diverting away and climbing towards the destination. You will be crossing several boulders before coming across a bridge on the Kimrong River. The trail then becomes steep till you reach Gurung Village, in Chhomrong by crossing Jhinu Danda. At Chhomrong, we will cross a bridge over the Chhomrong River. As we hike to Sinuwa from here, the views of forests of bamboo, rhododendron, and oak forests will be really mesmerizing. Overnight at a lodge in Sinuwa.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 4: Trek from Sinuwa to Deurali (3,230m/10,597ft) 6-7 hours&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;The trek today starts from Sinuwa on a very easy note till we reach Kuldhigar. At this point, a steep stone staircase will lead you Dobhan through a suspension bridge crossing. The trek for the day is lined by bamboo, rhododendron, and Oak forest. After hiking through the valley to Himalaya and Hinku Cave, you will be reaching Deurali, which is the destination for the day. Overnight at a lodge in Deurali.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 5: Trek from Deurali to Annapurna Base Camp (4,130m/13,549ft) 6-7 hours&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;This day is going to be the most wonderful as we begin on the final stretch towards the Annapurna Base Camp. A simple walk along the River Modi will bring us to Bagar. Bagar is the starting point of the trek to Machhapuchare base camp (3,700m). After an hour of rest at Machhapuchare and spending some time looking at some of the most majestic peaks towering above 7000-8000m, we will begin the trek that leads us to the Annapurna Sanctuary. After hiking a little more, we will arrive at the base camp of the South Annapurna. Spend some time looking at the 360-degree views of some of the highest mountains in the world around you.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;Overnight at a lodge in the Annapurna Base Camp.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 6: Trek from Annapurna Base Camp to Bamboo (2,340m/7,677ft) 6-7 hours&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;After spending some more time in the sanctuary, you will be retracing your steps to reach Bamboo via Bagar, Deurali and Dobhan. You will pass many waterfalls, caves, temples, and forests of rhododendron, oak, and bamboo. Overnight at a lodge in Bamboo.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 7: Trek from Bamboo to Jhinu Hot Spring (1,780m/5,839ft) 6-7 hours&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;The morning begins with a hike from Bamboo to Kuldhigar to visit the office of ACAP. From here, you will hike down to a bridge over the Chhomrong River after passing Sinuwa. Crossing the bridge brings you to Gurung Village. A steep hike downhill will bring you to Jhinu Danda, where you can relax and unwind in the hot springs after a long day of trekking. Overnight at a lodge in Jhinu Danda.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 8: Trek from Jhinu Hot Spring to Nayapul and drive to Pokhara (820m/2,690ft) 7 hours&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;You will begin the day&#039;s trek by crossing the bridge on the Modi River. You will pass many forests and village settlements before arriving at Syauli Bazaar. Syauli Bazaar marks that point of the trek where the terrain becomes flat till Nayapul. A small hike from here will take you to the offices where you can perform the check-out formalities with the authorities. After this, you will be crossing the suspension bridge on the Bhurungdi River to arrive at Nayapul, from where the bus will take you back to Pokhara. Spend the evening at leisure, exploring Pokhara. Overnight at Pokhara accommodation.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;b&gt;Day 9: Check-out and fly back&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; white-space: break-spaces;&quot;&gt;This morning, you will check out the accommodation and bring the experience to an end. You can then move onto your onward journey&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify; font-size: 16px; white-space: break-spaces;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/div&gt;', 'uploads/package_9', 1, '2022-03-30 13:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, '<p>Sample</p>', '2021-06-19 11:53:16'),
(4, 5, 8, 3, '&lt;p&gt;Sample feedback only&lt;/p&gt;', '2021-06-19 13:49:26'),
(5, 6, 1, 4, '&lt;p&gt;good&lt;/p&gt;', '2022-03-13 12:08:37'),
(6, 6, 9, 1, '', '2022-04-03 18:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Tourism Management System'),
(6, 'short_name', 'TMS-PHP'),
(11, 'logo', 'uploads/1623978900_masskara.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1624082100_The_Ruins_in_Talisay,_Negros_Occidental_at_Dusk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(6, 'Ranak', 'jaiswar', 'ranak', '3ae18f0ba45d7fdc12006ddd37c6e630', NULL, NULL, 0, '2022-03-13 12:05:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
