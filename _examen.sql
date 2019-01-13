-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Structure de la table `collections`
--

DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collections_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `collections`
--

INSERT INTO `collections` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'The Lord of the Rings Collection', '76279-the-lord-of-the-rings-collection', '2012-07-04 21:46:02', NULL),
(2, 'Finding Nemo Collection', '85153-finding-nemo-collection', '2015-10-04 22:01:21', NULL),
(3, 'The Hannibal Lecter Collection', '57937-the-hannibal-lecter-collection', '2013-01-25 02:20:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_genres_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Drama', '34158-drama', '2010-03-06 18:52:57', NULL),
(2, 'Comedy', '90638-comedy', '2012-05-23 20:35:46', NULL),
(3, 'History', '54268-history', '2011-01-21 05:18:58', NULL),
(4, 'Thriller', '23640-thriller', '2011-01-17 21:17:36', NULL),
(5, 'Romance', '16144-romance', '2010-07-06 03:38:50', NULL),
(6, 'War', '54281-war', '2013-09-05 00:01:10', NULL),
(7, 'Crime', '40800-crime', '2013-06-12 01:26:45', NULL),
(8, 'Adventure', '16463-adventure', '2011-08-14 13:36:37', NULL),
(9, 'Fantasy', '62898-fantasy', '2014-08-21 02:06:09', NULL),
(10, 'Action', '78916-action', '2016-07-15 13:51:04', NULL),
(11, 'Animation', '84506-animation', '2011-07-12 19:09:11', NULL),
(12, 'Family', '18742-family', '2011-05-24 01:51:24', NULL),
(13, 'Music', '42079-music', '2012-04-02 15:39:08', NULL),
(14, 'Western', '44766-western', '2010-08-17 00:07:55', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tagline` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `overview` text CHARACTER SET latin1,
  `poster` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `released_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_movie_slug` (`slug`),
  KEY `collection_id` (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `slug`, `tagline`, `website`, `overview`, `poster`, `duration`, `status`, `collection_id`, `released_at`, `created_at`, `updated_at`) VALUES
(1, 'Birdman', '55674-birdman', 'or (The Unexpected Virtue of Ignorance)', NULL, 'A fading actor best known for his portrayal of a popular superhero attempts to mount a comeback by appearing in a Broadway play. As opening night approaches, his attempts to become more altruistic, rebuild his career, and reconnect with friends and family prove more difficult than expected.', 'https://image.tmdb.org/t/p/w500/rSZs93P0LLxqlVEbI001UKoeCQC.jpg', 119, 'Released', NULL, '2014-10-17', '2011-06-20 11:30:22', NULL),
(2, '12 Years a Slave', '40204-12-years-a-slave', 'The extraordinary true story of Solomon Northup', NULL, 'In the pre-Civil War United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery. Facing cruelty as well as unexpected kindnesses Solomon struggles not only to stay alive, but to retain his dignity. In the twelfth year of his unforgettable odyssey, Solomon’s chance meeting with a Canadian abolitionist will forever alter his life.', 'https://image.tmdb.org/t/p/w500/kb3X943WMIJYVg4SOAyK0pmWL5D.jpg', 134, 'Released', NULL, '2013-10-18', '2016-08-08 06:02:00', NULL),
(3, 'Argo', '16806-argo', 'The movie was fake. The mission was real.', 'http://argothemovie.warnerbros.com/', 'As the Iranian revolution reaches a boiling point, a CIA ''exfiltration'' specialist concocts a risky plan to free six Americans who have found shelter at the home of the Canadian ambassador.', 'https://image.tmdb.org/t/p/w500/oai3xLBQHpIh18VJdRCcL7D0Yg0.jpg', 120, 'Released', NULL, '2012-10-11', '2011-12-27 11:19:48', NULL),
(4, 'The Artist', '88936-the-artist', 'A Breath Of Fresh Vintage Air', 'http://www.warnerbros.fr/the-artist', 'Hollywood, 1927: As silent movie star George Valentin wonders if the arrival of talking pictures will cause him to fade into oblivion, he sparks with Peppy Miller, a young dancer set for a big break.', 'https://image.tmdb.org/t/p/w500/i0mpvMIIjyubXsVKug9vX0lYpnd.jpg', 100, 'Released', NULL, '2011-05-15', '2016-04-10 01:22:07', NULL),
(5, 'The King''s Speech', '24724-the-kings-speech', 'Find your voice.', 'http://www.kingsspeech.com/', 'The King''s Speech tells the story of the man who became King George VI, the father of Queen Elizabeth II. After his brother abdicates, George (''Bertie'') reluctantly assumes the throne. Plagued by a dreaded stutter and considered unfit to be king, Bertie engages the help of an unorthodox speech therapist named Lionel Logue. Through a set of unexpected techniques, and as a result of an unlikely friendship, Bertie is able to find his voice and boldly lead the country into war.', 'https://image.tmdb.org/t/p/w500/nkFTbA1XjKWo9LCTaV1hV2Lsgr1.jpg', 118, 'Released', NULL, '2010-09-06', '2016-06-02 19:44:24', NULL),
(6, 'The Hurt Locker', '32477-the-hurt-locker', 'You''ll know when you''re in it.', 'http://www.thehurtlocker-movie.com/', 'Forced to play a dangerous game of cat-and-mouse in the chaos of war, an elite Army bomb squad unit must come together in a city where everyone is a potential enemy and every object could be a deadly bomb.', 'https://image.tmdb.org/t/p/w500/uduCNFTuEcbvhvK8rrvNdf3ahzW.jpg', 131, 'Released', NULL, '2008-10-10', '2012-05-09 08:55:32', NULL),
(7, 'Slumdog Millionaire', '17130-slumdog-millionaire', 'What does it take to find a lost love? A. Money B. Luck C. Smarts D. Destiny', 'http://www.foxsearchlight.com/slumdogmillionaire', 'Jamal Malik is an impoverished Indian teen who becomes a contestant on the Hindi version of ‘Who Wants to Be a Millionaire?’ but, after he wins, he is suspected of cheating.', 'https://image.tmdb.org/t/p/w500/ojgf8iJpS4VX6jJfWGLpuEx0wm.jpg', 120, 'Released', NULL, '2008-05-12', '2014-12-08 23:18:38', NULL),
(8, 'No Country for Old Men', '69224-no-country-for-old-men', 'There are no clean getaways.', NULL, 'Llewelyn Moss stumbles upon dead bodies, $2 million and a hoard of heroin in a Texas desert, but methodical killer Anton Chigurh comes looking for it, with local sheriff Ed Tom Bell hot on his trail. The roles of prey and predator blur as the violent pursuit of money and justice collide.', 'https://image.tmdb.org/t/p/w500/nBaqryObPuxmuAndWUjDE5rriTd.jpg', 122, 'Released', NULL, '2007-11-08', '2015-10-05 04:30:17', NULL),
(9, 'The Departed', '55435-the-departed', 'Lies. Betrayal. Sacrifice. How far will you take it?', 'http://thedeparted.warnerbros.com/', 'To take down South Boston''s Irish Mafia, the police send in one of their own to infiltrate the underworld, not realizing the syndicate has done likewise. While an undercover cop curries favor with the mob kingpin, a career criminal rises through the police ranks. But both sides soon discover there''s a mole among them.', 'https://image.tmdb.org/t/p/w500/tGLO9zw5ZtCeyyEWgbYGgsFxC6i.jpg', 151, 'Released', NULL, '2006-10-05', '2013-09-05 05:30:18', NULL),
(10, 'Million Dollar Baby', '76834-million-dollar-baby', 'Beyond his silence, there is a past. Beyond her dreams, there is a feeling. Beyond hope, there is a memory. Beyond their journey, there is a love.', 'http://www.milliondollarbaby-derfilm.de/', 'Despondent over a painful estrangement from his daughter, trainer Frankie Dunn isn''t prepared for boxer Maggie Fitzgerald to enter his life. But Maggie''s determined to go pro and to convince Dunn and his cohort to help her.', 'https://image.tmdb.org/t/p/w500/h4VZKi2Jt4VoBYJmtC4c3bO8KqM.jpg', 132, 'Released', NULL, '2004-12-14', '2012-08-07 19:20:24', NULL),
(11, 'Crash', '48817-crash', 'You think you know who you are. You have no idea.', 'http://www.crashfilm.com/', 'Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.', 'https://image.tmdb.org/t/p/w500/pG8LL4LYMCr5uikhx9rewrW8352.jpg', 112, 'Released', NULL, '2004-05-28', '2012-12-04 21:03:59', NULL),
(12, 'The Lord of the Rings: The Return of the King', '80321-the-lord-of-the-rings-the-return-of-the-king', 'The eye of the enemy is moving.', 'http://www.lordoftherings.net', 'Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron''s forces. Meanwhile, Frodo and Sam bring the ring closer to the heart of Mordor, the dark lord''s realm.', 'https://image.tmdb.org/t/p/w500/50LoR9gJhbWZ5PpoHgi8MNTYgzd.jpg', 201, 'Released', 1, '2003-12-01', '2012-03-07 03:54:58', NULL),
(13, 'Finding Nemo', '79467-finding-nemo', 'There are 3.7 trillion fish in the ocean, they''re looking for one.', 'http://movies.disney.com/finding-nemo', 'A tale which follows the comedic and eventful journeys of two fish, the fretful Marlin and his young son Nemo, who are separated from each other in the Great Barrier Reef when Nemo is unexpectedly taken from his home and thrust into a fish tank in a dentist''s office overlooking Sydney Harbor. Buoyed by the companionship of a friendly but forgetful fish named Dory, the overly cautious Marlin embarks on a dangerous trek and finds himself the unlikely hero of an epic journey to rescue his son.', 'https://image.tmdb.org/t/p/w500/zjqInUwldOBa0q07fOyohYCWxWX.jpg', 100, 'Released', 2, '2003-05-30', '2016-01-12 03:38:55', NULL),
(14, 'Chicago', '80724-chicago', 'If You Can''t Be Famous, Be Infamous.', NULL, 'Murderesses Velma Kelly (a chanteuse and tease who killed her husband and sister after finding them in bed together) and Roxie Hart (who killed her boyfriend when she discovered he wasn''t going to make her a star) find themselves on death row together and fight for the fame that will keep them from the gallows in 1920s Chicago.', 'https://image.tmdb.org/t/p/w500/18pCc2XZ5MO7wsywOYEbhoeuxNw.jpg', 113, 'Released', NULL, '2002-12-26', '2015-06-16 11:19:21', NULL),
(15, 'A Beautiful Mind', '99861-a-beautiful-mind', 'I need to believe that something extra ordinary is possible....', 'http://www.abeautifulmind.com/', 'At Princeton University, John Nash struggles to make a worthwhile contribution to serve as his legacy to the world of mathematics. He finally makes a revolutionary breakthrough that will eventually earn him the Nobel Prize. After graduate school he turns to teaching, becoming romantically involved with his student Alicia. Meanwhile the government asks his help with breaking Soviet codes, which soon gets him involved in a terrifying conspiracy plot. Nash grows more and more paranoid until a discovery that turns his entire world upside down. Now it is only with Alicia''s help that he will be able to recover his mental strength and regain his status as the great mathematician we know him as today..', 'https://image.tmdb.org/t/p/w500/4SFqHDZ1NvWdysucWbgnYlobdxC.jpg', 135, 'Released', NULL, '2001-12-11', '2010-08-13 00:02:43', NULL),
(16, 'Gladiator', '46564-gladiator', 'A Hero Will Rise.', NULL, 'General Maximus'' success in battle earns the favour of the Roman Empire''s elderly Emperor at the expense of the Emperor''s son. In a fit of jealous rage the son slays his father before turning his anger towards Maximus. Now reduced to a slave, and his family dead, Maximus must fight as a gladiator to gain his freedom – and his revenge.', 'https://image.tmdb.org/t/p/w500/6WBIzCgmDCYrqh64yDREGeDk9d3.jpg', 155, 'Released', NULL, '2000-05-01', '2014-04-20 22:35:50', NULL),
(17, 'American Beauty', '76291-american-beauty', 'Look closer.', 'http://www.dreamworks.com/ab/', 'Lester Burnham, a depressed suburban father in a mid-life crisis, decides to turn his hectic life around after developing an infatuation with his daughter''s attractive friend.', 'https://image.tmdb.org/t/p/w500/or1MP8BZIAjqWYxPdPX724ydKar.jpg', 122, 'Released', NULL, '1999-09-15', '2016-10-04 12:09:54', NULL),
(18, 'Shakespeare in Love', '35122-shakespeare-in-love', 'Love is the only inspiration.', NULL, 'Young Shakespeare is forced to stage his latest comedy, "Romeo and Ethel, the Pirate''s Daughter," before it''s even written. When a lovely noblewoman auditions for a role, they fall into forbidden love -- and his play finds a new life (and title). As their relationship progresses, Shakespeare''s comedy soon transforms into tragedy.', 'https://image.tmdb.org/t/p/w500/sAN5jedynbs3pa3ww0UXQ1k0lRF.jpg', 122, 'Released', NULL, '1998-12-11', '2012-05-19 20:16:28', NULL),
(19, 'Titanic', '42898-titanic', 'Nothing on Earth could come between them.', 'http://www.titanicmovie.com/menu.html', '84 years later, a 101-year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning.', 'https://image.tmdb.org/t/p/w500/kHXEpyfl6zqn8a6YuozZUujufXf.jpg', 194, 'Released', NULL, '1997-11-18', '2012-02-03 06:55:14', NULL),
(20, 'The English Patient', '55679-the-english-patient', 'In love, there are no boundaries.', NULL, 'Beginning in the 1930''s, "The English Patient" tells the story of Count Almásy who is a Hungarian map maker employed by the Royal Geographical Society to chart the vast expanses of the Sahara Desert along with several other prominent explorers. As World War II unfolds, Almásy enters into a world of love, betrayal, and politics that is later revealed in a series of flashbacks while Almásy is on his death bed after being horribly burned in a plane crash.', 'https://image.tmdb.org/t/p/w500/niqc0v3Lclh99Mmmxm49qZTIo2e.jpg', 162, 'Released', NULL, '1996-11-14', '2011-07-24 11:37:58', NULL),
(21, 'Braveheart', '71138-braveheart', 'Every man dies.  Not every man truly lives.', NULL, 'Enraged at the slaughter of Murron, his new bride and childhood love, legendary Scottish warrior William Wallace slays a platoon of the local English lord''s soldiers. This leads the village to revolt and, eventually, the entire country to rise up against English rule.', 'https://image.tmdb.org/t/p/w500/2qAgGeYdLjelOEqjW9FYvPHpplC.jpg', 177, 'Released', NULL, '1995-05-24', '2012-11-06 09:24:03', NULL),
(22, 'Forrest Gump', '22707-forrest-gump', 'The world will never be the same, once you''ve seen it through the eyes of Forrest Gump.', NULL, 'A man with a low IQ has accomplished great things in his life and been present during significant historic events - in each case, far exceeding what anyone imagined he could do. Yet, despite all the things he has attained, his one true love eludes him. ''Forrest Gump'' is the story of a man who rose above his challenges, and who proved that determination, courage, and love are more important than ability.', 'https://image.tmdb.org/t/p/w500/yE5d3BUhE8hCnkMUJOo1QDoOGNz.jpg', 142, 'Released', NULL, '1994-07-06', '2013-10-05 10:47:06', NULL),
(23, 'Schindler''s List', '21168-schindlers-list', 'Whoever saves one life, saves the world entire.', 'http://www.schindlerslist.com/', 'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.', 'https://image.tmdb.org/t/p/w500/yPisjyLweCl1tbgwgtzBCNCBle.jpg', 195, 'Released', NULL, '1993-11-29', '2011-07-08 14:15:26', NULL),
(24, 'Unforgiven', '78462-unforgiven', 'Some legends will never be forgotten. Some wrongs can never be forgiven.', NULL, 'William Munny is a retired, once-ruthless killer turned gentle widower and hog farmer. To help support his two motherless children, he accepts one last bounty-hunter mission to find the men who brutalized a prostitute. Joined by his former partner and a cocky greenhorn, he takes on a corrupt sheriff.', 'https://image.tmdb.org/t/p/w500/km6qw4qUkHQRN5y2U1juM1WkBFh.jpg', 131, 'Released', NULL, '1992-08-07', '2013-04-24 14:47:09', NULL),
(25, 'The Silence of the Lambs', '30380-the-silence-of-the-lambs', 'To enter the mind of a killer she must challenge the mind of a madman.', NULL, 'FBI trainee, Clarice Starling ventures into a maximum-security asylum to pick the diseased brain of Hannibal Lecter, a psychiatrist turned homicidal cannibal. Starling needs clues to help her capture a serial killer. but her Faustian relationship with Lecter soon leads to his escape, and now two deranged killers are on the loose.', 'https://image.tmdb.org/t/p/w500/qjAyTj2BSth1EQ89vNfo0JYVPFN.jpg', 118, 'Released', 3, '1991-02-14', '2013-12-09 17:27:30', NULL),
(26, 'Dances with Wolves', '11258-dances-with-wolves', 'Inside everyone is a frontier waiting to be discovered.', NULL, 'Wounded Civil War soldier John Dunbar tries to commit suicide -- and becomes a hero instead. As a reward, he''s assigned to his dream post, a remote junction on the Western frontier, and soon makes unlikely friends with the local Sioux tribe.', 'https://image.tmdb.org/t/p/w500/hpmclspug1I8EwKSWhL7pWWltA.jpg', 181, 'Released', NULL, '1990-11-09', '2014-11-17 02:50:54', NULL),
(27, 'Driving Miss Daisy', '59173-driving-miss-daisy', 'The funny, touching and totally irresistible story of a working relationship that became a 25-year friendship.', NULL, 'The story of an old Jewish widow named Daisy Werthan and her relationship with her colored chauffeur Hoke. From an initial mere work relationship grew in 25 years a strong friendship between the two very different characters in a time when those types of relationships where shunned upon. Oscar winning tragic comedy with a star-studded cast and based on a play of the same name by Alfred Uhry.', 'https://image.tmdb.org/t/p/w500/vzdx1rkR0wK8NcdgTAvg6Vp061U.jpg', 99, 'Released', NULL, '1989-12-13', '2014-03-16 04:02:09', NULL),
(28, 'Rain Man', '44905-rain-man', 'A journey through understanding and fellowship.', NULL, 'Selfish yuppie Charlie Babbitt''s father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.', 'https://image.tmdb.org/t/p/w500/A9XB6BmDlxqag4EFG4aM8R08B5t.jpg', 133, 'Released', NULL, '1988-12-11', '2016-06-09 15:34:30', NULL),
(29, 'The Last Emperor', '50906-the-last-emperor', 'He was the Lord of Ten Thousand Years, the absolute monarch of China. He was born to rule a world of ancient tradition. Nothing prepared him for our world of change.', NULL, 'A dramatic history of Pu Yi, the last of the Emperors of China, from his lofty birth and brief reign in the Forbidden City, the object of worship by half a billion people; through his abdication, his decline and dissolute lifestyle; his exploitation by the invading Japanese, and finally to his obscure existence as just another peasant worker in the People''s Republic.', 'https://image.tmdb.org/t/p/w500/gnKVWiegQ6IoaYA0miR0OdPyI5P.jpg', 163, 'Released', NULL, '1987-10-21', '2013-06-23 05:31:04', NULL),
(30, 'Platoon', '53337-platoon', 'The first casualty of war is innocence.', NULL, 'As a young and naive recruit in Vietnam, Chris Taylor faces a moral crisis when confronted with the horrors of war and the duality of man.', 'https://image.tmdb.org/t/p/w500/sYPOQI57JVNmjiLI3KeZ5KA8O9i.jpg', 120, 'Released', NULL, '1986-12-18', '2011-09-18 19:57:22', NULL),
(31, 'Out of Africa', '64785-out-of-africa', 'Based on a true story.', NULL, 'Out of Africa tells the story of the life of Danish author Karen Blixen, who at the beginning of the 20th century moved to Africa to build a new life for herself. The film is based on the autobiographical novel by Karen Blixen from 1937.', 'https://image.tmdb.org/t/p/w500/bLXD2jp0img4RJiczAwnS7m7jF9.jpg', 161, 'Released', NULL, '1985-12-10', '2010-03-03 05:59:44', NULL),
(32, 'Amadeus', '17790-amadeus', '...Everything you''ve heard is true', NULL, 'The incredible story of genius musician Wolfgang Amadeus Mozart, told in flashback by his peer and secret rival Antonio Salieri – now confined to an insane asylum.', 'https://image.tmdb.org/t/p/w500/flnoqdC38mbaulAeptjynOFO7yi.jpg', 160, 'Released', NULL, '1984-10-26', '2015-03-06 10:38:51', NULL),
(33, 'Terms of Endearment', '24515-terms-of-endearment', NULL, NULL, 'Aurora and Emma are mother and daughter who march to different drummers. Beginning with Emma''s marriage, Aurora shows how difficult and loving she can be. The movie covers several years of their lives as each finds different reasons to go on living and find joy. Aurora''s interludes with Garrett Breedlove, retired astronaut and next door neighbor are quite striking.', 'https://image.tmdb.org/t/p/w500/zGl7KwZX8LQQAdYaaYawTFF6HKY.jpg', 132, 'Released', NULL, '1983-11-20', '2014-07-07 09:46:27', NULL),
(34, 'Gandhi', '37779-gandhi', 'His Triumph Changed The World Forever.', NULL, 'In the early years of the 20th century, Mohandas K. Gandhi, a British-trained lawyer, forsakes all worldly possessions to take up the cause of Indian independence. Faced with armed resistance from the British government, Gandhi adopts a policy of ''passive resistance'', endeavouring to win freedom for his people without resorting to bloodshed.', 'https://image.tmdb.org/t/p/w500/2z9A4FSu1YySrhhcuqkdMIXpgyN.jpg', 191, 'Released', NULL, '1982-11-30', '2010-06-18 21:13:07', NULL),
(35, 'Chariots of Fire', '50736-chariots-of-fire', NULL, NULL, 'Based on the true story of British athletes preparing for and competing in the 1924 Summer Olympics. The film was nominated for seven Academy Awards and won four, including Best Picture.', 'https://image.tmdb.org/t/p/w500/fIOIKIUNaQZyIgcDSsEYFyLxAh1.jpg', 123, 'Released', NULL, '1981-05-15', '2014-11-19 22:14:14', NULL),
(36, 'Ordinary People', '30073-ordinary-people', 'Everything is in its proper place...except the past.', NULL, 'Beth, Calvin, and their son Conrad are living in the aftermath of the death of the other son. Conrad is overcome by grief and misplaced guilt to the extent of a suicide attempt. He is in therapy. Beth had always preferred his brother and is having difficulty being supportive to Conrad. Calvin is trapped between the two trying to hold the family together.', 'https://image.tmdb.org/t/p/w500/fxXvhczta3Pqy04JoHRfyhXuyo6.jpg', 124, 'Released', NULL, '1980-09-19', '2014-06-12 19:09:35', NULL),
(37, 'Kramer vs. Kramer', '88419-kramer-vs-kramer', 'There are three sides to this love story', NULL, 'Ted Kramer is a career man for whom his work comes before his family. His wife Joanna cannot take this anymore, so she decides to leave him. Ted is now faced with the tasks of housekeeping and taking care of himself and their young son Billy.', 'https://image.tmdb.org/t/p/w500/r1VJRXuIjotpsT2gJ1E3lKWdRG0.jpg', 105, 'Released', NULL, '1979-12-19', '2016-12-04 04:37:40', NULL),
(38, 'The Deer Hunter', '76218-the-deer-hunter', 'One of the most important and powerful films of all time!', NULL, 'A group of working-class friends decides to enlist in the Army during the Vietnam War and finds it to be hellish chaos -- not the noble venture they imagined. Before they left, Steven married his pregnant girlfriend -- and Michael and Nick were in love with the same woman. But all three are different men upon their return.', 'https://image.tmdb.org/t/p/w500/slNJESItHPqp1CENEJQUPw8d7WE.jpg', 183, 'Released', NULL, '1978-12-08', '2012-05-25 22:48:23', NULL),
(39, 'Annie Hall', '55303-annie-hall', 'A nervous romance.', NULL, 'In the city of New York, comedian Alvy Singer falls in love with the ditsy Annie Hall.', 'https://image.tmdb.org/t/p/w500/j9vVQCSyNWvyBU6w9BxExZRlpZZ.jpg', 93, 'Released', NULL, '1977-04-19', '2014-09-04 09:34:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `movies_genres`
--

DROP TABLE IF EXISTS `movies_genres`;
CREATE TABLE IF NOT EXISTS `movies_genres` (
  `movie_id` int(11) UNSIGNED NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `genre_id` (`genre_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `movies_genres`
--

INSERT INTO `movies_genres` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 3),
(6, 1),
(6, 4),
(6, 6),
(7, 1),
(7, 5),
(8, 7),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(9, 7),
(10, 1),
(11, 1),
(12, 8),
(12, 9),
(12, 10),
(13, 11),
(13, 12),
(14, 10),
(14, 2),
(14, 7),
(14, 1),
(14, 13),
(15, 1),
(15, 5),
(16, 10),
(16, 1),
(16, 8),
(17, 1),
(18, 3),
(19, 1),
(19, 5),
(19, 4),
(20, 1),
(20, 5),
(20, 6),
(21, 10),
(21, 1),
(21, 3),
(21, 6),
(22, 2),
(22, 1),
(22, 5),
(23, 1),
(23, 3),
(23, 6),
(24, 14),
(25, 7),
(25, 1),
(25, 4),
(26, 8),
(26, 1),
(26, 14),
(27, 2),
(27, 1),
(28, 1),
(29, 1),
(29, 3),
(30, 1),
(30, 6),
(30, 10),
(31, 1),
(32, 1),
(32, 3),
(32, 13),
(33, 1),
(33, 2),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(38, 6),
(39, 2),
(39, 1),
(39, 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `collections_id_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `genres_id_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_id_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
