-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 12:42 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wedding`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_cart`
--

CREATE TABLE `tbl_add_cart` (
  `cart_id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `wedding_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `cart_quantity` int(50) NOT NULL,
  `cart_price` int(200) NOT NULL,
  `cart_status` int(20) NOT NULL,
  `order_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_add_cart`
--

INSERT INTO `tbl_add_cart` (`cart_id`, `login_id`, `wedding_id`, `item_id`, `package_id`, `cart_quantity`, `cart_price`, `cart_status`, `order_status`) VALUES
(39, 2, 2, 7, 2, 1, 50000, 0, 2),
(40, 2, 1, 8, 2, 1, 45000, 0, 2),
(41, 2, 1, 11, 1, 50, 600, 0, 2),
(42, 2, 2, 4, 4, 1, 50000, 0, 1),
(43, 2, 1, 4, 3, 1, 50000, 0, 2),
(44, 14, 3, 1, 3, 1, 100000, 0, 2),
(45, 14, 3, 1, 2, 1, 50000, 0, 2),
(47, 27, 4, 4, 2, 1, 45000, 0, 2),
(48, 2, 2, 1, 3, 1, 100000, 0, 1),
(49, 27, 4, 7, 4, 1, 75000, 1, 0),
(50, 2, 2, 9, 1, 150, 2400, 0, 2),
(51, 2, 2, 12, 1, 250, 2500, 0, 2),
(52, 2, 2, 4, 3, 1, 50000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catering`
--

CREATE TABLE `tbl_catering` (
  `catering_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `food_type` varchar(200) NOT NULL,
  `food_name` varchar(200) NOT NULL,
  `food_description` varchar(1000) NOT NULL,
  `food_price` int(200) NOT NULL,
  `food_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_catering`
--

INSERT INTO `tbl_catering` (`catering_id`, `package_id`, `food_type`, `food_name`, `food_description`, `food_price`, `food_status`) VALUES
(1, 1, 'nonveg', 'Chicken Biriyani', 'Biryani is a mixed rice dish that originates from the Muslims of the Indian subcontinent. This dish is especially popular throughout the Indian subcontinent, as well as among the diaspora from the region. It is also prepared in other regions such as Iraqi Kurdistan. It is made with Indian spices, rice, meat (chicken, goat, beef, prawn, or fish), vegetables or eggs.', 120, 1),
(2, 1, 'nonveg', 'Fish Fry', 'A fish fry is a meal containing battered or breaded fried fish. It usually also includes french fries, coleslaw, hushpuppies, lemon slices, tartar sauce, hot sauce, malt vinegar and dessert. Some Native American versions are cooked by coating fish with semolina and egg yolk.', 50, 1),
(3, 1, 'nonveg', 'Chicken Curry', 'Chicken curry is a dish originating from the Indian subcontinent, common delicacy in the cuisine of the Indian subcontinent, cuisine of Southeast Asia, as well as in the cuisine of the Caribbean . A typical curry from the Indian subcontinent consists of chicken stewed in an onion- and tomato-based sauce, flavored with ginger, garlic, tomato puree, chili peppers and a variety of spices, often including turmeric, cumin, coriander, cinnamon, cardamom and so on. Outside South Asia, chicken curry is often made with a pre-made spice mixture known as curry powder.', 100, 1),
(4, 1, 'nonveg', 'Roast chicken', 'Roast chicken is chicken prepared as food by roasting whether in a home kitchen, over a fire, or with a professional rotisserie (rotary spit). Generally, the chicken is roasted with its own fat and juices by circulating the meat during roasting, and therefore, are usually cooked exposed to fire or heat with some type of rotary grill so that the circulation of these fats and juices is as efficient as possible. Roast chicken is a dish that appears in a wide variety of cuisines worldwide.', 80, 1),
(5, 1, 'vegetarian', 'Kerala Cuisine', 'Sadhya is a feast consisting of a variety of traditional vegetarian dishes usually served on a banana leaf in Kerala, India. The main dish is plain boiled rice, served along with other dishes collectively called Kootan which include curries like parippu, sambar, rasam, pulisseri and others like kaalan, avial, thoran, olan, pachadi, pichadi, koottukari, erissery, mango pickle, pulinji, naranga achaar , as well as papadam, plantain chips, sharkara upperi, banana, plain curd and buttermilk.', 100, 1),
(6, 1, 'vegetarian', 'Tamil Cuisine', 'â€˜Virundhuâ€™ which means â€˜feastâ€™, is when guests are invited during happy ceremonial occasions to share food. For festivals and special ceremonies, a more elaborate menu with steamed rice, variety rice (e.g. tomato rice), dal, sambar (lentil stew), kara kuzhambu (spicy stew with a coconut base or dal base), rasam (tamarind stew with other herbs and spices), thayir (curd) along with poriyal (dry fry of vegetables), varuval (oil fry of the vegetables or meat), kootu (vegetables mixture with green dal or coconut), keerai masiyal (ground greens), aviyal (a mixture of cooked vegetables, finally added with buttermilk or curd in the preparation), pachadi (salad of cucumber, or onion in curd), appalam (fried papads), thovaiyal (wet ground paste of some item), oorukai (pickles), payasam (sweet liquid of many varieties with milk base or coconut milk base or dal liquid base).', 150, 1),
(7, 1, 'vegetarian', 'Telugu Cuisine', 'Andhra Pradesh state is the leading producer of red chili, rice and Telangana state is millets in India influences the liberal use of spices â€” making the food one of the richest and spiciest in the world. Vegetarian, as well as meat and seafood (coastal areas), feature prominently on the menus. Pappu, tomato, gongura, and tamarind are largely used for cooking curries. Spicy and hot varieties of pickles form an important part of Telugu cuisine.', 120, 1),
(8, 1, 'dessert', 'Gulab Jamun', 'Gulab jamun is a milk-solid-based sweet from the Indian subcontinent, popular in India, Nepal (where it is known as lal mohan), Pakistan, and Bangladesh (where it is known as gulab jam), as well as Myanmar. It is also common in Mauritius, Fiji, southern and eastern Africa, Malay Peninsula, and the Caribbean countries of Trinidad and Tobago, Guyana, Suriname and Jamaica. It is made mainly from milk solids, traditionally from Khoya, which is milk reduced to the consistency of a soft dough. Modern recipes call for dried/powdered milk instead of Khoya. It is often garnished with dried nuts such as almonds to enhance flavour.', 16, 1),
(9, 1, 'snack', 'Samosa', 'A samosa is a fried or baked dish with a savoury filling, such as spiced potatoes, onions, peas, or lentils. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region. The Indian style, often accompanied by a chutney, is probably the most widely-known of a broad family of recipes from Africa to China, which have origins in medieval times or earlier.', 16, 1),
(11, 1, 'snack', 'Raj Kachori', 'The texture of the kachori is more like a puri with a crispy surface. the traditional flaky texture of a normal kachori does not actually help for the stuffing and hence it is prepared more like crisp and hard puri. in addition the stuffing used in this recipe is also slightly different. i have added the combination of chickpea, chopped potatoes with fresh pomegranates which makes it unique from other chaat recipes.', 12, 1),
(12, 1, 'dessert', 'Peda', 'Peda or Pera is a sweet from the Indian subcontinent, originating from Mathura, Uttar Pradesh, India, usually prepared in thick, semi-soft pieces. The main ingredients are khoa, sugar and traditional flavorings, including cardamom seeds, pistachio nuts and saffron. The colour varies from a creamy white to a caramel colour. The word peda is also generically used to mean a sphere of any doughy substance, such as flour or khoa. Variant spellings and names for the dessert include pedha, penda (in Gujarati) and pera.', 10, 1),
(15, 1, 'vegetarian', 'ewrwdcwe', 'wedw', 120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dress`
--

CREATE TABLE `tbl_dress` (
  `dress_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `dress_name` varchar(200) NOT NULL,
  `dress_type` varchar(200) NOT NULL,
  `dress_description` varchar(1000) NOT NULL,
  `dress_price` int(200) NOT NULL,
  `dress_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dress`
--

INSERT INTO `tbl_dress` (`dress_id`, `package_id`, `dress_name`, `dress_type`, `dress_description`, `dress_price`, `dress_status`) VALUES
(1, 4, 'Shirts and Dhothies', 'groom', 'A garment worn by male Hindus, consisting of a piece of material tied around the waist and extending to cover most of the legs. Men typically wear the dhoti with a kurta. While most of them are attired in colourful T-shirts or track suits, others are dressed in dhotis and shirts.', 20000, 1),
(2, 4, 'Suits', 'groom', ' Lounge suits (also known as business suits when sober in colour and style), which originated in Britain as country wear,[1] are the most common style of Western suit. Other types of suit still worn today are the dinner suit, part of black tie, which arose as a lounging alternative to dress coats in much the same way as the day lounge suit came to replace frock coats and morning coats; and, rarely worn today, the morning suit. This article discusses the lounge suit (including business suits), elements of informal dress code.', 35000, 1),
(3, 4, 'Sherwani', 'groom', 'Sherwani is a long coat-like garment worn in the Indian subcontinent, very similar to a Western frock coat or a Polish Å¼upan. It was traditionally associated with the Indian subcontinent. It is worn over a kurta with the combination of either a churidar, a dhoti, a pajama, or a shalwar/sirwal as the lower-body clothing. It can be distinguished from the achkan by the fact that it is shorter in length, is often made from heavier suiting fabrics, and by the presence of a lining.', 70000, 1),
(4, 4, 'Saree', 'bride', 'Red saris are the traditional garment choice for brides in Indian culture. Sari fabric is also traditionally silk. Over time, color options and fabric choices for Indian brides have expanded. Today fabrics like crÃªpe, Georgette, tissue and satin are used, and colors have been expanded to include gold, pink, orange, maroon, brown, and yellow as well. Indian brides in Western countries often wear the sari at the wedding ceremony and change into other traditional Indian wear afterwards.', 50000, 1),
(5, 4, 'Lehenga', 'bride', 'Lehenga or lehnga is a form of full ankle-length skirt worn by women from the Indian subcontinent which is long, embroidered and pleated. It is worn as the bottom portion of a Gagra choli or Langa Voni. It is secured at the waist and leaves the lower back and midriff bare. In the Indian subcontinent, various types of traditional embroidery work are done on lehenga, with Gota patti embroidery being one of popular types for the festivals and weddings.', 75000, 1),
(6, 4, 'Gown', 'bride', 'A wedding dress or wedding/bridal gown is the clothing worn by a bride during a wedding ceremony. Color, style and ceremonial importance of the gown can depend on the religion and culture of the wedding participants. In Western cultures, brides often choose white wedding dress, which was made popular by Queen Victoria in the 19th century. In eastern cultures, brides often choose red to symbolize auspiciousness.', 80000, 1),
(7, 4, 'Red Gown', 'bride', 'A wedding dress or wedding/bridal gown is the clothing worn by a bride during a wedding ceremony. Color, style and ceremonial importance of the gown can depend on the religion and culture of the wedding participants. In Western cultures, brides often choose white wedding dress, which was made popular by Queen Victoria in the 19th century. In eastern cultures, brides often choose red to symbolize auspiciousness', 75000, 1),
(9, 4, 'Floral Lehenga', 'bride', 'Lehenga or lehnga is a form of full ankle-length skirt worn by women from the Indian subcontinent which is long, embroidered and pleated. It is worn as the bottom portion of a Gagra choli or Langa Voni. It is secured at the waist and leaves the lower back and midriff bare. In the Indian subcontinent, various types of traditional embroidery work are done on lehenga, with Gota patti embroidery being one of popular types for the festivals and weddings.', 75000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hall_decor`
--

CREATE TABLE `tbl_hall_decor` (
  `hall_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `decor_type` varchar(200) NOT NULL,
  `stage_dec_name` varchar(200) NOT NULL,
  `stage_description` varchar(1000) NOT NULL,
  `stage_price` int(200) NOT NULL,
  `stage_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hall_decor`
--

INSERT INTO `tbl_hall_decor` (`hall_id`, `package_id`, `decor_type`, `stage_dec_name`, `stage_description`, `stage_price`, `stage_status`) VALUES
(1, 2, 'Theme Decoration', 'Fairytale Wedding', 'Choose an outdoor location or convert your indoor wedding venue into a fairytale dream idea. This means use chandeliers, flowers and starry lights for your stage decorations to get a fantasy world look. Consult your Wedding planner to have swans in an artificial lake for that extra edge. Put boards and placards with signs like â€œwelcome to a land far far awayâ€, â€œCinderellaâ€™s bacheloretteâ€ or â€œElsaâ€™s Mehndiâ€. Give fun wigs of long hair on pool party to your guests to look like Rapunzel. Soft colours like white, pink, peach or pastels for your decor.', 50000, 1),
(2, 2, 'Theme Decoration', 'Royal Wedding', 'For a royal wedding, nothing less than a majestic palace would do, as your wedding venue. Find yours in a heritage property, a hotel resort, an outdoor location or even a popular destination wedding location (we recommend reading up on these for a Destination Wedding in Udaipur). Add a little drama to your royal endeavour. Make bridal or groomâ€™s entries with traditional grand announcements. You can go for live Shehnai and Nagada players instead of a DJ to fit in the theme', 70000, 1),
(3, 2, 'Theme Decoration', 'Green Wedding', 'Couples are increasingly opting for a green wedding as it gives them a chance to do something for the society while they celebrate their love. Some ideas: Choose an eco-friendly location with minimal waste or need for extra resources. Go for Dupattas, drapes, saris and stoles for your wedding decor. Use candles, earthen lamps, oil lanterns and glass reflectors as a source of lights.', 45000, 1),
(4, 2, 'Floral Decoration', 'Flower Backdrop', 'A floor-to-ceiling arrangement of greenery and color-coordinated blooms set the scene for some pretty amazing ceremony photos. We love the urban contrast between the exposed industrial-looking walls, the garden-chic blooms and crystal chandeliers.', 45000, 1),
(5, 2, 'Floral Decoration', 'White Flowers', 'Color, style and ceremonial importance of the gown can depend on the religion and culture of the wedding participants. In Western cultures, brides often choose white wedding dress, which was made popular by Queen Victoria in the 19th century. In eastern cultures, brides often choose red to symbolize auspiciousness', 45000, 1),
(6, 2, 'Floral Decoration', 'Red Roses', ' The red rose began its illustrious symbolic history in Greek and Roman iconography, where it was tied to Aphrodite, or Venus, the goddess of love. Later, in early Christian times it became associated with the virtue of Virgin Mary.', 70000, 1),
(7, 2, 'Event Lighting', 'Spotlighting', ' Shift attendeesâ€™ focus to speakers or guests of honor with spotlighting. Spotlights also can be used to light stages, runways and aisles.', 60000, 1),
(8, 2, 'Event Lighting', 'DIY Jars', '       A perfect budget idea that you can make yourself that can light an altar, outdoor space or even act as simple table decor. Plus you could opt for different colours and add a layer of protection by adding a lid if using outside and using battery operated lights (just make sure they donâ€™t get too hot!)', 65000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(20) NOT NULL,
  `item_img_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `image_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `item_img_id`, `package_id`, `image`, `image_status`) VALUES
(1, 1, 1, 'non4.jpg', 1),
(2, 2, 1, 'nonveg5.jpg', 1),
(3, 3, 1, 'non1.jpg', 1),
(4, 4, 1, 'nonveg2.jpg', 1),
(5, 5, 1, 'food3.jpg', 1),
(6, 6, 1, 'veg1.jpg', 1),
(7, 7, 1, 'veg5.jpg', 1),
(10, 8, 1, 'snack1.jpg', 1),
(11, 9, 1, 'samosa2.jpg', 1),
(13, 11, 1, 'snack6.jpg', 1),
(14, 12, 1, 'peda1.jpg', 1),
(16, 1, 2, 'decor3.jpg', 1),
(17, 2, 2, 'stage14.jpg', 1),
(18, 3, 2, 'green.jpg', 1),
(20, 4, 2, 'flower3.jpg', 1),
(22, 5, 2, 'dec2.jpg', 1),
(23, 6, 2, 'stage5.jpg', 1),
(24, 7, 2, '5spotlighting.JPG', 1),
(25, 8, 2, 'jar.jpg', 1),
(26, 1, 3, 'photo3.jpg', 1),
(27, 2, 3, 'stu1.jpg', 1),
(28, 3, 3, 'photo1.jpg', 1),
(29, 4, 3, 'ph2.jpg', 1),
(30, 5, 3, 'wed5.jpeg', 1),
(32, 1, 4, 'groom7.jpg', 1),
(33, 2, 4, 'groom4.JPG', 1),
(34, 3, 4, 'groom1.jpg', 1),
(35, 4, 4, 'bride4.jpeg', 1),
(36, 5, 4, 'bride2.jpg', 1),
(37, 6, 4, 'g3.jpg', 1),
(38, 7, 4, 'g2.jpg', 1),
(47, 15, 1, 'curry3.jpg', 1),
(48, 15, 1, 'curry4.jpg', 0),
(51, 6, 2, 'flower1.JPG', 0),
(53, 5, 3, 'photo11.jpg', 0),
(55, 5, 4, 'bride7.jpg', 0),
(57, 3, 1, 'meals1.jpeg', 0),
(58, 9, 1, 'Samosa1.jpg', 0),
(60, 9, 1, 'snack2.jpg', 0),
(61, 2, 2, 'royal.jpg', 0),
(62, 9, 4, 'blue2.jpg', 1),
(63, 9, 4, 'blue1.jpg', 0),
(64, 9, 4, 'blue3.jpg', 0),
(65, 9, 4, 'blue4.jpg', 0),
(66, 7, 3, 'bride4.jpeg', 1),
(67, 1, 3, 'studio1.jpg', 0),
(68, 1, 3, 'wed2.jpeg', 0),
(69, 4, 3, 'photo15.jpg', 0),
(70, 4, 3, 'food2.jpg', 0),
(71, 3, 3, 'photo13.jpg', 0),
(72, 2, 3, 'st8.jpg', 0),
(73, 8, 2, 'jars.jpg', 0),
(74, 7, 2, 'lights.jpg', 0),
(76, 5, 2, 'flo1.jpg', 0),
(77, 4, 2, 'flower4.jpg', 0),
(78, 3, 2, 'flower4.jpg', 0),
(79, 2, 2, 'stage10.jpg', 0),
(80, 1, 2, 'decor2.jpg', 0),
(81, 7, 4, 'redgown1.jpg', 0),
(82, 6, 4, 'g1.jpg', 0),
(83, 5, 4, 'br1.jpg', 0),
(84, 3, 4, 'groom12.jpg', 0),
(85, 1, 4, 'groom6.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `login_status` int(10) NOT NULL,
  `login_role` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `login_status`, `login_role`) VALUES
(1, 'reshmar@gmail.com', '9612b90c543109602e08253ae0db0d1f', 1, 1),
(2, 'appu@gmail.com', '76d1574c42e995d9203a459c8f579f4c', 1, 2),
(3, 'ravi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 1, 2),
(14, 'merinmarybabu1995@gmail.com', '834540efae200e7b2d7668c8392e5571', 1, 2),
(15, 'raju@gmail.com', '03c017f682085142f3b60f56673e22dc', 1, 2),
(18, 'reshmar246@gmail.com', '09b9319a3e65dfc85e7d16949f6f07b7', 1, 2),
(23, 'ram@gmail.com', 'f5ab900ca6d77296a4ccd231a4a82c4b', 1, 3),
(24, 'ammu@gmail.com', 'f5ab900ca6d77296a4ccd231a4a82c4b', 1, 3),
(26, 'ancel@gmail.com', '6af4618d1da0bcbeb58cde41005abcef', 1, 3),
(27, 'arun@gmail.com', 'e55b38d2364ee37c17cb2b061f601e7f', 1, 2),
(28, 'gokul@gmail.com', 'd3f4327ba6ba65cb53da57fe4ac39097', 1, 3),
(29, 'athira@gmail.com', 'b5d97e6cf3e09cb1e3a66edbf55e4af3', 1, 3),
(30, 'aaron@gmail.com', 'ac172404193db6c464a3ad2c87431dd0', 1, 3),
(31, 'rohan@gmail.com', 'b3e83352278f5301ac7ad77a0d58a8c2', 1, 3),
(32, 'syamgopi@gmail.com', '4e973aedc00f32e1bbea373bc488b2b7', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `otpid` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `status` int(10) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`otpid`, `email`, `otp`, `status`, `count`) VALUES
(18, 'reshmar246@gmail.com', '792380', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `package_id` int(20) NOT NULL,
  `package_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`package_id`, `package_name`) VALUES
(1, 'Catering'),
(2, 'Hall Decoration'),
(3, 'Studio'),
(4, 'Dress');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paycard_details`
--

CREATE TABLE `tbl_paycard_details` (
  `paycard_detail_id` int(20) NOT NULL,
  `pay_type` varchar(200) NOT NULL,
  `pay_card_no` bigint(200) NOT NULL,
  `pay_expiry_month` varchar(200) NOT NULL,
  `pay_expiry_year` varchar(200) NOT NULL,
  `pay_card_holder_name` varchar(200) NOT NULL,
  `pay_card_cvv` int(200) NOT NULL,
  `pay_balance` int(200) NOT NULL,
  `pay_card_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_paycard_details`
--

INSERT INTO `tbl_paycard_details` (`paycard_detail_id`, `pay_type`, `pay_card_no`, `pay_expiry_month`, `pay_expiry_year`, `pay_card_holder_name`, `pay_card_cvv`, `pay_balance`, `pay_card_status`) VALUES
(1, 'debit card', 9876987698769876, '3', '2022', 'appu', 987, 1850100, 1),
(2, 'debit card', 1234123412341234, '3', '2022', 'ragav', 123, 4705000, 1),
(3, 'debit card', 1111222233334444, '3', '2022', 'reshma', 111, 10187400, 1),
(4, 'debit card', 9999888877776666, '3', '2022', 'employee', 999, 147500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `pay_id` int(20) NOT NULL,
  `paycard_detail_id` int(20) NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amount` varchar(200) NOT NULL,
  `login_id` int(20) NOT NULL,
  `pay_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `paycard_detail_id`, `paid_date`, `paid_amount`, `login_id`, `pay_status`) VALUES
(1, 3, '2019-05-09', '2400', 2, 1),
(2, 3, '2019-05-17', '52500', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_emp`
--

CREATE TABLE `tbl_pay_emp` (
  `pay_emp_id` int(20) NOT NULL,
  `work_assign_id` int(20) NOT NULL,
  `pay_amount` int(200) NOT NULL,
  `pay_emp_date` date NOT NULL,
  `pay_emp_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pay_emp`
--

INSERT INTO `tbl_pay_emp` (`pay_emp_id`, `work_assign_id`, `pay_amount`, `pay_emp_date`, `pay_emp_status`) VALUES
(1, 13, 25000, '2019-05-01', 1),
(2, 12, 22500, '2019-05-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_emp`
--

CREATE TABLE `tbl_register_emp` (
  `reg_emp_id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `emp_phone` bigint(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_address_line1` varchar(200) NOT NULL,
  `company_address_line2` varchar(200) NOT NULL,
  `company_address_line3` varchar(200) NOT NULL,
  `company_pincode` int(200) NOT NULL,
  `license_document` varchar(1000) NOT NULL,
  `package_id` int(20) NOT NULL,
  `company_phone` bigint(200) NOT NULL,
  `emp_reg_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_register_emp`
--

INSERT INTO `tbl_register_emp` (`reg_emp_id`, `login_id`, `emp_name`, `emp_phone`, `company_name`, `company_address_line1`, `company_address_line2`, `company_address_line3`, `company_pincode`, `license_document`, `package_id`, `company_phone`, `emp_reg_status`) VALUES
(5, 23, 'Ram', 9876879887, 'Occasions', 'Anuragam', 'Kottarakara', 'Kollam', 687780, 'Res_org.docx', 2, 8768763773, 1),
(6, 24, 'Ammu', 9876870000, 'Exquisite Catering', 'Sreeragam Complex', 'Ranni', 'Pathanamthitta', 689650, 'Res.docx', 1, 9788733239, 1),
(7, 26, 'Ancel', 9987865652, 'Star Studios', 'Vallayanad Buildings', 'Kumli', 'Idukki', 699999, 'Res.docx', 3, 8087999990, 1),
(10, 28, 'Gokul', 7898876766, 'Moments Catering', 'Mannam Buildings', 'Kottarakara', 'Kollam', 687780, 'Res.docx', 1, 9283767276, 1),
(11, 30, 'Aaron', 9283767276, 'Paris Fashions', 'Paris Plaza', 'Kanjirapally', 'Kottayam', 687780, 'Form_design.docx', 4, 8087865652, 1),
(12, 31, 'Rohan', 9283767276, 'Eventure', 'Golden Buildings', 'Ranni', 'Pathanamthitta', 687989, 'Original_resume.pdf', 2, 8078387878, 1),
(15, 29, 'Athira', 9876655789, 'Darasana Studios', 'Star Complex', 'Kozhencherry', 'Pathanamthitta', 689650, 'resume type(2).docx', 3, 8087865652, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `reg_id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `reg_name` varchar(200) NOT NULL,
  `reg_place` varchar(200) NOT NULL,
  `reg_phone` varchar(200) NOT NULL,
  `reg_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`reg_id`, `login_id`, `reg_name`, `reg_place`, `reg_phone`, `reg_status`) VALUES
(1, 1, 'Reshma R', 'Ranny', '9343433239', 1),
(2, 2, 'Appu A', 'kollam', '9343433239', 1),
(3, 3, 'ravi', 'kottayam', '9876578612', 1),
(10, 14, 'Merin', 'Idukki', '9876546532', 1),
(11, 15, 'Raju', 'kollam', '8657554222', 1),
(14, 18, 'sindhu', 'ranni', '9283767276', 1),
(15, 27, 'Arun', 'Idukki', '9544103818', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `photo_package_name` varchar(200) NOT NULL,
  `photo_package_desc` varchar(1000) NOT NULL,
  `studio_price` int(200) NOT NULL,
  `photo_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `package_id`, `photo_package_name`, `photo_package_desc`, `studio_price`, `photo_status`) VALUES
(1, 3, 'Fairytale', 'Our award winning candid photography, assuming 8-10 hours per day with photographers. Approximately 400-600 images that will form your wedding story â€“ from start to finish, no part of your wedding will be missed! All images will be custom colour corrected and developed based on our signature style. Includes a boudoir shoot which will include you getting ready, and portraits of you on your wedding day. A web album with a selection of highlights and slideshow which you can easily share with friends and family', 100000, 1),
(2, 3, 'The Legend', 'Our award winning candid photography, assuming 8-10 hours per day with photographers. Approximately 400-600 images that will form your wedding story â€“ from start to finish, no part of your wedding will be missed! All images will be custom colour corrected and developed based on our signature style. Includes a boudoir shoot which will include you getting ready, and portraits of you on your wedding day. A web album with a selection of highlights and slideshow which you can easily share with friends and family. A 3-4 hour pre-wedding shoot, anytime between when you book or on your wedding days â€“ based on mutual availability. Weâ€™ll work with you to create memories that are both personal and beautiful. One assistant photographer who can walk around the crowd, taking group pictures of friends and family. Will ensure that all parts of the wedding are documented, and that all your important relatives are covered!', 150000, 1),
(3, 3, 'The Epic', 'Two days of photography, assuming 8-10 hours per day photographers. Approximately 400-600 images that will form your wedding story â€“ from start to finish, no part of your wedding will be missed! All images will be custom colour corrected and developed based on our signature style. Includes a boudoir shoot which will include you getting ready, and portraits of you on your wedding day. A web album with a selection of highlights and slideshow which you can easily share with friends and family. A 3-4 hour pre-wedding shoot, anytime between when you book or on your wedding days â€“ based on mutual availability. Weâ€™ll work with you to create memories that are both personal and beautiful. One assistant photographer who can walk around the crowd, taking group pictures of friends and family. Will ensure that all parts of the wedding are documented, and that all your important relatives are covered. This exquisitely printed and bound coffee table book will include 80-90 pages of memories, an', 200000, 1),
(4, 3, 'Standard Pack', 'Traditional Photography, Videography. The Wedding Album -350 Photos in one Designer Album. Wedding Video- Wedding video covering all events with Customized Music. 5 min. Wedding Montage.', 50000, 1),
(5, 3, 'Elite Pack', 'Traditional Photography, Candid Photography, Videography, Cinematography. Pre/Post Wedding Photo Shoot- 3 hrs. Exclusive Session. 600 Photos in two Designer Albums\r\n100 Photos in Coffee Table Album. Wedding video covering all events with Customized Music. 5 min. Cinematic Wedding Montage.', 120000, 1),
(7, 3, 'ewer', 'werqqqq', 100000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userdetails`
--

CREATE TABLE `tbl_userdetails` (
  `wedding_id` int(20) NOT NULL,
  `wedding_user_id` varchar(1000) NOT NULL,
  `login_id` int(20) NOT NULL,
  `bride_name` varchar(200) NOT NULL,
  `groom_name` varchar(200) NOT NULL,
  `bride_address` varchar(200) NOT NULL,
  `groom_address` varchar(200) NOT NULL,
  `bride_photo` varchar(1000) NOT NULL,
  `groom_photo` varchar(1000) NOT NULL,
  `religion_name` varchar(200) NOT NULL,
  `wed_date` date NOT NULL,
  `wed_hall` varchar(200) NOT NULL,
  `wed_hall_address1` varchar(200) NOT NULL,
  `wed_hall_address2` varchar(200) NOT NULL,
  `wed_hall_pincode` int(200) NOT NULL,
  `wedding_status` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userdetails`
--

INSERT INTO `tbl_userdetails` (`wedding_id`, `wedding_user_id`, `login_id`, `bride_name`, `groom_name`, `bride_address`, `groom_address`, `bride_photo`, `groom_photo`, `religion_name`, `wed_date`, `wed_hall`, `wed_hall_address1`, `wed_hall_address2`, `wed_hall_pincode`, `wedding_status`) VALUES
(1, '1SeethaRam', 2, 'Seetha', 'Ram', 'New Delhi', 'New Delhi', 'face26.jpg', 'face12.jpg', 'Hindu', '2019-01-19', 'Aryas Auditorium', 'New Street', 'Delhi', 689786, 1),
(2, '2AchuAromal', 2, 'Achu', 'Aromal', 'Ranni', 'Kottayam', 'face2.jpg', 'face3.jpg', 'Hindu', '2019-06-19', 'Sowparnika', 'Kanjirapally', 'Kottayam', 678987, 0),
(3, '3NeemaRoy', 14, 'Neema', 'Roy', 'Kumli', 'Kumli', 'face5.jpg', 'face19.jpg', 'Christian', '2019-06-20', 'Valayanad', 'Kumli', 'Idukki', 678787, 0),
(4, '4AlphyArun', 27, 'Alphy', 'Arun', 'Idukki', 'Idukki', 'face10.jpg', 'face21.jpg', 'Christian', '2019-06-19', 'Star Auditorium', 'Kanjirapally', 'Kottayam', 690790, 0),
(5, '5AnnaAaron', 14, 'Anna', 'Aaron', 'Kumli', 'Kumli', 'face23.jpg', 'face27.jpg', 'Christian', '2019-08-29', 'Star Auditorium', 'Kumli', 'Idukki', 689760, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_assign`
--

CREATE TABLE `tbl_work_assign` (
  `work_assign_id` int(20) NOT NULL,
  `wedding_id` int(20) NOT NULL,
  `package_id` int(20) NOT NULL,
  `reg_emp_id` int(20) NOT NULL,
  `work_paid_status` int(20) NOT NULL,
  `work_assign_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work_assign`
--

INSERT INTO `tbl_work_assign` (`work_assign_id`, `wedding_id`, `package_id`, `reg_emp_id`, `work_paid_status`, `work_assign_status`) VALUES
(11, 1, 1, 6, 0, 1),
(12, 1, 2, 5, 1, 1),
(13, 1, 3, 7, 1, 1),
(15, 2, 2, 5, 0, 0),
(16, 3, 3, 7, 0, 1),
(18, 3, 2, 5, 0, 1),
(19, 4, 2, 5, 0, 1),
(20, 2, 1, 10, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_add_cart`
--
ALTER TABLE `tbl_add_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_catering`
--
ALTER TABLE `tbl_catering`
  ADD PRIMARY KEY (`catering_id`);

--
-- Indexes for table `tbl_dress`
--
ALTER TABLE `tbl_dress`
  ADD PRIMARY KEY (`dress_id`);

--
-- Indexes for table `tbl_hall_decor`
--
ALTER TABLE `tbl_hall_decor`
  ADD PRIMARY KEY (`hall_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`otpid`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tbl_paycard_details`
--
ALTER TABLE `tbl_paycard_details`
  ADD PRIMARY KEY (`paycard_detail_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `tbl_pay_emp`
--
ALTER TABLE `tbl_pay_emp`
  ADD PRIMARY KEY (`pay_emp_id`);

--
-- Indexes for table `tbl_register_emp`
--
ALTER TABLE `tbl_register_emp`
  ADD PRIMARY KEY (`reg_emp_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indexes for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  ADD PRIMARY KEY (`wedding_id`);

--
-- Indexes for table `tbl_work_assign`
--
ALTER TABLE `tbl_work_assign`
  ADD PRIMARY KEY (`work_assign_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_add_cart`
--
ALTER TABLE `tbl_add_cart`
  MODIFY `cart_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_catering`
--
ALTER TABLE `tbl_catering`
  MODIFY `catering_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_dress`
--
ALTER TABLE `tbl_dress`
  MODIFY `dress_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_hall_decor`
--
ALTER TABLE `tbl_hall_decor`
  MODIFY `hall_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `otpid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `package_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_paycard_details`
--
ALTER TABLE `tbl_paycard_details`
  MODIFY `paycard_detail_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `pay_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pay_emp`
--
ALTER TABLE `tbl_pay_emp`
  MODIFY `pay_emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_register_emp`
--
ALTER TABLE `tbl_register_emp`
  MODIFY `reg_emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  MODIFY `wedding_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_work_assign`
--
ALTER TABLE `tbl_work_assign`
  MODIFY `work_assign_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
