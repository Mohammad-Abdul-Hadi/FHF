-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 02:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubco_se`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'WallpaperDog-20465947_1628418444.jpg', '2021-08-01 19:35:55', '2021-08-04 19:35:55'),
(2, 1, '662099032_1628418379.jpg', '2021-08-03 19:35:55', '2021-08-17 19:35:55'),
(3, 1, 'd1_1628418365.jpg', '2021-08-24 19:39:16', '2021-08-01 19:39:16'),
(4, 1, '224562_1628418346.jpg', '2021-07-14 19:39:16', '2021-07-31 19:39:16'),
(5, 1, 'd2_1628418056.jpg', '2021-08-04 19:39:16', '2021-08-25 19:39:16'),
(6, 1, '1156313_1628416050.jpg', '2021-08-01 19:39:16', '2021-08-02 19:39:16'),
(8, 1, '498662_1628464265.jpg', '2021-08-09 06:11:05', '2021-08-09 06:11:05'),
(18, 2, '1081843(1)_1628546620.jpg', '2021-08-10 05:03:40', '2021-08-10 05:03:40'),
(19, 2, 'Joker_wallpaper_048_1628546650.jpg', '2021-08-10 05:04:10', '2021-08-10 05:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_18_091639_create_posts_table', 1),
(5, '2021_06_22_094614_add_user_id_to_posts', 2),
(6, '2021_08_08_093019_add_cover_image_to_posts', 3),
(7, '2021_08_08_104551_create_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hadi@alumni.ubc.ca', '$2y$10$GWe7eqD2izfnNB3v8pvbTuHHGMnYW6GqNy/Ad2aMXlGUrvRilVaeW', '2021-08-08 21:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(6, 'Post Two', '<p>This is Post Two. This is line 2 of Post 2</p>', '2021-06-18 16:34:46', '2021-08-08 17:27:24', 1, 'WallpaperDog-20465947_1628418444.jpg'),
(8, 'AOBTM', '<p>Adaptive Online Biterm Topic odleing Algorithm</p>', '2021-06-18 20:13:49', '2021-08-08 17:26:19', 1, '662099032_1628418379.jpg'),
(9, 'LAMNER Code', '<p>NER + Transformer. Made by Rishab Sharma.</p>\r\n\r\n<p>Soon to be published on ACM TOSEM</p>', '2021-06-18 20:29:06', '2021-08-08 17:26:05', 1, 'd1_1628418365.jpg'),
(12, 'Image', '<p><img alt=\"Apollo 11\" src=\"https://hips.hearstapps.com/pop.h-cdn.co/assets/15/24/980x2162/ezt9jgz.gif?resize=480:*\" style=\"border-style:solid; border-width:5px; height:1059px; margin:0px 200px; width:480px\" /></p>', '2021-06-18 21:18:53', '2021-08-08 17:25:46', 1, '224562_1628418346.jpg'),
(13, 'PTM Study', '<p><img alt=\"Transformer Architecture\" src=\"https://devopedia.org/images/article/235/8482.1573652874.png\" style=\"border-style:solid; border-width:2px; height:715px; margin-left:20px; margin-right:20px; width:500px\" /></p>\r\n\r\n<p>A&nbsp;<strong>transformer</strong>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Deep_learning\">deep learning</a>&nbsp;model that adopts the attention mechanism, differentially weighing the significance of each part of the input data. It is used primarily in the field of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_language_processing\">natural language processing</a>&nbsp;(NLP)<a href=\"https://en.wikipedia.org/wiki/Transformer_(machine_learning_model)#cite_note-:0-1\">[1]</a>&nbsp;and in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_vision\">computer vision</a>&nbsp;(CV).<a href=\"https://en.wikipedia.org/wiki/Transformer_(machine_learning_model)#cite_note-2\">[2]</a></p>\r\n\r\n<p>Like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Recurrent_neural_networks\">recurrent neural networks</a>&nbsp;(RNNs), transformers are designed to handle sequential input data, such as natural language, for tasks such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Statistical_machine_translation\">translation</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automatic_summarization\">text summarization</a>. However, unlike RNNs, transformers do not necessarily process the data in order. Rather, the attention mechanism provides context for any position in the input sequence. For example, if the input data is a natural language sentence, the transformer does not need to process the beginning of the sentence before the end. Rather, it identifies the context that confers meaning to each word in the sentence. This feature allows for more&nbsp;<a href=\"https://en.wikipedia.org/wiki/Parallel_computing\">parallelization</a>&nbsp;than RNNs and therefore reduces training times.<a href=\"https://en.wikipedia.org/wiki/Transformer_(machine_learning_model)#cite_note-:0-1\">[1]</a></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.researchgate.net/profile/Md-Arid-Hasan/publication/338223294/figure/fig1/AS:841443144896515@1577627087713/BiLSTM-based-NMT-architecture-2-Transformer-Self-Attention-based-Network-Transformers_W640.jpg\" style=\"border-style:solid; border-width:5px; float:left; height:217px; margin-left:20px; margin-right:20px; width:500px\" /></p>\r\n\r\n<p>Transformers are the model of choice for NLP problems,<a href=\"https://en.wikipedia.org/wiki/Transformer_(machine_learning_model)#cite_note-wolf2020-3\">[3]</a>&nbsp;replacing RNN models such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Long_short-term_memory\">long short-term memory</a>&nbsp;(LSTM). The additional training parallelization allows training on larger datasets than was once possible. This led to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transfer_learning\">pre-trained systems</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/BERT_(language_model)\">BERT</a>&nbsp;(Bidirectional Encoder Representations from transformers) and&nbsp;<a href=\"https://en.wikipedia.org/wiki/OpenAI#Generative_models\">GPT</a>&nbsp;(Generative Pre-trained Transformer), which were trained with large language datasets, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wikipedia\">Wikipedia</a>&nbsp;Corpus and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Common_Crawl\">Common Crawl</a>, and can be fine-tuned for specific tasks.</p>', '2021-06-22 17:01:47', '2021-08-08 17:20:56', 1, 'd2_1628418056.jpg'),
(15, 'The Suicide Squad', '<p>A great movie!</p>', '2021-08-08 16:47:30', '2021-08-09 07:07:50', 1, '1156313_1628416050.jpg'),
(16, 'The Flash Movie', '<p><img alt=\"\" src=\"https://static1.srcdn.com/wordpress/wp-content/uploads/2021/06/The-flash-ezra-miller-Supergirl-Batman-Michael-keaton.jpg?q=50&amp;fit=crop&amp;w=960&amp;h=500&amp;dpr=1.5\" style=\"float:right; height:250px; margin-left:20px; margin-right:20px; width:480px\" /></p>\r\n\r\n<p><a href=\"https://screenrant.com/tag/the-flash-movie/\" target=\"_blank\"><strong><em>The Flash</em></strong></a>&nbsp;movie is deep into&nbsp;production as more set photos have been released online, giving fans a closer look at&nbsp;<a href=\"https://screenrant.com/flash-movie-batman-suit-logo-blood-michael-keaton-reveals/\" target=\"_blank\">Michael Keaton&#39;s Batman</a>&nbsp;and Sasha Calle&#39;s Supergirl in the&nbsp;DCEU. One of the next big DC movies coming up from Warner Bros. is&nbsp;<em>The Flash</em>, which has gone through&nbsp;several hoops since 2014. After years of being stuck in development hell, The Flash movie is finally happening, with Ezra Miller returning as Barry Allen. While loosely based on&nbsp;<em>Flashpoint</em>, Barry&#39;s actions will ultimately bring about the multiverse, thus involving Keaton&#39;s Batman from the Tim Burton films.</p>\r\n\r\n<p>Keaton won&#39;t be the only one donning the cape and cowl as Ben Affleck&#39;s Batman will also be involved in some capacity. However,&nbsp;<em>The Flash</em>&nbsp;will be adding another major DC Comics hero who hasn&#39;t been seen cinematically since 1984 as well:&nbsp;Supergirl. Early in 2021, Calle was officially cast as the&nbsp;<a href=\"https://screenrant.com/supergirl-movie-dceu-flash-setup-future/\">DCEU&#39;s Supergirl</a>. As with most superhero movies today,&nbsp;<em>The Flash</em>&nbsp;is keeping the majority of plot details under wraps - but that hasn&#39;t stopped the paparazzi from getting photos of the production.</p>\r\n\r\n<p><img alt=\"\" src=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2021/01/Ezra-Miller-Barry-Allen-DCEU-Michael-keaton-batman-.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=370&amp;dpr=1.5\" style=\"float:left; height:185px; margin:20px; width:370px\" /></p>\r\n\r\n<p>What&#39;s known officially is that&nbsp;<a href=\"https://screenrant.com/flash-movie-bruce-wayne-michael-keaton-set-photos/\"><em>The Flash</em>&nbsp;movie will see Keaton&#39;s Batman</a>&nbsp;almost 30 years after the events of&nbsp;<em>Batman Returns</em>, meaning that Joel Schumacher&#39;s following installments&nbsp;aren&#39;t&nbsp;part of that continuity. Keaton was seen in a handful of set photos, but still giving fans a look at Bruce Wayne in the present day. The hair and the make-up department was able to provide Keaton with his original hair-do from&nbsp;<em>Batman</em>&nbsp;and&nbsp;<em>Batman Returns</em><em>.</em>&nbsp;The biggest difference, of course, is that Bruce&#39;s hair is grey/silver now. Anyone who loves to see Bruce makes it abundantly clear how rich he is;&nbsp;<em>The</em><em>&nbsp;Flash</em>&nbsp;movie includes that aspect.</p>\r\n\r\n<p>Several photos were taken of a Mercedes Maybach 6 that is meant to be Bruce&#39;s expensive ride. Aside from Bruce&#39;s car, it does seem like Keaton&#39;s character is involved with whatever story is happening at the courthouse. While not 100% confirmed, one image did see Miller and Keaton together, if that really is Bruce. Since Keaton&#39;s announcement, there has been speculation that his Batman will somehow&nbsp;<a href=\"https://screenrant.com/dceu-batman-michael-keaton-ben-affleck-replace-news/\">replace Affleck&#39;s DCEU version</a>&nbsp;after&nbsp;<em>The Flash</em>&nbsp;movie is said and done. It could be that all of these photos are potentially taking place during the final act. If so, that would explain the brief shot of Barry and Bruce together, unless this is taking place on Earth-89.</p>\r\n\r\n<p><em><strong>The Suicide Squad</strong></em>&nbsp;is a 2021 American&nbsp;<a href=\"https://en.wikipedia.org/wiki/Superhero_film\">superhero film</a>&nbsp;based on&nbsp;<a href=\"https://en.wikipedia.org/wiki/DC_Comics\">DC Comics</a>&nbsp;featuring the team&nbsp;<a href=\"https://en.wikipedia.org/wiki/Suicide_Squad\">Suicide Squad</a>. Produced by&nbsp;<a href=\"https://en.wikipedia.org/wiki/DC_Films\">DC Films</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Atlas_Entertainment\">Atlas Entertainment</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/The_Safran_Company\">The Safran Company</a>, and distributed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Warner_Bros._Pictures\">Warner Bros. Pictures</a>, it is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Standalone_sequel\">standalone sequel</a>&nbsp;to&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Suicide_Squad_(film)\">Suicide Squad</a></em>&nbsp;(2016) and the tenth film in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/DC_Extended_Universe\">DC Extended Universe</a>&nbsp;(DCEU). It was written and directed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/James_Gunn\">James Gunn</a>&nbsp;and stars an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ensemble_cast\">ensemble cast</a>&nbsp;including&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margot_Robbie\">Margot Robbie</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Idris_Elba\">Idris Elba</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Cena\">John Cena</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Joel_Kinnaman\">Joel Kinnaman</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sylvester_Stallone\">Sylvester Stallone</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Viola_Davis\">Viola Davis</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Jai_Courtney\">Jai Courtney</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peter_Capaldi\">Peter Capaldi</a>. In the film, a task force of convicts are sent to destroy evidence of the giant alien&nbsp;<a href=\"https://en.wikipedia.org/wiki/Starro\">Starro</a>.</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/David_Ayer\">David Ayer</a>&nbsp;was set to return as director for a&nbsp;<em>Suicide Squad</em>&nbsp;sequel by March 2016, but in December he chose to develop a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gotham_City_Sirens\">Gotham City Sirens</a>&nbsp;film instead. Warner Bros. considered several replacement directors before hiring&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gavin_O%27Connor_(filmmaker)\">Gavin O&#39;Connor</a>&nbsp;in September 2017. He left by October 2018, and Gunn was hired to write and direct the film after being temporarily fired by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Disney\">Disney</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marvel_Studios\">Marvel Studios</a>&nbsp;as the director of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Guardians_of_the_Galaxy_Vol._3\">Guardians of the Galaxy Vol. 3</a></em>&nbsp;(2023). He drew inspiration from&nbsp;<a href=\"https://en.wikipedia.org/wiki/War_film\">war films</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Ostrander\">John Ostrander</a>&#39;s 1980s&nbsp;<em>Suicide Squad</em>&nbsp;comics, and decided to explore new characters in a story separate from the first film&#39;s narrative, though some cast members do return from&nbsp;<em>Suicide Squad</em>. Filming began in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Atlanta,_Georgia\">Atlanta, Georgia</a>, in September 2019, and concluded in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Panama\">Panama</a>&nbsp;in February 2020.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-suicide-squad-8-1625734525.jpg?resize=768:*\" style=\"border-style:solid; border-width:5px; height:512px; margin:10px 100px; width:768px\" /></p>\r\n\r\n<p>But while General Flag feels betrayed by the country he&#39;s serving and wants to leak the information to the press, Peacemaker (John Cena) wants to destroy it in order to maintain peace. And like he says earlier in the film, he cherished peace &quot;with all of my heart. I don&#39;t care how many men, women and children I kill to get it.&quot;</p>\r\n\r\n<p>That&#39;s why in the last moments of the film, Peacemaker turns against Flag and Ratcatcher 2 (Daniela Melchior), killing the former, until the arrival of Bloodsport (Idris Elba) who critically injures Peacemaker (but leaves him alive enough to be rescued and to star in his upcoming solo show, as it turns out).</p>\r\n\r\n<p>Of his last moments as Flag, Kinnaman, who first played the character in David Ayer&#39;s 2016&nbsp;<em>Suicide Squad</em>, said in a recent interview with&nbsp;<em><a href=\"https://www.hollywoodreporter.com/movies/movie-features/suicide-squad-joel-kinnaman-john-cena-peacemaker-1234994180/\" target=\"_blank\">The Hollywood Reporter</a></em>: &quot;That whole fight scene and those last moments really surprised me.</p>\r\n\r\n<p>&quot;Without story, a fight scene is just a bunch of movements where two people hurt each other; it doesn&#39;t mean anything. So I was really happy with how many stories we infused into that fight sequence, and in those final moments, it was very much a battle for life and death. There was a very strong and intimate connection right at that moment.</p>\r\n\r\n<p>&quot;It&#39;s always sad to go, but I thought it was pretty brilliant of James because it just raises the stakes while being very surprising. So it serves as a poignant and weighty moment for this film. And for a film that has so much irreverence and so many silly jokes, it really helps if you can create those moments of weight.</p>\r\n\r\n<p>&quot;Daniela [Melchior], as Ratcatcher 2, had a couple of those moments as well. So James was really able to anchor the film in some real emotion, and it helped elevate everything else. That way, it&#39;s not just fun and gags, you know?&quot;</p>', '2021-08-09 06:53:40', '2021-08-10 05:12:03', 2, '275502653_1628466820.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mashuk', 'hadi@alumni.ubc.ca', NULL, '$2y$10$92IuEZd8QSDJI7akuXiqxuGFqhJiFiN13MARpkwzKN2ZnME.tnAmK', '86D3bc1rWF1LmXQhTLdvRy1S7J5zLtpWJ4yFYePoi4OWGNYZUeSjMVtUpHMh', '2021-06-19 08:42:10', '2021-08-08 21:49:02'),
(2, 'Fatemeh Fard', 'fatemeh.fard@ubc.ca', NULL, '$2y$10$mPHWS2uxQlzDRhCFTSWAZ.YrfgIPMoWW8LG8HwzCgOdAR/N/MPemG', NULL, '2021-08-08 21:05:38', '2021-08-08 21:05:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
