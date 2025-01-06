-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema recordsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `recordsdb` ;

-- -----------------------------------------------------
-- Schema recordsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `recordsdb` DEFAULT CHARACTER SET utf8 ;
USE `recordsdb` ;

-- -----------------------------------------------------
-- Table `record_shop`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `record_shop` ;

CREATE TABLE IF NOT EXISTS `record_shop` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Artist` VARCHAR(45) NOT NULL,
  `Album_Title` VARCHAR(45) NOT NULL,
  `Color` LONGTEXT NOT NULL,
  `Condition` VARCHAR(45) NOT NULL,
  `Duration` VARCHAR(45) NOT NULL,
  `Format` VARCHAR(45) NOT NULL,
  `Genre` VARCHAR(45) NOT NULL,
  `Label` VARCHAR(45) NOT NULL,
  `Price` DOUBLE NOT NULL,
  `Release_Year` INT NOT NULL,
  `Release_Type` VARCHAR(45) NOT NULL,
  `Stock` INT NOT NULL,
  `Special_Features` VARCHAR(45) NOT NULL,
  `Track_Count` INT NOT NULL,
  `Tracklist` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS twocat;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'twocat' IDENTIFIED BY 'twocat';

GRANT ALL ON * TO 'twocat';
GRANT SELECT ON TABLE * TO 'twocat';
GRANT SELECT, INSERT, TRIGGER ON TABLE * TO 'twocat';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'twocat';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `record_shop`
-- -----------------------------------------------------
START TRANSACTION;
USE `recordsdb`;
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (1, 'All Shall Perish', 'The Price of Existence', 'Swamp Green', '(mint)', '45 min 6 sec', 'Vinyl', 'Deathcore', 'Nuclear Blast', 24.99, 2006, 'Standard', 9, 'Bonus Track', 11, '1.Eradication\n2.Wage Slaves\n3.The Day Of Justice\n4.There Is No Business To Be Done On A Dead Planet\n5.Better Living Through Catastrophe\n6.Prisoner Of War\n7.Greyson\n8.We Hold These Truths\n9.The True Beast\n10. Promises\n11. Last Relapse');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (2, 'Baroness', 'STONE (Deluxe)', 'Black', '(new)', '1 hr 18 min', 'CD (DELUXE)', 'Progressive Rock', 'Abraxan Hymns', 19.98, 2023, 'Limited', 2, 'Poster', 16, 'Disc 1:\n\nEmbers\nLast Word\nBeneath the Rose\nChoir\nThe Dirge\nAnodyne\nShine\nMagnolia\nUnder the Wheel\nBloom\n \n\nDisc 2:\n\nThe Birthing (Live at Mohawk, Austin, TX – April 20, 2022)\nA Horse Called Golgotha (Live at Cobra Lounge, Chicago, IL – April 10, 2022)\nEula (Live at Cobra Lounge, Chicago, IL – April 10, 2022)\nGreen Theme (Live at State Room, Salt Lake City, UT – March 31, 2022)\nDesperation Burns (Live at Mohawk, Austin, TX – April 20, 2022)\nI’d Do Anything (Live at State Room, Salt Lake City, UT – March 31, 2022)');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (3, 'Cannibal Corpse', 'Kill', 'Black w/ Blood Splatter ', '(used)', '42 min 17 sec', 'Vinyl', 'Death Metal', 'Metal Blade Records', 21.99, 2006, 'Standard', 7, 'None', 13, '1.The Time To Kill Is Now  2.Make Them Suffer 3.Murder Worship 4.	Necrosadistic Warning 5.	Five Nails Through The Neck 6.	Purification By Fire 7.	Death Walking Terror 8.	Barbaric Bludgeonings 9.	The Discipline Of Revenge 10.	Brain Removal Device 11.	Maniacal 12.	Submerged In Boiling Flesh 13.	Infinite Misery');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (4, 'Dethklok', 'Dethalbum II', 'Pink', '(new)', '51 min 58 sec', 'Vinyl', 'Death Metal', 'Willaims Street Records', 45.99, 2009, 'Collectors Edition', 2, 'Magazine', 12, '1.Bloodlines\n2.The Gears\n3.Burn The Earth\n4.Laser Cannon Deth Sentence\n5.Black Fire Upon Us\n6.Dethsupport\n7.The Cyborg Slayers\n8.I Tamper With The Evidence At The Murder Site Of Odin\n9.Murmaider II: The Water God\n10.Comet Song\n11.Symmetry\n12.Volcano\n');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (5, 'Entombed', 'Left Hand Path', 'Gold', '(mint)', '47 min 17 sec', 'Vinyl', 'Death Metal', 'Earache Records', 24.99, 1990, 'Standard', 11, 'None', 10, '1.Left Hand Path\n2.Drowned\n3.Revel in Flesh \n4.When Life Has Ceased \n5.Supposed to Rot \n6.But Life Goes On\n7.Bitter Loss\n8.Morbid Devourment\n9.Abnormally Deceased\n10.The Truth Beyond \n');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (6, 'Fear Factory', 'Demanufacture', 'White', '(mint)', '55 min 22 sec', 'Cassette', 'Industrial ', 'Angels of Hell Records', 16.99, 1995, 'Standard', 5, 'None', 11, '1.Demanufacture\n2.Self Bias Resistor\n3.Zero Signal\n4.Replica\n5.New Breed\n6.Dog Day Sunrise\n7.Body Hammer\n8.Flashpoint\n9.H-K(Hunter-Killer)\n10.Pisschrist\n11.A Therapy for Pain');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (7, 'Gojira', 'Magma', 'Black', '(new)', '43 min 47 sec', 'Vinyl', 'Progressive Metal', 'Roadrunner Records', 10.99, 2016, 'Standard', 6, 'Poster', 10, '1.The Shooting Star\n2.Silvera\n3.The Cell\n4.Stranded\n5.Yellow Stone\n6.Magma\n7.Pray\n8.Only Pain\n9.Low Lands\n10.Liberation');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (8, 'Harms Way', 'Posthuman', 'Purple In Clear', '(new)', '33 min 58 sec', 'Vinyl', 'Hardcore', 'Metal Blade Records', 29.99, 2018, 'Special Edition', 3, 'T-Shirt', 10, '1.Human Carrying Capacity\n2.Last Man\n3.Sink\n4.Temptation\n5.Become a Machine\n6.Call My Name\n7.Unreality\n8.Dissect Me\n9.The Gift\n10.Dead Space');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (9, 'Infant Annihilator', 'The Elysian Grandeval Galeriarch', 'Purple', '(new)', '58 min 44 sec', 'CD', 'Deathcore', 'Infant Annihilator', 12.99, 2016, 'Standard', 7, 'Bonus Track', 11, '1.Unholy Gravebirth\n2.Crucifilth\n3.Motherless Miscarriage\n4.Baptized, Bastardised, Sodomized\n5.Behold the Kingdom of Wretched Undying\n6.Soil the Stillborn\n7.Paedophilic Ultimatum\n8.Neutered in Utero\n9.Pelt of Innocent Flesh\n10.Blasphemian\n11.Neonatalimpalionecrophiliation');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (10, 'Job For A Cowboy', 'Doom', 'Orange w/ Green Splatter', '(mint)', '27 min 21 sec', 'Cassette', 'Deathcore', 'Metal Blade Records', 11.98, 2006, 'Limited', 1, 'None', 7, '1.Catharsis for the Buried 2.Entombment of a Machine 3.Relinquished 4.Knee Deep 5.The Rising Table 6.Suspended by the Throat 7.Entities');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (11, 'Kruelty', 'Untopia', 'Cloudy Vinyl w/ Red/Black/Yellow/Green Splatter', '(new)', '37 min 12 sec', 'Vinyl', 'Hardcore', 'Closed Casket Activities', 20.99, 2023, 'Special Edition', 2, 'Poster', 7, '\n1.Unknown Nightmare\n2.Harder Than Before\n3.Burn the System\n4.Reincarnation\n5.Maze of Suffering\n6.Manufactured Insanity\n7.Untopia');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (12, 'Lamb of God', 'Ashes of the Wake(20th Anniversary Edition)', 'Red', '(new)', '1 hr 19 min', 'CD', 'Heavy Metal', 'Epic Records', 13.99, 2004, 'Standard', 4, 'Bonus Tracks', 18, '1.Laid to Rest\n2.Hourglass\n3.Now You’ve Got Something to Die For\n4.The Faded Line\n5.Omerta\n6.Blood Of The Scribe\n7.One Gun\n8.Break You\n9.What I’ve Become\n10.Ashes of the Wake\n11.Remore Is for the Dead\n12.Laid to Rest (Pre-Production Demo)\n13.Ashes of the Wake (Pre-Production Demo)\n14.Remorse Is for the Dead (Pre-Production Demo)\n15.Another Nail For Your Coffin (Feat. Kublai Khan TX & Malevolence) 16. Omerta (Justin K Broadrick Remix\n17.Remorse Is for the Dead (Live in Richmond, VA)\n18.Now You\'ve Got Something to Die For (Live from 2007)');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (13, 'Mayhem', 'De Mysteriis Dom Sathanas', 'Dark Purple', '(used)', '46 min 1 sec', 'Vinyl', 'Black Metal', 'Deathlike Silence', 28.99, 1994, 'Standard', 8, 'Digital Download', 8, '1.Funeral Fog\n2.Freezing Moon\n3.Cursed In Eternity\n4.Pagan Fears\n5.Life Eternal\n6.From the Dark Past\n7.Buried by Time and Dust\n8.De Mysteriis Dom Sathanas');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (14, 'Norma Jean', 'Bless The Martyr And Kiss..', 'Clear', '(used)', '58 min 23 sec', 'CD', 'Metalcore', 'Solid State Records', 12.99, 2002, 'Standard', 10, 'Poster', 11, '1.The Entire World Is Counting On Me And They Don’t Even Know It\n2.Face:Face\n3.Memphis Will Be Laid To Waste\n4.Creating Something Out Of Nothing Only To Destroy It\n5.Pretty Soon, I Don\'t Know What, But Something Is Going to Happen\n6.The Shotgun Message\n7.Sometimes It\'s Our Mistakes That Make for the Greatest Ideas\n8.I Used to Hate Cell Phones, But Now I Hate Car Accidents\n9.It Was As If the Dead Man Stood Upon the Air\n10.The Human Face, Divine\n11.Organized Beyond Recognition');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (15, 'Opeth', 'Ghost Reveries', 'Black ', '(mint)', '1hr 6 min', 'Vinyl', 'Progressive Metal', 'The All Blacks', 21.99, 2005, 'Limited', 5, 'None', 8, '1.Ghost of Perdition\n2.The Baying of the Hounds\n3.Beneath the Mire\n4.Atonement\n5.Reverie/Harlequin Forest\n6.Hours of Wealth\n7.The Grand Conjuration\n8.Isolation Years');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (16, 'Periphery', 'Periphery V: Djent Is Not A Genre', 'Black', '(new)', '1 hr 10 min', 'Vinyl', 'Progressive Metal', '3Dot Records', 54.99, 2023, 'Exclusive', 0, '2 LP + Poster', 9, '1.Wildfire\n2.Atropos\n3.Wax Wings\n4.Everything Is Fine!\n5.Silhouette\n6.Dying Star\n7.Zagreus\n8.Dracul Gras\n9.Thanks Nobuo');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (17, 'Queensway', 'The Real Fear', 'Clear', '(new)', '14 min 35 sec', 'CD', 'Hardcore', 'DAZE', 13.99, 2019, 'Standard', 8, 'None', 5, '1.The Real Fear 2.Fantasy 3.True Light 4.Passion 5.Tomorrow Will Be Mine');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (18, 'Rings of Saturn', 'Lugal Ki En', 'Purple Merge w/ Orange Splatter', '(mint)', '44 min 32 sec', 'Vinyl', 'Technical Deathcore', 'Nuclear Blast', 42.99, 2014, 'Standad', 3, 'Signed Poster', 12, '1.Senseless Massacre\n2.Desolate Paradise\n3.Lalassu Xul\n4.Infused\n5.Fractal Intake\n6.Natural Selection\n7.Beckon\n8.Godless Times\n9.Unsympathetic Intellect \n10.Eviscerate\n11.the Heavens Have Fallen\n12.No Pity for a Coward');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (19, 'Suicide Silence', 'The Cleansing', 'Gray In Black', '(new)', '1hr 32 min', 'Vinyl', 'Deathcore', 'Century Media Records', 35.99, 2022, 'Special Edition', 4, '2LP + Poster', 28, '1. Revelations (Intro)\n2. Unanswered\n3. Hands Of A Killer\n4. The Price Of Beauty\n5. The Fallen\n6. No Pity For A Coward\n7. The Disease\n8. Bludgeoned To Death\n9. Girl Of Glass\n10. In A Photograph\n11. Eyes Sewn Shut\n12. Green Monster\n13. Destruction Of A Statue\n14. A Dead Current\n15. Swarm\n16. Engine No. 9\n17. Unanswered (Live In Paris)\n18. Bludgeoned To Death (Live In Paris)\n19. The Price Of Beauty (Live In Paris)\n20. Swarm (Live In Paris)\n21. No Pity For A Coward (Live In Paris)\n22. Green Monster (Live In Paris)\n23. The Fallen (Live In Paris)\n24. Destruction Of A Statue (Live In Paris)\n25. Hands of a Killer (Instrumental Rehearsal Tapes)\n26. In a Photograph (Instrumental Rehearsal Tapes)\n27. The Fallen (Instrumental Rehearsal Tapes)\n28. Untitled (Instrumental Rehearsal Tapes)\n');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (20, 'Thy Art Is Murder', 'Hate', 'Yellow w/ Splatter', '(mint)', '36 min 57 sec', 'Vinyl', 'Deathcore', 'Nuclear Blast ', 26.99, 2013, 'Standard', 9, 'None', 10, '1.Reign of Darkness\n2.The Purest Strain of Hate\n3.Vile Creation\n4.Shadow of Eternal SIn\n5.Immolation\n6.Infinite Forms\n7.Dead Sun\n8.Gates of Misery\n9.Defective Breed\n10.Doomed from Birth');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (21, 'Unearth', 'The March', 'Brown Marble', '(mint)', '44 min 19 sec', 'Vinyl', 'Metalcore', 'Metal Blade Records', 99.99, 2008, 'Limited', 1, 'Sticker', 10, '1.My Will Be Done\n2.Hail The Shrine\n3.Crow Killer\n4.Grave Of Opportunity\n5.We Are Not Anonymous\n6.The March\n7.Cutman\n8.The Chosen\n9.Letting Go\n10.Truth Or Consequence\n');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (22, 'Volumes', 'Different Animals', 'White w/ Purple', '(used)', '35 min 5 sec', 'Vinyl', 'Metalcore', 'Fearless Records', 19.99, 2017, 'Standard', 13, 'None', 12, '1.Waves Control\n2.Finite\n3.Feels Good\n4.Disaster Vehicle\n5.Pieces\n6.Interlude\n7.Hope\n8.Tides Change\n9.On Her Mind\n10.Heavy Silence\n11.Pullin’ Shades\n12.Left For Dead');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (23, 'White Zombie', 'La Sexorcisto: Devil Music Volume 1', 'Black', '(used)', '57 min 39 sec', 'Cassette', 'Heavy Metal', 'Geffen Records', 14.99, 1992, 'Standard', 2, 'Digital Download', 14, '1.Welcome To Planet Motherfucker/Psychoholic Slag\n2.Knuckle Duster - Radio 1-A\n3.Thunder Kiss 65’\n4.Black Sunshine\n5.Soul-Crusher\n6.Cosmic Monsters Inc.\n7.Spiderbaby(Yeah-Yeah-Yeah)\n8.I Am Legend\n9.Knuckle Duster - Radio 2-B\n10.Thrust!\n11.One Big Crunch\n12.Grindhouse(A Go-Go)\n13.Starface\n14.Warp Asylum');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (24, 'Xibalba', 'Madre Mia Gracias Por Los Dias', 'Clear', '(new)', '48 min 49 sec', 'CD', 'Death Metal', 'Closed Casket Activities', 13.98, 2011, 'Standard', 6, 'Poster', 12, '1.Bright Sun\n2.Madre Mia\n3.Never Kneel\n4.Fallen\n5.Time’s Up\n6.We Deserve To Die\n7.Red\n8.Obituary\n9.Cold\n10.Spanish Harlem\n11.Cursed\n12.Salvation');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (25, 'Year of the Knife', 'Dust to Dust', 'Black/White Marble', '(new)', '7 min 8 sec', 'Vinyl', 'Hardcore', 'Pure Noise Records', 16.99, 2023, 'Limited', 2, 'Flag', 3, '1.Ctrl+C 2.Victim 3.Dust to Dust');
INSERT INTO `record_shop` (`id`, `Artist`, `Album_Title`, `Color`, `Condition`, `Duration`, `Format`, `Genre`, `Label`, `Price`, `Release_Year`, `Release_Type`, `Stock`, `Special_Features`, `Track_Count`, `Tracklist`) VALUES (26, 'Zao', 'Where Blood And Fire Bring Rest', 'Clear w/Blue/Orange Smoke', '(mint)', '39 min 59 sec', 'Vinyl', 'Metalcore', 'Solid State Records', 22.99, 1998, 'Special Editino', 3, 'Digital Download', 10, '1.Lies Of Serpents, A River Of Tears\n2.To Think Of You Is To Treaure An Absent Memory\n3.A Fall Farewell\n4.March\n5.Ember\n6.Ravage Ritual\n7.Fifteen Rhema\n8.For Fair Desire\n9.The Letter Rain\n10.Violet');

COMMIT;

