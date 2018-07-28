-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2018 at 04:27 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(6, 'interface', 'admin'),
(7, 'bookstore', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`cat_id`, `cat_title`) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Comics'),
(4, 'Textbook');

-- --------------------------------------------------------

--
-- Table structure for table `book_detail`
--

CREATE TABLE `book_detail` (
  `book_id` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `book_publisher` varchar(255) NOT NULL,
  `book_stock` varchar(255) NOT NULL,
  `publication_date` datetime NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_detail`
--

INSERT INTO `book_detail` (`book_id`, `isbn`, `book_title`, `cat_id`, `subcat_id`, `book_author`, `book_publisher`, `book_stock`, `publication_date`, `description`, `image`, `price`) VALUES
(2, '00994774675', 'BRAVE NEW WORLD', 1, 1, 'ALDOUS HUXLEY', 'Vintage Books USA', '240', '2011-07-07 00:00:00', 'Far in the future, the World Controllers have created the ideal society. Through clever use of genetic engineering, brainwashing and recreational sex and drugs all its members are happy consumers. Bernard Marx seems alone in feeling discontent. Harbouring an unnatural desire for solitude, and a perverse distaste for the pleasures of compulsory promiscuity, Bernard has an ill-defined longing to break free. A visit to one of the few remaining Savage Reservations where the old, imperfect life still continues, may be the cure for his distress-Huxley\'s ingenious fantasy of the future sheds a blazing light on the present and is considered to be his most enduring masterpiece.', 'JTbor6A6JKlbnk1AhAvs31.jpg', 578),
(3, '0735224293', 'Little Fires Everywhere', 1, 3, 'Celeste Ng', 'Penguin Press', '129', '2017-09-17 00:00:00', 'In Shaker Heights, a placid, progressive suburb of Cleveland, everything is meticulously planned – from the layout of the winding roads, to the colours of the houses, to the successful lives its residents will go on to lead. And no one embodies this spirit more than Elena Richardson, whose guiding principle is playing by the rules.  Enter Mia Warren – an enigmatic artist and single mother – who arrives in this idyllic bubble with her teenage daughter Pearl, and rents a house from the Richardsons. Soon Mia and Pearl become more than just tenants: all four Richardson children are drawn to the alluring mother-daughter pair. But Mia carries with her a mysterious past, and a disregard for the rules that threatens to upend this carefully ordered community.  When the Richardsons\' friends attempt to adopt a Chinese-American baby, a custody battle erupts that dramatically divides the town and puts Mia and Mrs. Richardson on opposing sides. Suspicious of Mia and her motives, Mrs. Richardson becomes determined to uncover the secrets in Mia\'s past. But her obsession will come at unexpected and devastating costs to her own family – and Mia\'s.  Little Fires Everywhere explores the weight of long-held secrets and the ferocious pull of motherhood-and the danger of believing that planning and following the rules can avert disaster, or heartbreak.', '342732361.jpg', 600),
(4, '0385542232', 'Rich People Problems', 1, 1, 'Kevin Kwan', 'Doubleday', '139', '2017-05-23 00:00:00', 'When Nicholas Young hears that his grandmother, Su Yi, is on her deathbed, he rushes to be by her bedside--but he\'s not alone. It seems the entire Shang-Young clan has convened from all corners of the globe, ostensibly to care for their matriarch but truly to stake claim on the massive fortune that Su Yi controls.   With each family member secretly fantasizing about getting the keys to Tyersall Park--a trophy estate on 64 prime acres in the heart of Singapore--the place becomes a hotbed of intrigue and Nicholas finds himself blocked from entering the premises.   As relatives claw over heirlooms, Astrid Leong is at the center of her own storm, desperately in love with her old sweetheart Charlie Wu, but tormented by his ex-wife--a woman hell bent on destroying Astrid\'s reputation and relationship. Meanwhile Kitty Pong, married to billionaire Jack Bing, finds a formidable opponent in his fashionista daughter, Colette.', '29864343.jpg', 540),
(5, '1449486797', 'The Sun and Her Flowers', 2, 4, 'Rupi Kaur', 'Andrews McMeel Publishing', '22', '2017-11-03 00:00:00', 'From Rupi Kaur, the #1 New York Times bestselling author of milk and honey, comes her long-awaited second collection of poetry. A vibrant and transcendent journey about growth and healing. Ancestry and honoring one’s roots. Expatriation and rising up to find a home within yourself.  Divided into five chapters and illustrated by Kaur, the sun and her flowers is a journey of wilting, falling, rooting, rising, and blooming. A celebration of love in all its forms.', '35606560.jpg', 365),
(6, '1423160932', 'The Ship of the Dead (Magnus Chase and the Gods of Asgard #3)', 1, 5, 'Rick Riordan', 'Disney-Hyperion', '108', '2017-10-03 00:00:00', 'Magnus Chase, a once-homeless teen, is a resident of the Hotel Valhalla and one of Odin\'s chosen warriors. As the son of Frey, the god of summer, fertility, and health, Magnus isn\'t naturally inclined to fighting. But he has strong and steadfast friends, including Hearthstone the elf, Blitzen the dwarf, and Samirah the Valkyrie, and together they have achieved brave deeds, such as defeating Fenris Wolf and battling giants for Thor\'s hammer, Mjolnir. Now Magnus and his crew must sail to the farthest borders of Jotunheim and Niflheim in pursuit of Asgard\'s greatest threat. Will they succeed in their perilous journey, or is Ragnarok lurking on the horizon?', '28006120.jpg', 470),
(7, '1408857901', 'A Court of Wings and Ruin (A Court of Thorns and Roses #3)', 1, 5, 'Sarah J. Maas', 'Bloomsbury Childrens Books', '34', '2017-05-02 00:00:00', 'Looming war threatens all Feyre holds dear in the third volume of the #1 New York Times bestselling A Court of Thorns and Roses series.  Feyre has returned to the Spring Court, determined to gather information on Tamlin\'s manoeuvrings and the invading king threatening to bring Prythian to its knees. But to do so she must play a deadly game of deceit – and one slip may spell doom not only for Feyre, but for her world as well.  As war bears down upon them all, Feyre must decide who to trust amongst the dazzling and lethal High Lords – and hunt for allies in unexpected places.   In this thrilling third book in the #1 New York Times bestselling series from Sarah J. Maas, the earth will be painted red as mighty armies grapple for power over the one thing that could destroy them all.', '23766634.jpg', 360),
(8, '0156012197', 'Le Petit Prince: La planète des Globus', 1, 1, 'Antoine de Saint-Exupéry ', 'Harcourt, Inc.', '23', '2000-02-09 00:00:00', 'Moral allegory and spiritual autobiography, The Little Prince is the most translated book in the French language. With a timeless charm it tells the story of a little boy who leaves the safety of his own tiny planet to travel the universe, learning the vagaries of adult behaviour through a series of extraordinary encounters. His personal odyssey culminates in a voyage to Earth and further adventures.', '157993.jpg', 900),
(9, '0618260307', 'The Hobbit or There and Back Again', 1, 1, ' J.R.R. Tolkien', 'Houghton Mifflin ', '12', '1937-02-01 00:00:00', 'In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.', '5907.jpg', 1234),
(10, '9781936196678', 'Lessons In Camouflage', 2, 4, ' Martin Ott ', ' C&R Press', '8', '2018-01-06 00:00:00', 'Martin Ott’s first two poetry collections won the De Novo and Sandeen Prizes. In his third collection LESSONS IN CAMOUFLAGE, he continues to explore the theme of casting a light on hidden truths. The book spans his turmoil as a U.S. Army interrogator to conflicts personal in nature: divorce, death, and determination to uncover the mysteries of what makes life worth living.', '38924742.jpg', 980),
(11, '1506703933', 'A Study in Emerald', 3, 6, ' Neil Gaiman', 'Dark Horse Books', '11', '2018-06-27 00:00:00', 'This supernatural mystery set in the world of Sherlock Holmes and Lovecraft\'s Cthulhu Mythos features a brilliant detective and his partner as they try to solve a horrific murder.', '36709515.jpg', 972),
(12, '34765678097', 'A Dog\'s Purpose', 1, 7, 'W. Bruce Cameron', ' Forge Books', '11', '2010-06-29 00:00:00', 'This is the remarkable story of one endearing dog\'s search for his purpose over the course of several lives. More than just another charming dog story, this touches on the universal quest for an answer to life\'s most basic question: Why are we here? ', '40612404.jpg', 567),
(13, '0679783261', 'Pride and Prejudice', 1, 1, 'Jane Austen', 'Modern Library', '120', '2000-10-10 00:00:00', '\'It is a truth universally acknowledged, that a single man in possession of a good fortune must be in want of a wife.\' Thus memorably begins Jane Austen\'s Pride and Prejudice, one of the world\'s most popular novels. Pride and Prejudice--Austen\'s own \'darling child\'--tells the story of fiercely independent Elizabeth Bennett, one of five sisters who must marry rich, as she confounds the arrogant, wealthy Mr. Darcy. What ensues is one of the most delightful and engrossingly readable courtships known to literature, written by a precocious Austen when she was just twenty-one years old.  Humorous and profound, and filled with highly entertaining dialogue, this witty comedy of manners dips and turns through drawing-rooms and plots to reach an immensely satisfying finale.', '1885.jpg', 456),
(14, '140679239', 'To the Lighthouse', 1, 1, 'Virginia Woolf', 'Harvest Books', '10', '1989-12-27 00:00:00', 'The serene and maternal Mrs. Ramsay, the tragic yet absurd Mr. Ramsay, and their children and assorted guests are on holiday on the Isle of Skye. From the seemingly trivial postponement of a visit to a nearby lighthouse, Woolf constructs a remarkable, moving examination of the complex tensions and allegiances of family life and the conflict between men and women.  As time winds its way through their lives, the Ramsays face, alone and simultaneously, the greatest of human challenges and its greatest triumph--the human capacity for change.', '59716.jpg', 367),
(15, '0142000280', 'Getting Things Done: The Art of Stress-Free Productivity', 4, 8, 'David Allen', 'Penguin Books', '3', '2002-12-31 00:00:00', 'In today\'s world, yesterday\'s methods just don\'t work. In Getting Things Done, veteran coach and management consultant David Allen shares the breakthrough methods for stress-free performance that he has introduced to tens of thousands of people across the country. Allen\'s premise is simple: our productivity is directly proportional to our ability to relax. Only when our minds are clear and our thoughts are organized can we achieve effective productivity and unleash our creative potential.', '1633.jpg', 480),
(16, '0060833459', 'The Effective Executive: The Definitive Guide to Getting the Right Things Done', 4, 8, 'Peter F. Drucker', ' HarperBusiness', '4', '2006-01-03 00:00:00', 'The measure of the executive, Peter F. Drucker reminds us, is the ability to \"get the right things done.\" This usually involves doing what other people have overlooked as well as avoiding what is unproductive. Intelligence, imagination, and knowledge may all be wasted in an executive job without the acquired habits of mind that mold them into results.  Drucker identifies five practices essential to business effectiveness that can, and must, be learned: Managing time Choosing what to contribute to the organization Knowing where and how to mobilize strength for best effect Setting the right priorities Knitting all of them together with effective decision-making Ranging widely through the annals of business and government, Peter F. Drucker demonstrates the distinctive skill of the executive and offers fresh insights into old and seemingly obvious business situations.', '48019.jpg', 675),
(17, '1416562591', 'The White Tiger', 1, 3, 'Aravind Adiga', 'Free Press', '23', '2008-03-31 00:00:00', 'Introducing a major literary talent, The White Tiger offers a story of coruscating wit, blistering suspense, and questionable morality, told by the most volatile, captivating, and utterly inimitable narrator that this millennium has yet seen.   Balram Halwai is a complicated man. Servant. Philosopher. Entrepreneur. Murderer. Over the course of seven nights, by the scattered light of a preposterous chandelier, Balram tells us the terrible and transfixing story of how he came to be a success in life—having nothing but his own wits to help him along. ', '1768603.jpg', 395),
(18, '039480001', 'The Cat in the Hat', 1, 9, 'Dr. Seuss', 'Random House Books for Young Readers ', '5', '1957-04-20 00:00:00', 'Poor Sally and her brother. It\'s cold and wet and they\'re stuck in the house with nothing to do . . . until a giant cat in a hat shows up, transforming the dull day into a madcap adventure and almost wrecking the place in the process! Written by Dr. Seuss in 1957 in response to the concern that \"pallid primers [with] abnormally courteous, unnaturally clean boys and girls\' were leading to growing illiteracy among children, The Cat in the Hat (the first Random House Beginner Book) changed the way our children learn how to read.', '233093.jpg', 270),
(19, '016242814', 'Pachinko', 1, 10, 'Min Jin Lee', 'Grand Central Publishing', '6', '2017-02-07 00:00:00', 'Yeongdo, Korea 1911.  In a small fishing village on the banks of the East Sea, a club-footed, cleft-lipped man marries a fifteen-year-old girl. The couple have one child, their beloved daughter Sunja. When Sunja falls pregnant by a married yakuza, the family face ruin. But then Isak, a Christian minister, offers her a chance of salvation: a new life in Japan as his wife.  Following a man she barely knows to a hostile country in which she has no friends, no home, and whose language she cannot speak, Sunja’s salvation is just the beginning of her story.  Through eight decades and four generations, Pachinko is an epic tale of family, identity, love, death and survival.', '34051011.jpg', 679),
(20, '0553213695', 'The Metamorphosis', 1, 11, 'Franz Kafka', 'Bantam Classics ', '13', '1972-03-10 00:00:00', '\"As Gregor Samsa awoke one morning from uneasy dreams he found himself transformed in his bed into a gigantic insect. He was laying on his hard, as it were armor-plated, back and when he lifted his head a little he could see his domelike brown belly divided into stiff arched segments on top of which the bed quilt could hardly keep in position and was about to slide off completely. His numerous legs, which were pitifully thin compared to the rest of his bulk, waved helplessly before his eyes.\"   With this startling, bizarre, yet surprisingly funny first opening, Kafka begins his masterpiece, The Metamorphosis. It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family, an outsider in his own home, a quintessentially alienated man. A harrowing -- though absurdly comic -- meditation on human feelings of inadequacy, guilt, and isolation, The Metamorphosis has taken its place as one of the most widely read and influential works of twentieth-century fiction. As W.H. Auden wrote, \"Kafka is important to us because his predicament is the predicament of modern man.\"', '485894.jpg', 320),
(21, '0676979343', 'Unaccustomed Earth', 1, 11, 'Jhumpa Lahiri', 'Knopf', '6', '2008-02-02 00:00:00', 'Eight stories—longer and more emotionally complex than any Lahiri has yet written—that take us from Cambridge and Seattle to India and Thailand as they enter the lives of sisters and brothers, fathers and mothers, daughters and sons, friends and lovers.  From the internationally best-selling, Pulitzer Prize–winning author, a superbly crafted new work of fiction: eight stories—longer and more emotionally complex than any she has yet written—that take us from Cambridge and Seattle to India and Thailand as they enter the lives of sisters and brothers, fathers and mothers, daughters and sons, friends and lovers.', '85301.jpg', 867);

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `or_id` int(25) NOT NULL,
  `book_id` int(25) NOT NULL,
  `quantity` int(25) NOT NULL,
  `total_amount` int(25) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `method` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_order`
--

INSERT INTO `book_order` (`or_id`, `book_id`, `quantity`, `total_amount`, `cus_id`, `status`, `method`) VALUES
(1, 4, 1, 540, 13, 'Canceled', ''),
(2, 5, 1, 365, 13, 'Canceled', ''),
(3, 3, 2, 1200, 13, 'Canceled', ''),
(4, 3, 3, 1800, 16, 'Canceled', 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `book_subcategory`
--

CREATE TABLE `book_subcategory` (
  `subcat_id` int(11) NOT NULL,
  `category` varchar(11) NOT NULL,
  `subcat_title` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_subcategory`
--

INSERT INTO `book_subcategory` (`subcat_id`, `category`, `subcat_title`, `cat_id`) VALUES
(1, 'Fiction', 'Classic', 1),
(3, 'Fiction', 'Contemporary', 1),
(4, 'Non-Fiction', 'Poetry', 2),
(5, 'Fiction', 'Fantasy', 1),
(6, 'Comics', 'Mystery', 3),
(7, 'Fiction', 'Animals', 1),
(8, 'Textbook', 'Management', 4),
(9, 'Fiction', 'Childrens', 1),
(10, 'Fiction', 'Historical', 1),
(11, 'Fiction', 'Short Stories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `resetpassword` tinyint(1) NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `address`, `phone`, `username`, `password`, `image`, `email`, `status`, `resetpassword`, `token`) VALUES
(13, 'Arya', 'Kathmandu', 2147483647, 'aarya', '827ccb0eea8a706c4c34a16891f84e7b', 'eli3.jpg', 'aarya.kshetri@apexcollege.edu.np', 0, 0, 68604),
(14, 'Anubhav Pokhrel', 'Dhumbarahi', 2147483647, 'anubhav01', '827ccb0eea8a706c4c34a16891f84e7b', 'user_male2-512.png', 'anubhav.pokhrel8@gmail.com', 0, 0, 30209),
(16, 'bandana', 'ktm', 2147483647, 'bandana', '827ccb0eea8a706c4c34a16891f84e7b', 'applejack_wallpaper_by_dastuke-d4w9sja1.png', 'bhandari.bandana@gmail.com', 1, 0, 88478),
(17, 'sajja', 'ktm', 2147483647, 'sajja', '827ccb0eea8a706c4c34a16891f84e7b', 'applejack_wallpaper_by_dastuke-d4w9sja6.png', 'sajja.shakya@apexcollege.edu.np', 0, 0, 65047),
(18, 'sankita', 'ktm', 2147483647, 'sankita', '827ccb0eea8a706c4c34a16891f84e7b', 'applejack_wallpaper_by_dastuke-d4w9sja7.png', 'sankita.sigdel@apexcollege.edu.np', 0, 0, 16434),
(19, 'nikita', 'ktm', 2147483647, 'nikita', '56bf377cae026633fe10d7401f40dbb4', 'applejack_wallpaper_by_dastuke-d4w9sja11.png', 'bandana.bhandari@apexcollege.edu.np', 0, 0, 12851);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `cusor_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `or_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `email` text NOT NULL,
  `facebook` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `name`, `description`, `image`, `email`, `facebook`) VALUES
(14, 'Sankita sigdel', 'She is good girl.', '19554914_1785533214804995_6329163443408517860_n.jpg', 'sankitasigdel@gmail.com', 'www.facebook.com/sankitasigdel'),
(28, 'bandana bhandari', 'bandana', 'bandana.jpg', 'bandana.bhandari@gmail.com', 'bandana'),
(29, 'aarya kshetri', 'aarya', 'arya.jpg', 'arya.kshetri@apexcollege.edu.np', 'aarya'),
(30, 'sajja shakya', 'sajja', 'sajja1.jpg', 'sajja.shakya@apexcollege.edu.np', 'sajja'),
(32, 'manita shrestha', 'manita', 'manita.jpg', 'manita.shrestha@gmail.com', 'manita');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `title` text NOT NULL,
  `comment` longtext NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `rate`, `title`, `comment`, `book_id`, `customer_id`) VALUES
(9, 4, 'hi', '', 1, 1),
(11, 5, 'Love this book', 'its great', 6, 14),
(12, 3, 'Its ok', 'Okay', 7, 14),
(15, 4, 'This book is okay', 'Its ok', 3, 14),
(18, 4, 'Nice', 'ghvgcfg', 4, 14),
(20, 4, 'Love this book', 'Its very good', 5, 14),
(22, 2, 'Its ok', 'Okay book', 4, 13),
(28, 2, 'bookstore', '12345', 10, 13),
(31, 5, 'ok', 'ok', 10, 14),
(32, 3, 'hdakhsdkajd', 'sadjdsjdh', 3, 16),
(34, 4, 'good ', 'very good', 11, 16),
(35, 3, 'JHXkuasjgfsdgjfsdgfsdjjsdgfkusdgfjsdbvjhgsddd', 'cnssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssddsfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `s_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_text` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_text`, `image`) VALUES
(3, 'mmdnfksjdf', 'viber_image1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_id`, `cus_id`, `status`, `book_id`) VALUES
(11, 14, 0, 4),
(12, 14, 0, 5),
(13, 14, 0, 3),
(14, 14, 0, 7),
(19, 16, 0, 2),
(23, 16, 0, 4),
(24, 16, 0, 6),
(26, 16, 0, 5),
(27, 16, 0, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `book_detail`
--
ALTER TABLE `book_detail`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `subcat_id` (`subcat_id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`or_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indexes for table `book_subcategory`
--
ALTER TABLE `book_subcategory`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`cusor_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `or_id` (`or_id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_detail`
--
ALTER TABLE `book_detail`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `or_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_subcategory`
--
ALTER TABLE `book_subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `cusor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_detail`
--
ALTER TABLE `book_detail`
  ADD CONSTRAINT `book_detail_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `book_category` (`cat_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `book_detail_ibfk_2` FOREIGN KEY (`subcat_id`) REFERENCES `book_subcategory` (`subcat_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_detail` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_order_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `book_subcategory`
--
ALTER TABLE `book_subcategory`
  ADD CONSTRAINT `book_subcategory_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `book_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`or_id`) REFERENCES `book_order` (`or_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `share_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_detail` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `share_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_detail` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
