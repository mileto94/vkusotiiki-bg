-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2016 at 07:30 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vkusotiiki-bg`
--

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `url`) VALUES
(1, 'demo-img', '/images/demo-img.jpg'),
(2, 'пататник', 'http://smolyanpress.net/wp-content/uploads/2011/03/patatnik.jpg'),
(4, 'баклава', 'http://www.zajenata.bg/images/34/fb_382da41914c50f14d8ae9c92eb216ba3.jpg'),
(5, 'шопска салата', 'http://kulinar.bg/pictures/19518_398__5.jpg'),
(6, 'пилешка супа', 'http://recepturnik.info/sites/default/files/shicken_soup.png'),
(7, 'телешко варено', 'http://4.bp.blogspot.com/-_NvMDhMeJcY/UvHmVUlxiiI/AAAAAAAAAGs/q3AVB4z4G6o/s1600/77.jpg'),
(8, 'лимонада', 'http://www.gotvetesmen.com/gallery/albums/userpics/10005/Domashna_limonada.jpg');


--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Благоевград'),
(2, 'Бургас'),
(3, 'Велико Търново'),
(4, 'Видин'),
(5, 'Враца'),
(6, 'Габрово'),
(7, 'Добрич'),
(8, 'Кърджали'),
(9, 'Кюстендил'),
(10, 'Ловеч'),
(11, 'Монтана'),
(12, 'Пазарджик'),
(13, 'Перник'),
(14, 'Плевен'),
(15, 'Пловдив'),
(16, 'Разград'),
(17, 'Русе'),
(18, 'Силистра'),
(19, 'Сливен'),
(20, 'Смолян'),
(21, 'София'),
(22, 'Стара Загора'),
(23, 'Търговище'),
(24, 'Хасково'),
(25, 'Шумен'),
(26, 'Ямбол');

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `location`, `email`, `image`) VALUES
(42, 'Християн', 'Димитров', '11', 11, 'hrd@abv.bg', 1),
(43, 'Слави', 'Кадиев', 'ttttttt', 17, 'slav@abv.bg', 1),
(44, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(58, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(59, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(60, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1);

--
-- Dumping data for table `business_user`
--

INSERT INTO `business_user` (`id`, `address`, `telephone_num`, `user`) VALUES
(1, 'ул. Витоша 5', '0878992343', 42),
(2, 'ул. Иван Вазов', '0988888888', 43);

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'салати'),
(2, 'супи'),
(3, 'основи'),
(4, 'десерти'),
(5, 'печива'),
(6, 'напитки'),
(7, 'други');


--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `name`) VALUES
(1, 'сарми'),
(2, 'мусака'),
(3, 'гювеч'),
(4, 'баклава'),
(6, 'ориз'),
(7, 'картофи'),
(8, 'пататник'),
(9, 'капама'),
(10, 'шопска салата'),
(11, 'пилешка супа'),
(12, 'телешко варено'),
(13, 'лимонада');


--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `is_allergic`, `type`) VALUES
(1, 'банан', 0, 'fruit'),
(2, 'яйце', 1, 'other'),
(3, 'портокал', 0, 'fruit'),
(4, 'сирене', 1, 'diary'),
(6, 'картофи', 0, 'vegetable'),
(8, 'олио', 0, 'other'),
(10, 'лук', 0, 'vegetable'),
(12, 'масло', 0, 'diary'),
(14, 'точени кори', 0, 'other'),
(15, 'брашно', 0, 'other'),
(16, 'бакпулвер', 0, 'other'),
(17, 'прясно мляко', 1, 'diary'),
(18, 'захар', 0, 'seasoning'),
(19, 'сол', 0, 'seasoning'),
(20, 'лимон', 0, 'fruit'),
(21, 'орехи', 0, 'nut'),
(22, 'шамфъстък', 0, 'nut'),
(23, 'краставица', 0, 'vegetable'),
(24, 'домат', 0, 'vegetable'),
(25, 'чушка', 0, 'vegetable'),
(26, 'маслини', 0, 'other'),
(27, 'пилешко месо', 0, 'meat'),
(28, 'фиде', 0, 'other'),
(29, 'кисело мляко', 1, 'diary'),
(30, 'морков', 0, 'vegetable'),
(31, 'магданоз', 0, 'other'),
(32, 'телешко месо', 0, 'meat'),
(33, 'черен пипер', 0, 'other'),
(34, 'мента', 0, 'other');


--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `region`, `time`, `category`, `user`, `is_approved`, `dish`, `difficulty`, `ingredients`, `img`, `serving`, `description`, `added_on`, `last_edited_on`) VALUES
(24, 'some recipe 1\r\n', 3, 11, 2, 42, 0, 1, 2, 1, 1, 3, 'some', '2026-06-16 11:45:00', '2026-06-16 11:45:00'),
(27, 'updated recipe', 5, 12, 2, 43, 1, 3, 4, 1, 1, 3, 'new description', '2027-06-16 11:45:00', '2027-06-16 21:45:00'),
(29, 'recipe 3', 12, 19, 2, 44, 0, 3, 1, 1, 1, 4, 'new description', '2021-06-16 11:45:00', '2021-06-16 21:45:00'),
(33, 'Родопски пататник', 20, 120, 5, 42, 0, 8, 1, 1, 2, 12, 'Настъргват се с ренде предварително обелени картофи, като се оцеждат от сока им. В сместа от настъргани картофи се чука едно или две яйца в зависимост от големината на пататника. За плънка вътре може да се постави сварено ситно нарязано месо или сирене. Към сместа се прибавя настърган кромид лук, черен пипер и джоджен.', '2016-06-27 14:14:41', '2016-06-29 07:08:51'),
(35, 'Баклава с шамфъстък', 8, 150, 4, 60, 1, 4, 5, 1, 4, 50, 'Омесва се тесто без маслото. Втасва 45-50 минути. Разделя се на топчета с големина на ябълка. Плънката се разбърква до хомогенност. Всяко топче се разточва на тънък лист, за да не лепне се използва нишесте. Намазва се обилно с разтопено масло. Наръсва се с плънката. Навива се отново на точилката. Събира се от двата края към средата и точилката се изважда. Получената формичка се поставя в намазана с масло тавичка. По този начин се приготвят всички топчета тесто. Намазва се обилно с масло. Пече се 30-35 минути на 180-190 С. Когато е готова се полива с горещия сироп (сварени 2 и 1/2 ч.ч. вода с посочените продукти) и се допича 2-3 минути, за да поеме сиропа. Сервира се след 2-3 часа, за да омекне.', '2016-06-30 20:11:35', '2016-06-30 20:11:35'),
(36, 'Класическа шопска салата', 13, 10, 1, 42, 0, 10, 1, 1, 5, 4, '1\r\nОбелете краставицата и лука. Измийте всички зеленчуци и ги нарежете на кубчета.\r\n2\r\nНастържете сиренето на едро ренде и започнете "сглобяването" на салатата.\r\n3\r\nСложете зеленчуците, добавете и маслините за украса, поръсете с настърганото сирене.\r\n4\r\nОвкусете с подправките и олиото. Сервирайте салатата неразбъркана. По желание можете да сложите и ситно нарязан пресен магданоз.\r\n5\r\nШопската салата е любима на българина и си я хапваме с удоволствие по всяко време на годината.', '2016-06-28 11:19:00', '2016-06-30 10:32:25'),
(37, 'Пилешка супа', 2, 45, 2, 44, 0, 11, 1, 1, 6, 6, '1.Пилешкото месо се сварява и обезкостява.\r\n\r\n2.Бульонът се прецежда и месото се връща обратно.\r\n\r\n3.Добавят се картофите нарязани на кубчета и настъргания морков.\r\n\r\n4.Супата ври десетина минути и след това се прибавя фидето.\r\n\r\n5.Ври още десет минути, овкусява се със солта, черния пипер и маслото и се сваля от огъня.\r\n\r\n6.Яйцето се разбива с киселото мляко и лимоновия сок.\r\n\r\n7.Бавно се налива с черпак от супата в съда със застройката, като се разбърква до затопляне на застройката.\r\n\r\n8.Добре подгрятата застройка се връща в тенджерата  при интензивно бъркане за да се избегне пресичане на яйцето..\r\n\r\n9.Супата се поднася поръсена с магданоз.', '2016-07-01 02:23:43', '2016-07-01 02:23:43'),
(38, 'Телешко варено', 10, 90, 3, 43, 1, 12, 4, 10, 7, 10, 'Телешкото месо (400 г) се нарязва на хапки и се вари, докато напълно омекне. Към него, в същия бульон, се добавят нарязаните на едри кубчета картофи (3 бр), нарязаните на колелца моркови (3 бр) и едро нарязаният лук (1 глава). Супата се вари до омекване на зеленчуците. Накрая се добавят подправките, маслото (1 с.л.) и ситно нарязаният пресен магданоз (5 стръка). Телешкото варено се сервира горещо.', '2016-06-24 13:15:00', '2016-06-30 02:22:43'),
(39, 'Домашна лимонада', 12, 30, 6, 43, 1, 13, 1, 23, 8, 6, '\r\nНачин на приготвяне\r\n1\r\nС остър нож или белачка за зеленчуци махнете кората на лимоните, като внимавате да не оставите по лимона горчивата част\r\n2\r\nСипете захарта в половин чаша вода в малка тенджерка, която сложете на котлона. Бъркайте до пълното разтваряне на захарта \r\n3\r\nКогато това стане, махнете от котлона и добавете кората на лимоните. Изчакайте да изстине\r\n4\r\nИзстискайте лимоните, докато получите пресен сок\r\n5\r\nСлед това прецедете сиропа във висока чаша. Добавете половината от лимоновия сок, заедно с малко вода и подслаждайте, докато достигне вашия вкус\r\n6\r\nАко времето е топло, добавете малко лед. Накрая украсете със стръкче мента и се наслаждавайте на домашната си лимонада', '2016-06-30 09:14:00', '2016-06-30 09:14:00');


--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user`, `recipe`, `date`, `comment`) VALUES
(12, 42, 27, '24.06.16', 'hiiiii');

--
-- Dumping data for table `ingredient_recipe`
--

INSERT INTO `ingredient_recipe` (`id`, `recipe`, `ingredient`, `quantity`, `unit`) VALUES
(1, 33, 4, 200, 'г.'),
(5, 33, 6, 1, 'кг.'),
(6, 33, 8, 2, 'с.л.'),
(7, 33, 10, 1, 'бр.'),
(8, 33, 12, 100, 'г.'),
(9, 35, 15, 500, 'г.'),
(10, 35, 16, 1, 'бр.'),
(11, 35, 12, 50, 'г.'),
(12, 35, 17, 1, 'ч.ч.'),
(13, 35, 2, 1, 'бр.'),
(14, 35, 18, 1, 'ч.л.'),
(15, 35, 20, 1, 'бр.'),
(16, 35, 21, 300, 'г.'),
(17, 35, 22, 200, 'г.'),
(18, 36, 23, 1, 'бр.'),
(19, 36, 24, 3, 'бр.'),
(20, 36, 25, 2, 'бр.'),
(21, 36, 10, 1, 'бр.'),
(22, 36, 4, 200, 'г.'),
(23, 36, 26, 3, 'бр.'),
(24, 36, 8, 1, 'с.л.'),
(25, 36, 19, 1, 'ч.л.'),
(26, 37, 27, 300, 'г.'),
(27, 37, 6, 300, 'г.'),
(28, 37, 28, 100, 'г.'),
(29, 37, 12, 50, 'г.'),
(30, 37, 29, 1, 'с.л.'),
(31, 37, 2, 1, 'бр.'),
(32, 37, 20, 1, 'бр.'),
(33, 37, 19, 1, 'с.л.'),
(34, 37, 30, 1, 'бр.'),
(36, 37, 31, 1, 'бр.'),
(37, 38, 32, 300, 'г.'),
(38, 38, 6, 3, 'бр.'),
(39, 38, 30, 3, 'бр.'),
(40, 38, 10, 1, 'бр.'),
(41, 38, 31, 1, 'бр.'),
(42, 38, 12, 1, 'с.л.'),
(43, 38, 19, 1, 'с.л.'),
(44, 38, 33, 1, 'ч.л.'),
(45, 39, 20, 10, 'бр.'),
(46, 39, 18, 100, 'г.'),
(47, 39, 34, 2, 'бр.');

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user`, `recipe`, `rating`) VALUES
(11, 42, 24, 3),
(14, 42, 27, 4),
(15, 42, 27, 4),
(16, 42, 27, 4),
(17, 42, 27, 4),
(20, 42, 27, 1),
(21, 42, 27, 1),
(22, 42, 27, 1),
(24, 42, 24, 1),
(25, 42, 29, 5),
(26, 42, 35, 3),
(27, 43, 36, 5),
(28, 42, 36, 2),
(29, 43, 37, 3),
(30, 42, 37, 4),
(31, 43, 38, 1),
(32, 42, 38, 3),
(33, 43, 39, 4),
(34, 42, 39, 5);

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Благоевград'),
(2, 'Бургас'),
(3, 'Велико Търново'),
(4, 'Видин'),
(5, 'Враца'),
(6, 'Габрово'),
(7, 'Добрич'),
(8, 'Кърджали'),
(9, 'Кюстендил'),
(10, 'Ловеч'),
(11, 'Монтана'),
(12, 'Пазарджик'),
(13, 'Перник'),
(14, 'Плевен'),
(15, 'Пловдив'),
(16, 'Разград'),
(17, 'Русе'),
(18, 'Силистра'),
(19, 'Сливен'),
(20, 'Смолян'),
(21, 'София'),
(22, 'Стара Загора'),
(23, 'Търговище'),
(24, 'Хасково'),
(25, 'Шумен'),
(26, 'Ямбол');

--
-- Dumping data for table `special_recipe`
--

INSERT INTO `special_recipe` (`id`, `user`, `recipe`) VALUES
(1, 42, 27);

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `location`, `email`, `image`) VALUES
(42, 'Християн', 'Димитров', '11', 11, 'hrd@abv.bg', 1),
(43, 'Слави', 'Кадиев', 'ttttttt', 17, 'slav@abv.bg', 1),
(44, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(58, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(59, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1),
(60, 'hhhh', 'jjjjjj', 'rrrrrrr', 1, 'ggggg', 1);

