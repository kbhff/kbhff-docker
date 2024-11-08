# ************************************************************
# Sequel Ace SQL dump
# Version 20074
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 11.5.2-MariaDB-ubu2404)
# Database: kbhff_dk
# Generation Time: 2024-11-08 15:23:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table item_legacyproduct
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_legacyproduct`;

CREATE TABLE `item_legacyproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_legacyproduct_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_legacyproduct` WRITE;
/*!40000 ALTER TABLE `item_legacyproduct` DISABLE KEYS */;

INSERT INTO `item_legacyproduct` (`id`, `item_id`, `name`)
VALUES
	(1,280,'depositum, stofpose'),
	(2,281,'frugtpose'),
	(3,282,'grønne asparges'),
	(4,283,'grøntsagspose'),
	(5,284,'hvide asparges'),
	(6,285,'kartoffelpose'),
	(7,286,'Stofpose-andel'),
	(8,287,'støttepose (grøntsager)'),
	(9,288,'svampepose');

/*!40000 ALTER TABLE `item_legacyproduct` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_membership
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_membership`;

CREATE TABLE `item_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `subscribed_message_id` int(11) DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `introduction` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `fixed_url_identifier` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fixed_url_identifier` (`fixed_url_identifier`),
  KEY `item_id` (`item_id`),
  KEY `item_membership_ibfk_2` (`subscribed_message_id`),
  CONSTRAINT `item_membership_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_membership_ibfk_2` FOREIGN KEY (`subscribed_message_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_membership` WRITE;
/*!40000 ALTER TABLE `item_membership` DISABLE KEYS */;

INSERT INTO `item_membership` (`id`, `item_id`, `name`, `classname`, `subscribed_message_id`, `description`, `introduction`, `html`, `fixed_url_identifier`, `position`)
VALUES
	(1,6,'Frivillig','volunteer',5,'Frivillig medlemsskab hos Københavns Fødevarefællesskab.','<p>Som frivillig lægger du typisk 3 timers frivilligt arbejde hver måned.</p>','<p>Når du melder dig ind i KBHFF støtter du en forening, der støtter små økologiske og biodynamiske avlere bosat primært på Sjælland. <a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">Læs vores 10 grundprincipper her</a></p>\r\n<p>Som frivillig lægger du typisk 3 timers frivilligt arbejde hver måned, som tak for din indsats køber du til gengæld vores grønt pose til en reduceret pris.</p>\r\n<div class=\"vimeo video_id:https://vimeo.com/84031934\"></div>\r\n<p>Videoen overfor giver et godt indblik i hverdagen i Københavns Fødevarefællesskab.</p>\r\n<h3><strong>Frivilligt medlemsskab</strong></h3>\r\n<p>De fleste frivillige tager en vagt i deres lokalafdeling, hvor de hjælper med uddelingen af varer om onsdagen, men du har også mulighed for at være chauffør, hjælpe på vores fælleslager på Hotel- &amp; Restaurantskolen i Valby eller være en del af en af foreningens arbejdsgrupper så som indkøb.&nbsp;</p>\r\n<p>Din lokalafdeling vil give dig en grundig introduktion til de forskellige vagter. Du kan finde din lokalafdelings <a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">kontaktoplysninger her</a>. Du er også altid meget velkommen til at skrive til vores fælleskoordinator på fk@kbhff.dk, hvis du gerne vil høre mere om vagter som chauffør, på fælleslageret eller i en af de fælles arbejdsgrupper.</p>\r\n<div class=\"media item_id:6 variant:HTMLEDITOR-html-0qlhax4a name:chift_circle_KBHFF.png filesize:427001 format:png width:1121 height:793\">\r\n	<p><a href=\"/images/6/HTMLEDITOR-html-0qlhax4a/480x.png\"></a></p>\n</div>\r\n<h3><strong>Arrangementer</strong></h3>\r\n<p>Som medlem af Københavns Fødevarefællesskab bliver du løbende inviteret til forskellige medlemsarrangementer. Arrangementer bliver annonceret i nyhedsbreve og på hjemmesiden.&nbsp;</p>\r\n<h3><strong>Fællesskab</strong></h3>\r\n<p>Københavns Fødevarefællesskab er en uafhængig, frivilligdrevet indkøbsforening, det betyder at du som medlem har direkte indflydelse på foreningens drift og udvikling.&nbsp;Du har mulighed for at påvirke beslutninger i din lokalafdeling, til fællesmøder som afholdes hver anden måned på vores fælleslager, samt ved at deltage i den årlige generalforsamling.&nbsp;Hold øje med hjemmesiden og nyhedsmails for datoer mm.</p>\r\n<h3><strong>Priser</strong></h3>\r\n<ul>\r\n	<li>Indmeldelsesgebyr: 100,00 DKK</li>\r\n	<li>Årligt kontingent (betales i maj måned efter generalforsamlingen): 200,00 DKK</li>\r\n	<li><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">Se priser på alle varer her</a></li>\r\n</ul>\r\n<p><strong>Det eneste du skal betale når du melder dig ind i foreningen er indmeldelsesgebyret</strong></p>\r\n<h3><strong>Spørgsmål?</strong></h3>\r\n<p>Læs mere i vores <a href=\"https://kbhff.dk/medlem/quick-start-guide\" target=\"_blank\">kvikstart guide</a> eller send en mail til vores fælleskoordinator på fk@kbhff.dk.</p>','frivillig',0),
	(2,7,'Støttemedlem','supporter',3,'Beskrivelse af støttemedlemskab hos Københavns Fødevarefællesskab.','<p>Som støttemedlem betaler du en lidt højere pris for grøntsagsposen, men du behøver ikke lægge 3 timers frivilligt arbejde hver måned.</p>','<p>Når du melder dig ind i KBHFF støtter du en forening, der støtter små økologiske og biodynamiske avlere bosat primært på Sjælland.&nbsp;<a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">Læs vores 10 grundprincipper her</a></p>\r\n<div class=\"vimeo video_id:https://vimeo.com/84031934\"></div>\r\n<p>Videoen overfor giver et godt indblik i hverdagen i Københavns Fødevarefællesskab.</p>\r\n<h3><strong>Støttemedlem</strong></h3>\r\n<p>Som støttemedlem har du mulighed for at være passivt medlem og økonomisk støtte KBHFFs arbejde for et mere bæredygtigt landbrug. Som støttemedlem har du også mulighed for at deltage i foreningens arrangementer og bestille ugens pose mm. på lige fod med foreningens frivillige. Dog betaler du en højere pris for grøntsagsposen. Der er ingen andre forskelle på de to typer medlemskaber.<br /><br />Støttemedlemskabet er også tænkt som en midlertidig mulighed, for dig som ikke har mulighed for at tage faste vagter.</p>\r\n<h3><strong>Fællesskab</strong></h3>\r\n<p>Københavns Fødevarefællesskab er en uafhængig, frivilligdrevet indkøbsforening, det betyder at foreningens drift afhænger af frivillige som har tid og lyst til, at give en hånd med i den daglige drift. Vi håber derfor, at du som aktivt støttemedlem der bestiller varer gennem KBHFF, også har lyst til at deltage i det frivillige arbejde.&nbsp;</p>\r\n<p>Har du brug for hjælp til at komme i gang med at tage dine vagter,, så spørg i den lokalafdeling hvor du henter dine varer eller send dem en mail. <a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">Du finder lokalafdelingernes mailadresser her</a>. Du er også meget velkommen til at sende en mail til vores fælleskoordinator, hvis du vil høre mere om, det frivillige arbejde på fælleslageret eller i arbejdsgrupperne.</p>\r\n<h3><strong>Priser</strong></h3>\r\n<ul>\r\n	<li>Indmeldelsesgebyr: 100 DKK</li>\r\n	<li>Årligt kontingent (betales følgende maj): 200 DKK</li>\r\n	<li><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">Se priser på produkter her</a></li>\r\n</ul>\r\n<p><strong>Det eneste du skal betale nu er indmeldelsesgebyret</strong></p>\r\n<h3><strong>Spørgsmål?</strong></h3>\r\n<p>Læs mere i vores <a href=\"https://kbhff.dk/medlem/quick-start-guide\" target=\"_blank\">kvikstart guide</a> eller send en mail til vores fælleskoordinator på fk@kbhff.dk.</p>','stoettemedlem',0);

/*!40000 ALTER TABLE `item_membership` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_membership_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_membership_versions`;

CREATE TABLE `item_membership_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `subscribed_message_id` int(11) DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `introduction` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `fixed_url_identifier` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `fixed_url_identifier` (`fixed_url_identifier`),
  KEY `item_id` (`item_id`),
  KEY `item_membership_versions_ibfk_2` (`subscribed_message_id`),
  CONSTRAINT `item_membership_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_membership_versions_ibfk_2` FOREIGN KEY (`subscribed_message_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table item_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_message`;

CREATE TABLE `item_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `layout` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_message_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_message` WRITE;
/*!40000 ALTER TABLE `item_message` DISABLE KEYS */;

INSERT INTO `item_message` (`id`, `item_id`, `name`, `description`, `html`, `layout`)
VALUES
	(1,3,'Velkommen til Københavns Fødevarefællesskab','Velkommen til Københavns Fødevarefællesskab. // Welcome to the Copenhagen Food Coop.','<p>(English below)</p>\r\n<p>Velkommen som støttemedlem.</p>\r\n<p>Du kan nu bestille varer gennem <a href=\"https://kbhff.dk/butik\" target=\"_blank\">grøntshoppen</a>. Bemærk, alle varer bestilles til afhentning om onsdagen og deadline for bestilling er den forudgående onsdag. Vi anbefaler, at du køber en stofpose sammen med din første bestilling.</p>\r\n<p>Som støttemedlem er du ikke forpligtet til at tage vagter. Men får du lyst til at indgå i medlemsarbejdet, kan du kontakte din afdeling.</p>\r\n<p>Læs mere om din afdeling, fællesskabet og meget mere i vores <a href=\"/medlem/quick-start-guide\">quick-start guide</a> til nye medlemmer.</p>\r\n<p>Vi er glade for, at du vil være med. Oplever du problemer eller har du spørgsmål, så kontakt os på <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>.</p>\r\n<p>Venlig hilsen,<br />Københavns Fødevarefællesskab</p>\r\n<p>//</p>\r\n<p>Hi and welcome to the Copenhagen Food Coop.</p>\r\n<p>You can now order products through our <a href=\"https://kbhff.dk/butik\" target=\"_blank\">webshop</a>. Please note that orders can only be collected on Wednesdays, and that the deadline for ordering is always the preceding Wednesday. We recommend that you buy a canvas bag together with your first order.</p>\r\n<p>As a supporting member you are not required to do any work in the coop. But you can contact your local department if you would like to change to a voluntary member at any time.</p>\r\n<p>Read more about the coop, our departments and much more in the <a href=\"/medlem/quick-start-guide\">quick-start guide</a> for new members.</p>\r\n<p>We are happy to have you with us. If you have problems or questions, please contact us at <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>.</p>\r\n<p>Best regards,</p>','template-b.html'),
	(2,5,'Velkommen til Københavns Fødevarefællesskab','Velkommen til Københavns Fødevarefællesskab. // Welcome to the Copenhagen Food Coop.','<p>(English below)</p>\r\n<p>Hej og velkommen til Københavns Fødevarefællesskab.</p>\r\n<p>Du kan nu bestille varer gennem <a href=\"https://kbhff.dk/butik\" target=\"_blank\">grøntshoppen</a>. Bemærk, alle varer bestilles til afhentning om onsdagen og deadline for bestilling er den forudgående onsdag. Vi anbefaler, at du køber en stofpose sammen med din første bestilling.</p>\r\n<p>Som frivilligt medlem indgår du i tre timers arbejde om måneden – enten i din afdeling, i en af arbejdsgrupperne eller på fælleslageret.</p>\r\n<p>Læs mere om vagter, arbejdsgrupper og meget mere i vores <a href=\"/medlem/quick-start-guide\">quick-start guide</a> til nye medlemmer.</p>\r\n<p>Vi er glade for at du vil være med. Oplever du problemer eller har du spørgsmål, så kontakt os på <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>.</p>\r\n<p>Venlig hilsen,<br />Københavns Fødevarefællesskab</p>\r\n<p>//</p>\r\n<p>Hi and welcome to the Copenhagen Food Coop.</p>\r\n<p>You can now order products through our <a href=\"https://kbhff.dk/butik\" target=\"_blank\">webshop</a>. Please note that orders can only be collected on Wednesdays, and that the deadline for ordering is always the preceding Wednesday. We recommend that you buy a canvas bag together with your first order.</p>\r\n<p>As a volunteering member you will take part in three hours\' work a month. This can either be in your local department, in one of our central working groups or at the central packing facility.</p>\r\n<p>Read more about the shifts, working groups and much more in the <a href=\"/medlem/quick-start-guide\">quick-start guide</a> for new members.</p>\r\n<p>We are happy to have you with us. If you have problems or questions, please contact us at <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>.</p>\r\n<p>Best regards,</p>','template-b.html'),
	(4,582,'Nyhedsbrev (SKABELON)','Hvad sker der i dit fødevarefællesskab? / What\'s happening in your food community?','<p>&nbsp; --- English version bellow ---</p>\r\n<div class=\"media item_id:582 variant:HTMLEDITOR-html-zjlylvfv name:test03.png filesize:1992475 format:png width:3106 height:1006\">\r\n	<p><a href=\"/images/582/HTMLEDITOR-html-zjlylvfv/480x.png\"></a></p></div>\r\n<p><strong>Titel</strong></p>\r\n<p>Introduktion&nbsp;</p>\r\n<p>F&aelig;llesm&oslash;de (dato)</p>\r\n<p>Tekst om forrige f&aelig;llesm&oslash;de</p>\r\n<p><strong>N&aelig;ste f&aelig;llesm&oslash;de (dato)</strong></p>\r\n<p>Tekst om det kommende f&aelig;llesm&oslash;de</p>\r\n<p><strong>Det sker i dit F&oslash;devaref&aelig;llesskab</strong></p>\r\n<p>Kommende arrangementer</p>\r\n<p><strong>Opslagstavlen</strong></p>\r\n<p>Frivillig tjanser m.m.</p>\r\n<div class=\"media item_id:582 variant:HTMLEDITOR-html-a3bzqz64 name:test04.png filesize:1902721 format:png width:3106 height:1006\">\r\n	<p><a href=\"/images/582/HTMLEDITOR-html-a3bzqz64/480x.png\"></a></p></div>\r\n<p><strong>Titel</strong></p>\r\n<p>Introduktion ENG</p>\r\n<p><strong>F&aelig;llesm&oslash;de/Common meeting (dato)</strong></p>\r\n<p>Tekst om forrige f&aelig;llesm&oslash;de ENG</p>\r\n<p><strong>Next f&aelig;llesm&oslash;de/common meeting (dato)</strong></p>\r\n<p>Tekst om det kommende f&aelig;llesm&oslash;de ENG</p>\r\n<p><strong>This happens in your Food Community</strong></p>\r\n<p>Kommende arrangementer ENG</p>\r\n<p><strong>Bulletin board</strong></p>\r\n<p>Frivillig tjanser ENG</p>','template-b.html'),
	(6,591,'Fællesmøde og fællesmadlavnings event / Common meeting and communal cooking event','D. 29. august er der igen fællesmøde og allerede d. 30 kan du komme til fællesmadlavnings event','<p><em>--- English version bellow ---</em></p>\r\n<p><strong>Kom til f&aelig;llesm&oslash;de og f&aelig;llesmadlavnings event</strong></p>\r\n<p>Den 29. august afholdes endnu et f&aelig;llesm&oslash;de, hvor vi bla. skal snakke planl&aelig;gning af avlerm&oslash;de og hvor vi f&aring;r bes&oslash;g af Dr. Jonathan Dolly. Allerede den 30. august er der mulighed for at deltage i et f&aelig;llesmadlavnings event hvor vi laver mad sammen med udgangspunkt i gr&oslash;nsagerne fra gr&oslash;nsagsposen.</p>\r\n<p><strong>Community Cooking Event (som inkluderer en gr&oslash;ntsagspose) onsdag den 30. august 2023</strong></p>\r\n<p>Tanken er at bringe folk sammen omkring madlavning. Vores poser med gr&oslash;ntsager bliver leveret direkte til Hotel- og Restaurantskolen (i stedet for din s&aelig;dvanlige afdeling), og vi for-tilbereder en uges mad sammen i Restaurantskolens stork&oslash;kkener.<br /><br />Dette er en fantastisk mulighed for at invitere venner, kolleger og familie ind i KBHFF, s&aring; de selv kan m&oslash;de vores f&aelig;llesskab og smage kvaliteten af vores gr&oslash;ntsager.<br /><br />Her er et link til at <a href=\"https://billetto.dk/e/kbhff-community-cooking-vegetable-order-2-billetter-862538\" target=\"_blank\">k&oslash;be bille</a>t. Der er reserveret 10 billetter til vores medlemmer, som du kan f&aring; adgang til ved at bruge koden VEGETABLES ved check-out. Dette giver dig ogs&aring; en lille rabat, da KBHFF betaler for Billetto servicegebyret (17 DKK).</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p><strong>Kom til f&aelig;llesm&oslash;de d. 29 august og m&oslash;d Dr. Jonathan Dolley</strong><br /><br />Dr. Jonathan Dolley har tilbragt de sidste to &aring;r i Sydkorea med at forske i Hansalims historie, en kooperativ dagligvarebutik indlejret i en ambiti&oslash;s &oslash;kologisk-alternativ bev&aelig;gelse, der samlede pro-demokrati-, kreditforenings-, &oslash;kologiske landbrugeres og kvindernes bev&aelig;gelser fra 1960\'erne til 80\'erne omkring en vision om et alternativt samfund bygget p&aring; gensidigt ansvar for hinanden og for den ikke-menneskelige verden.<br /><br />Dolleys pr&aelig;sentation vil omhandle den historiske baggrund og oprindelsen af Hansalim og unders&oslash;ge deres filosofi og bem&aelig;rkelsesv&aelig;rdige rejse for at blive en af Koreas mest prominente sociale virksomheder. Han vil g&aring; i dybden med deres resultater samt de udfordringer, de har st&aring;et over for, mens de har arbejdet p&aring; at etablere et regenerativt f&oslash;devaresystem baseret p&aring; solidaritet mellem forbrugere og producenter og dermed tilbyde et omfattende alternativ til det moderne industrielle f&oslash;devaresystem.&nbsp;<br /><br /><br /><strong>Kom og hver med til at skabe dit f&oslash;devaref&aelig;llesskab</strong><br /><br />F&aelig;llesm&oslash;det er der, hvor foreningens medlemmer har mulighed for at s&aelig;tte deres pr&aelig;g p&aring; foreningen. Det er nogle hyggelige timer, hvor vi fejrer f&aelig;llesskabet, spiser aftensmad sammen og l&aelig;rer hinanden bedre at kende. Det kommende f&aelig;llesm&oslash;de finder sted d. 29. 08. 2023 p&aring; Hotel- og Restaurantskolen.<br /><br /><br />M&oslash;dedokumentet og tilmeldingsliste findes <a href=\"https://docs.google.com/document/d/1GNk91NWmWcz1qmGl1fVb_NSgn1auuhBEzSetv8cHpx0/edit?usp=sharing\" target=\"_blank\">her</a>.<br />F&aelig;llesm&oslash;dernes struktur er f&oslash;lgende:<br /><br />17.00 &ndash; 18.00 Punkterne fra dagsordnen gennemg&aring;s i plenum. Der kan stilles opklarende sp&oslash;rgsm&aring;l, men l&aelig;ngere diskussioner tages i mindre grupper.<br /><br />18.00 &ndash; 19.30 Ud fra dagsordenens punkter arbejdes der i mindre grupper, eksempelvis planl&aelig;gning af et st&oslash;rre arrangement, kommunikationskampagne mm. Der kan ogs&aring; v&aelig;re konkrete opgaver, der l&oslash;ses fx arbejdsgruppem&oslash;de for indk&oslash;b.<br /><br />19.30- 20.00 F&aelig;llesspisning<br /><br />20.00 &ndash; 21.00 Freml&aelig;ggelse af forslag af arbejdsgrupperne og diskussioner af relevante emner i plenum.<br /><br />F&aelig;llesm&oslash;derne i 2023 falder p&aring; f&oslash;lgende datoer, s&aring; s&aelig;t allerede nu kryds i kalenderen (der kan forekomme &aelig;ndringer):<br /><br />30 maj, d. 29 august, d. 26 september og d. 28 november.<br /><br /><br /><strong>F&aelig;llesspisning</strong><br /><br />Vil du gerne v&aelig;re med til at lave mad til f&aelig;llesspisningen? S&aring; send en mail til vores f&aelig;lleskoordinator p&aring; fk@kbhff.dk og meld dig p&aring; k&oslash;kkenholdet. Husk og medbring en boks til rester, hvis du gerne vil have rester med hjem.<br /><br /><br /><strong>Adresse</strong><br /><br />F&aelig;llesm&oslash;derne afholdes p&aring; Hotel- og Restaurantskolen p&aring; Vigerslev All&eacute; 18, 2500 K&oslash;benhavn, hvor foreningen ogs&aring; har sit f&aelig;lleslager, i k&aelig;lderlokalerne ved kursusk&oslash;kkenet A 006. Drej til h&oslash;jre efter indgang p&aring; skolens omr&aring;de fra Lysh&oslash;jg&aring;rdvej og kig efter en &aring;ben k&aelig;lderindgang/d&oslash;r. Ring til 28887923 hvis du ikke kan finde os.</p>\r\n<p><em>--- English version ---</em></p>\r\n<p>On August 29th, another joint meeting is scheduled, during which we will discuss the planning of the breeder\'s meeting and have a visit from Dr. Jonathan Dolly. Already on August 30th, there\'s an opportunity to participate in a communal cooking event where we\'ll cook together using the vegetables from the vegetable bag.</p>\r\n<p></p>\r\n<p><strong>Community Cooking Event (which includes a Vegetable Order) on Wednesday August 30 th, 2023</strong></p>\r\n<p>The idea is to bring people together around cooking. So, bags of vegetables will be delivered to directly the Copenhagen Hospitality College (instead of your usual department), and we will prepare a week\'s worth of food together over 4 hours in the Restaurant School\'s industrial kitchens.<br /><br />This is a great opportunity to invite friends, colleagues, and family into KBHFF so that they can meet our community and taste the quality of our vegetables for themselves.<br /><br />Here is a link to <a href=\"https://billetto.dk/e/kbhff-community-cooking-vegetable-order-2-billetter-862538\" target=\"_blank\">buy a ticket</a>. There are 10 tickets reserved for our members, which you can access using the code VEGETABLES at check-out. This also gives you a small discount, as KBHFF will pay for the Billetto service fee (17 DKK).</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<p><strong>Come to the open meeting and meet Dr. Jonathan Dolley</strong><br /><br />Dr. Jonathan Dolley has spent the last two years in South Korea conducting research on Hansalim a co-operative grocery store embedded in an ambitious ecological-alternative movement that drew together the pro-democracy, credit-union, organic farmers&rsquo; and women&rsquo;s movements of the 1960s-80s around a vision of an alternative society built on mutual responsibility for one another and for the non-human world.<br /><br />His presentation will encompass the historical backdrop and origins of Hansalim, delving into their distinctive philosophy and extraordinary path to becoming one of Korea\'s most prominent social enterprises. He will delve into their achievements as well as the obstacles they\'ve encountered while striving to establish a regenerative food system founded on consumer-producer solidarity, offering a holistic alternative to the contemporary industrial food system.&nbsp;<br /><br /><br /><strong>Open meetings: Come and cocreate your food cooperative</strong><br /><br />The open meetings are were all the members of KBHFF have the possibility to make a mark at the cooperative. It is a cosy time, where we celebrate the cooperative, eat a meal together and get to know each other. The upcoming meeting will take place on August 29, 2023, at Hotel- og Resturantskolen.<br /><br />The agenda and registration list can be found <a href=\"https://docs.google.com/document/d/1GNk91NWmWcz1qmGl1fVb_NSgn1auuhBEzSetv8cHpx0/edit?usp=sharing\" target=\"_blank\">here</a>.<br />The structure of the open meetings looks like this:<br /><br />5 &ndash; 6 pm: Go through the points on the agenda in plenum. Questions of clarification can be asked, but in-depth discussion of individual issues is to be done in smaller groups.<br /><br />6 &ndash; 7:30 pm: Based on the items on the agenda, work is done in smaller groups, for example planning a larger event, communication campaign etc. There may also be concrete tasks to be solved, e.g. working group meeting for ber 26th, and November 28th.\"<br /><br />The joint meetings in 2023 are scheduled for the following dates, so go ahead and mark your calendar (changes may occur):<br /><br />May 30th, August 29th, September 26th, and November 28th.<br /><br /><br /><strong>Community Dinner</strong><br /><br />Would you like to help prepare food for the community dinner? Then send an email to our community coordinator at fk@kbhff.dk and sign up for the kitchen team. Remember to bring a container for leftovers if you\'d like to take some home.<br /><br /><br /><strong>Address</strong><br /><br />The general meeting is in the basement rooms next to the course kitchen A 006 Turn right after entering the school grounds from Lysh&oslash;jg&aring;rdvej and look for an open basement entrance/door. Call 28887923 if you can\'t find us.</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>','template-b.html'),
	(8,603,'September NYHEDSBREV','Hvad sker der i dit fødevarefællesskab? / What\'s happening in your food community?','<p>&nbsp; --- English version below ---</p>\r\n<div class=\"media item_id:603 variant:HTMLEDITOR-html-k45hdcav name:test03.png filesize:1992475 format:png width:3106 height:1006\">\r\n	<p><a href=\"/images/603/HTMLEDITOR-html-k45hdcav/480x.png\"></a></p></div>\r\n<p>Drys &Oslash;ko som vi blandt andet har modtaget salat fra denne sommer, afholdt &aring;ben hus d. 15. august hvor medlemmer af K&oslash;benhavns F&oslash;devaref&aelig;llesskab selvf&oslash;lgelig deltog. Det var en hyggelig eftermiddag, hvor Drys &Oslash;ko &oslash;nskede at dele sommerens frodige sk&oslash;nheder, da markerne var i deres es. Under bes&oslash;get blev der afholdt rundvisning p&aring; markerne og eksklusiv tomatsmagning, hvor medlemmerne kunne nyde duften og smagen af Drys &Oslash;kos 30 &oslash;kologiske tomatsorter. Derudover var der selvf&oslash;lgelig masser af tid til at stille en masse sp&oslash;rgsm&aring;l. Oplevelsen var forh&aring;bentlig med til at give deltagerne en dybere forst&aring;else for landbrugets praksis.<br /><br /><a href=\"https://kbhff.dk/nyheder/stemningsbilleder-fra-drys-oeko\" target=\"_blank\">L&aelig;s mere og se stemningsbillederne her</a></p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>F&aelig;llesm&oslash;de 29. august 2023</strong></h3>\r\n<p>Til f&aelig;llesm&oslash;det d. 29 august havde vi et utrolig sp&aelig;ndende opl&aelig;g af Dr. Jonathan Dolley, som fortalte om sin research i den historiske baggrund og oprindelsen af Hansalim og deres filosofi og bem&aelig;rkelsesv&aelig;rdige rejse for at blive en af Koreas mest prominente sociale f&oslash;devarer kooperativer.</p>\r\n<p></p>\r\n<p><strong>Prisregulering</strong><br />Hertil besluttede f&aelig;llesm&oslash;det ogs&aring; at s&aelig;nke overheaden p&aring; gr&oslash;ntsagsposen fra 25% til 20% &aelig;ndringen vil medf&oslash;re en samlet indt&aelig;gtsnedgang p&aring; 26.000 kr for hele &aring;ret (svarende til cirka 17.000 kr indtil generalforsamlingen) og &oslash;ge indk&oslash;bsgruppens r&aring;derum. Mere herom n&aring;r beslutningen tr&aelig;der i kraft.  <br /><br />Beslutningen er f&oslash;rste skridt i en n&oslash;dvendig prisregulering, s&aring; forenings priser tilpasses inflationen. Der er indtil videre valgt ikke at lave yderligere pris&aelig;ndringer, grundet den kommende vinters&aelig;son og hungry gab. Planen er indtil nu at forslag til yderligere pris&aelig;ndringer vil blive pr&aelig;senteret til generalforsamlingen 2024.<br /><br /><a href=\"https://docs.google.com/document/d/1GNk91NWmWcz1qmGl1fVb_NSgn1auuhBEzSetv8cHpx0/edit?usp=sharing\" target=\"_blank\">Du kan l&aelig;se hele referatet fra det forrige f&aelig;llesm&oslash;de her</a></p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>Kom til f&aelig;llesm&oslash;de d. 26. september og m&oslash;d Andreas Lloyd</strong></h3>\r\n<p>Til f&aelig;llesm&oslash;det d. 26. september kan du m&oslash;de Andreas Lloyd tidligt medlem af K&oslash;benhavns F&oslash;devaref&aelig;llesskab. Andreas vil fort&aelig;lle r&oslash;verhistorier fra F&oslash;devaref&aelig;llesskabets tidlige dage og hans seneste bog &ldquo;F&oslash;lelsen af demokrati&rdquo;. Du kan l&aelig;se mere om hans bog <a href=\"https://andreaslloyd.dk/\" target=\"_blank\">her</a>. bogen vil ogs&aring; v&aelig;re til salg p&aring; selve dagen.<br /><br /><a href=\"https://docs.google.com/document/d/1vbat86WsBiGRk4EtzIciCGh7SkpiSmAVkvC1PW1PWK0/edit?usp=sharing\" target=\"_blank\">Du kan se hele dagsordenen til n&aelig;ste f&aelig;llesm&oslash;de og tilmelde dig her</a><br /><br />Vi holder f&aelig;llesm&oslash;de den sidste tirsdag i Januar, Marts, Maj, August, September og November kl. 17-21.</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>Det sker i dit F&oslash;devaref&aelig;llesskab</strong></h3>\r\n<p><strong>H&oslash;stfest p&aring; Birkemosegaard d. 7. oktober 2023</strong><br />G&aring; ikke glip af den &aring;rlige h&oslash;stfest p&aring; Birkemoseg&aring;rd. Vi begynder dagen tidligt i marken p&aring; Sj&aelig;llands Odde, hvor det ligesom sidste &aring;r st&aring;r p&aring; &aelig;bleplukkning og hvidl&oslash;g plantning. Vi afrunder dagen med en hyggelig festmiddag p&aring; Birkemoseg&aring;rds elegante restaurant.<br /><br /><a href=\"https://kbhff.dk/nyheder/hoestfest-paa-birkemosegaard-1\" target=\"_blank\">L&aelig;s mere om arrangementet og tilmeld dig her</a><br /><br /><strong>Lugetur til Birkemosegaard</strong><br />Hvis du er hurtig p&aring; tasterne har du stadig mulighed for at tilmelde dig lugeture til Birkemosegaard inden s&aelig;sonen slutter for i &aring;r. <a href=\"https://kbhff.dk/nyheder/lugeturene-er-tilbage\" target=\"_blank\">Du kan l&aelig;se mere om lugeturene og hvordan du tilmelder dig her</a><br /><br /><strong>Frivillig fredag d. 29. september</strong><br />M&oslash;d K&oslash;benhavns F&oslash;devaref&aelig;llesskab Amager til Frivillig Fredag den 29. september klokken 16.00-18.00 i Maskinhallen, Sundholmsvej 28A. <a href=\"https://www.facebook.com/events/1335186620676917/?acontext={%22ref%22%3A%2252%22%2C%22action_history%22%3A%22%5B{%5C%22surface%5C%22%3A%5C%22share_link%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22share_link%5C%22%2C%5C%22extra_data%5C%22%3A{%5C%22invite_lin\" target=\"_blank\">L&aelig;s mere om arrangementet p&aring; Facebook begivenheden her.</a><br /><br /><strong>Avlerm&oslash;de</strong><br />S&aelig;t allerede nu kryds i kalenderen d. 23. november hvor vi h&aring;ber p&aring; at kunne afholde avlerm&oslash;de. Mere om dette senere.&nbsp;<br /></p>\r\n<p></p>\r\n<p><strong>International Citizen Days</strong></p>\r\n<p>D. 23 september deltager medlemmer fra KBHFF &lsquo;International Citizens Day&rsquo; fra kl. 10.00-15.00 i &Oslash;ksnehallen. Hvis du gerne vil h&oslash;re mere eller v&aelig;re med til at repr&aelig;sentere foreningen for nye tilflyttere til K&oslash;benhavn og potentielle nye medlemmer af KBHFF, s&aring; skriv til bestyrelsen p&aring; bestyrelse@kbhff.dk.</p>\r\n<p></p>\r\n<p><strong>Vil I gerne lave mere reklame for jeres arrangement?</strong><br />Vil I gerne g&oslash;re reklame for jeres arrangement? Send en mail til bestyrelse@kbhff.dk, ogs&aring; hj&aelig;lper vi jer videre.</p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h4><strong>Opslagstavlen</strong></h4>\r\n<p><strong>Plant Food Festival d. 4.-5. november</strong></p>\r\n<p>Vi er blevet inviteret til at deltage under Plant Food Festival i &aring;r i &Oslash;ksnehallen i K&oslash;benhavn d. 4. og 5. november. Hvis du har lyst til at repr&aelig;sentere KBHFF, s&aring; skriv en mail til bestyrelse@kbhff.dk.<br /><br /><strong>Bliv en del af f&aelig;lleslageret&nbsp;</strong><br />Passer vagterne i din lokalafdeling d&aring;rligt? Vil du gerne m&oslash;de avlerne n&aring;r de kommer til f&aelig;lleslageret? M&aring;ske skal du v&aelig;re frivillig p&aring; f&aelig;lleslageret? Lige nu mangler vi frivillige p&aring; f&aelig;lleslageret.<br /><br /><a href=\"https://kbhff.dk/nyheder/bliv-en-del-af-faelleslageret-eller-chauffoerteamet\" target=\"_blank\">L&aelig;s mere her</a><br /><br /><strong>Bliv indk&oslash;ber</strong><br />Er du tr&aelig;t af vagter i din lokalafdeling, som passer d&aring;rligt med dit studie eller arbejde? Vil du have en st&oslash;rre indflydelse p&aring;, hvad der kommer i din ugentlige gr&oslash;nsagspose? Elsker du K&oslash;benhavns F&oslash;devaref&aelig;llesskabs varer og vil gerne bidrage til f&aelig;llesskabets m&aring;l om at have friske, lokalt producerede &oslash;kologiske og biodynamiske produkter hver uge? S&aring; har du chancen for at blive en del af indk&oslash;bsgruppen.<br /><br /><a href=\"https://kbhff.dk/nyheder/skal-du-vaere-med-til-at-bestemme-indholdet-af-groensagspose\" target=\"_blank\">L&aelig;s mere her</a><br /><br /><strong>Har du tid til en lille sjov SoMe opgave om onsdagen eller torsdagen?</strong><br />Lige nu bliver foreningens optr&aelig;den p&aring; sociale medier prim&aelig;rt drevet af seje frivillige fra Valby og bestyrelsen, men vi kunne virkelig bruge noget hj&aelig;lp.<br /><br />Har du derfor 5 min. om onsdagen til at lave en hurtig story p&aring; Instagram, (du skal ikke t&aelig;nke p&aring; billedmateriale), eller har du tid og lyst til at dele et foto af ugens gr&oslash;ntsagspose om torsdagen p&aring; Instagram og facebook? s&aring; h&oslash;rer vi gerne fra dig. Du kan kontakte os ved at skrive til bestyrelse@kbhff.dk.</p>\r\n<div class=\"media item_id:603 variant:HTMLEDITOR-html-gt2ylfmf name:test04.png filesize:1902721 format:png width:3106 height:1006\">\r\n	<p><a href=\"/images/603/HTMLEDITOR-html-gt2ylfmf/480x.png\"></a></p></div>\r\n<p>Drys &Oslash;ko, who we received salad from this summer, held an open house on August 15th, where members of the Copenhagen Food Community participated. It was a pleasant afternoon were Drys &Oslash;ko wanted to share the lush beauties of summer, as the fields were at their best. During the visit, there was a tour of the fields and an exclusive tomato tasting, where members could enjoy the scent and taste of Drys &Oslash;ko\'s 30 organic tomato varieties. Additionally, there was plenty of time to ask questions. The experience hopefully contributed to giving participants a deeper understanding of agricultural practices.<br /><br /><a href=\"https://kbhff.dk/nyheder/stemningsbilleder-fra-drys-oeko\" target=\"_blank\">Read more and see the mood pictures here</a></p>\r\n<p></p>\r\n<p>&nbsp;&nbsp;</p>\r\n<h3><strong>Community Meeting, August 29, 2023</strong></h3>\r\n<p>At the community meeting on August 29th, we had an incredibly exciting presentation by Dr. Jonathan Dolley, who talked about his research into the historical background and origin of Hansalim and their philosophy, and their remarkable journey to become one of Korea\'s most prominent social food cooperatives.<br /><br /><strong>Price Regulation</strong><br />The community meeting also decided to lower the overhead on the vegetable bag from 25% to 20%. This change will result in a total revenue decrease of 26,000 DKK for the whole year (equivalent to about 17,000 DKK until the general assembly) and increase the purchasing group\'s flexibility. More about this when the decision comes into effect. This decision is the first step in a necessary price adjustment to align with inflation. So far, there have been no further price changes due to the upcoming winter period and anticipated high demand. The plan is to present proposals for further price changes at the general assembly in 2024.</p>\r\n<p><a href=\"https://docs.google.com/document/d/1GNk91NWmWcz1qmGl1fVb_NSgn1auuhBEzSetv8cHpx0/edit\" target=\"_blank\">You can read the entire minutes from the previous community meeting here</a></p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>Come to the community meeting on September 26th and meet Andreas Lloyd</strong></h3>\r\n<p>At the community meeting on September 26th, you can meet Andreas Lloyd, an early member of the Copenhagen Food Community. Andreas will share stories from the early days of the Food Community and talk about his latest book \"The Feeling of Democracy\".<a href=\"https://andreaslloyd.dk/\" target=\"_blank\"> You can read more about his book here</a>. The book will also be available for sale on the day.</p>\r\n<p><a href=\"https://docs.google.com/document/d/1vbat86WsBiGRk4EtzIciCGh7SkpiSmAVkvC1PW1PWK0/edit\" target=\"_blank\">You can see the full agenda for the next community meeting and sign up here</a></p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>Events in your Food Community</strong></h3>\r\n<p><strong>Harvest Festival at Birkemosegaard on October 7, 2023</strong><br />Don\'t miss the annual harvest festival at Birkemoseg&aring;rd. We start the day early in the field at Sj&aelig;llands Odde, where, like last year, we\'ll be picking apples and planting garlic. We conclude the day with a cozy dinner at Birkemoseg&aring;rd\'s elegant restaurant.<br /><br /><a href=\"https://kbhff.dk/nyheder/hoestfest-paa-birkemosegaard-1\" target=\"_blank\">Read more about the event and sign up here</a><br /><br /><strong>Weeding Trip to Birkemosegaard</strong><br />If you\'re quick on the keys, you still have the opportunity to sign up for weeding trips to Birkemosegaard before the season ends this year. <a href=\"https://kbhff.dk/nyheder/lugeturene-er-tilbage\" target=\"_blank\">You can read more about the weeding trips and how to sign up here.</a><br /><br /><strong>Volunteer Friday on September 29</strong><br />Meet Copenhagen Food Community Amager for Volunteer Friday on September 29 from 4:00 PM to 6:00 PM at the Machine Hall, Sundholmsvej 28A. Read more about the event on the Facebook page here: Link to the Facebook event**<br /><br /><strong>Meet the farmers</strong><br />Mark your calendars for November 23rd, where we hope to hold a grower\'s meeting. More on this later.<br /></p>\r\n<p></p>\r\n<p><strong>International Citizen Days</strong></p>\r\n<p>On September 23rd, members from KBHFF will participate in \'International Citizens Day\' from 10:00 AM to 3:00 PM at &Oslash;ksnehallen. If you would like to know more or join in representing the association for new arrivals in Copenhagen and potential new members of KBHFF, please contact the board at bestyrelse@kbhff.dk.</p>\r\n<p></p>\r\n<p><strong>Would you like to advertise your event more?</strong><br />Would you like to advertise your event? Send an email to bestyrelse@kbhff.dk, and we will assist you further.</p>\r\n<p></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3><strong>Bulletin board</strong></h3>\r\n<p>We have been invited to participate in the Plant Food Festival this year at &Oslash;ksnehallen in Copenhagen on November 4th and 5th. If you would like to represent KBHFF, please email bestyrelse@kbhff.dk.<br /><br /><strong>Become a part of f&aelig;lleslageret</strong><br />Are the shifts at your local branch inconvenient? Do you want to meet the farmers when they come to the collective storage? Maybe you should volunteer at the collective storage?&nbsp;<br /><br /><a href=\"https://kbhff.dk/nyheder/bliv-en-del-af-faelleslageret-eller-chauffoerteamet\" target=\"_blank\">Read more here</a><br /><br /><strong>Become a buyer</strong><br />Are you tired of shifts at your local branch that don\'t fit well with your studies or work? Do you want a greater say in what goes into your weekly vegetable bag? Do you love the products of the Copenhagen Food Community and want to contribute to the community\'s goal of having fresh, locally produced organic and biodynamic products every week? Then you have the chance to become a part of the purchasing group!<br /><br /><a href=\"https://kbhff.dk/nyheder/skal-du-vaere-med-til-at-bestemme-indholdet-af-groensagspose\" target=\"_blank\">Read more here<br /></a><br /><strong>Do you have time for a fun SoMe task on Wednesday or Thursday?</strong><br />Currently, the association\'s presence on social media is primarily driven by dedicated volunteers from Valby and the board, but we could really use some help.<br /><br />So, if you have 5 minutes on Wednesdays to quickly create a story on Instagram (you don\'t have to worry about visuals), or if you have the time and desire to share a photo of the week\'s vegetable bag on Thursday on Instagram and Facebook, we\'d love to hear from you. You can contact us by writing to bestyrelse@kbhff.dk.</p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>','template-b.html');

/*!40000 ALTER TABLE `item_message` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_message_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_message_versions`;

CREATE TABLE `item_message_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `layout` varchar(255) NOT NULL DEFAULT '',
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_message_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table item_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_page`;

CREATE TABLE `item_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_page_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_page` WRITE;
/*!40000 ALTER TABLE `item_page` DISABLE KEYS */;

INSERT INTO `item_page` (`id`, `item_id`, `name`, `subheader`, `description`, `html`)
VALUES
	(1,2,'Persondata','','Her findes informationer om Københavns Fødevarefælleskab\'s opbevaring af persondata og personoplysninger.','<p><em>English version below</em></p>\n<h2>Retningslinjer for behandling og opbevaring af persondata</h2>\n<p>Dataansvarlig: Københavns Fødevarefællesskab, c/o Karens Hus, Bispebjerg Bakke 8,&nbsp;2400 København N&nbsp;</p>\n<p>Dataopbevaring: Vi behandler dine data i nødvendigt omfang, så længe du er medlem.</p>\n<p>Datamodtagere: Udover i det omfang det er nødvendigt i forbindelse online betalingstransaktioner, videregiver vi ikke dine oplysninger til andre dataansvarlige uden dit samtykke.</p>\n<p>Dine rettigheder og oplysningspligt: Du har til enhver tid retten til at anmode om indsigt i, berigtigelse af, sletning af, begrænsning af behandlingen af dine personoplysninger samt retten til dataportabilitet (eksport af de automatisk behandlede personoplysninger, du har givet til os). Tilbagetrækning af samtykke til databehandling sker ved, at du melder dig ud af foreningen via den tilsvarende funktion i medlemssystemet.<br />Du har til enhver tid retten til at klage i overensstemmelse med Datatilsynet. Klager modtages på <a href=\"mailto:info@kbhff.dk\">info@kbhff.dk</a>. (<a href=\"https://www.datatilsynet.dk/borger/klage-til-datatilsynet/\">https://www.datatilsynet.dk/borger/klage-til-datatilsynet/</a>)</p>\n<h3>Hvad bruger vi dine personoplysninger til</h3>\n<ol>\n	<li>De oplyste personoplysninger i forbindelse med indmeldelse opbevares af Københavns Fødevarefællesskab og gemmes op til et år efter endt medlemskab. Det drejer sig om navn, telefonnummer og emailadresse.</li>\n	<li>Det er en betingelse for medlemskab af Københavns Fødevarefællesskab, at Københavns Fødevarefællesskab kan opbevare og behandle disse oplysninger.</li>\n	<li>Oplysninger om navn og kontaktoplysninger anvendes af Københavns Fødevarefællesskab i forbindelse med udførelse af foreningens arbejde. Dette indbefatter behandling af ordrer når du bestiller, udsendelse af medlemsbreve samt den nødvendige kommunikation forbundet med udførelsen af foreningens arbejde, i det omfang du indgår i dette.</li>\n	<li>Ved gennemførelse af køb registreres betalingsmåde, produkter, transaktionsbeløb og dato af køb og hvilken afdeling købet fandt sted i.</li>\n	<li>Oplysninger om betalingstransaktioner opbevares i 5 år. Oplysninger i øvrigt opbevares i op til 1 år efter ophør af medlemskab. Denne grænse dækker dog ikke oplysninger som er kritiske for foreningen så som emails, bidrag i fora, wiki og referater. Du er selv ansvarlig for at administrere dine personrelaterede oplysninger (herunder fjerne dem, hvis du ønsker dette) fra sider der bruges til kommunikation mellem medlemmer, men som ikke direkte administreres af KBHFF (f.eks. wiki).</li>\n	<li>Københavns Fødevarefællesskab videregiver oplysninger til en betalingsservice på gennemførelse af betalingstransaktioner, hvis du betaler med betalingskort.</li>\n	<li>Foruden det i punkt 6 anførte udveksler Københavns Fødevarefællesskab ikke oplysninger med nogen tredjepart.</li>\n</ol>\n<h2>Cookie indstillinger</h2>\n<p>Kbhff.dk bruger fire cookies, som er nødvendige for at hjemmesiden fungerer normalt.</p>\n<p>De sørger for</p>\n<ol>\n	<li>at holde styr på hver bruger session og login detaljer. Dette sikrer bl.a. at man ikke bliver logget ud når man klikker rundt på hjemmesiden.</li>\n	<li>det samme som 1), men ift. det gamle medlemssystem, som vil blive udfaset i efteråret 2021.</li>\n	<li>at huske produkter, der er tilføjet til kurven, samt gennemførte ordre.</li>\n	<li>også at huske produkter, der er tilføjet til kurven, samt gennemførte ordre.</li>\n</ol>\n<h2>Handling of personal information</h2>\n<p>Data responsible: Københavns Fødevarefællesskab, c/o Karens Hus, Bispebjerg Bakke 8, 2400 København N</p>\n<p>Data storage: We use your data to the extent it is necessary for the duration of your membership.</p>\n<p>Data receivers:  We do not exchange data with other data responsible organisations, apart from necessary data in connection with payment transactions.</p>\n<p>Your rights: You can, at any time, ask for insight into, correction of, deletion of, or limitation of your personal data, likewise you have right to data portability (export of the automatically handled data, you have given us). Withdrawal of your consent to handle your personal data is done by ending your membership via the function in the membership system.</p>\n<p>You have the right to launch a complaint at any time according to the guidelines set out by Datatilsynet (The Danish data protection agency). Complaints should be directed to <a href=\"mailto:info@kbhff.dk\" target=\"_blank\">info@kbhff.dk</a>.  (<a href=\"https://www.datatilsynet.dk/borger/klage-til-datatilsynet/\" target=\"_blank\">https://www.datatilsynet.dk/borger/klage-til-datatilsynet/</a>)</p>\n<h3>What we use your personal data for:</h3>\n<ol>\n	<li>The personal data you give us when you become a member is stored and used by Københavns Fødevarefællesskab, and may be stored for up to one year after your membership has ceased. This consists of your name, telephone number and email address.</li>\n	<li>Your membership is conditioned by Københavns Fødevarefællesskab’s access to store and handle this data.</li>\n	<li>Information regarding name and contact information is used by Københavns Fødevarefællesskab in connection with the work carried out by the organisation. This consists of handling of orders when you make a purchase from us, dispatchment of mail to members and the necessary communication connected with working for the organisation if you participate in this.</li>\n	<li>By completing a purchase with us, we register payment method, amount, products, time, and to which department the purchase was directed.</li>\n	<li>Information regarding payment transactions are stored for five years. Apart from this, other information is stored up to one year after ceased membership. However, this does not cover information which is critical to the organisation such as emails, contributions to fora, wiki and minutes from meetings.</li>\n	<li>Københavns Fødevarefællesskab passes on information regarding transactions to a payment service, if you use a payment card to make a purchase.</li>\n	<li>Københavns Fødevarefællesskab does not exchange data with any third party apart from the case stated in bullet no. 6.</li>\n</ol>\n<h2>Cookies</h2>\n<p>Kbhff.dk is using four cookies necessary for the website to function normally.</p>\n<p>The first is used to keep track of the user session and login details. Without this cookie, everytime you refresh a page or click a link to open a new page, the website would think you are a new person and will not remember if you had logged in.</p>\n<p>The second is used for the same reasons but in relation to the old member system that was used to purchase bags up until mid-2021. This cookie is necessary only during the period when we are transitioning to the new member system. In Fall 2021, it will be removed.</p>\n<p>The third and fourth are used to remember the products that you added to your cart and completed orders.</p>'),
	(2,9,'Allerede medlem','','',''),
	(3,10,'Tilmelding','','',''),
	(5,12,'Afdelinger i KBHFF','','Find lokalafdelinger i Københavns Fødevarefællesskab. Her kan du se hvor du kan hente dine lokale, økologiske grøntsager. Du kan finde åbningstider, adresser, og kontaktinformation på hver afdeling.','<p>&nbsp;&nbsp; <br /></p>'),
	(6,18,'For Leverandører','','Her findes information for Københavns Fødevarefællesskabs økologiske grøntsagsleverandører: om vores fælleslager, vores handelsbetingelser samt fakturerin.','<h3>Indkøb og handelsbetingelser</h3>\r\n<p>Har du spørgsmål vedrørende handler og indkøb, er du velkommen til at kontakte KBHFF’s indkøbsgruppe på indkoeb@kbhff.dk.</p>\r\n<p><a href=\"https://kbhff.dk/handelsbetingelser\" target=\"_blank\">Læs Københavns Fødevarefællesskabs handelsbetingelser&nbsp;her</a></p>\r\n<p>Har du spørgsmål til handelsbetingelserne, er du velkommen til at kontakte KBHFF’s bestyrelse på <a href=\"mailto:bestyrelse@kbhff.dk\">bestyrelse@kbhff.dk</a>.</p>\r\n<h3>Fakturaer</h3>\r\n<p>Fakturaer sendes elektronisk til: <a href=\"mailto:okonomi@kbhff.dk\">okonomi@kbhff.dk</a></p>\r\n<p>Faktureringsoplysninger:<br />Københavns Fødevarefællesskab f.m.b.a.<br />c/o Hotel- og Restaurantskolen<br />Vigerslev Alle 18<br />2500 Valby</p>\r\n<p>CVR:  32 99 66 71<br />Bank: 8401 1136136</p>\r\n<h3>Levering</h3>\r\n<p>OBS! Levering sker via porten ved Lyshøjgårdsvej/Kjeldsgårdsvej. Følg derefter kortet nedenfor.</p>\r\n<div class=\"media item_id:18 variant:HTMLEDITOR-html-qo1x7uh8 name:F%25C3%25A6lleslager.PNG filesize:157382 format:png width:613 height:329\">\r\n	<p><a href=\"/images/18/HTMLEDITOR-html-qo1x7uh8/480x.png\"><span>Københavns Fødevarefællesskab f.m.b.a.</span><br /><span>c/o Hotel- og Restaurantskolen</span><br /><span>Vigerslev Alle 18</span><br /><span>2500 Valby</span></a></p>\n</div>\r\n<p>Har du spørgsmål til levering, er du velkommen til at kontakte KBHFF’s fælleskoordinator fk@kbhff.dk eller pr. telefon.</p>\r\n<p>&nbsp; &nbsp;</p>'),
	(8,20,'Handelsbetingelser','','Salgsbetingelser og handelsbetingelser for leverandører af økologisk frugt og grøntsager til Københavns Fødevarefællesskab samt for medlemmerne.','<h2>Københavns Fødevarefællesskabs Handels-, Salgs- og Leveringsbetingelser</h2>\r\n<h3>Hovedkontor</h3>\r\n<p>Københavns Fødevarefællesskab f.m.b.a.<br />c/o Hotel- og Restaurantskolen <br />Vigerslev Allé 18 <br />2500 Valby</p>\r\n<p>CVR-nummer: 32996671<br />Etableringsår: 2008</p>\r\n<p>e-mail: <a href=\"mailto:info@kbhff.dk\">info@kbhff.dk</a><br />web: <a href=\"/\">www.kbhff.dk</a></p>\r\n<h3>Butikker / Besøgsadresser</h3>\r\n<p>Se siden for <a href=\"/afdelinger\">lokalafdelinger</a>.</p>\r\n<h3>Generelt</h3>\r\n<p>Københavns Fødevarefællesskab, KBHFF, vil være en del af en bæredygtig fremtid og foreningens handels-, salgs- og leveringsbetingelser baseres derfor på 10 grundprincipper. De har til formål, at sikre bæredygtighed i samtlige led af de kredsløb som fødevarefællesskabet indgår i.</p>\r\n<p><a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">De 10 grundprincipper findes her</a></p>\r\n<p>I det følgende omtales Københavns Fødevarefællesskab under forkortelsen KBHFF.</p>\r\n<h3>For leverandører</h3>\r\n<h4>1. Generelt</h4>\r\n<p>Medmindre andet er aftalt, er disse handelsbetingelser gældende for alle leverancer til KBHFF, hvad enten ordre er afgivet mundtligt eller skriftligt.<br /><strong>1.1.</strong> Sælgers evt. salgsvilkår finder alene anvendelse i det omfang, de er vedtaget ved skriftlig aftale mellem KBHFF og sælger.&nbsp; &nbsp; &nbsp; &nbsp; <strong>1.2.</strong> Aftaler med Københavns Fødevarefællesskab indgås på dansk.</p>\r\n<p></p>\r\n<h4>2. Betalingsvilkår</h4>\r\n<p>Forfaldsdato er løbende uge + 14 dage fra fakturadato.</p>\r\n<h4>3. Levering</h4>\r\n<p>Levering skal finde sted på de af KBHFF angivne&nbsp; leveringsadresser. Risikoens overgang sker på leveringsadressen, når varerne er aflæsset.<br /><strong>3.1.</strong> En angiven leveringstid må overholdes. Levering foregår hver onsdag inden kl. 11.00. Ved overskridelse af leveringstid er KBHFF berettiget til annullering af ordren.</p>\r\n<h4>4. Reklamationer</h4>\r\n<p>Alle varer modtages med forbehold af godkendelse, uanset om betaling har fundet sted.<br />Leverandøren underrettes straks og ellers uden ugrundet ophold om mangler i forhold til kvalitet eller leverance.</p>\r\n<h4>5. Mangelfulde varer</h4>\r\n<p>Er en vare mangelfuld i leverance eller kvalitet og har KBHFF ved modtagelse straks eller uden ugrundet ophold givet meddelelse til leverandøren herom, er KBHFF berettiget til omlevering inden for leveringstid eller hel eller delvis ophævelse af købet.</p>\r\n<h4>6. Følgeseddel</h4>\r\n<p>Enhver leverance skal ledsages af en følgeseddel, hvorpå er anført leveringssted samt nøjagtig angivelse af forsendelsens indhold. Det skal fremgå af følgesedlen, om varen er økologisk. Emballagen, varen er leveret i, skal være udspecificeret på følgesedlen med antal og art.</p>\r\n<h4>7. Faktura</h4>\r\n<p>Med mindre andet er aftalt sendes en samlet faktura elektronisk til KBHFF\'s økonomigruppe: <a href=\"mailto:okonomi@kbhff.dk\">okonomi@kbhff.dk</a><br /><strong>7.1.</strong> Emballagen, varen er leveret i, skal være udspecificeret på fakturaen med antal, art og pris.<br />Evt. transportudgift skal ligeledes selvstændigt opgives.</p>\r\n<h4>8. Kreditnota på emballage</h4>\r\n<p>Emballage der returneres fra KBHFF til leverandøren, forsynes med en følgeseddel med angivelse af antal, art og modtager. Disse emballager faktureres de pågældende leverandører.</p>\r\n<h4>9. Ændring af ordre</h4>\r\n<p>Enhver ændring eller annullering af ordre fra leverandøren må afgives skriftligt for at være bindende. En ændring eller annullering af en ordre skal være KBHFF i hænde 48 timer inden rette leveringstid.</p>\r\n<h4>10. Lovvalg og værneting</h4>\r\n<p>Enhver tvist mellem en samarbejdspartner og KBHFF skal løses i overensstemmelse med dansk ret ved den kompetente danske domstol.</p>\r\n<p><em>December 2023</em></p>\r\n<h3>For medlemmer</h3>\r\n<h4>1. Generelt</h4>\r\n<p>Disse handelsbetingelser er gældende for al handel på www.kbhff.dk.<br /><strong>1.1.</strong>	Aftaler med Københavns Fødevarefællesskab indgås på dansk.</p>\r\n<h4>2. Medlemsskab</h4>\r\n<p>I Københavns Fødevarefællesskab er der mulighed for to typer medlemskab frivillig og støttemedlem. Som frivillig lægger du typisk et par timers frivilligt arbejde hver måned, som støttemedlem betaler du en højere pris for en grøntsagspose, men behøver ikke lægge timer i frivilligt arbejde.<br />2.1. De to medlemskaber betaler samme pris for forudbestilt løssalg, arrangementer, indmeldningsgebyr og årligt kontigent. <br />2.2. Støttemedlemskabet tænkt som en midlertidig mulighed, hvis man for en periode ikke har mulighed for at tage en fast vagt.</p>\r\n<h4>3. Betaling</h4>\r\n<p>KBHFF’s standardvare er en pose med blandet lokalt dyrket økologisk grønt i sæsonbaseret udvalg, typisk 6-8 kg i alt. Indholdet varierer fra uge til uge alt afhængig af sæson og udbud. Posen afhentes i dit lokale afhentningssted i den angivne åbningstid. Derudover sælger KBHFF sæson-afhængige poser med f.eks. frugt, asparges, kartofler og svampe.</p>\r\n<p>KBHFF’s frugt- og grøntsagsposer er forudbetalte. Du skal betale før du kan hente din pose. Når du tilmelder dig, får du tildelt en personlig konto på KBHFF’s hjemmeside www.kbhff.dk, hvor du kan bestille varer og se oversigten over dine betalte bestillinger. For bestilling af varer til afhentning i butikken den næstkommende onsdag skal din bestilling senest være gennemført den forudgående onsdag kl 23:59. Du skal betale forud med betalingskort over internettet eller med kontanter, mobilepay eller betalingskort i din lokale afdeling.<br /><strong>3.1.</strong>&nbsp;Der kan ikke garanteres mulighed for at betale kontakt, da det ikke er alle lokalafdelinger som har et kontaktregnskab.<br /><strong>3.2.</strong>&nbsp;Kvitteringer for hver bestilling på din KBHFF-konto sendes til din email. Der er kun kvitteringer for løsslag ved brug af MobilePay.<br /><strong>3.3.</strong>&nbsp;Betalingskort: Når du bruger et betalingskort til at bestille hjemmefra, bliver kortet automatisk gemt af KBHFF\'s betalingsløsning Stripe, så det kan bruges igen ved næste bestilling. Du kan ikke selv slette dine gemte betalingskort, men hvis du ønsker det, kan du skrive til IT på mail adressen&nbsp;it@kbhff.dk.<br /><strong>3.4.&nbsp;</strong>Kontingent: bliver automatisk trukket i maj måned, hvis du har gemt et betalingskort. Du modtager en email en uge inden det bliver opkrævet. Hvis du ikke har et betalingskort gemt i systemet, skal du selv logge ind og betale kontingentet manuelt.<br /><strong>3.5.&nbsp;</strong>Betaling sker i danske kroner.</p>\r\n<h4>4. Priser</h4>\r\n<p>Alle priser på <a href=\"/\">www.kbhff.dk</a> er inklusiv moms og alle afgifter.</p>\r\n<h4>5. Gebyrer</h4>\r\n<p>KBHFF har følgende kort-gebyrer på handel på <a href=\"/\">www.kbhff.dk</a>:</p>\r\n<ul>\r\n	<li>Dankort, Visa/Dankort, Visa, Mastercard: Gratis</li>\r\n</ul>\r\n<p><strong>5.1.</strong> KBHFF har Stripe som betalingsløsning. Stripe opkræver et gebyr på 1,4% for betaling med betalingskort. Denne omkostning er inkluderet i prisen.</p>\r\n<h4>6. Sikkerhed</h4>\r\n<p>Når du handler på <a href=\"/\">www.kbhff.dk</a>, skal du benytte et betalingskort. For at beskytte dine kortoplysninger vil du ved indtastningen af kortoplysninger blive ført over til en betalingsside leveret af Stripe – der er certificeret til at håndtere betalingsdata. Stripe sørger for, at alle oplysninger behandles krypteret, så hverken KBHFF eller andre kan få adgang til dine kortoplysninger.</p>\r\n<h4>7. Afhentning af bestilte varer</h4>\r\n<p>Ved bestilling af varer fra KBHFF til afhentning i en af KBHFF lokalafdelinger er følgende gældende: der pålægger eget ansvar, at afhentningen sker inden for lokalafdelingens åbningstid. Ved afhentning oplyses det navn som medlemskabet er oprettet i.<br /><strong>7.1.&nbsp;</strong>Er du forhindret i at afhente dine varer, kan du bede en anden hente dine forudbestilte varer for dig.Hvis du ikke afhenter dine varer, går disse tabt og der gives ikke kredit til medlemmer, som ikke afhenter deres forudbestilte varer.<br /><strong>7.2.&nbsp;</strong>Flytning af dato for afhentning af varer: Datoen for afhentning kan flyttes på foreningens hjemmeside eller ved at spørge kassemesteren i ens lokalafdeling. Flytningen af ordren skal ske senest onsdag klokken 23:59 en uge før den først ønskede afhentningsdato.<br />Det er ikke muligt at flytte en ordre, hvis der er tale om forudbestilt løssalg som kun sælges på begrænsede datoer.</p>\r\n<h4>8. Reklamation</h4>\r\n<p>Du har lov til at klage over fejl og/eller mangler på en vare i op til to år efter, du har købt den. Det gælder selvfølgelig kun, hvis det ikke er dig, der har behandlet varen forkert.<br /><strong>8.1.</strong> Henvendelser vedrørende reklamation skal sendes til bestyrelsen og fælleskoordinatoren pr. mail. Umiddelbart forholder indkøbsgruppen/bestyrelsen/fælleskoordinatoren sig til ikke til en klage med mindre, at 5% af varepartiet er dårligt. Er det tilfældet, kontaktes indkøbsgruppen som står for dialogen med leverandøren.</p>\r\n<h4>9. Fortrydelsesret</h4>\r\n<p>KBHFF yder fortrydelsesret i henhold til følgende punkter i forbrugerloven:</p>\r\n<ul>\r\n	<li>For alle andre varer end levnedsmidler og varer til husholdningen, er der 14 dages fortrydelsesret.</li>\r\n	<li>For levnedsmidler og varer til husholdningen er der ingen fortrydelsesret.&nbsp;</li>\r\n</ul>\r\n<p><strong>9.1.</strong> For at benytte din fortrydelsesret på varer, der ikke er levnedsmidler eller til husholdningen, skal du inden 14 dage fra du har afhentet varen aflevere den tilbage i en af vores afdelinger i original emballage.<br /><strong>9.2.</strong> Køber har ansvaret for at bestillinger er angivet korrekt. KBHFF refunderer ikke ordre, hvor køber har lavet en fejlbestilling. Køber kan vælge at forsøge at finde en ny køber i sin lokalafdeling. Afsnit 7.2 beskriver mulighed for flytning af dato for afhentning ordre, flytningen skal ske en uge før den først ønskede afhentningsdato. Læs mere om gældende regler for flytning af bestillinger under afsnit 7.2.</p>\r\n<h4>10. Opsigelse af medlemskab</h4>\r\n<p>Der er mulighed for at opsige medlemskab på foreningens hjemmeside eller ved at bede kassemesteren i sin lokalafdeling om hjælp.<br /><strong>10.1.&nbsp;</strong>Kontingent refunderes ikke ved opsigelse af medlemskab.</p>\r\n<h4>11. Persondata</h4>\r\n<p>Persondata givet i forbindelse med handel på KBHFF\'s hjemmeside bearbejdes i henhold til vores <a href=\"/persondata\">Persondata politik</a>.</p>\r\n<p><em>Marts 2024</em></p>'),
	(9,25,'Produkter','','Detaljer om vores produkter','<h4><em><a href=\"https://kbhff.dk/english\" target=\"_blank\">Information in English here</a></em></h4>\r\n<p>&nbsp; &nbsp;</p>\r\n<p>Som medlem af Københavns Fødevarefællesskab kan du købe sæsonbestemt&nbsp;økologiske og biodynamiske fødevarer primært fra Sjælland,&nbsp;forudbestille ugentlige poser&nbsp;samt forudbestilt løssalg af udvalgte enkelte produkter. Grønsagsposen rummer typisk 6-8 forskellige typer lokalt produceret og sæsonbestemt økologisk eller biodynamisk frugt og grønt.</p>\r\n<p>Da posen sammensættes af sæsonens grøntsager varierer vægten. Om vinteren, hvor der er mange rodfrugter, vejer den typisk 6-8 kilo, mens den om sommeren, hvor salater, asparges, krydderurter osv. fylder mere, vejer den typisk omkring 4 kilo.&nbsp;Priserne på løssalgsprodukter (friske produkter eller hyldeprodukter) er de samme for alle medlemmer.</p>\r\n<h4><a href=\"https://kbhff.dk/\" target=\"_blank\">Se ugens poser her</a></h4>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3>Frugt- og grønt poser</h3>\r\n<ul>\r\n	<li>Grøntsagspose 125 kr. for (150 kr. for støttemedlemmer)</li>\r\n	<li>Kartoffelpose koster 15 kr. (hele året)</li>\r\n	<li>Svampepose koster 30 kr. (hele året)</li>\r\n	<li>Aspargespose 55 kr. (sæsonbestemt)</li>\r\n	<li>Frugtpose 60 kr. (sæsonbestemt indhold)</li>\r\n</ul>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3>Hyldevarer</h3>\r\n<p>Ud over friske grøntsager og frugt er der også mulighed for at købe hyldevarer med stort variantudvalg. Eksempelvis:</p>\r\n<ul>\r\n	<li>Æblemost</li>\r\n	<li>Mel</li>\r\n	<li>Linser</li>\r\n	<li>Bønner</li>\r\n	<li>Tørrende ærter</li>\r\n	<li>Koldpresset rapsolie</li>\r\n	<li>Honning</li>\r\n</ul>\r\n<h4><a href=\"https://docs.google.com/spreadsheets/d/1alG1R9cBvzim96stP8Vv4EbDQSy_ArjIMi8CjOg_3F8/edit#gid=0\" target=\"_blank\">Se alle hyldevarer og priser her</a></h4>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3>Løssalg og forudbestilt løssalg</h3>\r\n<ul>\r\n	<li>Løssalgs grøntsagsposer 125 kr. (uanset om om du er frivillig eller støttemedlem)</li>\r\n	<li>Løssalg og forudbestilt løssalg varierer i pris</li>\r\n</ul>\r\n<p>&nbsp; &nbsp;</p>'),
	(10,26,'10 Grundprincipper','','Københavns Fødevarefælleskab har 10 grundprincipper som fokuserer på økologi, bæredygtighed, lokale grøntsager, tillid, og milijøvenlighed.','<p><a href=\"https://kbhff.dk/english\" target=\"_blank\">English version here</a></p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h3>Vores udbud af fødevarer skal være:</h3>\r\n<p></p>\r\n<h4>1 – Dyrket og produceret økologisk.</h4>\r\n<p>Vi definerer dette som fødevarer, der er dyrket efter økologiske, herunder biodynamiske, principper. Det vil sige alle de dyrkningsformer, der ikke udpiner jorden eller forøger mængden af kunstige kemikalier, kunstgødning, eller pesticider i vores jord og miljø, og som i stedet bygger på sund og bæredygtig jordbrug, vandmiljø, biodiversitet og dyrevelfærd.</p>\r\n<h4>2 – Dyrket så lokalt som praktisk muligt.</h4>\r\n<p>Afstanden fra jord til bord har afgørende betydning for fødevarernes friskhed, smag og ernæringsmæssige værdi. Jo kortere afstand, der er mellem hvor friske grøntsager dyrkes og hvor de spises, desto større er den miljømæssige gevinst.<br />Ved at reducere den afstand, som en fødevare rejser fra jord til bord, desto mere reduceres den miljømæssige påvirkning, som transporten forårsager. Ved at støtte lokal produktion af fødevarer støtter vi den fortsatte opretholdelse af de færdigheder og den kultur, der er særegen for dyrkningen af fødevarer i vores lokale klima.</p>\r\n<h4>3 – Sæsonbaseret</h4>\r\n<p>Vores udbud skal afspejle årstiden. Det er muligt at udvide en afgrødes naturlige sæson ved at dyrke dem i drivhus, og vi vil bestemt støtte dette, hvis det gør grøntsager mere tilgængelige i løbet af året. Men ikke hvis det involverer kunstig opvarmning af drivhusene, hvormed den miljømæssige gevinst tabes.</p>\r\n<h3>Vores fødevarer skal distribueres på en måde, der:</h3>\r\n<h4>4 – Støtter fair og direkte handel</h4>\r\n<p>Mange avlere bliver presset hårdt på prisen og dermed på deres levebrød, hvilket medfører negative sociale og miljømæssige konsekvenser både lokalt og globalt.<br />Vi sikrer, at der er færrest mulige led mellem os og producenterne ved at skabe direkte, personlige kontakter hvor det er muligt. Vi er vores egen købekraft bevidst, og søger derfor at sikre, at vi gør vores indflydelse gældende ved at støtte fair og direkte handel.</p>\r\n<h4>5 – Er miljøvenlig</h4>\r\n<p>Vi mindsker vores CO2-fodspor ved at bruge ressourcer med omtanke – bl.a. ved at mindske spild, genbruge og genanvende og benytte miljøvenlige materialer hvor det er muligt.</p>\r\n<h4>6 – Formidler og fremmer viden om fødevarer og økologi</h4>\r\n<p>Vi gør mennesker mere bevidste om, hvordan de fødevarer, de spiser, når frem til deres indkøbskurv. Vi mener, at hvis mennesker får mere viden og mere føling med den jord, der nærer dem, vil de ikke alene være mere villige til at støtte fødevarefællesskabet, men de vil også være bedre stillet til at træffe bæredygtige fødevarevalg fremover. En vigtig del heri er at dele vores viden om at opbygge og drive fødevarefællesskabet og inspirere andre til at tage lignende initiativer i deres lokalområder.</p>\r\n<h4>7 – Er økonomisk bæredygtig og selvstændig</h4>\r\n<p>For at Københavns Fødevarefællesskab skal have de bedste muligheder for at vokse og blive en del af en bæredygtig fremtid, må vi være i stand til at eksistere uafhængigt af ekstern støtte, og dermed være mindre sårbar overfor skiftende prioriteringer fra forskellige offentlige og private instanser. Dette betyder, at vi altid dækker vores driftsomkostninger gennem egne indtægter og frivillig arbejdskraft.</p>\r\n<h4>8 – Er transparent og fremmer tillid i alle produktions- og distributionsled</h4>\r\n<p>Vi er åbne og ærlige omkring alle vores finansielle transaktioner og de valg vi træffer omkring vores udbud. Både i forhold til de, der leverer vores fødevarer (vi forventer det samme fra dem), og i forhold til hvordan vi bruger vores overskud.</p>\r\n<h4>9 – Er tæt på og tilgængelig</h4>\r\n<p>Vi arbejder for, at økologi ikke skal være en dyr gourmet-luksus, men en fast og naturlig del af vores hverdag. Derfor skal fødevarefællesskabet være tæt på og tilgængeligt for vores medlemmer – også prismæssigt. Vi vil gøre økologiske fødevarer tilgængelige til fair pris og vi vil altid prioritere kvalitet og bæredygtighed over pris.</p>\r\n<h4>10 – Drives af et lokalt, arbejdende fællesskab</h4>\r\n<p>Fødevarefællesskabet skal rumme og opmuntre til mere end blot at levere billige og gode fødevarer. Vi arbejder for, at fødevarefællesskabet skal være en platform, hvorigennem medlemmerne sammen kan skabe positive tiltag med udgangspunkt i det nærområde, hvor vi bor og arbejder. En sådan platform skal gøre det muligt for de enkelte medlemmer at finde sammen og organisere sig omkring deres fælles behov, mål og interesser og således få det lokale fællesskab til at blomstre.</p>\r\n<p><em>Revideret d. 27. april 2024</em></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<h3>Historien om grundprincipperne</h3>\r\n<p>På et stormøde d. 8. april 2010 vedtog medlemmerne af fødevarefællesskabet ovenstående grundprincipper, som er det grundlag, som vi handler og driver foreningen ud fra. Som overskriften på grundprincipperne siger, så er foreningens mål at gøre bæredygtige, økologiske fødevarer tilgængelige for alle.<br /><br />Københavns Fødevarefællesskab vil være en del af en bæredygtig fremtid. Disse 10 grundprincipper har til formål at sikre bæredygtighed i samtlige led af de kredsløb som fødevarefællesskabet indgår i.</p>'),
	(11,27,'Om KBHFF','','Københavns Fødevarefællesskab er en medlemsejet indkøbsforening, der tilbyder økologiske, lokalt producerede, og bæredygtige fødevarer. Alle kan være med.','<p><a href=\"https://kbhff.dk/english\" target=\"_blank\">English version here</a></p>\r\n<p>Københavns Fødevarefællesskab, KBHFF, er en uafhængig, medlemsejet og -drevet indkøbsforening i København, vi fokuserer på at tilbyde velsmagende og økologiske/biodynamiske lokalt producerede fødevarer. For os er “forbrugerindflydelse” ikke blot muligheden for at kunne vælge mellem forskellige produkter. I fødevarefællesskabet er kunderne både medlemmer, \'medarbejdere\' og medejere. Derfor arrangeres der også jævnligt fællesspisninger, workshops, avlermøder og gårdture, så medlemmer kan lære hinanden, vores avlere og vores grøntsager bedre at kende.<br /><br /><a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">Du kan se vores lokalafdelinger i hele København her</a>&nbsp;</p>\r\n<p><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Du kan tilmelde dig foreningen her</a></p>\r\n<p>Hør her Jonathan fortælle om Københavns Fødevarefællesskab og hvorfor du skal være medlem:</p>\r\n<div class=\"vimeo video_id:https://vimeo.com/849073600\"></div>\r\n<h2>Værdier</h2>\r\n<p>Københavns Fødevarefællesskab er funderet i <a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">10 grundprincipper som du kan finde her</a> overordnet, arbejder foreningen for:<br /><br />-vi handler direkte med små økologiske jordbrug, som gør en ekstra indsats i for jordens frugtbarhed, miljø, klima og biodiversitet. På den måde er vi med til at styrke en lokal økonomi på landet og sammenhængskraften mellem land og by. <br /><br />-vi undgår madspild i marken ved at aftage varer, som ikke passer til butikskædernes standardkrav ved primært at indkøbe varer, som er forudbestilt af vores medlemmer. Har vi alligevel overskud donerer vi det til forskellige godtgørende formål.<br /><br />- vi er en mangfoldig forening med en flad struktur, hvor medlemmer kan bidrage på mange forskellige måder og planer. Med andre ord er vi civilsamfund og frivilligengagement i praksis. <a href=\"https://kbhff.dk/om/organisationen\" target=\"_blank\">Læs mere om vores organisationsstruktur her</a><br /><br />- vi handler kun på vegne af vores medlemmer og ikke på vegne af en profitsøgende industri. Ethvert overskud i foreningen går derfor til lavere fødevarepriser og udvikling af foreningen. Denne fælles indsats gør det muligt at holde priser, der gør, at flere kan have råd til at købe økologisk.</p>\r\n<h2>Historie</h2>\r\n<p>I december 2007 læste Morten Dall en artikel i Samvirke om Park Slope Food Coop, et amerikansk fødevarefællesskab og året efter, i 2008, besøgte Morten Park Slope Food Coop i New York og lod sig inspirere af deres initiativ. Senere samme år samlede Morten en gruppe entusiaster, der delte hans vision. De afholdt et opstartsmøde på Frederiksberg Bibliotek med henblik på at diskutere mulighederne for at starte et lignende projekt. Det resulterede i, at Foreningen Københavns Fødevarefællesskab officielt blev etableret den 24. april 2008 under dens stiftende generalforsamling.</p>\r\n<p><a href=\"https://kbhff.dk/om/tidslinje\" target=\"_blank\">Se KBHFF tidslinje her</a></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>'),
	(12,28,'Kontakt','','Hvis du vil kontakte Københavns Fødevarefælleskab - vores afdelinger/butikker og arbejdsgrupper - så finder du post- og email-adresser her.','<p>Københavns Fødevarefællesskab f.m.b.a.<br />c/o Hotel- og Restaurantskolen<br />Vigerslev Allé 18<br />2500 Valby<br /><br />CVR-nummer: 32996671<br />Etableringsår: 2008<br /><br />KBHFF frivilligkoordinator kan kontaktes telefonisk<br />om onsdagen mellem kl. 9 og 14 på +45 2888 7923<br /><br />Du kan altid komme ned og møde os <a href=\"/afdelinger\">i vores butikker</a> hver onsdag.<br /><br /></p>\r\n<h3>Kontakt KBHFF på email:</h3>\r\n<ul>\r\n	<li>Pressekontakt og henvendelser om eventuelt samarbejde samt generelle henvendelser og spørgsmål (ikke producent-aftaler) sendes til <a href=\"mailto:%20info@kbhff.dk\">info@kbhff.dk</a></li>\r\n	<li>Henvendelser fra producenter, der ønsker at sælge fødevarer til KBHFF, sendes til indkøbsgruppen&nbsp;<a href=\"mailto:%20indkoeb@kbhff.dk\">indkoeb@kbhff.dk</a></li>\r\n	<li>Henvendelser fra personer som ønsker at blive en del af KBHFF eller medlemmer som vil være en del af fælleslageret/chaufførteamet, sendes til vores fælleskoordinator&nbsp;<a href=\"mailto:%20distribution@kbhff.dk\">fk@kbhff.dk<br /></a></li>\r\n	<li>Har du spørgsmål til fakturering, kan du kontakte økonomigruppen <a href=\"mailto:%20okonomi@kbhff.dk\">okonomi@kbhff.dk</a></li>\r\n	<li>Medlemssupport af KBHFF’s IT-værktøjer kan sendes til <a href=\"mailto:%20it@kbhff.dk\">it@kbhff.dk</a></li>\r\n</ul>\r\n<p>Henvendelser og spørgsmål, der er knyttet direkte til en af lokalafdelingerne, herunder henvendelser angående vagter, åbningstider, ind- og udmeldelser og andet, skal sendes til den relevante lokalafdeling:</p>\r\n<ul>\r\n	<li>Amager – <a href=\"mailto:%20amager@kbhff.dk\">amager@kbhff.dk</a></li>\r\n	<li>Frederiksberg – <a href=\"mailto:%20frederiksberg@kbhff.dk\">frederiksberg@kbhff.dk</a></li>\r\n	<li>Nordvest – <a href=\"mailto:%20nordvest@kbhff.dk\">nordvest@kbhff.dk</a></li>\r\n	<li>Nørrebro – <a href=\"mailto:%20norrebro@kbhff.dk\">norrebro@kbhff.dk</a></li>\r\n	<li>Sydhavnen – <a href=\"mailto:%20sydhavnen@kbhff.dk\">sydhavnen@kbhff.dk</a></li>\r\n	<li>Valby - <a href=\"mailto:valby@kbhff.dk\">valby@kbhff.dk</a></li>\r\n	<li>Vanløse – <a href=\"mailto:%20vanlose@kbhff.dk\">vanlose@kbhff.dk</a></li>\r\n	<li>Vesterbro – <a href=\"mailto:%20vesterbro@kbhff.dk\">vesterbro@kbhff.dk</a></li>\r\n	<li>Østerbro – <a href=\"mailto:%20osterbro@kbhff.dk\">osterbro@kbhff.dk</a></li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;</p>'),
	(13,29,'Fremtidens KBHFF','','Københavns Fødevarefælleskab er ved at udvikle et nyt it-system for bestillingen af ugens poser. Her har du muligheden til at støtte KBHFF\'s visionen for fremtiden.','<h4><a href=\"/sider/the-future-of-kbhff\">English version here!</a></h4>\r\n<h3>Vi er i gang med at udvikle et nyt IT-system for fødevarefællesskaber.</h3>\r\n<h4>Det skal hamle op med efterspørgslen på et større og mere varieret udbud af varer.</h4>\r\n<h4>Mere om Københavns Fødevarefællesskab og den ny platform:</h4>\r\n<p>Vi har eksisteret siden 2008, og vi har ni afdelinger fordelt i byen. Som medlem kan man købe vores grøntpose til 100 kr til afhentning om onsdagen.<br /><br />I Københavns Fødevarefællesskab:</p>\r\n<ul><li>handler vi direkte med små jordbrug gennem en tæt, tillidsbaseret kontakt. På den måde er vi med give idealistiske landmænd en reel forretning og understøtte en lokal økonomi, som alternativ til en udvikling, der går mod stadig mere stordrift og har til formål at tjene eksportmarkederne.</li>\r\n	<li>går vi foran og sætter nye standarder for bæredygtighed og økologi ved at købe fra producenter, som prøver at gå nye veje og gør en ekstra indsats i forhold til jordens frugtbarhed, miljø, klima og biodiversitet.</li>\r\n	<li>arbejder vi på konkrete løsningsmodeller for en lokalforankret madkultur, hvor kvalitet, friskhed, sæson og fællesskab er omdrejningspunkterne. Det gør vi ved kun at handle med lokale jordbrug, lave og dele opskrifter og afholde fællesspisninger, oplæg og workshops.</li>\r\n	<li>er vi en mangfoldig forening med med flad struktur, hvor folk kan bidrage på mange forskellige måder og planer. Med andre ord er vi civilsamfund og frivilligengagement i praksis.</li>\r\n	<li>undgår vi madspild i marken ved at aftage varer, som ikke passer til butikskædernes standardkrav og i butikken ved primært at indkøbe varer, som er forudbestilt af vore medlemmer.  Har vi alligevel overskud donerer vi det til forskellige formål.</li>\r\n	<li>minimerer vi brugen af engangsemballage ved at modtage grønt og frugt i returkasser og pakke grøntsagerne i stofposer.</li>\r\n</ul><p>Forrige år vedtog vi en ny forretningsplan, Københavns Fødevarefællesskab 2.0, som tegner en vision for fremtidens fødevarefællesskab – den <a href=\"http://kbhffwiki.org/tiki-index.php?page=faellesProjekter-forretningsplan\">kan læses her</a>.</p>\r\n<p>Et af hovedpunkterne var at tilbyde et meget mere varieret og fleksibelt vareudbud. For at understøtte dette tiltag er vi i gang med at udvikle en ny online platform til at erstatte vores nuværende.<br /><br />Først og fremmest vil den ny platform betyde, at man vil kunne bestille de råvarer man ønsker i de mængder man ønsker – baseret på årstidens udbud.<br /><br />Derudover vil vil man kunne:</p>\r\n<ul><li>Abonnere på faste varer, i stedet for at skulle huske at bestille hver uge.</li>\r\n	<li>Betale med Mastercard og Visa, i stedet for som nu kun for dem med Dankort.</li>\r\n	<li>Indmelde sig i KBHFF hjemmefra og straks komme i gang med at købe frugt og grønt, i stedet for som i dag  at skulle komme ned i en afdeling KBHFFs åbningstid og blive oprettet personligt.</li>\r\n</ul><p>Platformen udvikles under et open source licens. Den vil altså være et “fællesgods”, som fødevarefællesskaber og andre initiativer frit vil kunne videreudvikle og tilpasse til deres egne behov.</p>'),
	(15,31,'The Future of KBHFF','','Copenhagen\'s food co-operative (Københavns Fødevarefælleskab) is developing a new it-system for the distribution of weekly vegetable bags.','<h3>We are developing a new IT-system for food collectives to meet the demand for a more varied supply of sustainable goods.&nbsp;</h3>\r\n<p>In 2017, we formulated a new business plan, Københavns Fødevarefællesskab 2.0. It is in Danish, but can <a href=\"http://kbhffwiki.org/tiki-index.php?page=faellesProjekter-forretningsplan\">be read here</a>.</p>\r\n<p>We aim at offering a greater variety of goods to the members and saving time on administration thus releasing more time to development, enlightenment and events.<br />We are developing a new online platform as our current system cannot evolve sustainably anymore.<br />Since 2018, the IT group has been working hard to develop the specifications, anticipate the future needs of the organization, support the developers and raise funding.</p>\r\n<p>The new system is developed by <a href=\"https://parentnode.dk/about\" target=\"_blank\">parentNode</a> / <a href=\"https://think.dk/\" target=\"_blank\">think.dk</a>.<br />The platform is being developed under an open source licence. It will thus be a common good for food collectives and similar initiatives to reuse and adapt to their own needs.</p>\r\n<p>The whole project can be divided into three major steps:</p>\r\n<h4>1. The public website (launched in 2020)</h4>\r\n<p>In 2020 we launched an updated version of the kbhff.dk website. This is where you can read news, general info on the organization, the content of the bags, etc.</p>\r\n<p>Initially as a Wordpress-based independent website, these public pages and news are now integrated in the new system together with the member system.</p>\r\n<h4>2. The new member system V1.0 (planned in winter 2020 - spring 2021)</h4>\r\n<p>The member system is the website you use to order bags for yourself and to help others when you\'re on your shift. But it\'s also much more! The purchase group (indkøbsgruppen) uses it to work out how much fruit and how many vegetables to buy. It is also where departments and central groups can write to members and where you can manage your own information and membership, etc.</p>\r\n<p>The new member system will be able to do everything that the previous one was doing plus the following additional features.<br />In the first release of the new member system, you will be able to:</p>\r\n<ul><li>Enroll in KBHFF from home and start buying fruit and vegetables right away instead of going down to the department to become a member.</li>\r\n	<li>Pay with Visa and Mastercard, instead of only with Dankort as it is now.</li>\r\n	<li>Pay with credit card in the local departments.</li>\r\n	<li>Pre-order \"shelf-products\" such as flour, honey, jam, oil, etc. (logistics feasibility under discussion)<br /></li>\r\n</ul><h4>3. The extended new system V2.0 (planned in 2021)</h4>\r\n<p>At a later stage, two important features will be developed. You will then be able to:</p>\r\n<ul><li>Order the goods you want in the amount you want – of course depending on seasonal availability.</li>\r\n	<li>Make automatically repeating orders instead of having to order for each week.</li>\r\n</ul>'),
	(16,32,'English summary of KBHFF','','Copenhagen\'s member-based food co-operative (Københavns Fødevarefællesskab): fair pricing for local, organic, seasonal fruits and vegetables.','<p>Københavns Fødevarefællesskab (KBHFF) is a member-based and member-driven food co-operative in Copenhagen, Denmark. KBHFF is an alternative to the ordinary profit-driven supermarket chains. We have eight <a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">departments</a> around Copenhagen.<br />We offer local, seasonal,&nbsp;organic and biodynamic produce with lots of taste and quality at affordable prices. Read more about our principles below.</p>\r\n<ul>\r\n	<li>To us “consumer influence” is not just the opportunity to choose between different brands and groceries. In KBHFF, the customers are members, owners and co-workers.</li>\r\n	<li>As a member you can buy seasonal, locally produced organic fruit and vegetables every week.</li>\r\n	<li>Members are generally expected to put in three hours of work in the co-op every month (regular members only - see below). This could be packing vegetables in the shop, ordering vegetables, arranging debates, fixing the website, etc.&nbsp;</li>\r\n</ul>\r\n<p>As co-owners of KBHFF, all members have a say in the operation and development of the co-op. All decisions regarding the products and economy are taken by the members of KBHFF, and every member has the opportunity to influence these decisions.</p>\r\n<p>As a member-owned co-op, we only have to take care of the interest of our members. Any profit is used to reduce the price of the vegetables, develop the co-op or socially responsible projects in the city around us.</p>\r\n<h3>How to sign up?</h3>\r\n<p>You can sign up from home online or by coming to any department during the opening hours. See where to find our departments and when they are open on <a href=\"/afdelinger\" target=\"_blank\">this page</a>.</p>\r\n<h3>In need of guidance?</h3>\r\n<p>See our <a href=\"/medlem/quick-start-guide\" target=\"_blank\">quick start guide</a> (Danish and English) and our <a href=\"/faq\" target=\"_blank\">Q&amp;A</a> (only in Danish).</p>\r\n<h3>Types of memberships</h3>\r\n<p>Two types of memberships are possible.<br />You can choose either to be a regular member (volunteer = frivillig) or a \"support\" member (støttemedlem).</p>\r\n<p>All members pay a one-time sign-up fee of 100 kr. when their account is created. Every year in May, all members pay 200 kr. of yearly membership fee. The amount of this fee is discussed every year during the general assembly in April.<br /></p>\r\n<p>You can change membership type when it suits you but <strong>please</strong> remember to warn your local department to make sure they do not expect your help (if you become a supportmember) or that you get assigned to a team for your shift (if you become a volunteer). You can contact departments <a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">here</a>.</p>\r\n<h4>Regular members (volunteers / frivillige)</h4>\r\n<p>You have to contribute to the organisation by working 3 hours every month. Many different working groups and shift types are possible (packing produce, welcoming members in the departments, website communication, logistics, driver, board, IT, etc.). Write to your local department or check our Wiki to join a team.</p>\r\n<h4>Support members (støttemedlemmer)</h4>\r\n<p>You are not expected to volunteer, but the price for the vegetable bag is higher.</p>\r\n<p><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">You can find a updated pricelist here</a></p>\r\n<h3>Products and orders</h3>\r\n<p>You need to pre-order your bag in one of our local departments or via the internet (at least one week in advance) and pick it up on a Wednesday afternoon in your local department. <br />Retail produce and other \"shelf-products\" can be bought on the same day and do not need to be pre-ordered (but check with your department for availability).<br />You can pre-order for several weeks at once, or just for the following week. You are under no obligation to buy a set amount of bags a month.</p>\r\n<p>The weekly bag typically contains 6-8 different kinds of locally produced and seasonally based organic fruit and vegetables.</p>\r\n<div class=\"media item_id:32 variant:HTMLEDITOR-html-amd8l7c9 name:Vegetable%252525252525252525252525252520bag%252525252525252525252525252520example%252525252525252525252525252520with%252525252525252525252525252520strawberries.jpg filesize:56206 format:jpg width:400 height:147\">\r\n	<p><a href=\"/images/32/HTMLEDITOR-html-amd8l7c9/480x.jpg\">Example contents of a summer vegetables bag, with strawberries from the fruit bag.</a></p>\n</div>\r\n<p>To see more examples of bag composition, look at our <em><a href=\"/ugens-pose\">ugens pose</a> </em>(bag of the week) and archives.</p>\r\n<p>Note that it is your own responsibility to pick up your bag during opening hours. If you forget to pick up your bag, we won’t refund your order.</p>\r\n<h2>Our principles</h2>\r\n<p>At an extended meeting held on 8 April 2010, the members of the KBHFF Food Coop adopted a list of 10 core principles, as described below. These core principles represent the values on which KBHFF makes decisions and operates as an association. As the caption suggests, the aim of the organisation is to bring sustainable organic produce within the reach of all. <br /><br />KBHFF intends to become part of a sustainable future. These 10 core values are designed to ensure sustainability at all levels of the cycle of which KBHFF is a part.</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<h4><strong>THE FOODSTUFFS WE OFFER TO OUR MEMBERS SHALL BE:</strong></h4>\r\n<p>1– ORGANICALLY GROWN AND PRODUCED<br />This definition requires our foodstuffs to be grown in accordance with organic and/or biodynamic principles. This requirement is satisfied by any form of cultivation which neither causes soil degradation nor increase the amount of artificial chemicals, non-animal fertiliser, or pesticides in the ground or elsewhere in the natural environment, but, instead, is based on sound and sustainable farming, water resource management, biodiversity and animal welfare.</p>\r\n<p>2 – GROWN AS LOCALLY AS POSSIBLE<br />The distance between the soil and the table has a decisive impact on the freshness, taste and nutritional value of raw foodstuffs. The shorter the distance fresh foods are moved between the point of harvesting and the place where they are eaten, the greater the added value in terms of the environment.<br /><br />Shortening the distance between the point of harvest and the point of consumption has a direct benefit in that it correspondingly reduces the pollution generated by the means of transport.  By supporting local production of foodstuffs, we help to preserve the characteristic skills and culture which have been developed over time to enable foodstuff production in our local sub-climatic zone.</p>\r\n<p>3 – SEASONAL<br />Our choice of produce shall reflect the seasonal variations. If the natural growing season for any product can be extended by the use of a greenhouse, we will normally support this method if it makes the produce available for a longer period of the year. This will, however, not apply if the greenhouse is artificially heated, which would, in fact, negate the envionmental benefit of a longer growing season.</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><strong>OUR PRODUCE SHALL BE DISTRIBUTED IN A WAY THAT:</strong></p>\r\n<p>4 – SUPPORTS FAIR AND DIRECT TRADING<br />Many farmers and producers find it difficult to sell at reasonable prices, which threatens their livelihood, and may lead to negative social and environmental consequences at both the local and the global level. We will ensure that the supply chain between KBHFF and the producers is as short as possible, by developing direct personal business relationships where possible. We are aware of our own purchasing power, and should, therefore, ensure that our influence is felt through our consistent support to fair and direct trading. <br /><br />5 – IS ENVIRONMENTALLY FRIENDLY<br />We will reduce our Carbon footprint by using resources in a careful and diligent manner. This may include the avoidance of waste, recycling, and the circular use of environment friendly materials where possible. <br /><br />6 – DISSEMINATES AND UPGRADES KNOWLEDGE ON FOODSTUFFS AND ECOLOGY<br />We will seek to make consumers more aware of how the food they eat actually reaches their shopping baskets. We firmly believe that giving consumers more knowledge, and putting them in touch with the soil that nurtures them, will not only make them more likely to support KBHFF, but also better equip them to make sustainable foodstuff choices in future. An important element in this is to share our knowledge of how to set up and run a food coop, and to inspire others to start something similar in their own neighbourhoods. <br /><br />7 – IS FINANCIALLY SUSTAINABLE AND INDEPENDENT<br />To ensure that KBHFF can grow and play a significant role in a sustainable future, we must be able to stand on our own feet without depending on external financial support; in achieving this, we will be less vulnerable to the changing priorities of various public and private actors. This means that we must always ensure that our operating costs are fully covered by KBHFFs own income and by the value-added by the voluntary work of our members.<br /><br />8 – IS TRANSPARENT AND PROMOTES MUTUAL TRUST AT ALL LEVELS OF THE SUPPLY AND DISTRIBUTION CHAIN<br />We are open and honest in all our financial transactions and in all aspects of our procurement. This applies equally – and mutually – in our supplier relations, and in relation to how we use any surplus income which might accrue.<br /><br />9 – IS CLOSE AT HAND AND EASILY ACCESSIBLE<br />We will work to make organic produce a regular and natural part of our daily lives, rather than a gourmet luxury reserved for the few. KBHFF will always be close at hand and easily accessible to our members, at a price they can afford. We will make organic foodstuffs available at a fair price, and will always prioritise quality and sustainability over price.<br /><br />10 – IS DRIVEN BY A LOCAL COMMUNITY WORKING TOGETHER.<br />KBHFF  shall be able to accomodate and promote more than just the supply of cheap and good foodstuffs. Our ambition is to make KBHFF a platform on which members together can base positive and locally based initiatives in the places we live and work. Such a platform will make it possible for our members to find and work with others with similar needs, aspirations and interests, and to make a real contribution to the local community.</p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>'),
	(17,33,'Om producenterne','','Københavns Fødevarefællesskab får leveret grøntsager fra en række forskellige økologiske producenter på Sjælland. Læs mere om dem her.','<p>Københavns Fødevarefællesskab får leveret frugt og grønt fra en række forskellige økologiske producenter på Sjælland og de nærmeste øer. Her kan du læse mere om vores mange avlere.</p>\r\n<h2>Grønt og svampe</h2>\r\n<p><a>Birkemosegaard</a><br /><a href=\"https://drys.nu/\" target=\"_blank\">Drys Øko</a><br /><a href=\"https://www.hvidlog-vin.dk/\" target=\"_blank\">Hvidløg og Vin</a><br /><a href=\"https://permatopia.dk/\" target=\"_blank\">Permatopia</a><br />Mortens Have<br /><a href=\"http://www.nygaarden.dk/wordpress/nygaardens-oekogroent/\" target=\"_blank\">Nygårdens Økogrønt</a><br /><a href=\"https://stensbolgaard.dk/\" target=\"_blank\">Stensbølgård</a><br /><a href=\"https://svanholm.dk/vores-landbrug/\" target=\"_blank\">Svanholm</a><br /><a href=\"http://www.markhaven.dk\" target=\"_blank\">Ingervaaben</a><br /><a href=\"https://kammergave.dk/oekologisk-bosted-og-kostpolitik/\" target=\"_blank\">Grønt Øko - Kammergave</a><br /><a href=\"https://tvedemose.dk/\" target=\"_blank\">Tvedemose</a><br /><a href=\"https://micro-greens.dk/\" target=\"_blank\">Micro Greens Denmark</a></p>\r\n<p></p>\r\n<p><a>Nørbys Grøntsager</a></p>\r\n<h2>Frugt</h2>\r\n<p>Bellingehus<br /><a href=\"https://www.laerkehoejfrugt.dk/\" target=\"_blank\">Lærkehøj</a><br />Nausok Økologisk Frugtavl<br /><a href=\"https://okoglad.dk/collections/ventegodtgaard\" target=\"_blank\">Ventegodtgaard</a><br /><a href=\"https://www.egeskovgaard.dk/\" target=\"_blank\">Egeskovgaard</a><br /><a href=\"http://www.markhaven.dk/\" target=\"_blank\">Inger Vaaben</a><br /><a href=\"http://www.birkemosegaard.dk/\" target=\"_blank\">Birkemosegaard</a><br /><a href=\"https://heslevalnoed1844.dk/planteskolen\" target=\"_blank\">Hesle Nygaard</a></p>\r\n<h2>Tørvarer</h2>\r\n<p><a href=\"https://www.oestagergaard.dk/\" target=\"_blank\">Østagergård</a><br /><a href=\"https://linserforlivet.dk/\" target=\"_blank\">Linser for Livet</a><br />Nausok Økologisk Frugtavl<br /><a href=\"https://www.laerkehoejfrugt.dk/\" target=\"_blank\">Lærkehøj</a><br /><a href=\"https://stensbolgaard.dk/\" target=\"_blank\">Stensbølgård</a></p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>'),
	(19,36,'Spørgsmål og Svar','','Her findes svarer til oftest stillede spørgsmål (FAQ) om Københavns Fødevarefælleskab KBHFF.','<h2>Medlemskab</h2>\r\n<h4>Can English speakers be members?</h4>\r\n<h4>Hvordan bliver jeg medlem?</h4>\r\n<p>Indmeldelse er forskellig fra afdeling til afdeling. Nogle afdelinger melder nye ind hver uge, andre afdelinger melder nye ind ved introduktionsmøder én gang om måneden. Start med at finde den lokalafdeling, som du ønsker at hente grøntsager i. For langt de fleste er det det sted, der er nærmest hvor man bor eller arbejder. Her på listen kan du se, hvor det er obligatorisk at deltage i et introduktionsmøde for at blive medlem, og hvor du bare kan møde op i åbningstiden om onsdagen.</p>\r\n<h4>Hvad koster det at blive medlem?</h4>\r\n<p>Ved indmeldelse skal du betale en indmeldelsesgebyr (100 kr.) Herefter opkræves kontingentet (200 kr.) hvert år den 1. maj. Også hvis du har meldt dig ind i foråret. Fordelen ved denne løsning er, at den er meget nem at administrere. På den måde kan Fødevarefællesskabet bruge mindst mulig tid og penge på administration, og mest mulig på at betale avlerne.<br />Kontingentet betales kontant eller med MobilePay ved indmeldelse, men kan ellers betales over nettet.</p>\r\n<h4>Hvad dækker medlemskontingentet?</h4>\r\n<p>Alle medlemmer af KBHFF betaler et kontingent hvert år (opkræves i maj). Kontingentet bliver hvert år vedtaget af generalforsamlingen i april. Kontingentet blev indført ved generalforsamlingen i 2015 og dækker lønningsudgifterne til fødevarefællesskabets to ansatte: en bogholder og en fælleskoordinator (FK), som begge er ansat 8 timer om ugen. At have lønnede ansatte sikrer en stabil og kompetent arbejdskraft på vigtige og driftstunge områder, såsom økonomi og den overordnede organisering af fødevarefællesskabet. Læs mere om baggrunden for ansættelserne på wikien. Her kan du også læse om hvilke arbejdsopgaver, som udføres af hhv. bogholderen og fælleskoordinatoren.</p>\r\n<h4>Hvor gammel skal man være for at blive medlem?</h4>\r\n<p>Vi har ingen aldersgrænse. Som medlem skal man blot være i stand til at arbejde frivilligt tre timer hver måned.</p>\r\n<h4>Kan husstande deles om medlemsskabet?</h4>\r\n<p>Ja, som medlem kan man købe ind til hele sin husstand gennem sit medlemsskab. Hvis man som husstand er to beboere, betyder det, at man f.eks. kan være sammen på vagt hver anden måned. I mange lokalafdelinger anbefales det dog, at man stadig tager vagter hver måned, selvom man er et par. Det er der flere grunde til. Men det handler især om, at det kan være svært at føle sig fortrolig og bekendt med de forskellige arbejdsopgaver (og de andre frivillige), hvis der går for lang tid imellem ens vagter.</p>\r\n<h4>Kan engelsktalende blive medlem?</h4>\r\n<p>Ja, der er mange engelsktalende medlemmer i KBHFF. Kontankt <a href=\"/afdelinger\">den enkelte lokalafdeling</a> for at høre, hvornår der holdes introduktionsmøder på engelsk.</p>\r\n<h4>Kan jeg selv vælge min lokalafdeling?</h4>\r\n<p>Ja. Ofte vælges den lokalafdeling, som ligger tættest på ens hjem eller arbejde. Se <a href=\"https://kbhff.dk/afdelinger\"></a><a href=\"/afdelinger\"></a><a href=\"https://kbhff.dk/afdelinger\">vores kort over de forskellige lokalafdelinger</a>.</p>\r\n<h4>Hvordan skifter jeg lokalafdeling?</h4>\r\n<p>Send en mail til din nuværende afdeling og fortæl at du gerne vil flytte. Send desuden en mail til din nye lokalafdeling (eller duk op en onsdag) og så skal de nok hjælpe dig med at blive en del af det nye sted. Det er ganske gratis at skifte afdeling, dvs. du skal ikke betale et nyt kontingent eller nogen form for gebyr.</p>\r\n<h4>Er der nogle medlemsfordele?</h4>\r\n<p>Ja, der er mange. Eksempelvis kan der nævnes, at du som medlem kan komme med på lugeturer og avlerbesøg i sommerhalvåret. I lokalafdelingerne er der jævnligt fællesspisninger og andre hyggelige arrangementer for medlemmer. Du kan ikke undgå at få et godt netværk i dit lokalområde, hvis du engagerer dig i KBHFF. Som medlem kan du også få rabat på delebiler fra LetsGo.</p>\r\n<h4>Skal jeg som medlem deltage i medlemsmøder og generalforsamlinger?</h4>\r\n<p>Det er ikke et krav at deltage i hverken medlemsmøder eller generalforsamlinger. Men hvis du vil have indflydelse på fødevarefællesskabets fremtid—og hvis du vil lære dine fødevarefæller bedre at kende—er det en god ide at møde op.<br />Generalforsamlingen er der, hvor alle større eller principielle beslutninger om fødevarefællesskabets retning, værdier og økonomi træffes. Og alle møderne i KBHFF er åbne for alle. Her er link til en wiki, hvor du kan se <a href=\"http://kbhffwiki.org/tiki-index.php?page=VigtigeMoeder\">alle de fælles medlemsmøder</a>. Kontakt din lokalafdeling for at høre nærmere om lokale medlemsmøder.</p>\r\n<h4>Kan jeg stille mit medlemsskab i bero i en periode?</h4>\r\n<p>Ja, det kan du sagtens. Hvis du ønsker at være passivt medlem i en periode, skal du blot kontakte din lokalafdeling. Som passivt medlem behøver du ikke at tage vagter, men du kan heller ikke købe poser. Hvis du senere ønsker at genaktivere dit medlemsskab, er du fri for at betale indmeldingsgebyret igen.</p>\r\n<h4>Hvordan melder jeg mig ud?</h4>\r\n<p>Skriv en mail til din lokalafdeling for at melde dig ud.</p>\r\n<h2>Det frivillige arbejde</h2>\r\n<h4>Hvor mange vagter skal jeg tage?</h4>\r\n<p>Langt de fleste medlemmer af KBHFF er frivillige ca. 3 timer om måneden. Det svarer til at tage en tjans/vagt om måneden. Men der er også en del, som engagerer sig mere end det, f.eks. ved at deltage i de fælles eller lokale arbejdsgrupper.</p>\r\n<h4>Hvor lange er vagterne?</h4>\r\n<p>Vagternes længde varierer alt efter om der er tale om en modtagevagt, en kassevagt, en smagsprøvevagt osv. De fleste vagter varer dog ca. 3 timer.</p>\r\n<h4>Kan jeg slippe for at skulle arbejde 3 timer om måneden?</h4>\r\n<p>Ja. Man kan købe vores støttepose. Posen er tiltænkt de medlemmer, som f.eks. ikke kan finde tid i hverdagen til frivillig vagter/arbejdsgrupper, men stadig gerne vil nyde de gode grøntsager som KBHFF har at byde på. Indholdet i en Støttepose og en Grøntsagspose vil altid være det præcis samme—og løssalgspriserne ændres ikke lige meget hvilken pose man køber. Det er også muligt at skifte mellem Grøntsagsposen og Støtteposen hvis man nu ikke regelmæssigt tager vagter—du vælger blot den pose, som passer til din givne situation. Det betyder også, at nye medlemmer frit kan melde sig ind i KBHFF uden at skulle tilknyttes et hold eller en arbejdsgruppe. Posen koster 140 kr.</p>\r\n<h4>Jeg kan ikke tage vagter om onsdagen. Hvad gør jeg?</h4>\r\n<p>Hvis du ikke har mulighed for at tage vagter om onsdagen, er der mulighed for at lægge dine 3 månedlige arbejdstimer i en arbejdsgruppe. Det kan både være en lokal arbejdsgruppe, f.eks. din lokalafdelings butiksgruppe eller introduktionsgruppe, eller det kan være i en af KBHFF’s fælles arbejdsgrupper, f.eks. indkøbsgruppen eller kommunikationsgruppen. De fælles arbejdsgrupper holder i udgangspunktet møder sidste mandag i måneden. Derudover vil der være en del arbejde, som du kan lave hjemmefra eller på mere fleksible tidspunkter. Kontakt din lokalafdeling for at høre mere om arbejdet i grupperne.</p>\r\n<h4>Hvilke arbejdsgrupper kan jeg melde mig ind i?</h4>\r\n<p>Der findes mange forskellige grupper i KBHFF. I hver lokalafdeling er der en butiksgruppe og som regel også en række andre lokalt forankrede grupper, f.eks. en introgruppe, arrangementsgruppe osv. Du kan også engagere dig i fælles arbejdsgrupper (arrangementsgruppen, distributionsgruppen, indkøbsgruppen, kommunikationsgruppen, IT-gruppen, osv.).</p>\r\n<h4>Kan jeg arbejde med noget helt særligt, som jeg er særligt god til?</h4>\r\n<p>Ja, de 3 timers arbejde behøver ikke nødvendigvis at foregå på “normal vis” som del af et team eller en arbejdsgruppe. Hvis du har særlige evner, du kan bidrage til fællesskabet med, eller hvis der er konkrete opgaver, du mener, der bør tages hånd om, kan du skabe din helt egen vagt. Du kan f.eks. arbejde som fotograf eller opskriftsudvikler. Skriv til butiksgruppen i din lokalafdeling, hvis du har en god ide, og så kan de hjælpe dig igang.</p>\r\n<h4>Hvordan skifter jeg vagttype?</h4>\r\n<p>Send en mail til dit teamlink/teamkoordinator/laugtovholder med dine nye vagt- eller arbejdsgruppeønsker.</p>\r\n<h4>Hvorfor er mange vagter kortere end 3 timer?</h4>\r\n<p>Som medlem af fødevarefællesskabet skal man arbejde tre timer hver måned. Mange vagter er imidlertid kortere end tre timer, fordi det ikke er muligt at fordele alle timer ligeligt. Du er meget velkommen til at tage ekstra vagter, hvis du har en kort vagt, men det er ikke et krav.</p>\r\n<h4>Hvad sker der, hvis man ikke møder op til sin vagt?</h4>\r\n<p>Hvis du ikke kan møde til din vagt, skal du kontakte dit teamlink/koordinator/tovholder eller selv prøve at bytte den ved f.eks. at skrive på din lokalafdelings facebookside. Hvis du gentagende gange ikke møder op til din vagt, kan du ende med at blive sat passiv i fødevarefællesskabet, så du ikke længere kan købe poser.</p>\r\n<h4>Hvad gør jeg, hvis jeg er forhindret i at tage min vagt?</h4>\r\n<p>Send en mail til dit teamlink/teamkoordinator/laugtovholder. Du kan også selv prøve at bytte din vagt, ved f.eks. at skrive på din lokalafdelings facebookside.</p>\r\n<h4>Hvad gør jeg hvis jeg skal på barsel?</h4>\r\n<p>Medlemmer på barsel er fritaget for at arbejde, og i det tilfælde skal du blot informere dit teamlink/teamkoordinator/laugtovholder om, at du i en periode ikke tager dine vagter.</p>\r\n<h4>Kan jeg tage vagter sammen med familie og venner?</h4>\r\n<p>Det kan muligvis godt lade sig gøre, men det er op til den enkelte lokalafdeling, hvordan de udfylder vagtplanerne. Hvis du gerne vil tage vagter med nogle bestemte mennesker, er det derfor en god ide at kontakte din lokalafdeling for at høre, om det kan lade sig gøre.</p>\r\n<h4>Kan store hjemmeboende børn tage vagter?</h4>\r\n<p>Ja, det kan de sagtens. Medlemskabet gælder for hele husstanden, og der er ingen krav om, at det skal være den, hvis navn står på medlemslisten, der skal tage vagterne. Men det forventes selvfølgelig at barnet er i stand til at håndtere sin tjans på en god måde.</p>\r\n<h4>Kan jeg arbejde hjemmefra?</h4>\r\n<p>Ja. Du kan f.eks. være teamlink/teamkoordinator/laugtovholder, hvor en del arbejdsopgaver kan foregå hjemmefra. Du kan også lægge dine frivillige timer i en arbejdsgruppe. Der vil der udover møder ca. en gang om måneden  ofte være hjemmearbejdsopgaver.</p>\r\n<h4>Kan jeg tage mine små børn med på vagt?</h4>\r\n<p>Ja, børn i alle aldre er meget velkomne. Vær dog opmærksom på, at der ikke nødvendigvis er plads til barnevogn indendørs.</p>\r\n<h4>Kan min ven/sambo/kæreste tage nogle af min vagter?</h4>\r\n<p>Ja. Men husk at bede din afløser læse vagtbeskrivelsen før vagten, samt at informere dit teamlink/koordinator.</p>\r\n<h2>Bestilling af ugens pose</h2>'),
	(21,38,'Medlemsfordele','','Der er mange sociale og praktiske fordele for medlemmerne.','<p>Som medlem af Københavns Fødevarefællesskab kan du købe poser med økologisk og biodynamisk grønt hver onsdag i din lokalafdeling. Men du inviteres også løbende til en række arrangementer, lugeture, gårdbesøg, workshops mm. Arrangementer annonceres i nyhedsmails og på hjemmesiden.</p>\r\n<ul>\r\n	<li>Løssalg og hyldevarer: Køb frugt og grønt i løssalg i begrænsede mængder og lokalt produceret mel, honning, øl, rapsolie m.m. i lokalafdelingernes åbningstid</li>\r\n	<li>Fællesspisninger: Deltag i lokalt arrangerede fællesspisninger, folkekøkkener og køkkenworkshops</li>\r\n	<li>Lugeture og gårdbesøg: Kom ud af byen og få jord under neglene på besøg hos fødevarefællesskabets avlere</li>\r\n	<li>Lokalt netværk: Indgå i et unikt fællesskab med dit lokalsamfund</li>\r\n	<li>Arrangementer: Få adgang til arrangementer, foredrag og workshops</li>\r\n	<li>Lån af æblepresser: Pres din egen æblemost</li>\r\n	<li>Nyt fra dit fødevarefællesskab: Abonnér på det fælles nyhedsbrev</li>\r\n	<li>\r\n</ul>\r\n<h3>Vil du gerne arrangere et arrangement?</h3>\r\n<p>Så send en mail til fk@kbhff.dk og høre mere om dine muligheder.</p>\r\n<h3>Lån af æblepresser</h3>\r\n<p>Efteråret bugner af æbler i alle størrelser og farver. Har du et æbletræ stående i haven eller i baggården? Gennem lokalafdelingen i Vanløse kan alle medlemmer af Københavns Fødevarefællesskab låne en æblepresser helt gratis. Få presset dine egne æbler, eller lån æblepresseren til et arrangement med dine naboer eller boligforeningen. Ved lån af æblepresseren skal der lægges et depositum på 500 kr, som tilbagebetales når æblepresseren afleveres i rengjort stand. Hvis du ønsker at låne æblepresseren, kontakt Vanløse afdeling på <em><a href=\"mailto:vanlose@kbhff.dk\" target=\"_blank\">vanlose@kbhff.dk</a> </em>for nærmere aftale.</p>'),
	(22,39,'Delebiler fra HYRE','','Chauffører i KBHFF har mulighed for at leje HYRE biler via foreningen','<h3>Hvad er HYRE Delebiler?</h3>\r\n<p>Af og til har man brug for en bil, men mange oplever, at det ikke er nok grund til at købe egen bil. Derfor kan en delebilsordning være løsningen. HYRE tilbyder en ordning med 300 biler fordelt i København, Aarhus og Odense, som du kan reservere, når du har brug for det. Alle biler holder på faste parkeringspladser rundt omkring i byerne.<br />HYRE tilbyder desuden syv forskellige typer biler, så der er mulighed for den rette bil til de fleste lejligheder.<br />Prisen for brug af bilerne afregnes ud fra hvor lang tid, du har reserveret bilen. Det vil sige, at du ikke skal betale yderligere for benzin, forsikring, parkering, bilservice eller anden vedligeholdelse af bilen. HYRE administrer alt det praktiske.</p>\r\n<p>Du kan skrive til fk@kbhff.dk hvis du vil tilmeldes som chauffør eller vide mere om fordele hos HYRE ved at være chauffør for KBHFF<br /></p>'),
	(23,40,'Tidslinje','','Københavns Fødevarefællesskab har oplevet meget i sine leveår fra 2008: nye afdelinger, en kogebog, flytninger af fælleslageret, osv.','<h3>2024</h3>\r\n<ul>\r\n	<li><strong>Juni:&nbsp;</strong>KBHFF lancerer Forum for Madsuverænitet i samarbejde med Global Aktion, NOAH, Frie Bønder - Levende Land, Den Grønne Ungdomsbevægelse, De Growth Copenhagen, Roskilde Økologiske Fødevarefællesskab, Aarhus Nord Fødevarefællesskab og Mellemamerika Komiteen.</li>\r\n	<li><strong>Maj:</strong> der laves en mobilvenlig version af hjemmesiden.</li>\r\n	<li><strong>Maj</strong>: de første lugeture til Svanholm.</li>\r\n	<li><strong>April:</strong> det vedtages til den ordinære generalforsamling at grøntsagsposeprisen stiger fra 115 kr. til 125 kr. for frivillige og 140 kr. til 150 kr. for støttemedlemmer.&nbsp;</li>\r\n	<li><strong>Februar:</strong> KBH blilver medlem af&nbsp;Madlands kollation \"Gentænk København som madby\"</li>\r\n	<li><strong>Januar:</strong>&nbsp;bytteaftalen med Birkemosegaard med lugeture for hjælp til kørsel ophører.</li>\r\n</ul>\r\n<h3>2023</h3>\r\n<ul>\r\n	<li><strong>September</strong><strong>:</strong>&nbsp;For anden gang i KBHFF\'s historie ændres fortjensten på grønt og frugt. Efter at have haft en brutto-\"profit\" på 23 kr. (inkl moms) for hver solgte grøntpose, KBHFF får nu en indtjening på ca. 19 kr. (inkl moms) for hver solgte grøntpose.</li>\r\n</ul>\r\n<h3>2022</h3>\r\n<ul>\r\n	<li><strong>Oktober: </strong>Ny FUB ordning, hvor løssalg kan forudbestilles i webshoppen, lanceres. I samme omgang bliver det forventede indhold af ugens pose fra nu af lagt op på hjemmesiden inden bestillingsfristen.&nbsp;</li>\r\n	<li><strong>April:</strong> Valby afdelingen åbner for offentligheden. Den holder stadig til ved Hotel &amp; Restaurantskolen.</li>\r\n	<li><strong>Januar:</strong> KBHFF\'s koordineringsmøder bliver nu til fællesmøder med fokus på at få arbejde fra hånden. I samme omgang nedlægges de fælles arbejdsgrupper distributionsgruppen og kommunikationsgruppen.</li>\r\n	<li><strong>Januar:</strong> KBHFF har nu et udvalg af danske linser og gule ærter i løssalg. Disse finder også snart vej til webshoppen så de kan forudbestilles.&nbsp;&nbsp;</li>\r\n</ul>\r\n<h3>2021</h3>\r\n<ul>\r\n	<li><strong>Juni:</strong> Nyt medlemssystem og webshop lanceres.</li>\r\n	<li><strong>Maj:</strong> FUB forsøgsordning med forudbestilt løssalg lukker.</li>\r\n	<li><strong>Marts:</strong> KBHFF deltager som case study i et forskningsprojekt med studerende fra Erasmus Universitet, Rotterdam. Resultaterne præsenteres ved generalforsamlingen 2022.</li>\r\n</ul>\r\n<h3>2020</h3>\r\n<ul>\r\n	<li><strong>November:</strong> Valby afdeling oprettes for ansatte og studerende ved Hotel- &amp; Restaurantskolen.</li>\r\n	<li><strong>April:</strong> Ny hjemmeside lanceres, bygget i samme framework som det kommende nye medlemssystem.</li>\r\n	<li><strong>Marts:</strong> Svampeposen lanceres til 30 kr.</li>\r\n	<li><strong>Februar:</strong> KBHFF\'s fælleslager flytter fra Københavns Professionshøjskole til Hotel- og Restaurantskolen i Valby.</li>\r\n</ul>\r\n<h3>2019</h3>\r\n<ul>\r\n	<li><strong>November:</strong> Afdelingen på Københavns Professionshøjskole lukker ned.</li>\r\n	<li><strong>September:</strong>&nbsp;FUB løssalgsordning lanceres som pilotprojekt. Gennem denne ordning kan medlemmer forudbestille specifikke varer fra ugens avlere.</li>\r\n	<li><strong>September:</strong> Kartoffelposen lanceres til 19 kr. Dette er første gang i flere år, at KBHFF\'s sortiment udvides fra grøntposen, frugtposen og aspargesposen.</li>\r\n	<li><strong>Juli:</strong> KBHFF indsamler 50.000 kr. gennem en crowdfunder til udvikling af det nye medlemssystem.</li>\r\n	<li><strong>Maj:</strong> For første gang i KBHFF\'s historie stiger priserne på grønt og frugt. Efter at have haft en brutto-\"profit\" på 8 kr. (inkl moms) for hver solgte grøntpose i 10 år, får KBHFF nu en indtjening på 23 kr. (inkl moms) for hver solgte grøntpose.</li>\r\n</ul>\r\n<h3>2018</h3>\r\n<ul>\r\n	<li><strong>December:</strong> Medlemmer fra KBHFF\'s Østerbro lokalafdeling udgiver en kogebog med opskrifter lavet til den månedlige fællesspisning i afdelingen. <a href=\"https://muusmann-forlag.dk/fra-jord-til-bord-i-faellesskab/\">Fra Jord til Bord</a> kan købes ved at skrive til <a href=\"mailto:kogebog@kbhff.dk\">kogebog@kbhff.dk</a>.&nbsp;</li>\r\n	<li><strong>November:</strong> KBHFF’s fælleslager flytter fra KPH til Københavns Professionshøjskole.</li>\r\n	<li><strong>Oktober:</strong> En ny afdeling på Københavns Professionshøjskole, for elever og ansatte (\"KP Nørrebro\"), åbner under stor fanfare. 35 nye medlemmer bliver indmeldt på åbningsdagen.</li>\r\n	<li><strong>August:</strong> KBHFF holder 10 års jubilæum på festivalen Copenhagen Cooking med workshops, smagsprøver fra vores avlere og en fællesmiddag.</li>\r\n</ul>\r\n<h3>2017</h3>\r\n<ul>\r\n	<li><strong>November:</strong> KBHFF vedtager en ny forretningsplan ved en ekstrordinær generalforsamling, som bl.a. betyder at foreningen påbegynder udviklingen af nye IT løsninger der kan understøtte abonnement på poser samt mere flesible bestillinger af løssalg. Generalforsamlingen vedtager også en ny medlemsform, et såkaldt “støttemedlem”, som bliver fritaget fra kravet om frivillighed mod at betale en højere pris for grøntsager.</li>\r\n	<li><strong>Oktober:</strong> Afdelingen på Ydre Nørrebro bliver slået sammen med afdelingen på Nørrebro.</li>\r\n	<li><strong>Marts:</strong> KBHFF bliver partner i et tværfagligt forskningsprojekt på Københavns Universitet om kollektive bevægelser og skabelse af miljønormer (COMPASS). Andre samarbejdspartnere er bl.a. Landsforeningen for Økosamfund (LØS), Omstilling Nu, Stop spild af mad osv. Forskningsprojektet er støttet af Velux-fonden og løber fra 2017 til 2020.</li>\r\n	<li><strong>Januar: </strong>KBHFF får et fælles nyhedsbrev, som udgives fire gange om året.</li>\r\n</ul>\r\n<h3>2016</h3>\r\n<ul>\r\n	<li><strong>August:</strong> KBFFF Frederiksberg åbner op igen i nye lokaler.</li>\r\n	<li><strong>Juli/August:</strong> Henover sommeren lægger fælleslageret på KPH Volume, sammen med ØkoKalaset, lokale til en række arrangementer med madværksted, fællesspisning og live-musik under navnet “Et fællesskabende måltid”. Formålet er at åbne fællesskabet mere op, også overfor ikke-medlemmer.</li>\r\n	<li><strong>Juli:</strong> KBHFF Islands Brygge lukker ned pga. mangel på frivillige kræfter.</li>\r\n</ul>\r\n<h3>2015</h3>\r\n<ul>\r\n	<li><strong>September</strong><strong>:</strong> KBHFF ansætter en bogholder til at holde styr på økonomien (læs om processen omkring ansættelsen her).</li>\r\n	<li><strong>August:</strong> KBHFF Frederiksberg lukker ned pga. manglende lokale.</li>\r\n	<li><strong>Juni:</strong> KBHFF ansætter en frivillighedskoordinator til at hjælpe med de opgaver, som er svære at løse på frivillig basis.</li>\r\n	<li><strong>Marts:</strong> Fælleslageret flytter til den gamle sporvognsremise, KPH Volume, på Enghavevej, Vesterbro.</li>\r\n	<li><strong>April-November:</strong> Projekt <a href=\"http://www.xn--kostart-p1a.dk/\">ØkoStart</a> sættes i gang med støtte fra Fonden for Økologisk Landbrug. Formålet er at udvikle en startpakke med viden og erfaringer fra fødevarefællesskaber rundt omkring i landet, til at understøtte opstarten af nye økologiske fødevarefællesskaber i Danmark.</li>\r\n	<li><strong>Januar:</strong> I anledning af Fødevareministeriets fejring af 25-året for det røde Ø-mærke deltager KBHFF-medlem Mogens Bisgaard i en paneldebat med Thomas Roland, ansvarlighedsdirektør for Coop, og Claus Juel-Jensen, direktør i Netto.</li>\r\n	<li><strong>Januar:</strong> Der indføres et mindre årligt medlemskontingent for alle medlemmer af KBHFF.</li>\r\n</ul>\r\n<h3>2014</h3>\r\n<ul>\r\n	<li><strong>November:</strong> ØkoHub-projektet afsluttes med et stort udviklingsseminar, hvor projektets resultater præsenteres og diskuteres.</li>\r\n	<li><strong>Maj:</strong> KBHFF Sydhavnen har første åbningsdag.</li>\r\n	<li><strong>Maj:</strong> Udviklingsprojektet ØkoHUB iværksættes med midler fra Fonden for Økologisk Landbrug. Målet er bl.a. at afklare, hvordan samarbejdet med de økologiske avlere kan forbedres.</li>\r\n	<li><strong>April:</strong> Efter et halvt års genopbygningsarbejde kan KBHFF holde ordinær generalforsamling og fejre indførelsen af en ny organisationsstruktur, nye vedtægter og et velafsluttet årsregnskab – og dermed, at fødevarefællesskabet er på rette kurs igen.</li>\r\n	<li><strong>Januar:</strong> KBHFFs fælleslager flytter til egne lokaler på Kastanie Allé i Vanløse.</li>\r\n</ul>\r\n<h3>2013</h3>\r\n<ul>\r\n	<li><strong>Oktober:</strong> KBHFF afholder krisemøde pga. udfordringer med at løse de centrale arbejdsopgaver i fællesskabet. Over 120 medlemmer deltager i mødet. Mødet iværksætter en proces med udvikling af ny organisationsstruktur og nye arbejdsgange.</li>\r\n	<li><strong>September:</strong> KBHFF Christiania har første åbningsdag.</li>\r\n	<li><strong>Maj:</strong> Indre By afdeling må lukke pga. manglende medlemstilslutning.</li>\r\n	<li><strong>April:</strong> Gentofte afdeling må lukke pga. manglende medlemstilslutning.</li>\r\n</ul>\r\n<h3>2012</h3>\r\n<ul>\r\n	<li><strong>August:</strong> Åbning af KBHFF Islands Brygge</li>\r\n	<li><strong>August:</strong> KBHFF fejrer sin tre års fødselsdag i Byhaven 2200.</li>\r\n	<li><strong>Juli:</strong> KBHFF Østerbro tester som de første fødevarefællesskabets nye stofposer.</li>\r\n	<li><strong>Juli:</strong> KBHFFs folkekøkken <a href=\"https://www.facebook.com/KbhffOkokalaset\" target=\"_blank\">ØkoKalaset</a> deltager på Roskilde Festival. Og vender tilbage de følgende år i festivallens Dream City-område.</li>\r\n	<li><strong>Juni:</strong> <a href=\"http://www.byhaven2200.dk/\" target=\"_blank\">Byhaven 2200</a>, der er startet af medlemmer fra KBHFF holder arbejdsuge, og etablerer en byhave i Nørrebroparken.</li>\r\n	<li><strong>Februar:</strong> KBHFF Vanløse afprøver som de første KBHFF’s nye online medlemssystem, der rulles ud til samtlige afdelinger i løbet 2012.</li>\r\n</ul>\r\n<h3>2011</h3>\r\n<ul>\r\n	<li><strong>December:</strong> KBHFF Ydre Nørrebro har første åbningsdag.</li>\r\n	<li><strong>November:</strong> KBHFF Indre By har første åbningsdag.</li>\r\n	<li><strong>Oktober:</strong> KBHFF Østerbro har første åbningsdag.</li>\r\n	<li><strong>Oktober:</strong> Københavns Fødevarefællesskab runder 3000 medlemmer fordelt på 7 afdelinger. Samlet distribuerer KBHFF nu omkring 5 tons grøntsager om ugen fra et centralt lager i Gladsaxe.</li>\r\n	<li><strong>September:</strong> KBHFF Frederiksberg har første åbningsdag.</li>\r\n	<li><strong>Maj:</strong> KBHFF indleder et samarbejde med den social økonomiske virksomhed Allehånde, der skal stå for fordele varer mellem de nu 5 afdelinger.</li>\r\n	<li><strong>Maj:</strong> København Fødevarefællesskab runder 2000 medlemmer.</li>\r\n	<li><strong>Maj:</strong> KBHFF Vanløse holder første åbningsdag.</li>\r\n	<li><strong>April:</strong> KBHFF overtager 1½ tønder økologisk jord, og begynder at dyrke sine egne grøntsager.</li>\r\n	<li><strong>April:</strong> Der afholdes stiftende generalforsamling i Bornholms Økologiske Fødevarefællesskab (BØFF) inspireret af KBHFF.</li>\r\n	<li><strong>Marts:</strong> Der afholdes stiftende generalforsamling i Odense Fødevarefællesskab inspireret af KBHFF.</li>\r\n	<li><strong>Marts:</strong> Amagerafdelingen åbner dørene for endnu et afhentningssted på Prags Boulevard, men fortsætter med at have poseafhentning i lokalerne på Backersvej.</li>\r\n	<li><strong>Februar:</strong> KBHFF får endelig igen en afdeling på Vesterbro denne gang på Oehlenschlægergade skole. 60 poser forudbestilles allerede 1. åbnings dag.</li>\r\n	<li><strong>Januar:</strong> Der afholdes stiftende generalforsamling i Århus Økologiske Fødevarefællesskab inspireret af KBHFF.</li>\r\n	<li><strong>Januar:</strong> Indkøbsgruppen holder åbent hus for omkring 20 frugt- og grøntsagsavlere, hvor sæsonen 2011 diskuteres.</li>\r\n	<li><strong>Januar:</strong> Ungdomshuset på Dortheavej 61 lægger hus til Nordvest afdeling.</li>\r\n</ul>\r\n<h3>2010</h3>\r\n<ul>\r\n	<li><strong>Oktober:</strong> KBHFF Amager har første åbningsdag.</li>\r\n	<li><strong>August:</strong> KBHFF er i medierne og får 92 nye medlemmer på 14 dage</li>\r\n	<li><strong>August:</strong> Fællesskabet har over 500 medlemmer.</li>\r\n</ul>\r\n<h3>2009</h3>\r\n<ul>\r\n	<li><strong>Oktober:</strong> Fødevarefællesskabet holder sin første ordinære generalforsamling.</li>\r\n	<li><strong>August:</strong> Butikken på Nørrebro slår dørene op med 30 forudbestilte poser. Det første pakkehold består af 2 personer, der først møder kl. 16.</li>\r\n	<li><strong>August:</strong> Fællesskabets opstartsmøde i Kafa-X på Korsgade samler 30-35 engagerede personer, og de første grøntsagsposer bestilles.</li>\r\n	<li><strong>Juni:</strong> Fødevarefællesskabet planlægger at flytte fra Vesterbro til Nørrebro. Et nyskrevet manifest bliver sendt til 250 personer på fødevarefællesskabets mailing-liste.</li>\r\n</ul>\r\n<h3>2008</h3>\r\n<ul>\r\n	<li><strong>April:</strong> Foreningen Københavns Fødevarefællesskab afholder stiftende generalforsamling.</li>\r\n	<li>Forsøg med at købe stort ind fra grossist til ca. 15 mennesker. Lokale hos Vestergror, Vesterbrogade.</li>\r\n	<li>Kollektivet Svanholm bliver KBHFF’s første leverandør til butik i Slagtehusgade, Kødbyen.</li>\r\n</ul>\r\n<h3>2007</h3>\r\n<ul>\r\n	<li><strong>December:</strong> Samvirke trykker en artikel om Park Slope Food Coop: <a href=\"https://classic.samvirke.dk/node/303228\" target=\"_blank\">“Her løfter man i flok”</a></li>\r\n	<li><strong>Oktober:</strong> Morten samler en gruppe ildsjæle til opstartsmøde på Frederiksberg Bibliotek</li>\r\n	<li><strong>April:</strong> I forbindelse med en generalforsamling i KranFilm Collective præsenteres Morten Dall for <a href=\"https://www.foodcoop.com/\" target=\"_blank\">Park Slope Food Coop</a>, der er et amerikansk Fødevarefællesskab i Brooklyn, New York. Efter et besøg i New York og et møde med en af grundlæggerne, Joe Holtz, inspireres Morten til at opstarte et fødevarefællesskab i København.</li>\r\n</ul>'),
	(24,43,'For medlemmer','','','<h3>Ikke medlem endnu? Vil du gerne...</h3>\r\n<ul>\r\n	<li>spise lokalt, økologisk/biodynamisk og i sæson?</li>\r\n	<li>støtte de små økologiske/biodynamiske producenter?</li>\r\n	<li>dele opskrifter og blive inspireret af andres?</li>\r\n	<li>vide mere om, hvordan dine råvarer produceres?</li>\r\n	<li>være en del af et engageret, lokalt fællesskab?</li>\r\n</ul>\r\n<h3><a href=\"/bliv-medlem\">Læs mere om vores medlemskaber og bliv medlem i dag</a></h3>'),
	(25,58,'Lugeture','','Københavns Fødevarefælleskab holder flere lugeture i løbet af sommeren.\r\nDeltagerne arbejder hele dagen hos Birkmosegård og spiser sammen bagefter.','<div class=\"media item_id:58 variant:HTMLEDITOR-html-edmbiar3 name:lugetur.png filesize:2923899 format:png width:2048 height:1365\">\r\n	<p><a href=\"/images/58/HTMLEDITOR-html-edmbiar3/480x.png\"></a></p></div>\r\n<p><strong>Lugetur til Birkemosegaard</strong><br /><br />I K&oslash;benhavns F&oslash;devaref&aelig;llesskab arbejder vi for at fremme en mere direkte forbindelse mellem producenter af &oslash;kologisk og biodynamisk frugt og gr&oslash;nt og forbrugerne. En af m&aring;derne, vi g&oslash;r dette p&aring;, er ved at arrangere lugeture til Birkemoseg&aring;rd for vores medlemmer fra maj til oktober m&aring;ned.<br /><br />Birkemoseg&aring;rd er et &oslash;kologisk landbrug beliggende i det smukke landskab i Nordsj&aelig;lland Sj&aelig;llands Odde. P&aring; g&aring;rden dyrker de forskellige gr&oslash;ntsager, frugter og korn samt holder dyr. Som medlem af K&oslash;benhavns F&oslash;devaref&aelig;llesskab kan man tilmelde sig lugeture p&aring; g&aring;rden og hj&aelig;lpe med at luge ukrudt, plukke frugt og gr&oslash;nt m.m. Som tak for hj&aelig;lpen fragter Birkemosegaard gr&oslash;nsager ud til tre af vores afdelinger 51 uger om &aring;ret. S&aring; det er vigtigt at vi er en god flok, som tager p&aring; lugetur henover for&aring;ret og sommeren, for at f&aring; regnskabet til at g&aring; lige op.<br /><br />K&oslash;benhavns F&oslash;devaref&aelig;llesskabs lugeture til Birkemoseg&aring;rd er en fantastisk mulighed for, at l&aelig;re mere om &oslash;kologisk landbrug og for at f&aring; en dybere forbindelse til de f&oslash;devarer, vi spiser, og de mennesker der dyrker de gr&oslash;nsager og frugt som vi f&aring;r i K&oslash;benhavns F&oslash;devaref&aelig;llesskab.<br /><br /><br /><strong>En typisk lugetur</strong><br /><br />N&aring;r vi ankommer, starter vi med kaffe, te og morgenbr&oslash;d og taler om dagens opgaver. Birkemoseg&aring;rd st&aring;r for forplejningen, s&aring; du beh&oslash;ver ikke at medbringe noget selv.<br /><br />Program:<br /><br />8.00: Afgang fra K&oslash;benhavn<br />9.30: Ankomst til Birkemoseg&aring;rd, kaffe, te og morgenbr&oslash;d<br />10.00: Lugning<br />13.00: Frokost<br />13.30: Lugning<br />16.30: Kaffe, te og kage<br />17.30: Retur til Kbh<br />19.00: ankomst Kbh<br /><br />Der plejer ogs&aring; at v&aelig;re tid til at handle i Birkemosegaards sk&oslash;nne g&aring;rdbutik. Udover friske gr&oslash;ntsager fra egen avl, s&aelig;lger de ogs&aring; mange andre l&aelig;kre varer.<br /><br /><strong>Praktisk</strong><br />Du skal v&aelig;re klar p&aring; at arbejde, og fl&aring; ukrudtet op af jorden. Op og ned af r&aelig;kkerne, mens man snakker med andre medlemmer - og har det helt vidunderligt under den h&oslash;je himmel p&aring; Sj&aelig;llands Odde.<br />Medbring: Vandflaske, skiftesko (s&aring; vi holder bilerne rene), hat/solcreme.<br /><br /><strong>H&oslash;st festen</strong><br />I oktober m&aring;ned p&aring; den sidste lugetur afholder vi sammen med Birkemosegaard tradition en H&oslash;stfest, hvor vi fejrer &aring;rets h&oslash;st. Det er en gl&aelig;delig begivenhed, der samler landm&aelig;nd og medlemmer af K&oslash;benhavns F&oslash;devaref&aelig;llesskab til en festlig dag f&oslash;rst i marken og senere til langbordsmiddag. H&oslash;stfest, program m.m. annonceres p&aring; hjemmesiden i november/oktober m&aring;ned.<br /><br /><br /><strong>Hvem kan deltage?</strong><br />&#8232;&#8232;Alle medlemmer er meget velkomne, men vi tager derop for at arbejde, s&aring; der er desv&aelig;rre ikke mulighed for at tage b&oslash;rn med.<br />Der er f&oslash;rsteret til medlemmer af K&oslash;benhavns F&oslash;devaref&aelig;llesskab, kan du p&aring; dagen se, at der stadig er ledige pladser, s&aring; m&aring; du gerne tage en ven med.<br /><br /><br /><strong>Hvordan kan jeg tilmelde mig?&#8232;</strong><br />Hold &oslash;je med forsiden p&aring; hjemmesiden, hvor vi annoncere datoerne for lugeturene.</p>\r\n<p></p>\r\n<p><strong>Ulykkesforsikring</strong></p>\r\n<p>Ulykke forsikringDeltagelse p&aring; lugeture er p&aring; eget ansvar. K&oslash;behavns F&oslash;devaref&aelig;llesskab har p&aring; nuv&aelig;rende tidpunkt ikke en forsikring som kan d&aelig;kke ulykker under lugeturen.</p>\r\n<p></p>\r\n<p><strong>Udbetaling af udl&aelig;g til k&oslash;rsel</strong></p>\r\n<p>Udbetaling af udl&aelig;g til transport sker senest 3 uger efter &oslash;nsket om tilbagebetaling er sendt til okonomi@kbhff.dk. Det tilstr&aelig;bes dog at det sker inden for minimum 14 dage plus/minus nogle dage i tilf&aelig;lde af ferie/fridage/sygdom og at der er flere godkendelser p&aring; proceduren.&#8203;</p>\r\n<p></p>\r\n<p><em>---English version---</em><br /><br /><br /><strong>Weeding Trip to Birkemosegaard</strong><br /><br /><br />At K&oslash;benhavns F&oslash;devaref&aelig;llesskab, we work to promote a more direct connection between producers of organic and biodynamic fruits and vegetables and consumers. One of the ways we do this is by organizing weeding trips to Birkemosegaard for our members from May to October.<br /><br /><br />Birkemosegaard is an organic farm located in the beautiful countryside of Sj&aelig;llands Odde in North Zealand. On the farm, they grow various vegetables, fruits, grains, and also raise animals. As a member of Copenhagen Food Community, you can sign up for weeding trips to the farm and help with tasks like weeding, fruit and vegetable picking, and more. As a thank you for the help, Birkemosegaard delivers vegetables to three of our branches for 51 weeks a year. So it\'s important that we have a good group of people going on weeding trips during spring and summer to keep the balance.<br /><br /><br />K&oslash;benhavns F&oslash;devaref&aelig;llesskab\'s weeding trips to Birkemosegaard are a fantastic opportunity to learn more about organic farming and develop a deeper connection to the food we eat and the people who cultivate the vegetables and fruits we receive in the Copenhagen Food Community.<br /><br /><br /><strong>A Typical Weeding Trip</strong><br /><br /><br />When we arrive, we start with coffee, tea, and breakfast and discuss the day\'s tasks. Birkemosegaard takes care of the meals, so you don\'t need to bring anything yourself.<br /><br /><br />Program:<br /><br /><br />8:00 AM: Departure from Copenhagen<br /><br />9:30 AM: Arrival at Birkemosegaard, coffee, tea, and breakfast<br /><br />10:00 AM: Weeding<br /><br />1:00 PM: Lunch<br /><br />1:30 PM: Weeding<br /><br />4:30 PM: Coffee, tea, and cake<br /><br />5:30 PM: Return to Copenhagen<br /><br />7:00 PM: Arrival in Copenhagen<br /><br /><br />There is usually also time to shop in Birkemosegaard\'s lovely farm shop. In addition to fresh vegetables from their own cultivation, they also sell many other delicious products.<br /><br /><br /><strong>Practical Information</strong><br /><br />You should be prepared to work and pull the weeds out of the ground, up and down the rows, while chatting with all the other lovely people and enjoying the wonderful surroundings under the open sky of Sj&aelig;lland.<br /><br />Bring: Water bottle, spare shoes (to keep the cars clean), hat/sunscreen.<br /><br /><br /><strong>Harvest Festival</strong><br /><br />In October, on the last weeding trip, we, together with Birkemosegaard, hold a traditional Harvest Festival to celebrate the year\'s harvest. It is a joyful event that brings together farmers and members of K&oslash;benhavns F&oslash;devaref&aelig;llesskab for a festive day in the field and later for a long table dinner. Harvest Festival details and program will be announced on the website in November/October.<br /><br /><br /><strong>Who Can Participate?</strong><br /><br />All members are very welcome, but we go there to work, so unfortunately, it\'s not possible to bring children along. Members of K&oslash;benhavns F&oslash;devaref&aelig;llesskab have priority, but if you see that there are still available spots on the day, you are welcome to bring a friend.<br /><br /><br /><strong>How can I sign up?</strong><br /><br />Keep an eye on the homepage of the website where we announce the dates for the weeding trips.</p>\r\n<p><strong>Accident insurance</strong></p>\r\n<p>Participation in the gleaner trips is at your own risk. K&oslash;benhavns F&oslash;devaref&aelig;llesskab currently does not have insurance coverage that can compensate for accidents that occur during the gleaner trip.</p>\r\n<p></p>\r\n<p><strong>Payout travel expenses</strong></p>\r\n<p>Payout of transportation expenses will occur no later than 3 weeks after the request for reimbursement has been sent to okonomi@kbhff.dk. However, we aim for it to be processed within a minimum of 14 days, give or take a few days, in case of holidays, days off, illness, or if there are multiple payout approvals in the process.</p>'),
	(26,116,'Organisation','','Her kan du få et overblik over Københavns Fødevarefælleskabs organisationsstruktur','<p>Københavns Fødevarefællesskab er en uafhængig-, medlemsdemokratisk forening, frivilligdrevet indkøbsforening med lokalafdelinger fordelt over hele København og et centralt fælleslager. Foreningen er funderet i foreningens vedtægter, <a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">10 grundprincipper</a> og er organiseret i tre niveauer:</p>\r\n<p></p>\r\n<p></p>\r\n<div class=\"media item_id:116 variant:HTMLEDITOR-html-lgojnwpm name:2024_KBHFF_organisering_DK.png filesize:34874 format:png width:885 height:363\">\r\n	<p><a href=\"/images/116/HTMLEDITOR-html-lgojnwpm/480x.png\"></a></p></div>\r\n<p><strong>Det første niveau;</strong> er fællesskabets øverste myndighed og varetager foreningens principielle, økonomiske og juridiske beslutninger, beslutningerne kan træffes af generalforsamlinger og bestyrelsen.<br /><br />Københavns Fødevarefællesskab er en medlemsdemokratisk forening, hvor alle medlemmer har mulighed for at sende forslag og stemme til foreningens årlige generalforsamling.<br /><br />Bestyrelsen er foreningens juridiske kontaktperson med ansvar for kontrakter, godkendelse af betalinger mm., de er også kontaktperson til foreningens bank (kasser) og konsulenter herunder bogholder og foreningens fælleskoordinator.</p>\r\n<p><strong>Det andet niveau;</strong> varetager koordinering og udførelse af centrale driftsopgaver og sociale aktiviteter. Disse opgaver løses af fællesmødet, fælles arbejdsgrupper som IT- og indkøbsgruppen, fælleslageret og foreningens konsulenter. Fællesmødet er et åbent møde for alle medlemmer af foreningen, hvor vi i fællesskab løser, de fælles opgaver som skal løses på tværs af lokalafdelinger. <br /><br />Til fællesmøder bør følgende som minimum deltage; foreningens fælleskoordinator, medlemmer fra bestyrelsen, alle arbejdsgrupper samt alle lokalafdelinger, herved sikres bred repræsentation, gennemsigtighed i beslutningsprocesserne og samarbejde på tværs af foreningens forskellige organer, hvilket styrker foreningens sammenhængskraft og demokratiske fundament.<br /><br />Fællesmøder afholdes den sidste tirsdag i januar, marts, maj, august, september og november fra kl. 17-21.</p>\r\n<p><strong>Det tredje niveau;</strong> er foreningens lokalafdelinger hvorfra vi henter vores forudbestilte grøntsager hver onsdag. Lokalafdelingerne er organiseret så de har en høj grad af selvbestemmelse for hvordan de vil organisere deres butik, vagtplan, mødekalender mm.&nbsp;</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h4>Organisering af afdelingerne</h4>\r\n<p>For at sikre den daglige drift i lokalafdelingen og de fællesarbejdsgrupper forventes følgende:</p>\r\n<ul>\r\n	<li>En butiksgruppe bestående af ca. seks frivillige, som sikrer den daglige drift af afdelingen, herunder en introvagt til nye frivillige</li>\r\n	<li>35 aktive frivillige medlemmer som sørger for at dække den daglige drift</li>\r\n	<li>15 ugelige bestillinger</li>\r\n	<li>Stiller med minimum fire frivillige til fælleslageret, chaufførteamet og indkøbsgruppen</li>\r\n	<li>Er repræsenteret ved minimum et medlem til fællesmøderne</li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp;</p>\r\n<h4>De væsentligste vagter som sikrer god daglig drift i afdelingerne</h4>\r\n<ul>\r\n	<li>Modtagervagt, som også kan være pakkevagt, hvis afdelingen pakker grøntsagsposerne før afhentning</li>\r\n	<li>Butiksvagter, som også kan introducere nye medlemmer til foreningen</li>\r\n	<li>Butiksgruppe, som også kan være teamkoordinatorer, hvis afdelingen har teamstruktur. Afholder månedligt butiksgruppemøde</li>\r\n	<li>Introvagt, sørger for god introduktion til nye medlemmer</li>\r\n	<li>Tørvarer ansvarlig</li>\r\n</ul>\r\n<h2>Politik</h2>\r\n<p>Københavns Fødevarefællesskab er ikke en partipolitisk forening men værner om foreningens <a href=\"https://kbhff.dk/om/10-grundprincipper\" target=\"_blank\">10 grundprincipper</a>, det vil sige at vi støtter politiske initiativer som fremmer foreningens grundprincipper og støtter andre foreninger og initiativer som arbejder for en lokalforankret madkultur hvor kvalitet, friskhed, sæson, fællesskab og fair og direkte handel med avlere er omdrejningspunkterne.</p>'),
	(28,650,'Kvikstart guide','','Denne guide giver en hurtigt introduktion til KBHFF. The quick start guide helps new member find their way.','<p><em>English version below</em></p>\r\n<p>Her finder du svar på spørgsmål vedrørende frivillige vagter, bestilling og afhentning af ordre.</p>\r\n<h2>Frivillige vagter</h2>\r\n<p>KBHFF er et handlefællesskab det betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Derfor forventes det at alle medlemmer tager en vagt, på et par timer, én gang om måneden enten i en lokalafdeling eller en af de fælles arbejdsgrupper.&nbsp;&nbsp;</p>\r\n<h3>Jeg er ny, hvordan kommer jeg i gang med min første vagt?</h3>\r\n<p>Når du er blevet medlem af KBHFF, modtager du en mail fra din lokalafdeling som sørger for, at du kommer godt i gang med din første vagt. Har du nogle spørgsmål, kan du altid komme forbi om onsdagen i din lokalafdelings åbningstid eller sende dem en mail.&nbsp;&nbsp;</p>\r\n<p><a href=\"https://kbhff.dk/afdelinger\" target=\"_blank\">Du finder adresse og kontaktoplysninger på din lokalafdeling her</a></p>\r\n<h3>Jeg kan ikke tage vagter om onsdagen i min lokalafdeling, kan jeg stadig være frivillig?</h3>\r\n<p>Den mest normale måde at være frivillig i KBHFF er i din lokalafdeling, men der er mange andre sjove måder at engagere dig i foreningen.&nbsp;</p>\r\n<ul>\r\n	<li>Fælleslageret som fordeler ugens grønt til afdelingerne onsdag morgen</li>\r\n	<li>Chauffør som kører varerne ud til afdelingerne onsdag eftermiddag</li>\r\n	<li>Indkøbsgruppen som har ansvar for bestillinger hos avlerne</li>\r\n	<li>IT gruppen som drifter hjemmesiden samt dvs. data</li>\r\n	<li>Bestyrelsen</li>\r\n</ul>\r\n<p><a href=\"https://kbhff.dk/kontakt\" target=\"_blank\">Du finder kontaktoplysninger på de fælles arbejdsgrupper her</a>&nbsp;</p>\r\n<p>Er du i tvivl om, hvilken arbejdsgruppe som passer bedst til dig? eller har du spørgsmål til de fællesarbejdsgrupper, så kontakt KBHFF fælleskoordinator, som bl.a. er ansvarlig for fælleslageret og chauffør teamet, på mailadressen fk@kbhff.dk.</p>\r\n<h3>Arrangementer og kommunikation</h3>\r\n<p>Vil du gerne være med til at planlægge arrangementer så som gårdbesøg og fællesspisninger? Eller hjælpe med at fortælle den gode historie om KBHFF på vores sociale medier? Så send en mail til bestyrelse@kbhff.dk, så hjælper vi dig godt i gang.</p>\r\n<h3>Kan jeg tage en pause fra mine frivillige vagter?</h3>\r\n<p>Ønsker du midlertidigt at stoppe med at tage vagter, kan du nemt blive støttemedlem og betale lidt ekstra for grøntposen. Du skal blot bede butiksvagten i din afdeling om at ændre status på dit medlemskab fra <a href=\"https://kbhff.dk/bliv-medlem/medlemskaber/frivillig\" target=\"_blank\">frivillig</a> til <a href=\"https://kbhff.dk/bliv-medlem/medlemskaber/stoettemedlem\" target=\"_blank\">støttemedlem</a>. Du kan også selv gøre det under \'Min side\' her på hjemmesiden.</p>\r\n<p><a href=\"https://kbhff.dk/om/organisationen\" target=\"_blank\">Læs mere om KBHFF organisation her</a></p>\r\n<h2>Bestilling og afhentning af varer</h2>\r\n<h3>Bestilling af varer</h3>\r\n<ul>\r\n	<li>Deadline for bestilling er altid den forudgående onsdag.</li>\r\n	<li>Betaling kan ske online eller i din lokalafdeling.</li>\r\n	<li>Indholdet af posen kan ses på hjemmesiden senest om mandagen forud for levering. Så man kender som udgangspunkt ikke indholdet af posen, når man bestiller.</li>\r\n</ul>\r\n<h3>Afhentning af varer</h3>\r\n<ul>\r\n	<li>Afhentningstidspunktet for varer er hver onsdag eftermiddag/aften.</li>\r\n	<li>Husk og medbring din KBHFF pose.</li>\r\n	<li>Ordren skal hentes inden for din afdelings åbningstid. Det behøver ikke være dig der afhenter, så du kan spørge en bekendt, skulle du være forhindret.</li>\r\n	<li>Hvis du kommer udenfor åbningstid, kan du ikke være garanteret at få dine varer, og du bliver ikke refunderet.</li>\r\n</ul>\r\n<h3>Flytning af ordre</h3>\r\n<p>Du kan flytte en bestilling til et andet tidspunkt, dette kan gøres så længe deadline for bestilling ikke er overskredet. Efter deadline kan du prøve at sælge din pose fx på din afdelings facebookside, hvis du er forhindret i at afhente den selv.</p>\r\n<p><a href=\"https://kbhff.dk/handelsbetingelser\" target=\"_blank\">Læs vores handelsbetingelser her</a></p>\r\n<p><a href=\"https://kbhff.dk/om/om-producenterne\" target=\"_blank\">Læs mere om vores producenter her</a></p>\r\n<p><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">For priser se her</a></p>\r\n<h2><a href=\"https://kbhff.dk/faq\" target=\"_blank\">Se vores FAQ for yderligere spørgsmål</a></h2>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><em>English version in progress</em></p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>'),
	(29,697,'Ugens Poser','','','<p>Her er en detaljeret oversigt over tidligere ugers posers indhold, priser og antal bestillinger pr afdeling. Når næste uges pose er oprettet kan du også se den. På den måde kan du se eksempler på, hvad ugens pose kan indeholde.<br /></p>'),
	(32,773,'Avlermøde 2024','','Invitation til avlermøde 2024 d. 21. november kl. 17:30 på Hotel- og Restaurantskolen','<h2>Invitation til avlermødet 2024</h2>\r\n<p>Kære medlemmer,</p>\r\n<p>Vi glæder os til at invitere jer til årets avlermøde i Københavns Fødevarefællesskab – en aften fyldt med inspiration, fællesskab og spændende fortællinger direkte fra markerne! Mødet finder sted på Hotel- og Restaurantskolen, hvor vores fælleslager også ligger, på Vigerslev Allé 18, 2500 København.</p>\r\n<p>Det er jeres mulighed for at høre nyt om foreningen og få en status fra indkøbsgruppen, som vil dele deres tanker og erfaringer fra det forgangne år samt de forventninger, der er til det kommende. Men vigtigst af alt, vil vores dedikerede avlere stå klar til at dele deres historier og erfaringer – hvordan gik sæsonen, hvad var udfordringerne, og hvilke planer har de for næste år? Det bliver en unik mulighed for at komme tæt på vores lokale avlere og få indblik i, hvordan vores fødevarer bliver til.</p>\r\n<p>Aftenens program (på dansk):</p>\r\n<p>17.30 - 18.00: Ankomst, velkomst og tak ved planlægningsgruppen.<br />17.30 - 17.45: Indkøbsgruppen fortæller om det forgangne år og det kommende års forventninger.<br />18.30 - 21.00: Fællesspisning og avlerrunde – vores avlere præsenterer deres arbejde, årets gang i marken og planer for næste sæson.<br />21.00 - 22.00: Oprydning og farvel.<br />Tag del i aftenen, hvor vi sammen fejrer vores avleres arbejde og bliver klogere på, hvad der venter i det kommende år. Vi ser frem til at dele denne aften med jer og høre jeres tanker, idéer og spørgsmål.</p>\r\n<p>Vi håber, I vil være med til at gøre avlermødet til en uforglemmelig oplevelse!</p>');

/*!40000 ALTER TABLE `item_page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_page_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_page_versions`;

CREATE TABLE `item_page_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_page_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table item_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_post`;

CREATE TABLE `item_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_post_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_post` WRITE;
/*!40000 ALTER TABLE `item_post` DISABLE KEYS */;

INSERT INTO `item_post` (`id`, `item_id`, `name`, `classname`, `description`, `html`)
VALUES
	(33,206,'Skal du være KBHFF\'s nye chauffør?','','Er du træt af frivillige vagter hver måned? Elsker du at køre bil og sidst men ikke mindst, vil du gerne have en vildt billig lejebil','<p>Er du træt af frivillige vagter hver måned? Elsker du at køre bil og sidst men ikke mindst, vil du gerne have en vildt billig lejebil til rådighed gennem LetsGo? Så skal du læse med her:<br /><br />Som chauffør for Københavns Fødevarefælleskab er det din opgave, at køre grønsagerne ud til afdelingerne om onsdagen. På hele vejen vil der være frivillige til at hjælpe med at pakke og bære. Det vigtigste du skal gøre er at nyde din køretur gennem byen. Turen begynder kl. 12 når bilen skal hentes og slutter ca. kl. 16 når alle grønsagerne på ruten er blevet bragt ud. Derfor er vagten hver sjette uge.<br /><br /><strong>Fordele hos Lets Go</strong><br />Udover en anderledes sjov vagt har du som chauffør den luksus gennem Københavns Fødevarefællesskab at kunne leje en Lets Go bil til yderst favorable priser.<br /><br /><strong>Hvem kan være chauffør?</strong><br />For at tage en vagt som chauffør eller chaufførmedhjælper skal du:<br />- Være medlem af Københavns Fødevarefællesskab (KBHFF)<br />- Være fyldt 23 år&nbsp; <br />- Have almindeligt kørekort (B).&nbsp; <br />- Tilmeldes som KBHFF-medlem hos LetsGo (det delebilfirma som vi lejer biler af) og have en LetsGo nøglebrik.<br /><br /><strong>Køretur hver sjette uge eller oftere</strong> <br />Det forventes, at du tager 1 vagt i hver periode. Hver periode varer seks uger. Du modtager en mail ca 14 dage før en ny periode, hvor du bliver mindet om at skrive dig op på chaufførernes vagtplan. Find linket på wikien under VAGTPLAN. Der er en ambition om at mødes i chaufførteamet ca. 1 møde årligt og snakke om hvordan vagten virker, hvad der virker og ikke virker på vagten.<br /><br /><strong>Sådan bliver du chauffør: </strong><br />Vil du gerne være chauffør eller har du nogle spørgsmål, så skriv til Jonathan (fælleskoordinator) på fk@kbhff.dk. Han vil være din kontaktperson og sørge for at du kommer godt igang som chauffør.<br /><br />Her er vagtbeskrivelse for chauffører på&nbsp;<a href=\"https://docs.google.com/document/d/1YLHpd8hBYYLUyorq-VI2qekS0xYhnrZjHRem0CBPjAI/edit#heading=h.ln83t119j45k\" target=\"_blank\">dansk</a>&nbsp;og&nbsp;<a href=\"https://docs.google.com/document/d/1ialqdknuMw3WXE3W1kEIJOtYrEGa23xIenTjmg2GkF4/edit#\" target=\"_blank\">engelsk</a><br /><br />Vil du gerne vide mere om hvordan en typisk onsdag ser ud i Københavns Fødevarefællesskab fra landmand til udlevering af grønsagsposer? <a href=\"https://vimeo.com/84031934\" target=\"_blank\">Så se denne&nbsp;korte film</a>.</p>'),
	(56,303,'Nye datoer til lugeture','','Kom med på lugetur til Birkemosegaard, der ligger i naturskønne omgivelser på Sjællands Odde','<p>Så er der nye datoer til vores populære lugeture på Birkemosegaard. Skynd dig at tilmeld dig, mens det stadig er pladser.</p>\r\n<p>Alle medlemmer er meget velkomne, uanset hvor mange eller få gange man er med. Men vi tager derop for at arbejde, så der er desværre ikke mulighed for at tage børn med. Al forplejning står Birkemosegaard for.</p>\r\n<p>Hvis man luger 5 gange, eller mere, svarer det til et års vagter i KBHFF.</p>\r\n<p><a href=\"https://docs.google.com/spreadsheets/d/1NK9sHhg0QoNzXrQnu__HmPFUeaQDViVOMyM8EElQTFw/edit\" target=\"_blank\">Tilmeld dig her</a></p>\r\n<p><strong>En typisk lugetur</strong><br />8.00: Afgang fra København     <br />9.30: Ankomst til Birkemosegård, kaffe, te og morgenbrød<br />10.00: Lugning<br />13.00: Frokost<br />13.30: Lugning<br />16.30: Kaffe, te og kage<br />17.30: Retur til Kbh<br />19.00: ankomst Kbh</p>'),
	(73,344,'Året der gik 2021 (cloned)','','Året der gik 2021 i Københavns Fødevarefællesskab','<p>Året 2021 i Købehavns Fødevarefællesskab<br /><br />2021 var året i Købehavns Fødevarefællesskab, hvor vi endnu en gang fik landets bedste økologiske og biodynamiske fødevarer fra nogle af de bedste gårde på og omkring sjælland. Der er ikke noget lækre end synet af grønsagspose fyldt til randen med lækkert grønt direkte fra markerne.  <br /><br />Vi var blandt andet flere der for første gang stiftede bekendskab med sølvbladbær, dem har vi været utrolig glade for. Det er altid med stor glæde og nysgerrighed at vi modtager ny slags frugt og grønt fra avlerne. Vi håber derfor i foreningen at kunne udvide udbuddet i 2022.<br /><br /><br />Corona og avlermøde<br /><br />2021 var igen et år hvor nogle af vores avlere og vores eget fællesskab var truet af corona. Endnu en gang priste vi os lykkelige over, ikke at være tvunget til nedlukning og at vi derved kunne blive ved med at støtte vores avlere. Lige ledes har vi været utrolig glade for at kunne fortsætte med at tage på lugetur til Birkemosegaard, en aktivitet som værdsættes højt hos mange af foreningens medlemmer. <br /><br />I 2021 fik vi endelig lov til, at mødes igen til årets avlermøde og sikke en fornøjelse det var at kunne mødes igen om fortællinger fra marken og lækker mad tilberedt af vores samarbejdspartnere på Hotel- og Restaurantskolen. Vi ser ind i et nyt år, hvor vi ser frem til, at styrke samarbejdet mellem avlere, KBHFFs medlemmer og Hotel- og Restaurantskolen også håber vi på at Jespers frygt fra avlermødet om “De syv plager” på markerne ikke er sandt. Det finder vi ud af til næste års avlermøde. Vi glæder os allerede.<br /><br /><br />Økonomi <br /><br />På bestyrelsesmødet d. 10 august 2020 kunne foreningens bestyrelse præsentere et sundt årsregnskab der blandt andet betød en prisreduktion på grønsagsposen for frivillige fra 115 kr. til 100 kr. i anden halvdel af 2021. Noget vi har været utrolig stolte over og håber at kunne genindføre i lignende format i fremtiden, hvis vi altså bliver bedre til at få flere medlemmer og bestille flere grønsagsposer i 2022.<br /><br />Ligeledes er vi glade for de ekstra midler der blev sat til side til afholdelse af fælles arrangementer som gør det muligt for foreningens medlemmer at ansøge foreningen om støtte til fælles aktiviteter som eksempelvis kimchi workshop. <br /><br /><br />Lokalafdelingerne og arbejdsgrupperne<br /><br />En ny lokalafdeling i Valby så for første gang dagens lys i 2021 og Vesterbros lokalafdeling er mildestaget blevet utrolig glade for samarbejdet med uKirke. Senest er Karens Hus foreningens officelle adresse og mødested for nordvest afdelingen desværre brændt, vi arbejder derfor i skrivende stund på en ny løsning.<br /><br />2021 blev igen et år hvor nogle lokalafdelinger midlertidigt måtte skifte adresse på grund af corona. Heldigvis havde vi også glæde af, at opleve afdelingerne når de er bedst ved afholdelse af fællesspisninger, kimchi workshop mm. Vi håber på at foreningens medlemmer har lyst til at afholde flere events i 2022. <br /><br />Både foreningens lokalafdelinger, fælleslageret og arbejdsgrupper har i 2021 oplevet problemer med manglende hænder til at løse foreningens praktiske opgaver. Det er uholdbart og koordineringsmødet vil derfor i begyndelsen af 2022 fremlægge ny foreningsstruktur for arbejdsgrupperne som er tilsvarende til KBHFFs situation anno 2022. Vi glæder os til at fortælle jer meget mere. <br /><br /><br />Til aller sidst vil vi gerne ønske godt nytår og tak for samarbejdet i 2021 til alle vores medlemmer, avlere og samarbejdspartnere. Vi ser frem til at fortsætte samarbejdet i 2022.</p>'),
	(87,372,'Forårsjævndøgn - en spændende og spirende tid','','I denne tid hvor alting spirer, og hvor vejret stadig er for ustadigt til at skifte uldfrakkerne ud med de mere lette af slagsen, er der masser af ting at','<p><em>Tekst: Mia Leed Jensen (Nørrebro butiksgruppe)<br />Linse-opskrifter: Jesper Henrik Holmen (Nørrebro butiksgruppe)</em></p>\r\n<p>Der er så småt ved at være nogle uger siden (søndag den 20. marts), at årets første jævndøgn fandt sted. I denne tid hvor alting spirer, og hvor vejret stadig er for ustadigt til at skifte uldfrakkerne ud med de mere lette af slagsen, er der masser af ting at opleve og nyde i naturen. Kirsebærtræerne skal I fx endelig huske at nyde, netop nu, mens de står i lyserødt flor. Forårsjævndøgn er også kendt uden betegnelsen ‘Ostara’ i hedensk tradition. (I februar skrev vi om <a href=\"https://kbhff.dk/nyheder/midvinter-aarstidsfejringen-der-hylder-lyset\" target=\"_blank\">årets første fejring</a> - Midvinter/Kyndelmisse/Imbolc).</p>\r\n<p>Det er betegnelsen ‘Ostara’ som ‘Easter’ stammer fra. Man fejrede nemlig gudinden Eostre/Ostara (altså herfra navnet ‘Easter’ - som jo er påske på dansk). Påskesymboler som æg og harer er forbundet med disse hedenske fejringer af forårets gudinde, da de symboliserer fertilitet og frugtbarhed.</p>\r\n<p>Jævndøgn falder to gange om året - forårsjævndøgn og efterårsjævndøgn. Fælles for jævndøgn er, at de markerer dagen hvor dag og nat har samme længde. Traditionelt set, markerede forårsjævndøgnet årets første forårsdag. Til <a href=\"https://kbhff.dk/nyheder/midvinter-aarstidsfejringen-der-hylder-lyset\" target=\"_blank\">Midvinter</a> fejrede vi lyset og begyndte ligeså stille at bevæge os ud af hulerne, ud i lyset og det åbne samfund. Med forårssolens stråler er det nemmere at ryste vinteren af os. De kommende påskefrokoster, forårs-get-aways og sommerens mange udadvendte udendørsaktiviteter begynder at blive lagt i kalenderen.</p>\r\n<p>Vi bevæger os så småt ind i sommerhalvåret, og har allerede sat urene til sommertid. Der er ingen tvivl om, at vi befinder os i en af de mest spændende og forventningsfulde årstider. Overalt pibler naturens skatte frem i byens gader og parker. Forårsjævndøgn står, som skrevet, traditionelt set for fertilitet og genfødsel. Det vi har gået og “ruet” på igennem vinteren er nu, snart, klar til at komme ud i verden. Nye projekter, ideer, og planlægning af fester og komsammener venter på at blive igangsat. For at skabe plads og føle os endnu mere klar til varmere dage, rydder vi måske ud, gør altanen/haven klar, og får vasket de tiltrængte gulve, som vi ikke fik ordnet tilbage i februar. Vi kan også med fordel begynde at forspire de frø, vi ønsker at se vokse i år - enten i vindueskarmen, altanen eller i haven.</p>\r\n<p>I naturen og dyrenes verden er der fuld gang i genfødslen. Træerne springer ud, påskeliljer og erantis farver bybilledet i gule, orange og lilla pastelfarver. Har du også været heldig at se en sommerfugl eller to? Brændenældeskud, ramsløg og martsvioler kan sankes netop nu. Og den smagfulde urt skovmærke er også ved at titte frem fra skovbunden. Stenbideren lægger sine smukke orangerøde æg (rogn), der lokker i fiskehandlerne vindue (men sæsonen er allerede ved vejs ende). Årets første kuld af harekillinger har allerede set dagens lys, og gæssene begynder at lægge sine æg, så gæslingerne kan blive klækket ud, når næringen i græsset er på sit højeste.</p>\r\n<p>I anledning af forårsjævndøgnet har vores medlem Jesper fra Nørrebro afdelingen, og aktiv i butiksgruppen, kreeret to opskrifter med et af vores nyeste skud i løsslag - Samsø Linser. En spicy frisk én og varmende rød én, der minder lidt om tartar, og som du derfor med fordel kan klække et jævndøgns-æg til (hvis vi skal blive i symbolernes verden). Vi sælger desværre ikke æg i KBHFF, men vi håber stadig, at vi en dag kan sælge dem i afdelingerne. Hvad synes du? Kunne det ikke være dejligt at hente friske æg sammen med din grøntsagspose?</p>\r\n<p>God fornøjelse med opskrifterne, og nyd resten af marts. Vi vender tilbage til den tredje årtidsfejring Beltane, d. 1 maj. Til den tid er vi halvvejs mellem forårsjævndøgn og sommersolhverv (Sankt Hans). Også kaldet starten på aspargespose-sæsonen i KBHFF-termer.</p>\r\n<p>Vi vil meget gerne dele nogle af jeres opskrifter, så vi kan inspirere hinanden til, hvordan vi kan bruge løssalgsvarene og afgrøderne fra KBHFF. Så skriv endelig til os her: norrebro@kbhff.dk</p>\r\n<p><a href=\"https://kbhff.dk/nyheder/opskrift-friske-foraarssalater-med-linser\" target=\"_blank\">Se opskrifterne her</a></p>'),
	(184,659,'Vil du være chauffør? / Are you our new driver','','Intet fælleslager intet KBHFF I No Community Warehouse, No KBHFF','<p><em>For English see below</em></p>\r\n<p>Vi har brug for hænder, ikke kun i lokalafdelingen, men også på fælleslageret og til at køre ud til afdelingerne. Lige nu er der akut behov for chauffører og chaufførmedhjælpere.&nbsp;Vagten varer ca. fra 12-16 og det forventes at man hjælper hver 6. uge da vagten er lidt længere.</p>\r\n<h3>Fordele som chauffør</h3>\r\n<p>For at gøre det mere attraktivt at hjælpe som chauffør tilbyder vi at man kan leje biler via foreningens konto.</p>\r\n<p>Det er nemt og her er <a href=\"https://docs.google.com/document/d/1FNLxC95017XkHPCd5nmd8NQW5UYot8fkziF2BugUMR8/edit\" target=\"_blank\">link til en guide for proceduren</a></p>\r\n<p>Man betaler selvsagt selv for lejen, men får de  fordelagtige priser som foreningen har aftalt med HYRE.</p>\r\n<h3>Kort beskrivelse af opgaven som chauffør</h3>\r\n<p>Hver onsdag kører 1-2 af vores chauffører grøntsager ud til vores afdelinger.</p>\r\n<p>Varerne læsses på fra vores fælleslager på Hotel og Restaurantskolen på Lyshøjgårdsvej 1 og køres ud til afdelingerne hvor de modtages af medlemer af de enkelte afdelinger.</p>\r\n<p>Chaufførerne hjælper også med at returnere de grønne IFCO kasser.</p>\r\n<p>Du kan læse om vagten i detaljer <a href=\"https://docs.google.com/document/d/1kQ_Gmu9pVZV7r_MEsJjH7bSvPbiG1oLh6Vswju97peI/edit\" target=\"_blank\">her</a> eller kontakte fælleskoordinatoren på fk@kbhff.dk, hvor du også kan skrive, hvis du vil tilmeldes som chauffør.</p>\r\n<p></p>\r\n<p><em>--- English ---</em></p>\r\n<p>More volunteers needed, not only in the local branches but also at the central warehouse and for deliveries to the branches. Right now, there is an urgent need for drivers and driver assistants. The shift lasts approximately from 12:00 to 16:00, and it is expected that you help out every 6th week since the shift is a bit longer.</p>\r\n<h3>Advantages for drivers</h3>\r\n<p>To make it more attractive to help out as a driver, we offer car rental via the association\'s account.</p>\r\n<p>It is smooth and easy and&nbsp;<a href=\"https://docs.google.com/document/d/1FNLxC95017XkHPCd5nmd8NQW5UYot8fkziF2BugUMR8/edit#heading=h.lxpobyuqwp2c\" target=\"_blank\">here you\'ll find a guide for the procedure</a>&nbsp;</p>\r\n<p>Of course, you pay for the rent yourself, but you get the advantages and prices that the association has with HYRE.</p>\r\n<h3>Short description of the shift</h3>\r\n<p>Each Wednesday we deliver vegetables to some of our departments by car.</p>\r\n<p>The goods are loaded from our \'Fælleslager\' at the Hotel and Restaurant School at Lyshøjgårdsvej 1 and are delivered to the departments were they are received by members.</p>\r\n<p>The drivers are also helping out with returning the green boxes from IFCO.</p>\r\n<p>You can read about the shifts in detail <a href=\"https://docs.google.com/document/d/1ialqdknuMw3WXE3W1kEIJOtYrEGa23xIenTjmg2GkF4/edit#heading=h.ln83t119j45k\" target=\"_blank\">here</a> or by contacting the \'fælleskoordinator\' at fk@kbhff.dk. You are also welcome to contact the fælleskoordinator for signing up as a driver.</p>');

/*!40000 ALTER TABLE `item_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_post_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_post_versions`;

CREATE TABLE `item_post_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_post_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table item_product_assorted
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_product_assorted`;

CREATE TABLE `item_product_assorted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_availability_date` varchar(255) DEFAULT '',
  `end_availability_date` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_product_assorted_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_product_assorted` WRITE;
/*!40000 ALTER TABLE `item_product_assorted` DISABLE KEYS */;

INSERT INTO `item_product_assorted` (`id`, `item_id`, `name`, `start_availability_date`, `end_availability_date`, `description`)
VALUES
	(60,595,'Forårsløg','2024-08-14','2024-08-14','1 bdt forårsløg, øko/bio Birkemosegaard'),
	(80,655,'Hvedemel, fuldkorn 5 kg','2024-10-30','2024-10-30','Sorten er Mariagertoba, en ny hvedesort med højt glutenindhold fra Østagergård, friskkværnet på stenkværn.'),
	(91,686,'Purløg','2024-04-14','2024-04-17','Et bundt økologisk purløg fra Stensbølgård'),
	(107,739,'New Zealandsk Spinat','2024-09-25','2024-09-25','200 g New Zealandsk Spinat fra Mortens Have (øko)'),
	(113,750,'Spelt, sigtet 1 kg','2024-10-30','2024-10-30','Økologisk friskmalet på stenkværn fra Østagergård');

/*!40000 ALTER TABLE `item_product_assorted` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_product_canvasbag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_product_canvasbag`;

CREATE TABLE `item_product_canvasbag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_availability_date` varchar(255) DEFAULT '',
  `end_availability_date` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_product_canvasbag_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_product_canvasbag` WRITE;
/*!40000 ALTER TABLE `item_product_canvasbag` DISABLE KEYS */;

INSERT INTO `item_product_canvasbag` (`id`, `item_id`, `name`, `start_availability_date`, `end_availability_date`, `description`)
VALUES
	(1,274,'stofpose','2023-10-01','','KBHFF stræber efter at minimere emballage. De mindre posetyper pakkes i papirsposer, mens den store grøntpose udleveres i en holdbar stofpose. Stofposerne medbringes af medlemmer, når deres varer afhentes, så de kan bruges igen og igen.');

/*!40000 ALTER TABLE `item_product_canvasbag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_product_seasonalbag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_product_seasonalbag`;

CREATE TABLE `item_product_seasonalbag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_availability_date` varchar(255) DEFAULT '',
  `end_availability_date` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_product_seasonalbag_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_product_seasonalbag` WRITE;
/*!40000 ALTER TABLE `item_product_seasonalbag` DISABLE KEYS */;

INSERT INTO `item_product_seasonalbag` (`id`, `item_id`, `name`, `start_availability_date`, `end_availability_date`, `description`)
VALUES
	(1,275,'frugtpose','2024-08-07','2024-12-18','Vi bestræber os på at tilbyde de bedste økologiske og biodynamiske frugter i sæson.   Uge 45 (6-11-24) 2,1 kg æbler, \r\n øko fra Naustok. Uge 46 (13-11-24) 1 kg kvæder og 0,7 kg æbler, øko/bio fra Bellingehus. Uge 47 (20-11-24) 2,1 kg æbler, øko fra Lærkehøj. Uge 48 (27-11-24) 2,1 kg æbler, øko fra Naustok. Uge 49 (4-12-24) 2,1 kg æbler, øko fra Naustok. Uge  50 (11-12-24) 2,1 kg æbler, øko/bio fra Bellingehus. Uge 51 (18-12-24) 2,1 kg æbler, øko/bio fra Bellingehus. Uge 52 (25-12-24) JULELUKKET. \r\nPosens indhold de efterfølgende uger vil løbende blive opdateret med forbehold for ændringer.'),
	(2,276,'svampepose','2021-01-01','','Indholdet i ugens svampepose:  Uge 45 (6-11-24) Østershatte. Uge 46 (13-11-24) Kejserhatte. Uge 47 (20-11-24) Brune champignon. Uge 48 (27-11-24) Portobello. Uge 49 (4-12-24) Shii-take. Uge 50 (11-12-24) Hvide champignon. Uge 51 (18-12-24) Østershatte. Uge 52 (25-12-24) JULELUKKET. \r\nMed forbehold for ændringer.'),
	(3,277,'kartoffelpose','2021-01-01','2024-12-31','Prisen på kartofler varierer stadig. Forvent mellem 0,75 og 1,2 kg kartofler i posen. Økologiske kartofler fra en af landets bedste kartoffelavlere. Sorterne varierer.'),
	(4,278,'Asparges','2024-05-15','2024-06-19','Asparges har en kort høstsæson fra midten af maj til Sankt Hans.\r\nI år bestilles asparges som Forudbestilt Løssalg.\r\nDet er 250 gr økologiske grønne asparges fra Svanholm'),
	(5,475,'grøntpose (hungry gap)','2023-01-01','2023-05-10','Dette er grøntposen, som du kender den - bare i en lidt mindre (og billigere) vinterudgave i perioden vi kalder \"Hungry Gap\". Indeholder en blanding af sæsonens lækreste grøntsager og nogle uger også svampe. Varerne leveres af avlere på Sjælland, er certificerede økologiske og i nogle tilfælde biodynamiske.'),
	(6,476,'gavepose','2023-01-01','2023-04-23','Med gaveposen får du ugens grøntpose pakket i en af vores flotte stofposer. Køb den til din ven, moster eller nabo og introducer dem på denne vis for KBHFF. Den heldige gavemodtager afhenter posen under dit navn på den dato du vælger.');

/*!40000 ALTER TABLE `item_product_seasonalbag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_product_weeklybag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_product_weeklybag`;

CREATE TABLE `item_product_weeklybag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_availability_date` varchar(255) DEFAULT '',
  `end_availability_date` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_product_weeklybag_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_product_weeklybag` WRITE;
/*!40000 ALTER TABLE `item_product_weeklybag` DISABLE KEYS */;

INSERT INTO `item_product_weeklybag` (`id`, `item_id`, `name`, `start_availability_date`, `end_availability_date`, `description`)
VALUES
	(1,272,'grøntpose 2021 special','2021-07-01','2021-12-29','I resten af 2021 har vi reduceret prisen på grøntposen for frivillige medlemmer.\r\n\r\nUgens grøntpose indeholder en blanding af sæsonens friskeste og lækreste grøntsager. Varerne leveres af avlere på Sjælland som brænder for at dyrke sunde, bæredygtige og smagfulde grøntsager. Derudover er de certificerede økologiske og i nogle tilfælde biodynamiske.\r\n\r\nVægten af posen varierer efter sæson, da posens indhold opgøres efter varernes kroneværdi og ikke vægt.'),
	(2,273,'grøntpose','2023-01-09','','Næste uges grøntpose 13-11-24 (uge 46):\r\nPeberrod, jordskokker, butternut squash, bladselleri, løg og rødkål. MED FORBEHOLD FOR ÆNDRINGER i sidste øjeblik. \r\n---------------------------------\r\n\r\n\r\nUgens grøntpose indeholder en blanding af sæsonens friskeste og lækreste grøntsager. Varerne leveres af avlere på Sjælland som brænder for at dyrke sunde, bæredygtige og smagfulde grøntsager. Derudover er de certificerede økologiske og i nogle tilfælde biodynamiske.\r\n\r\nVægten af posen varierer efter sæson, da posens indhold opgøres efter varernes kroneværdi og ikke vægt.');

/*!40000 ALTER TABLE `item_product_weeklybag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_qna
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_qna`;

CREATE TABLE `item_qna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `about_item_id` int(11) DEFAULT NULL,
  `question` text NOT NULL DEFAULT '',
  `answer` text NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `about_item_id` (`about_item_id`),
  CONSTRAINT `items_qna_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_qna_ibfk_2` FOREIGN KEY (`about_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_qna` WRITE;
/*!40000 ALTER TABLE `item_qna` DISABLE KEYS */;

INSERT INTO `item_qna` (`id`, `item_id`, `name`, `about_item_id`, `question`, `answer`, `position`)
VALUES
	(2,42,'Hvordan bliver jeg medlem?',NULL,'Hvordan bliver jeg medlem?','<p>Start med at finde den <a href=\"/afdelinger\">lokalafdeling</a>, som du ønsker at hente grøntsager i. For langt de fleste er det det sted, der er nærmest hvor man bor eller arbejder.<br /></p>\r\n<p>Du kan melde dig ind her, og din lokalafdeling vil kontakte dig via mail. Nogle afdelinger skriver til nye medlemmer hver uge, andre afdelinger én gang om måneden. Du kan også blive oprettet som nyt medlem ved at spørge i butikken eller ved at skrive til den valgte lokalafdeling.</p>',26),
	(5,46,'Hvad koster det at blive medlem?',NULL,'Hvad koster det at blive medlem?','<p>Ved indmeldelse skal du betale et indmeldelsesgebyr (100 kr.). Herefter opkræves kontingentet hvert år d. 1. maj (200 kr.), også hvis du har meldt dig ind i foråret. Fordelen ved denne løsning er, at den er meget nem at administrere. På den måde kan Fødevarefællesskabet bruge mindst mulig tid og penge på administration, og mest mulig på at betale avlerne.<br /></p>',27),
	(7,48,'Andre spørgsmål?',NULL,'Andre spørgsmål?','<h4>Generel håndtering af manglende varer<br /></h4>\r\n<p>På vores wiki er der svar på mere driftsorienterede spørgsmål, herunder håndtering af manglende varer <a href=\"https://wiki.kbhff.dk/tiki-index.php?page=Ofte-stillede-sp%C3%B8rgsm%C3%A5l---FAQ\" target=\"_blank\">wiki faq</a><a href=\"https://wiki.kbhff.dk/tiki-index.php?page=Ofte-stillede-sp%C3%B8rgsm%C3%A5l---FAQ\" target=\"_blank\"></a><br /></p>\r\n<p>Kan du ikke finde svar på dit spørgsmål på denne side, skal du være velkommen at skrive per mail til <a href=\"mailto:info@kbhff.dk\">info@kbhff.dk</a></p>',65),
	(8,49,'Hvad er der typisk i ugens pose?',NULL,'Hvad er der typisk i ugens pose?','<p><a href=\"/ugens-pose\">Ugens pose</a> rummer typisk 6-8 forskellige slags lokalt produceret og sæsonbestemt økologisk frugt og grønt. Da posen sammensættes af sæsonens grøntsager varierer vægten. Om vinteren, hvor der er mange rodfrugter, vejer den typisk 6-8 kilo, mens den om sommeren, hvor salater, asparges, krydderurter osv. fylder mere, vejer den typisk omkring 4 kilo. <a href=\"/ugens-pose\" target=\"_blank\">Her er et link</a> til et arkiv med alle ugens poser.</p>',54),
	(9,50,'Can English speakers be members?',NULL,'Can English speakers be members?','<p>Yes, there are many English-speaking members of KBHFF. Contact <a href=\"/afdelinger\">your local department</a> to get an introduction in English. All emails and important updates are written in both Danish and English. <br />You can find general information about KBHFF in English <a href=\"/english\" target=\"_blank\">here</a> and check our <a href=\"/medlem/quick-start-guide\" target=\"_blank\">quick start guide here</a>.</p>',25),
	(10,51,'Øv, nogle af de grøntsager jeg har fået i...',NULL,'Øv, nogle af de grøntsager jeg har fået i min pose er dårlige. Hvad gør jeg?','<p>Hver uge vurderes kvaliteten af varerne ude på fælleslageret, hvor vi modtager dem. Pakkevagterne opdager som regel dårlige varer, som evt. er blevet overset på fælleslageret. Derfor skal der helst ikke være nogle dårlige grøntsager i ugens pose. En dårlig grøntsag har råd eller mug og bør kasseres, inden den ender i posen. Pletter, misfarvning eller en skæv form betragtes ikke som en dårlig grøntsag. I KBHFF aftager vi nemlig skæve grøntsager, som avlerne ikke kan sælge til supermarkederne eller restauranterne. Det gør vi for at minimere madspild. Smagen kan sagtens være helt i top, selvom varen har en mærkelig form eller farve.</p>\r\n<p>Det sker sjældent, men det kan ske, at der er varer med råd eller mug i posen. Et eksempel er da vi modtog hyldebær en varm sommerdag. Der var meget varmt og meget sol i dagene op til, at bærene skulle høstes. Forrådnelsesprocessen gik derfor hurtigere, end avleren havde regnet med. Avleren kasserede selv 15%. På fælleslageret blev yderligere ca. 30% kasseret. Det blev besluttet på dagen, at medlemmerne skulle have den anden halvdel men kun betale 10% af den oprindelige pris. Alle kassevagter blev ringet op, og fik besked herom. Et andet eksempel er, at vi har taget imod æbler med haglskader. KBHFF indkøbte æblerne billigt og kunne derfor også sælge dem til medlemmerne billigt. Fordi æblerne havde haglskader, havde de brune pletter, og en mindre del af dem, havde mug i pletterne, hvilket først blev opdaget af medlemmerne hjemme i køkkenerne.</p>\r\n<p>Finder du en grøntsag med mug eller råd i posen, bør du skrive til bestyrelsen (<a href=\"mailto:bestyrelse@kbhff.dk\">bestyrelse@kbhff.dk</a>) og&nbsp;indkøbsgruppen (<a href=\"mailto:indkoeb@kbhff.dk\">indkoeb@kbhff.dk</a>),&nbsp;så snart du opdager den dårlige vare. Gerne med et billede af problemet. De to grupper står for at håndtere klagesager og vil vurdere, hvor grelt det er. Og er det mere end 5% af posen, der er dårlig, kan du få refunderet de dårlige varer. Derudover er det vigtigt, at indkøbsgruppen får besked, så de kan give feedback videre til avleren og forhåbentlig undgå fremtidige sager.</p>',57),
	(11,52,'Hvad gør jeg, hvis posens indhold ikke...',NULL,'Hvad gør jeg, hvis posens indhold ikke stemmer med det annoncerede?','<p>I nogle tilfælde er der ikke nok af en given grøntsag, enten fordi avleren ikke har leveret den korrekte mængde, eller fordi dele af grøntsagerne ikke har været af ordentlig kvalitet. I det tilfælde prøver pakkevagterne så vidt muligt at kompensere med andre grøntsager, og det vil kassevagterne typisk gøre opmærksom på, når du henter din pose. I tilfælde af, at det ikke er muligt at kompensere med andre grøntsager, kan du få penge refunderet af kassevagterne.</p>',56),
	(12,53,'Hjemme i køkkenet opdager jeg, at der...',NULL,'Hjemme i køkkenet opdager jeg, at der mangler grøntsager i posen, hvad gør jeg?','<p>Hvis du kommer hjem og opdager, at du ikke har fået det annoncerede, så kontakt din lokalafdeling for at høre om der er andre, der har haft samme oplevelse eller om det bare er din pose, der er pakket forkert. <a href=\"/afdelinger\">Din lokale butiksgruppe</a> kan give dig svar på, om det var et generelt problem (f.eks. at landmanden ikke leverede nok grøntsager), eller om du bare har været uheldig. Det er op til den enkelte lokalafdeling, hvordan de vælger at løse problemer med manglende grøntsager eller forkert pakkede poser.</p>',55),
	(13,54,'Hvordan får jeg indflydelse på, hvilke...',NULL,'Hvordan får jeg indflydelse på, hvilke grøntsager der er i grøntsagsposen?','<p>Det er <a href=\"http://kbhffwiki.org/tiki-index.php?page=Grupper-Indkoeb\">Indkøbsgruppen</a>, der sammensætter indholdet i grøntsagsposen og frugtposen. Alle kan blive medlem af Indkøbsgruppen. Hvis du har spørgsmål eller forslag til indholdet i poserne, kan du kontakte indkøbsgruppen på <a href=\"mailto:indkoeb@kbhff.dk\">indkoeb@kbhff.dk</a>. Du kan <a href=\"http://kbhffwiki.org/tiki-index.php?page=indkoeb-for-nye\">læse mere om, hvordan du bliver medlem af indkøbsgruppen her</a>.<br /></p>',58),
	(14,55,'Hvordan får jeg indflydelse på, hvad vi...',NULL,'Hvordan får jeg indflydelse på, hvad vi sælger i løssalg?','<p>Alle lokalafdelinger har en løssalgsansvarlig, der bestiller afdelingens løssalgsvarer (mel, most, honning, olie, linser, bønner, ekstra grøntsager mv.). Det meste løssalg bestilles af afdelingens løssalgsanvsarlige via indkøbsgruppens løssalgsbestillingsark. Disse varer leveres til fælleslageret og distribueres ud til afdelingerne sammen med varerne til ugens poser. Derudover har afdelingerne også mulighed for at lave egne aftaler med lokale producenter. Hvis du har spørgsmål eller forslag til løssalget, kan du derfor kontakte <a href=\"/afdelinger\">din lokalafdeling</a>.</p>',59),
	(15,56,'Hvad dækker medlemskontingentet?',NULL,'Hvad dækker medlemskontingentet?','<p>Alle medlemmer af KBHFF betaler et kontingent hvert år (opkræves i maj). Kontingentet bliver hvert år vedtaget af generalforsamlingen i april. Det dækker lønningsudgifterne til en bogholder og en fælleskoordinator. At have lønnet arbejdskraft sikrer en stabil og kompetent arbejdskraft på vigtige og driftstunge områder, såsom økonomi og den overordnede organisering af fødevarefællesskabet.&nbsp;</p>',28),
	(16,57,'Hvordan er det smartest at opbevare de...',NULL,'Hvordan er det smartest at opbevare de forskellige grøntsager, så de ikke bliver dårlige?','<p>Vi henviser til <a href=\"https://www.aarstiderne.com/kundeservice/opbevaringsguide\">Aarstidernes fine grøntsagsguide</a>.</p>',60),
	(17,59,'Jeg kender ikke den mærkelige grøntsag i...',NULL,'Jeg kender ikke den mærkelige grøntsag i ugens pose. Hvordan bruger jeg den?','<p>På <a href=\"http://opskrifter.kbhff.dk/\">vores opskriftssamling</a> kan du finde opskrifter med langt de fleste af de sære grøntsager, der kommer i poserne. Opskrifterne er skrevet af medlemmer til medlemmer, og du kan selvfølgelig også selv oprette dig som opskriftskribent.</p>',61),
	(19,61,'Hvornår kan jeg se posens indhold på...',NULL,'Hvornår kan jeg se posens indhold på hjemmesiden?','<p>Indkøbsgruppen sammensætter som regel <a href=\"/ugens-pose\">posens indhold</a> om torsdagen. Derfor kan man tidligst se posens indhold på forsiden af hjemmesiden om fredagen. Det er altid med forbehold for ændringer.</p>',62),
	(20,62,'Hvornår og hvor kan jeg se på hjemmesiden,...',NULL,'Hvornår og hvor kan jeg se på hjemmesiden, hvad der kommer i løssalg?','<p>Når ugens pose er offentliggjort på hjemmesiden (som regel fredag eller lørdag), kan du se, hvad der er bestilt af ekstra grønt til løssalget.<br /></p>\r\n<p>“Tørvarer” til løssalget (mel, most, honning, øl m.v.) bestilles i weekenden og senest mandag. Derfor kan du først mandag eller tirsdag se hvilke “tørvarer”, der kommer til løssalget. Det er ikke altid, at det bliver lagt på hjemmesiden, så derfor kan du med fordel se efter tørvareleveringer på Pakkesedlen, som ligger under <a href=\"http://kbhffwiki.org/tiki-index.php?page=UgensPose\">Ugens Pose på wikien</a>.</p>',63),
	(21,63,'Kan husstande deles om medlemsskabet?',NULL,'Kan husstande deles om medlemsskabet?','<p>Ja, som medlem kan man købe ind til hele sin husstand gennem sit medlemsskab. Hvis man som husstand er to beboere, betyder det, at man f.eks. kan være sammen på vagt hver anden måned.&nbsp;</p>\r\n<p>I mange lokalafdelinger anbefales det dog, at man stadig tager vagter hver måned, selvom man er et par. Det er der flere grunde til. Men det handler især om, at det kan være svært at føle sig fortrolig og bekendt med de forskellige arbejdsopgaver (og de andre frivillige), hvis der går for lang tid imellem ens vagter.</p>',30),
	(23,65,'Hvornår og hvordan bestiller jeg...',NULL,'Hvornår og hvordan bestiller jeg grøntsagsposer?','<p>Grøntsagsposer købes online&nbsp;i <a href=\"https://kbhff.dk/butik\">butikken</a>&nbsp;senest onsdag kl. 23:59 ugen før bestillingsdatoen. Det er muligt at bestille flere uger frem i tiden.&nbsp;Eller også kan posen købes hos ugens Kassevagter i afdelingens åbningstid (betales med betalingskort, eller kontant eller med MobilePay).&nbsp;</p>\r\n<p>Du modtager en kvittering per mail umiddelbart efter bestillingen (modtager du ikke en kvittering, kontakt da din lokalafdeling).&nbsp;</p>\r\n<p>I frugtsæsonen er det muligt at bestille frugtposer. Frugtsæsonen er fra slutning af aspargessæsonen (omkring sankthans) til der ikke er flere æbler på lager hos avlerne. Frugtposer bestilles på samme måde som grøntsagsposer.</p>',37),
	(24,66,'Hvornår og hvordan bestiller jeg frugtposer?',NULL,'Hvornår og hvordan bestiller jeg frugtposer?','<p>I frugtsæsonen er det muligt at bestille frugtposer. Frugtsæsonen er fra slutning af aspargessæsonen (omkring sankthans) til der ikke er flere æbler på lager hos avlerne i januar eller februar. Frugtposer bestilles på samme måde som grøntsagsposer.</p>',38),
	(25,67,'Hvornår og hvordan bestiller jeg...',NULL,'Hvornår og hvordan bestiller jeg aspargesposer?','<p>I aspargessæsonen er det muligt at bestille aspargesposer. Aspargessæsonen er fra midt maj til sankthans plus minus 2-3 uger i begge ender. Aspargesposer bestilles på samme måde som grøntsagsposer.</p>',39),
	(26,68,'Hvor ofte kan jeg bestille poser?',NULL,'Hvor ofte skal jeg bestille en pose?','<p>Du kan bestille poser lige så ofte, du vil, men du er på ingen måde forpligtet til at bestille grøntsager.</p>\r\n<p>Fødevarefællesskabet har ingen interesse i at sælge dig flere grøntsager end du har brug for. Du kan bestille grøntsager hver uge, hver anden uge, eller sjældnere endnu.</p>',40),
	(27,69,'Hvor tit behøver jeg at bestille...',NULL,'Hvor tit behøver jeg at bestille grøntsager?','<p>Som medlem er du på ingen måde forpligtet til at bestille grøntsager. Fødevarefællesskabet har ingen interesse i at sælge dig flere grøntsager end du har brug for. Du kan bestille grøntsager hver uge, hver anden uge, eller sjældnere endnu. Og hvis du flytter fra København, kan du sætte dit medlemskab i bero, lige så længe som du ønsker.</p>',41),
	(28,70,'Hvorfor kan jeg ikke se posens indhold, når...',NULL,'Hvorfor kan jeg ikke se posens indhold, når jeg bestiller?','<p>Indkøbsgruppen sammensætter først posens indhold, når alle bestillinger er afgivet. Derved sikres det, at avlerne er i stand til at levere de rette mængder til fødevarefællesskabet for at undgå spild af mad. I fødevarefællesskabet opbevares friske grøntsager ikke til ugen efter.</p>',42),
	(29,71,'Kan jeg ændre min bestilling?',NULL,'Kan jeg ændre min bestilling?','<p>Ja, du kan på visse betingelser annullere eller rykke din bestilling til en senere dag. Senest onsdag klokken 23:59 en uge før afhentning kan du rykke din bestilling til en senere afhentningsdag. Du kan gøre det selv online i medlemssystemet, eller du kan få den rykket af en butiksvagt i afdelingen. Har du betalt kontant eller med MobilePay for din bestilling, kan du få den annulleret hos kassevagterne senest en uge før afhentning. Har du betalt med betalingskort, kan bestillingen ikke annulleres.</p>\r\n<p>Du kan ikke ændre på antallet af poser i bestillingen. Men du kan lave en ny bestilling til samme dag. Det er ikke muligt at flytte afhentning af din pose fra en afdeling til en anden, undgået ved at skrive til it@kbhff.dk.</p>',43),
	(30,72,'Kan jeg flytte min bestilling til afhentning...',NULL,'Kan jeg flytte min bestilling til afhentning i en anden afdeling?','<p>Nej. Det er desværre ikke muligt (eller kun ved særlige omstændigheder ved at skrive til <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>). Hvis er flyttet til en anden afdeling, og du havde købt poser i forvejen, skal du skrive til <a href=\"mailto:it@kbhff.dk\" target=\"_blank\">it@kbhff.dk</a> for at få flyttet dine ordre i systemet.</p>',44),
	(31,73,'Flytter min bestilling med, hvis jeg skifter...',NULL,'Flytter min bestilling med, hvis jeg skifter lokalafdeling?','<p>Nej. Det gør den desværre ikke automatisk. Hvis du skiftede afdeling, og du havde købt poser i forvejen, skal du skrive til <a href=\"mailto:t@kbhff.dk\">it@kbhff.dk </a>for at flytte dine ordre i systemet.</p>',45),
	(32,74,'Kan jeg bestille via mail, hvis jeg glemte...',NULL,'Kan jeg bestille via mail, hvis jeg glemte at bestille i onsdags?','<p>Nej, det er desværre ikke muligt. Til gengæld bestilles der i næsten alle afdelinger ekstra grøntsagsposer til løssalg. Disse kan købes hos Løssalgsvagterne i afdelingens åbningstid, hvis du er hurtig.</p>',46),
	(33,75,'Kan jeg hente grøntsager på andre...',NULL,'Kan jeg hente grøntsager på andre tidspunkter end onsdag?','<p>Nej, det er desværre ikke muligt. Der bliver kun leveret grøntsager, og lokalafdelingerne har kun åbent, om onsdagen.</p>',47),
	(34,76,'Hvad sker der, hvis jeg glemmer (eller er...',NULL,'Hvad sker der, hvis jeg glemmer (eller er forhindret i) at hente mine grøntsager?','<p>Det er det enkelte medlems ansvar at huske at hente sin grøntsagspose. Hvis du bliver forhindret, kan du prøve at få venner eller familie til at hente posen for dig. Du kan også prøve at ringe til ugens kassevagter og spørge, om de vil være venlige at tage posen med hjem for dig. Eller du kan lave et opslag på afdelingens facebookside og høre, om et andet medlem vil købe posen af dig (eller tage den med hjem, hvor du så kan hente den). Hvis ikke det er muligt, bortgives posen. Du kan desværre ikke få dine penge retur.</p>',48),
	(35,77,'Hvad gør jeg, hvis jeg har glemt min...',NULL,'Hvad gør jeg, hvis jeg har glemt min stofpose?','<p>Du kan tage grøntsagerne med hjem i et af de gule kartoffel-/løgnet i stedet. Alternativt kan du købe en ny stofpose. Du kan også transportere grøntsagerne i en medbragt cykelkurv, rygsæk e.lign.</p>',49),
	(36,78,'Hvad gør jeg, hvis min bestilling ikke...',NULL,'Hvad gør jeg, hvis min bestilling ikke fremgår på ordrelisten?','<p>Tjek <a href=\"/login\" target=\"_blank\">Min Side</a> for at se bestillingsdatoen på dine aktuelle og tidligere bestillinger eller bed butiksvagten tjekke ordrelisten for de følgende uger. Måske har du bestilt posen til en senere uge. Hvis du ved en fejl har bestilt posen til en senere uge kan du på Min Side flytte posen til en uge der passer dig. Din bestilling kan som udgangspunkt kun under særlige omstændigheder annulleres. Skriv i så fald til <a href=\"mailto:it@kbhff.dk\" target=\"_blank\">it@kbhff.dk</a>.</p>',50),
	(37,79,'Kan virksomheder købe engros gennem KBHFF...',NULL,'Kan virksomheder købe engros gennem KBHFF og få leveret til døren?','<p>Det kan formodentlig godt lade sig gøre. Kontakt <a href=\"mailto:fk@kbhff.dk\" target=\"_blank\">fk@kbhff.dk</a> for at høre mere.</p>',51),
	(38,80,'Kan jeg lave en stor særbestilling til mit...',NULL,'Kan jeg lave en stor særbestilling til mit bryllup og få leveret til døren?','<p>Det kan formodentlig godt lade sig gøre. Kontakt <a href=\"mailto:fk@kbhff.dk\">fk@kbhff.dk</a> for at høre mere.</p>',52),
	(39,81,'Jeg har glemt mit login til medlemssystemet....',NULL,'Jeg har glemt mit login til medlemssystemet. Hvad gør jeg?','<p>Du kan få dit login tilsendt ved at trykke&nbsp;<a href=\"/login/glemt\">glemt din adgangskode</a> på <a href=\"/login\">loginsiden</a>. Her skal du angive din mailadresse. Kan du ikke huske, hvilken mailadresse du har angivet, da du blev oprettet i medlemssystemet, kan du kontakte din lokalafdeling eller <a href=\"mailto:it@kbhff.dk\">it@kbhff.dk</a>.</p>',53),
	(41,93,'Hvordan skifter jeg lokalafdeling?',NULL,'Kan jeg skifte lokalafdeling?','<p>Du kan skifte lokalafdeling ved at <a href=\"/login\" target=\"_blank\">logge ind på din konto</a>, spørge i butikken eller skrive til din nye lokalafdeling. Du skal ikke betale et nyt kontingent eller nogen form for gebyr. Se vores kort over de forskellige lokalafdelinger <a href=\"https://kbhff.dk/afdelinger\">her</a>. <br />Vi anbefaler, at du sender en mail til din nuværende afdeling og fortæller at du gerne vil flytte og at du kontakter din nye lokalafdeling (eller dukker op en onsdag) så de kan hjælpe dig med at blive en del af det nye sted.&nbsp;</p>',32),
	(44,96,'Skal jeg som medlem deltage i medlemsmøder...',NULL,'Skal jeg som medlem deltage i fællesmøder og generalforsamlinger?','<p>Det er ikke et krav at deltage i hverken fællessmøder eller generalforsamlinger. Men hvis du vil have indflydelse på fødevarefællesskabets fremtid – og hvis du vil lære dine fødevarefæller bedre at kende – er det en god ide at møde op.</p>\r\n<p>Generalforsamlingen er der, hvor alle større eller principielle beslutninger om fødevarefællesskabets retning, værdier og økonomi træffes. Og alle møderne i KBHFF er åbne for alle. <a href=\"https://wiki.kbhff.dk/tiki-index.php?page=VigtigeMoeder\">Her er link til en wiki</a>, hvor du kan se alle de fælles medlemsmøder.&nbsp;</p>',34),
	(45,97,'Kan jeg stille mit medlemsskab i bero i en...',NULL,'Kan jeg stille mit medlemsskab i bero i en periode?','<p>Der er forskel på at være medlem og at være en aktiv del af fællesskabet. For at være medlem af fødevarefællesskabet skal du betale det årlige kontingent. Hvis du ikke betaler det, kan du ikke længere købe poser.</p>\r\n<p>Du er derimod velkommen til at holde pause fra det frivillige arbejde i fællesskabet i en periode, hvis du f.eks. ikke kan tage vagter. Så kan du skifte til støttemedlemskab. Så længe du betaler kontingent, vil du fortsat være medlem af KBHFF.</p>\r\n<p>Der er ingen begrænsninger på støttemedlemsskabet, men medlemmer opfordes til at anse støttemedlemskabet som en sidste udvej. Der er behov for frivillige hænder til at få KBHFF til at fungere, og jo flere hænder, jo mere ligeligt deles arbejdsbyrden.</p>\r\n<p>Medlemmer på barsel er fritaget for at arbejde, og i det tilfælde skal du blot informere dit teamlink/teamkoordinator/laugtovholder om, at du i en periode ikke tager dine vagter (du behøver ikke at blive støttemedlem).</p>',35),
	(46,98,'Hvordan melder jeg mig ud?',NULL,'Hvordan melder jeg mig ud?','<p>Du kan opsige dit medlemskab på <a href=\"https://kbhff.dk/faq\">Min Side</a>.&nbsp;Du kan også skrive en mail til din lokalafdeling eller spørge i butikken.</p>',36),
	(47,99,'Hvor mange vagter skal jeg tage?',NULL,'Hvor mange vagter skal jeg tage?','<p>Langt de fleste medlemmer af KBHFF er frivillige ca. 3 timer om måneden. Det svarer til at tage en tjans/vagt om måneden. Men der er også en del, som engagerer sig mere end det, f.eks. ved at deltage i de fælles eller lokale arbejdsgrupper.</p>',6),
	(48,100,'Hvor lange er vagterne?',NULL,'Hvor lange er vagterne?','<p>Vagternes længde varierer alt efter om der er tale om en modtagevagt, en kassevagt, en smagsprøvevagt osv. De fleste vagter varer dog ca. 3 timer.</p>',7),
	(49,101,'Kan jeg slippe for at skulle arbejde 3 timer...',NULL,'Kan jeg slippe for at skulle arbejde 3 timer om måneden?','<p>Ja. Man kan købe vores støttepose ved at blive støttemedlem (spørg i butikken eller skriv til din afdeling for at skifte medlemskab). Posen er tiltænkt de medlemmer, som f.eks. ikke kan finde tid i hverdagen til frivillig vagter/arbejdsgrupper, men stadig gerne vil nyde de gode grøntsager som KBHFF har at byde på. Indholdet i en Støttepose og en Grøntsagspose vil altid være det præcis samme – og løssalgspriserne ændres ikke lige meget hvilken pose man køber.&nbsp; Det betyder også, at nye medlemmer frit kan melde sig ind i KBHFF uden at skulle tilknyttes et hold eller en arbejdsgruppe. Posen koster 140 kr.</p>',8),
	(50,102,'Jeg kan ikke tage vagter om onsdagen. Hvad...',NULL,'Jeg kan ikke tage vagter om onsdagen. Hvad gør jeg?','<p>Hvis du ikke har mulighed for at tage vagter om onsdagen, er der mulighed for at lægge dine 3 månedlige arbejdstimer i en arbejdsgruppe. Det kan både være en lokal arbejdsgruppe, f.eks. din lokalafdelings butiksgruppe eller introduktionsgruppe, eller det kan være i en af KBHFF’s fælles arbejdsgrupper, f.eks. indkøbsgruppen eller kommunikationsgruppen. De fælles arbejdsgrupper holder i udgangspunktet møder sidste mandag i måneden. Derudover vil der være en del arbejde, som du kan lave hjemmefra eller på mere fleksible tidspunkter. Kontakt din lokalafdeling for at høre mere om arbejdet i grupperne.</p>',9),
	(51,103,'Hvilke arbejdsgrupper kan jeg melde mig ind...',NULL,'Hvilke arbejdsgrupper kan jeg melde mig ind i?','<p>I hver lokalafdeling er der en butiksgruppe og som regel også nogle andre lokalt forankrede grupper, f.eks. en introgruppe, arrangementsgruppe osv. Du kan også engagere dig i en af de fælles arbejdsgrupper. I menuen til venstre på fødevarefællesskabets wiki kan du finde link til  <a href=\"http://kbhffwiki.org/tiki-index.php?page=Grupper-Indkoeb\">indkøbsgruppen</a> som mangler flere hænder eller du kan skrive til fk@kbhff.dk, hvis du har lyst til at være med til at få gang kommunikationsgruppen igen. De øvrige fælles arbejdsgrupper er pt. ikke aktive, da vi prøver at løse opgaverne i fællesskab på vores fællesmøder.<br /></p>',10),
	(52,104,'Kan jeg arbejde med noget helt særligt, som...',NULL,'Kan jeg arbejde med noget helt særligt, som jeg er særligt god til?','<p>Ja, de 3 timers arbejde behøver ikke nødvendigvis at foregå på “normal vis” som del af et team eller en arbejdsgruppe. Hvis du har særlige evner, du kan bidrage til fællesskabet med, eller hvis der er konkrete opgaver, du mener, der bør tages hånd om, kan du skabe din helt egen vagt. Du kan f.eks. arbejde som fotograf eller opskriftsudvikler. Skriv til butiksgruppen i din lokalafdeling, hvis du har en god ide, og så kan de hjælpe dig i gang.</p>',11),
	(53,105,'Hvordan skifter jeg vagttype?',NULL,'Hvordan skifter jeg vagttype?','<p>Send en mail til dit teamlink/teamkoordinator/laugtovholder med dine nye vagt- eller arbejdsgruppeønsker.</p>',12),
	(54,106,'Hvorfor er mange vagter kortere end 3 timer?',NULL,'Hvorfor er mange vagter kortere end 3 timer?','<p>Som medlem af fødevarefællesskabet skal man arbejde tre timer hver måned. Mange vagter er imidlertid kortere end tre timer, fordi det ikke er muligt at fordele alle timer ligeligt. Du er meget velkommen til at tage ekstra vagter, hvis du har en kort vagt, men det er ikke et krav.</p>',13),
	(55,107,'Hvad sker der, hvis man ikke møder op til...',NULL,'Hvad sker der, hvis man ikke møder op til sin vagt?','<p>Hvis du ikke kan møde til din vagt, skal du kontakte dit teamlink/koordinator/tovholder eller selv prøve at bytte den ved f.eks. at skrive på din lokalafdelings facebookside. Hvis du gentagende gange ikke møder op til din vagt, kan du blive støttemedlem i stedet for frivillig.<br /></p>',14),
	(56,108,'Hvad gør jeg, hvis jeg er forhindret i at...',NULL,'Hvad gør jeg, hvis jeg er forhindret i at tage min vagt?','<p>Send en mail til dit teamlink/teamkoordinator/laugtovholder. Du kan også selv prøve at bytte din vagt, ved f.eks. at skrive på din lokalafdelings facebookside. <br /></p>',15),
	(57,109,'Kan jeg tage vagter sammen med familie og...',NULL,'Kan jeg tage vagter sammen med familie og venner?','<p>Det kan muligvis godt lade sig gøre, men det er op til den enkelte lokalafdeling, hvordan de udfylder vagtplanerne. Hvis du gerne vil tage vagter med nogle bestemte mennesker, er det derfor en god ide at kontakte din lokalafdeling for at høre, om det kan lade sig gøre.</p>',17),
	(58,110,'Kan store hjemmeboende børn tage vagter?',NULL,'Kan store hjemmeboende børn tage vagter?','<p>Ja, det kan de sagtens. Medlemskabet gælder for hele husstanden, og der er ingen krav om, at det skal være den, hvis navn står på medlemslisten, der skal tage vagterne. Men det forventes selvfølgelig at barnet er i stand til at håndtere sin tjans på en god måde.</p>',18),
	(59,111,'Kan jeg arbejde hjemmefra?',NULL,'Kan jeg arbejde hjemmefra?','<p>Ja. Du kan f.eks. være teamlink/teamkoordinator/laugtovholder, hvor en del arbejdsopgaver kan foregå hjemmefra. Du kan også lægge dine frivillige timer i en arbejdsgruppe. Der vil der udover møder ca. en gang om måneden  ofte være hjemmearbejdsopgaver.</p>',19),
	(60,112,'Kan jeg tage mine små børn med på vagt?',NULL,'Kan jeg tage mine små børn med på vagt?','<p>Ja, børn i alle aldre er meget velkomne. Vær dog opmærksom på, at der ikke nødvendigvis er plads til barnevogn indendørs.</p>',20),
	(61,113,'Kan min ven/sambo/kæreste tage nogle af min...',NULL,'Kan min ven/sambo/kæreste tage nogle af min vagter?','<p>Ja. Men husk at bede din afløser læse vagtbeskrivelsen før vagten, samt at informere dit teamlink/koordinator.</p>',21),
	(63,115,'Hvordan redigerer jeg i KBHFF-wikien?',NULL,'Hvordan redigerer jeg i KBHFF-wikien?','<p>Alt indhold på wikien er offentligt tilgængeligt og kan redigeres af alle. For at redigere i wikien skal du trykke på “edit” oppe i højre hjørne. For at gemme dine ændringer, skal du trykke “save” når du er færdig. Her er link til en wikiside, hvor du kan se en mere detaljeret <a href=\"http://kbhffwiki.org/tiki-index.php?page=Vejledning\">introduktionsmanual til wikien</a>.</p>',23),
	(64,117,'Hvor kan jeg se, hvad der har været i...',NULL,'Hvor kan jeg se, hvad der har været i tidligere Ugens Pose?','<p>Du kan se tidligere ugens poser i <a href=\"/ugens-pose\">arkivet for ugens poser</a>.</p>',64),
	(65,289,'Hvad gør jeg hvis jeg skal på barsel?',NULL,'Hvad gør jeg hvis jeg skal på barsel?','<p>Medlemmer på barsel er fritaget for at arbejde, og i det tilfælde skal du blot informere dit teamlink/teamkoordinator/laugtovholder om, at du i en periode ikke tager dine vagter (du behøver ikke at blive støttemedlem).</p>',16),
	(66,290,'Hvor finder jeg vejledninger til det nye...',NULL,'Hvor finder jeg vejledninger til de frivillige sider i det nye medlemsystem?','<p>Her kan du finde vores <a href=\"https://docs.google.com/document/d/1Kc_-tcWblz3bSZzunpb-_9NbNyf0YadJXEY86_psYrw/edit\" target=\"_blank\">velkomstguide på engelsk</a>&nbsp;og <a href=\"https://docs.google.com/document/u/1/d/1aNv9QKUD9LJIUS12jreM140f9l6D0-UR_FMamLFKnCU/edit#\" target=\"_blank\">på dansk</a>.</p>',22),
	(67,291,'Hvor finder jeg vejledninger til...',NULL,'Hvor finder jeg vejledninger til Grøntshoppen i det nye medlemsystem?','<p>Her kan du finde vores <a href=\"https://docs.google.com/document/d/1Kc_-tcWblz3bSZzunpb-_9NbNyf0YadJXEY86_psYrw/edit\" target=\"_blank\">velkomstguide på engelsk</a>&nbsp;og <a href=\"https://docs.google.com/document/u/1/d/1aNv9QKUD9LJIUS12jreM140f9l6D0-UR_FMamLFKnCU/edit#\">på dansk</a>.</p>',5),
	(69,680,'Hvad gør jeg hvis der mangler en...',283,'Hvad gør jeg, hvis der mangler en eller flere varer til grøntposen i min afdeling?','<p>Manglende varer i grønsagsposen må kompenseres med andre varer enten fra løssalg eller fra ‘tørvarelageret’. Forsøg at finde noget der ca. rammer samme pris som den manglende vare. Hvis der mangler hele poser, kan de genbestilles som beskrevet under spørgsmålet \"hvad gør jeg hvis der mangler kartoffel-, frugt-, svampe- og grønsagsposer\"</p>',1),
	(70,681,'Hvad gør jeg hvis der mangler kartoffel-,...',283,'Hvad gør jeg, hvis der mangler kartoffel-, frugt-, svampe- og grønsagsposer i min afdeling?','<p>Manglende kartoffel-, frugt-, svampe- og grønsagspose kan bedst tilbagebetales ved at bestillingen flyttes til en ny dato. Kontakt IT på it@kbhff.dk det er vigtigt, at I IKKE tjekker, de ikke afhentede poser af på hjemmesiden, det gør det lettere for IT at udføre deres arbejde. IT vil flytte de manglende poser to uger frem, på den måde har medlemmerne selv en uge til at flytte deres ordre på hjemmesiden.</p>',2),
	(72,683,'Hvad gør jeg hvis der mangler løssalg i...',25,'Hvad gør jeg, hvis der mangler løssalg i leveringen til afdelingen, som ikke er forudbestilt via medlemssystemet?','<p>Mangler der varer til løssalg gøres der ikke så meget ud af det, men der skal alligevel gives besked, så den manglende levering ikke faktureres fra avleren. Som regel er varerne ved en fejl havnet i en anden afdeling og forhåbentlig blevet solgt der. Der gives besked til fælleskoordinatoren på fk@kbhff.dk samt indkoeb@kbhff.dk.</p>\r\n<p>Hvis du skal bestille løssalgsvarer (olie, most eller honning) til din afdeling, så skriv til fk@kbhff.dk</p>',4);

/*!40000 ALTER TABLE `item_qna` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_signupfee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_signupfee`;

CREATE TABLE `item_signupfee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `associated_membership_id` int(11) DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT 0,
  `fixed_url_identifier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_signupfee_ibfk_2` (`associated_membership_id`),
  CONSTRAINT `item_signupfee_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_signupfee_ibfk_2` FOREIGN KEY (`associated_membership_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_signupfee` WRITE;
/*!40000 ALTER TABLE `item_signupfee` DISABLE KEYS */;

INSERT INTO `item_signupfee` (`id`, `item_id`, `name`, `classname`, `associated_membership_id`, `description`, `html`, `position`, `fixed_url_identifier`)
VALUES
	(1,4,'Indmeldelsesgebyr (Støttemedlem)','supporter',7,'Information om priser på medlemskab af Københavns Fødevarefællesskab.','<p>Som støttemedlem har du mulighed for at være passivt medlem og økonomisk støtte KBHFFs arbejde for et mere bæredygtigt landbrug. Som støttemedlem har du også mulighed for at deltage i foreningens arrangementer og bestille ugens pose mm. på lige fod med foreningens frivillige. Dog betaler du en højere pris for grøntsagsposen.&nbsp;Der er ingen andre forskelle på de to typer medlemskaber.<br /><br />Støttemedlemskabet er også tænkt som en midlertidig mulighed, for dig som ikke har mulighed for at tage faste vagter.&nbsp;</p>\r\n<ul>\r\n	<li>Indmeldelsesgebyr 100 DKK</li>\r\n	<li>Årligt kontingent (betales næste maj): 200 DKK</li>\r\n	<li>Ugens pose: 150 DKK</li>\r\n	<li><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">Alle priser kan ses her</a></li>\r\n</ul>\r\n<p><strong>Det eneste du skal betale nu er indmeldelsesgebyret</strong></p>',2,'stoettemedlem'),
	(2,8,'Indmeldelsesgebyr (Frivillig)','volunteer',6,'Information om pris for medlemskab som frivillig i Københavns Fødevarefællesskab.','<p>Som frivillig lægger du typisk 3 timers frivilligt arbejde hver måned. Det frivillige arbejde er grundstenen i vores fællesskab og vi opfordrer derfor alle vores medlemmer til at være aktive og tage vagter. <br /><br />Du kan enten tage en fast onsdagsvagt eller en opgave i en af de centrale arbejdsgrupper (IT, kommunikation, indkøb, mv.).&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<ul>\r\n	<li>Indmeldelsesgebyr: 100 DKK</li>\r\n	<li>Årligt kontingent (betales næste maj): 200 DKK</li>\r\n	<li>Ugens pose: 125 DKK</li>\r\n	<li><a href=\"https://kbhff.dk/om/produkter\" target=\"_blank\">Alle priser kan ses her</a></li>\r\n</ul>\r\n<p><strong>Det eneste du skal betale nu er indmeldelsesgebyret</strong></p>',1,'frivillig');

/*!40000 ALTER TABLE `item_signupfee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_signupfee_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_signupfee_versions`;

CREATE TABLE `item_signupfee_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classname` varchar(100) NOT NULL DEFAULT '',
  `associated_membership_id` int(11) DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT 0,
  `fixed_url_identifier` varchar(100) DEFAULT NULL,
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_signupfee_versions_ibfk_2` (`associated_membership_id`),
  CONSTRAINT `item_signupfee_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_signupfee_versions_ibfk_2` FOREIGN KEY (`associated_membership_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table item_weeklybag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_weeklybag`;

CREATE TABLE `item_weeklybag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `week` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `html` text NOT NULL DEFAULT '',
  `full_description` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_weeklybag_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `item_weeklybag` WRITE;
/*!40000 ALTER TABLE `item_weeklybag` DISABLE KEYS */;

INSERT INTO `item_weeklybag` (`id`, `item_id`, `name`, `week`, `year`, `html`, `full_description`)
VALUES
	(101,255,'Uge 15',15,2021,'<h4><strong>GRØNTSAGSPOSEN</strong></h4>\n<p>Elfe kartofler, Birkmosegaard (Øko/Bio), Løssalgspris 14kr/kg</p>\n<p>Ramsløg, Birkemosegaard (Øko/Bio), Løssalgspris 17kr/Kg</p>\n<p>Lilla Gulerødder, Birkemosegaard/Rønnely, (Øko) Løssalgspris 21kr/kg</p>\n<p>Grønkål, Birkemosegaard, (Øko/Bio) Løssalgspris 27kr/kg</p>\n<p>Jordskokker, Stensbølgård, (Øko) Løssalgspris 41kr/kg</p>\n<p>Asiatisk Salat, Stensbølgård (Øko) Løssalgspris 254kr/kg</p>\n<h4><strong>KARTOFFELPOSEN</strong></h4>\n<p>Røde Kartofler, Birkemosegaard (Øko/bio) løssalgspris 17kr/kg</p>\n<h4><strong>SVAMPEPOSEN</strong></h4>\n<p>Hvide Champignon, Tvedemose (Øko) løssalgspris 68kr/kg</p>\n<h4><strong>LØSSALG</strong></h4>\n<p>Ramsløg, Birkemosegaard (Øko/Bio), Løssalgspris 17kr/Kg</p>\n<p>Lange Rødbeder, Birkemosegaard (Øko/Bio) Løssalgspris 17kr/kg</p>\n<h4><strong>SVAMPEPOSE DE NÆSTE UGER</strong></h4>\n<ul><li>Uge 16 - Kajserhatte (Tvedemose), )</li>\n	<li>Uge 17 - Østershatte (Beyond</li>\n</ul>','<h3><strong>LØSSALG</strong></h3>\n<p>Ramsløg, Birkemosegaard (Øko/Bio), Løssalgspris 17kr/Kg</p>\n<p>Lange Rødbeder, Birkemosegaard (Øko/Bio) Løssalgspris 17kr/kg</p>\n<h3>Ugenspose/Ekstra pose</h3>\n<p>Grøntsagspose</p>\n<ul><li>Amager 27 / 0	<br /><br />Sydhavnen 11 / 2	<br /><br />Valby 2 / 0	<br /><br />Vesterbro 13 / 1	<br /><br />Frederiksberg 9 / 0	<br /><br />Vanløse 7 / 1	<br /><br />Østerbro 14 / 0	<br /><br />Nørrebro 20 / 1	<br /><br />Nordvest 15 / 1	<br /><br />I alt 118 / 6</li>\n</ul><h3>Svampepose</h3>\n<ul><li>Amager 16 / 0		<br /><br />Sydhavnen 5 / 0		<br /><br />Valby 3 / 0		<br /><br />Vesterbro 8 / 1		<br /><br />Frederiksberg 7 / 0		<br /><br />Vanløse 6 / 0		<br /><br />Østerbro 11 / 2		<br /><br />Nørrebro 16 / 1		<br /><br />Nordvest 10 / 0		<br /><br />I alt 82 / 4</li>\n</ul><p>Kartoffelposen</p>\n<ul><li>AMA 2 / 0		<br /><br />SYD 2 / 0		<br /><br />VAL 1 / 0		<br /><br />VES 1 / 0		<br /><br />FRB 2 / 0		<br /><br />VAN 3 / 0		<br /><br />ØB 0 / 0		<br /><br />NB 5 / 0		<br /><br />NV 0 / 0		<br /><br />I alt 16 / 0</li>\n</ul>'),
	(213,542,'Uge 19',19,2023,'<h4>Grøntposen</h4>\r\n<p>250 g Salat mix, Drys (Øko), løssalgspris: 141 kr / kg</p>\r\n<p>150 g Kålskud, Stensbølgård (Øko), løssalgspris: 29 kr / 150g</p>\r\n<p>200 g Brune champignon, Tvedemose (Øko), løssalgspris: 72 kr / kg</p>\r\n<p>0,6 kg Rødbeder, lange, Birkemosegaard (Øko/bio), løssalgspris: 16 kr / kg</p>\r\n<p>0,6 kg Gule løg, Birkemosegaard (Øko/bio), løssalgspris: 24 kr / kg</p>\r\n<h4>Kartoffelposen (i løssalg)</h4>\r\n<p>1,5 kg Belana, Birkemosegaard (Øko/Bio), løssalgspris: 13 kr / kg</p>\r\n<h4>Svampeposen</h4>\r\n<p>350 g Portobello, Tvedemose (Øko), løssalgspris: 75 kr / kg</p>','<p>Desværre kunne vi ikke få fat i porrer og timian som planlægt. I stedet kom der kålskud og brune champignon med i posen.</p>\r\n<h4>Forudbestilt løssalg</h4>\r\n<p>Ramsløg, pose, vild (Birkemosegaard)</p>\r\n<p>Radiser, bundt, øko (Drys)</p>\r\n<h4>Ugens poser/ekstra poser</h4>\r\n<h4>Grøntposer</h4>\r\n<ul>\r\n	<li>Amager 16 / 0	<br /><br />Sydhavnen 4 / 1	<br /><br />Valby 7 / 0	<br /><br />Vesterbro 14 / 1	<br /><br />Frederiksberg 13 / 0	<br /><br />Vanløse 11 / 0	<br /><br />Østerbro 6 / 1	<br /><br />Nørrebro 16 / 1	<br /><br />Nordvest 13 / 1	<br /><br />I alt 100 / 5</li>\r\n</ul>\r\n<h4>Svampeposer</h4>\r\n<ul>\r\n	<li>Amager 6 / 0		<br /><br />Sydhavnen 1 / 0		<br /><br />Valby 7 / 0		<br /><br />Vesterbro 10 / 1		<br /><br />Frederiksberg 9 / 0		<br /><br />Vanløse 8 / 0		<br /><br />Østerbro 3 / 0		<br /><br />Nørrebro 10 / 1		<br /><br />Nordvest 11 / 0		<br /><br />I alt 65 / 2</li>\r\n</ul>\r\n<h4>Kartoffelposer</h4>\r\n<ul>\r\n	<li>AMA 6 / 0		<br /><br />SYD 2 / 0		<br /><br />VAL 6 / 0		<br /><br />VES 6 / 0		<br /><br />FRB 6 / 0		<br /><br />VAN 5 / 0		<br /><br />ØB 1 / 0		<br /><br />NB 8 / 0		<br /><br />NV 4 / 0		<br /><br />I alt 44 / 0</li>\r\n</ul>'),
	(215,545,'Uge 20',20,2023,'<h4>Grøntpose</h4>\r\n<p>1 bundt salatmix, Svanholm (øko), løssalgspris: 25 kr / bdt</p>\r\n<p>0,5 kg Gule beder, Svanholm (øko), løssalgspris: 25 kr / kg</p>\r\n<p>0,35 kg Rødløg, Rønnely (øko), løssalgspris: 24 kr / kg</p>\r\n<p>1 pose Grønkålsblomst, Birkemosegaard (øko/bio), løssalgspris: 19 kr / pose - OBS Best fresh/raw in salat!</p>\r\n<p>2 stk Agurk, Lykkesholm (Øko), løssalgspris: 18 kr / stk&nbsp;</p>\r\n<p>0,3 kg Rabarber, Skyttes (øko), løssalgspris: 50 kr / kg</p>\r\n<h4>Svampeposen</h4>\r\n<p>0,1 kg Lions Mane, Beyond coffee (Øko), løssalgspris: 290 kr / kg</p>\r\n<h4>Kartoffelposen</h4>\r\n<p>1,5 kg Kartofler, Elfe, Birkemosegaard (Øko/Bio)</p>\r\n<h4>Forudbestilt løssalg</h4>\r\n<p>0,38 kg Grønne Asparges, Svanholm (Øko), løssalgspris: 157 kr / kg</p>\r\n<p>1 pose Ramsløg, Birkemosegaard (øko/bio), løssalgspris: 16 kr / pose</p>\r\n<p>0,6 kg Rabarber, Skyttes (øko), løssalgspris: 50 kr / kg</p>','<h3>Ugens poser/ Ekstra poser</h3>\r\n<p>Due to the warm weather and very limited rain these last days, the vegetables develops quite fast at the moment. Thus, Birkemosegaard recommends that the kale flower we receive this week is not fried or otherwise heated. The kale is fresh and eatable raw. Enjoy</p>\r\n<h4>Grøntposen</h4>\r\n<ul>\r\n	<li>Amager 14 / 0	<br /><br />Sydhavnen 12 / 1	<br /><br />Valby 8 / 0	<br /><br />Vesterbro 11 / 1	<br /><br />Frederiksberg 14 / 0	<br /><br />Vanløse 10 / 0	<br /><br />Østerbro 11 / 1	<br /><br />Nørrebro 20 / 1	<br /><br />Nordvest 14 / 1	<br /><br />I alt 114 / 5</li>\r\n</ul>\r\n<h4>Svampeposen</h4>\r\n<ul>\r\n	<li>AMA 4 / 0<br /><br />SYD 5 / 0<br /><br />VAL 3 / 0<br /><br />VES 4 / 0<br /><br />FRB 4 / 0<br /><br />VAN 3 / 0<br /><br />ØB 4 / 0<br /><br />NB 7 / 0<br /><br />NV 12 / 0<br /><br />Total 46 / 0</li>\r\n</ul>\r\n<h4>Kartoffelposen</h4>\r\n<ul>\r\n	<li>AMA 8 / 0		<br /><br />SYD 3 / 0		<br /><br />VAL 4 / 0		<br /><br />VES 3 / 0		<br /><br />FRB 10 / 0		<br /><br />VAN 7 / 0		<br /><br />ØB 5 / 0		<br /><br />NB 4 / 0		<br /><br />NV 5 / 0		<br /><br />I alt 49 / 0</li>\r\n</ul>\r\n<p>Aspargesposen</p>\r\n<ul>\r\n	<li>Amager 10 / 0		<br /><br />Sydhavnen 7 / 0		<br /><br />Valby 7 / 0		<br /><br />Vesterbro 9 / 0		<br /><br />Frederiksberg 15 / 0		<br /><br />Vanløse 7 / 3		<br /><br />Østerbro 7 / 0		<br /><br />Nørrebro 10 / 0		<br /><br />Nordvest 8 / 0		<br /><br />I alt 80 / 3</li>\r\n</ul>'),
	(243,633,'Uge 48',48,2023,'<h4>Gr&oslash;ntposen</h4>\r\n<p>1 stk Knoldselleri med top, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 18 kr/stk&nbsp;</p>\r\n<p>1,2 kg Guler&oslash;dder, Birkemosegaard/R&oslash;nnely (&oslash;ko). L&oslash;ssalgspris: 14 kr/kg</p>\r\n<p>0,4 kg Porrer, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 36 kr/kg</p>\r\n<p>0,6 kg Pastinak, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris:&nbsp; 24 kr/kg</p>\r\n<p>0,5 kg Sorte R&aelig;ddiker, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 30 kr/kg</p>\r\n<p>1 kg R&oslash;dbeder, sm&aring; runde, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 18 kr/kg</p>\r\n<p>1 stk Savoyk&aring;l, Birkemosegaard/Lars Skytte (&oslash;ko). L&oslash;ssalgspris: 19 kr/stk</p>\r\n<h4>Svampeposen</h4>\r\n<p>0,1 kg Lions Mane, Beyond Coffee (&oslash;ko). L&oslash;ssalgspris: 278 kr/kg</p>\r\n<h4>Kartoffelposen</h4>\r\n<p>1,2 kg kartofler, Glorietta, Birkemosegaard (&Oslash;ko/Bio). L&oslash;ssalgspris: 15 kr/kg</p>\r\n<h4>Frugtposen</h4>\r\n<p>0,7 kg &AElig;bler, Bellingehus, Ingrid Marie (&oslash;ko/bio). L&oslash;ssalgspris: 29 kr/kg</p>\r\n<p>1 kg Kv&aelig;der, Bellingehus (&oslash;ko/bio). L&oslash;ssalgspris: 41 kr/kg</p>\r\n<h4>Forudbestilt l&oslash;ssalg</h4>\r\n<p>0,5 kg valn&oslash;dder, Hesle Nygaard (&oslash;ko). L&oslash;ssalgspris: 132 kr/kg</p>\r\n<p>1 kg R&oslash;de l&oslash;g, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 26 kr/kg</p>\r\n<p>1 kg Gule l&oslash;g, Birkemosegaard (&oslash;ko/bio). L&oslash;ssalgspris: 21 kr/kg</p>','<p>I denne uge f&aring;r vi sorte r&aelig;ddiker. R&aelig;ddiker er i familie med radiser. De har en skarp lidt bitter smag, der kan v&aelig;re ret sk&oslash;n. M&aring;ske du kan n&oslash;jes med at skrubbe r&aelig;ddiken, men hvis skr&aelig;llen er grov, er det en god id&eacute; at skr&aelig;lle den. R&aelig;ddiker kan spises r&aring; eller braiseret. R&aelig;ddiker er sunde.<br /><br />Pr&oslash;v en indisk inspireret gryde:&nbsp;<br />Parter en kylling &ndash; eller brug alene kyllingebryst &ndash; mariner i yoghurt og braiser med blended frisk ingef&aelig;r, hvidl&oslash;g, diverse krydderier i smukke farver. Tils&aelig;t r&aelig;ddiker, selleri og r&oslash;de linser. Og en flaske tomatpur&eacute;. R&aelig;ddikerne m&aring; gerne have bid, s&aring; man stadig tydeligt kan m&aelig;rke en frisk bitterhed.<br /><br />Eller s&oslash;g opskrifter p&aring; r&aelig;ddikesalat eller r&oslash;dbedesalat med r&aelig;ddiker. Du kan ogs&aring; fermentere eller sylte dine r&aelig;ddiker.</p>\r\n<h3>Ugens poser/ekstra poser</h3>\r\n<h4>Gr&oslash;ntposen</h4>\r\n<ul>\r\n	<li>Amager 19 / 1	<br /><br />Sydhavnen 9 / 1	<br /><br />Valby 8 / 0	<br /><br />Vesterbro 13 / 3	<br /><br />Frederiksberg 15 / 0	<br /><br />Vanl&oslash;se 5 / 0	<br /><br />&Oslash;sterbro 18 / 1	<br /><br />N&oslash;rrebro 11 / 1	<br /><br />Nordvest 14 / 2	<br /><br />I alt 112 / 9</li>\r\n</ul>\r\n<h3>Svampeposen</h3>\r\n<ul>\r\n	<li>AMA 7 / 0	<br /><br />SYD 6 / 0	<br /><br />VAL 8 / 0	<br /><br />VES 11 / 0	<br /><br />FRB 8 / 0	<br /><br />VAN 2 / 0	<br /><br />&Oslash;B 8 / 0	<br /><br />NB 6 / 0	<br /><br />NV 9 / 0	<br /><br />Total 65 / 0</li>\r\n</ul>\r\n<h3>Kartoffelposen</h3>\r\n<ul>\r\n	<li>Amager 9 / 1		<br /><br />Sydhavnen 3 / 0		<br /><br />Valby 5 / 0		<br /><br />Vesterbro 4 / 0		<br /><br />Frederiksberg 10 / 1		<br /><br />Vanl&oslash;se 4 / 0		<br /><br />&Oslash;sterbro 9 / 1		<br /><br />N&oslash;rrebro 4 / 1		<br /><br />Nordvest 5 / 0		<br /><br />I alt 53 / 4</li>\r\n</ul>\r\n<h3>Frugtposen</h3>\r\n<ul>\r\n	<li>Amager 4 / 0		<br /><br />Sydhavnen 2 / 0		<br /><br />Valby 4 / 0		<br /><br />Vesterbro 7 / 0		<br /><br />Frederiksberg 4 / 1		<br /><br />Vanl&oslash;se 0 / 0		<br /><br />&Oslash;sterbro 3 / 0		<br /><br />N&oslash;rrebro 3 / 0		<br /><br />Nordvest 4 / 0		<br /><br />I alt 31 / 1</li>\r\n</ul>'),
	(260,670,'Uge 14',14,2024,'<h4>Grøntposen</h4>\r\n<p>0,2 kg Grønkål, Stensbølsgaard (Øko), løssalgspris: 72 kr / kg</p>\r\n<p>1 bundt Asiatisk salat, Stensbølsgaard (Øko ), løssalgspris: 27 kr / bundt</p>\r\n<p>1 pose Ramsløg, Kammergave (Øko), løssalgspris: 24 kr / pose</p>\r\n<p>0,5 kg Pastinak, Kammergave (Øko), løssalgspris: 21 kr / kg</p>\r\n<p>1 stk Selleri, Kammergave (Øko), løssalgspris: 18 kr / stk</p>\r\n<p>0,7 kg Rødbeder, Svanholm (Øko), løssalgspris: 30 kr / kg</p>\r\n<h4>Svampeposen</h4>\r\n<p>0,32 kg Hvide champignon, Tvedemose (Øko), løssalgspris: 96 kr / kg</p>\r\n<h4>Kartoffelposen</h4>\r\n<p>1,07 kg Kartofler, Kammergave (Øko/bio), løssalgspris: 14 kr / kg</p>\r\n<h4>Forudbetalt løssalg</h4>\r\n<p>Endivie fra Svanholm, 15 kr / stk</p>\r\n<p>Æbler, Belle de Boskoop, fra Svanholm, 38 kr / kg</p>','<h3>Ugens poser/ekstra poser</h3>\r\n<p></p>\r\n<p>Amager 18 / 1<br />Sydhavnen 12 / 1<br />Valby 5 / 0<br />Vesterbro 10 / 0<br />Frederiksberg 6 / 0<br />Vanløse 1 / 0<br />Østerbro 6 / 1<br />Nørrebro 9 / 1<br />Emdrup 0 / 0<br />Nordvest 10 / 0<br />I alt 77 / 4</p>\r\n<h3>Svampeposen</h3>\r\n<p>AMA 5 / 0<br />SYD 5 / 0<br />VAL 5 / 0<br />VES 9 / 0<br />FRB 4 / 0<br />VAN 0 / 0<br />ØB 4 / 0<br />NB 6 / 0<br />EMD 0 / 0<br />NV 5 / 0<br />Total 43 / 0</p>\r\n<h3>Kartoffelposen</h3>\r\n<p>Amager 15 / 1<br />Sydhavnen 2 / 0<br />Valby 3 / 0<br />Vesterbro 3 / 0<br />Frederiksberg 3 / 0<br />Vanløse 2 / 0<br />Østerbro 2 / 1<br />Nørrebro 4 / 1<br />Emdrup 0 / 0<br />Nordvest 3 / 0<br />I alt 37 / 3</p>');

/*!40000 ALTER TABLE `item_weeklybag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item_weeklybag_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_weeklybag_versions`;

CREATE TABLE `item_weeklybag_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `week` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `html` text NOT NULL DEFAULT '',
  `full_description` text NOT NULL DEFAULT '',
  `versioned` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_weeklybag_versions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sindex` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `itemtype` varchar(40) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sindex` (`sindex`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `sindex`, `status`, `itemtype`, `user_id`, `created_at`, `modified_at`, `published_at`)
VALUES
	(2,'persondata',1,'page',4,'2018-06-23 00:53:17','2021-06-15 21:41:01','2018-08-16 17:37:00'),
	(3,'velkommen-som-stoettemedlem',1,'message',4,'2018-08-07 20:34:01','2024-11-05 15:44:17','2018-08-07 20:33:01'),
	(4,'stoettemedlem',1,'signupfee',4,'2018-12-19 21:47:09','2024-08-15 14:58:24','2024-08-15 14:58:00'),
	(5,'velkommen-som-frivillig-medlem',1,'message',4,'2018-12-19 21:48:34','2024-02-07 16:56:28','2018-12-19 21:48:34'),
	(6,'frivillig',1,'membership',4,'2018-12-19 21:49:17','2024-08-19 11:40:45','2024-08-19 11:40:00'),
	(7,'stoettemedlem-2',1,'membership',4,'2018-12-20 10:56:34','2024-08-21 09:17:53','2024-08-21 09:17:00'),
	(8,'frivillig-2',1,'signupfee',4,'2018-12-20 10:58:01','2024-08-15 14:58:02','2024-08-15 14:58:00'),
	(9,'allerede-medlem',1,'page',4,'2018-12-20 11:02:44','2018-12-20 18:12:59','2018-12-20 11:02:59'),
	(10,'tilmelding',1,'page',4,'2018-12-20 11:06:27','2018-12-20 11:22:22','2018-12-20 11:06:22'),
	(12,'afdelinger-i-kbhff',1,'page',4,'2019-07-05 20:59:11','2019-12-15 17:32:13','2019-07-05 20:59:00'),
	(18,'for-leverandoerer',1,'page',4,'2019-07-13 19:40:00','2024-05-28 10:31:52','2019-07-13 19:40:00'),
	(20,'handelsbetingelser',1,'page',4,'2019-07-13 19:43:59','2024-03-22 10:50:15','2019-07-13 19:43:00'),
	(25,'produkter',1,'page',4,'2019-08-08 18:16:13','2024-08-12 11:56:18','2019-08-08 18:16:00'),
	(26,'10-grundprincipper',1,'page',4,'2019-08-08 18:18:12','2024-08-12 13:35:42','2019-08-08 18:18:00'),
	(27,'om-kbhff',1,'page',4,'2019-08-08 19:09:15','2024-09-11 16:43:32','2019-08-08 19:09:00'),
	(28,'kontakt',1,'page',4,'2019-08-12 19:54:14','2024-11-06 14:58:04','2019-08-12 19:54:00'),
	(29,'fremtidens-kbhff',0,'page',4,'2019-08-12 20:18:40','2020-02-10 21:37:32','2019-08-12 20:18:00'),
	(31,'the-future-of-kbhff',1,'page',4,'2019-08-12 20:37:39','2020-06-26 20:59:47','2019-08-12 20:37:00'),
	(32,'english-summary-of-kbhff',1,'page',4,'2019-08-12 20:55:21','2024-08-12 13:19:54','2019-08-12 20:55:00'),
	(33,'om-producenterne',1,'page',4,'2019-09-08 09:45:31','2024-09-30 11:04:49','2019-09-08 09:45:00'),
	(36,'spoergsmaal-og-svar',0,'page',4,'2019-09-14 18:18:44','2024-04-02 10:49:44','2019-09-14 18:18:00'),
	(38,'medlemsfordele',1,'page',4,'2019-10-03 17:50:44','2024-08-12 13:30:10','2019-10-03 17:50:00'),
	(39,'delebiler-fra-letsgo',1,'page',4,'2019-10-03 17:57:56','2024-02-20 11:22:38','2019-10-03 17:57:00'),
	(40,'tidslinje',1,'page',4,'2019-10-03 18:58:22','2024-08-29 13:43:46','2019-10-03 18:58:00'),
	(42,'hvordan-bliver-jeg-medlem',1,'qna',4,'2019-10-31 17:49:59','2024-05-04 15:52:10','2024-05-04 15:52:00'),
	(43,'for-medlemmer',1,'page',4,'2019-10-31 17:54:53','2024-08-12 13:33:16','2019-10-31 17:54:00'),
	(46,'hvad-koster-det-at-blive-medlem',1,'qna',4,'2019-10-31 18:00:06','2024-05-04 15:29:19','2024-05-04 15:29:00'),
	(48,'andre-spoergsmaal',1,'qna',4,'2019-10-31 18:03:06','2023-03-09 10:43:37','2023-03-09 10:43:00'),
	(49,'hvad-er-der-typisk-i-ugens-pose',1,'qna',4,'2019-10-31 18:07:56','2024-08-27 17:48:09','2024-08-27 17:48:00'),
	(50,'can-english-speakers-be-members',1,'qna',4,'2019-10-31 18:10:52','2024-05-04 15:25:22','2024-05-04 15:25:00'),
	(51,'oev-nogle-af-de-groentsager-jeg-har-faaet-i',1,'qna',4,'2019-10-31 18:10:58','2021-10-17 18:33:23','2021-10-17 18:33:00'),
	(52,'hvad-goer-jeg-hvis-posens-indhold-ikke',1,'qna',4,'2019-10-31 18:13:23','2019-10-31 18:13:58','2019-10-31 18:13:00'),
	(53,'hjemme-i-koekkenet-opdager-jeg-at-der',1,'qna',4,'2019-10-31 18:14:15','2021-06-17 13:11:28','2021-06-17 13:11:00'),
	(54,'hvordan-faar-jeg-indflydelse-paa-hvilke',1,'qna',4,'2019-10-31 18:15:15','2019-10-31 18:22:06','2019-10-31 18:22:00'),
	(55,'hvordan-faar-jeg-indflydelse-paa-hvad-vi',1,'qna',4,'2019-10-31 18:22:12','2024-04-03 10:21:53','2024-04-03 10:21:00'),
	(56,'hvad-daekker-medlemskontingentet',1,'qna',4,'2019-10-31 18:24:43','2024-05-04 15:30:46','2024-05-04 15:30:00'),
	(57,'hvordan-er-det-smartest-at-opbevare-de',1,'qna',4,'2019-10-31 18:24:53','2019-10-31 18:26:23','2019-10-31 18:26:00'),
	(58,'lugeture',0,'page',4,'2019-10-31 18:25:36','2023-09-05 15:44:13','2019-10-31 18:25:00'),
	(59,'jeg-kender-ikke-den-maerkelige-groentsag-i',1,'qna',4,'2019-10-31 18:27:00','2021-06-17 13:12:49','2021-06-17 13:12:00'),
	(61,'hvornaar-kan-jeg-se-posens-indhold-paa',1,'qna',4,'2019-10-31 18:32:57','2021-06-17 13:13:28','2021-06-17 13:13:00'),
	(62,'hvornaar-og-hvor-kan-jeg-se-paa-hjemmesiden',1,'qna',4,'2019-10-31 18:34:54','2019-10-31 19:06:29','2019-10-31 19:06:00'),
	(63,'kan-husstande-deles-om-medlemsskabet',1,'qna',4,'2019-10-31 18:58:32','2024-05-04 15:54:04','2024-05-04 15:54:00'),
	(65,'hvornaar-og-hvordan-bestiller-jeg',1,'qna',4,'2019-11-03 09:24:19','2024-05-04 16:16:12','2024-05-04 16:16:00'),
	(66,'hvornaar-og-hvordan-bestiller-jeg-frugtposer',0,'qna',4,'2019-11-03 09:27:31','2024-05-04 16:15:21','2024-05-04 16:15:00'),
	(67,'hvornaar-og-hvordan-bestiller-jeg-1',0,'qna',4,'2019-11-03 09:28:00','2019-11-03 09:28:41','2019-11-03 09:28:00'),
	(68,'hvor-ofte-kan-jeg-bestille-poser',1,'qna',4,'2019-11-03 09:35:07','2024-05-04 16:20:03','2024-05-04 16:20:00'),
	(69,'hvor-tit-behoever-jeg-at-bestille',0,'qna',4,'2019-11-03 09:35:40','2019-11-03 09:36:35','2019-11-03 09:36:00'),
	(70,'hvorfor-kan-jeg-ikke-se-posens-indhold-naar',1,'qna',4,'2019-11-03 09:36:52','2024-05-04 16:21:03','2024-05-04 16:21:00'),
	(71,'kan-jeg-aendre-min-bestilling',1,'qna',4,'2019-11-03 09:37:59','2021-06-17 12:59:32','2021-06-17 12:59:00'),
	(72,'kan-jeg-flytte-min-bestilling-til-afhentning',1,'qna',4,'2019-11-03 09:39:25','2021-08-31 07:36:52','2021-08-31 07:36:00'),
	(73,'flytter-min-bestilling-med-hvis-jeg-skifter',1,'qna',4,'2019-11-03 09:39:50','2021-06-17 13:05:29','2021-06-17 13:05:00'),
	(74,'kan-jeg-bestille-via-mail-hvis-jeg-glemte',1,'qna',4,'2019-11-03 09:40:18','2021-06-17 13:06:31','2021-06-17 13:06:00'),
	(75,'kan-jeg-hente-groentsager-paa-andre',1,'qna',4,'2019-11-03 09:43:57','2019-11-03 09:44:11','2019-11-03 09:44:00'),
	(76,'hvad-sker-der-hvis-jeg-glemmer-eller-er',1,'qna',4,'2019-11-03 09:44:26','2019-11-03 09:45:17','2019-11-03 09:45:00'),
	(77,'hvad-goer-jeg-hvis-jeg-har-glemt-min',1,'qna',4,'2019-11-03 09:45:30','2021-06-17 13:08:26','2021-06-17 13:08:00'),
	(78,'hvad-goer-jeg-hvis-min-bestilling-ikke',1,'qna',4,'2019-11-03 09:46:28','2021-08-31 07:43:43','2021-08-31 07:43:00'),
	(79,'kan-virksomheder-koebe-engros-gennem-kbhff',1,'qna',4,'2019-11-03 09:51:44','2021-08-31 07:45:20','2021-08-31 07:45:00'),
	(80,'kan-jeg-lave-en-stor-saerbestilling-til-mit',1,'qna',4,'2019-11-03 09:52:28','2021-08-31 07:46:08','2021-08-31 07:46:00'),
	(81,'jeg-har-glemt-mit-login-til-medlemssystemet',1,'qna',4,'2019-11-03 09:53:00','2021-06-17 16:02:46','2021-06-17 16:02:00'),
	(93,'hvordan-skifter-jeg-lokalafdeling',1,'qna',4,'2020-01-20 21:04:16','2024-05-04 15:38:31','2024-05-04 15:38:00'),
	(96,'skal-jeg-som-medlem-deltage-i-medlemsmoeder',1,'qna',4,'2020-01-21 17:51:12','2024-05-04 15:59:21','2024-05-04 15:59:00'),
	(97,'kan-jeg-stille-mit-medlemsskab-i-bero-i-en',1,'qna',4,'2020-01-21 17:52:23','2024-10-13 17:39:35','2024-10-13 17:39:00'),
	(98,'hvordan-melder-jeg-mig-ud',1,'qna',4,'2020-01-21 17:53:00','2024-05-04 16:04:26','2024-05-04 16:04:00'),
	(99,'hvor-mange-vagter-skal-jeg-tage',1,'qna',4,'2020-01-21 17:54:41','2020-01-21 17:55:18','2020-01-21 17:55:00'),
	(100,'hvor-lange-er-vagterne',1,'qna',4,'2020-01-21 17:55:46','2020-01-21 17:56:08','2020-01-21 17:56:00'),
	(101,'kan-jeg-slippe-for-at-skulle-arbejde-3-timer',1,'qna',4,'2020-01-21 17:56:20','2021-06-17 12:20:20','2021-06-17 12:20:00'),
	(102,'jeg-kan-ikke-tage-vagter-om-onsdagen-hvad',1,'qna',4,'2020-01-21 17:57:01','2020-01-21 17:57:17','2020-01-21 17:57:00'),
	(103,'hvilke-arbejdsgrupper-kan-jeg-melde-mig-ind',1,'qna',4,'2020-01-21 17:57:27','2024-04-03 10:17:12','2024-04-03 10:17:00'),
	(104,'kan-jeg-arbejde-med-noget-helt-saerligt-som',1,'qna',4,'2020-01-21 18:01:28','2020-01-21 18:01:57','2020-01-21 18:01:00'),
	(105,'hvordan-skifter-jeg-vagttype',1,'qna',4,'2020-01-21 18:02:16','2020-01-21 18:02:44','2020-01-21 18:02:00'),
	(106,'hvorfor-er-mange-vagter-kortere-end-3-timer',1,'qna',4,'2020-01-21 18:03:03','2020-01-21 18:03:17','2020-01-21 18:03:00'),
	(107,'hvad-sker-der-hvis-man-ikke-moeder-op-til',1,'qna',4,'2020-01-21 18:03:39','2021-06-17 12:27:39','2021-06-17 12:27:00'),
	(108,'hvad-goer-jeg-hvis-jeg-er-forhindret-i-at',1,'qna',4,'2020-01-21 18:04:29','2021-06-17 15:49:44','2021-06-17 15:49:00'),
	(109,'kan-jeg-tage-vagter-sammen-med-familie-og',1,'qna',4,'2020-01-21 18:04:55','2020-01-21 18:05:05','2020-01-21 18:05:00'),
	(110,'kan-store-hjemmeboende-boern-tage-vagter',1,'qna',4,'2020-01-21 18:05:16','2020-01-21 18:05:34','2020-01-21 18:05:00'),
	(111,'kan-jeg-arbejde-hjemmefra',1,'qna',4,'2020-01-21 18:05:45','2020-01-21 18:06:00','2020-01-21 18:06:00'),
	(112,'kan-jeg-tage-mine-smaa-boern-med-paa-vagt',1,'qna',4,'2020-01-21 18:06:10','2020-01-21 18:06:32','2020-01-21 18:06:00'),
	(113,'kan-min-ven-sambo-kaereste-tage-nogle-af-min',1,'qna',4,'2020-01-21 18:06:45','2020-01-21 18:07:04','2020-01-21 18:07:00'),
	(115,'hvordan-redigerer-jeg-i-kbhff-wikien',1,'qna',4,'2020-01-21 18:07:38','2021-06-17 15:53:32','2021-06-17 15:53:00'),
	(116,'organisationen',1,'page',4,'2020-02-05 17:51:10','2024-10-01 13:54:41','2020-02-05 17:51:00'),
	(117,'hvor-kan-jeg-se-hvad-der-har-vaeret-i',1,'qna',4,'2020-02-05 17:58:03','2021-06-17 13:14:22','2021-06-17 13:14:00'),
	(206,'skal-du-vaere-kbhff-s-nye-chauffoer',0,'post',4,'2020-09-10 11:28:57','2020-09-10 11:34:21','2020-09-10 11:27:00'),
	(255,'pose-2021-uge-15',0,'weeklybag',4,'2021-04-12 11:44:21','2021-04-19 13:09:12','2021-04-19 13:09:00'),
	(272,'groentpose-2021-special',0,'productweeklybag',4,'2021-06-15 20:27:25','2021-12-30 17:17:24','2021-12-30 17:17:00'),
	(273,'groentpose-2021-special-cloned',1,'productweeklybag',4,'2021-06-15 20:29:33','2024-11-03 18:29:51','2024-11-03 18:29:00'),
	(274,'stofpose',1,'productcanvasbag',4,'2021-06-15 20:33:46','2023-10-25 10:37:55','2023-10-25 10:37:00'),
	(275,'frugtpose',1,'productseasonalbag',4,'2021-06-15 21:16:19','2024-11-03 18:23:21','2024-11-03 18:23:00'),
	(276,'svampepose',1,'productseasonalbag',4,'2021-06-15 21:18:52','2024-11-03 18:23:50','2024-11-03 18:23:00'),
	(277,'kartoffelpose',1,'productseasonalbag',4,'2021-06-15 21:21:53','2024-10-13 13:34:02','2024-10-13 13:34:00'),
	(278,'aspargespose',1,'productseasonalbag',4,'2021-06-15 21:24:03','2024-05-24 18:39:22','2024-05-24 18:39:00'),
	(280,'depositum-stofpose',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(281,'frugtpose-1',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(282,'groenne-asparges',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(283,'groentsagspose',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(284,'hvide-asparges',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(285,'kartoffelpose-1',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(286,'stofpose-andel',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(287,'stoettepose-groentsager',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(288,'svampepose-1',0,'legacyproduct',4,'2021-06-17 13:54:19','2021-06-17 13:54:19','2021-06-17 13:54:00'),
	(289,'1623937693',1,'qna',4,'2021-06-17 15:48:52','2021-06-17 15:50:12','2021-06-17 15:50:00'),
	(290,'1623992917',1,'qna',4,'2021-06-18 07:09:15','2021-08-31 07:29:43','2021-08-31 07:29:00'),
	(291,'1623993230',0,'qna',4,'2021-06-18 07:13:53','2021-08-31 07:30:16','2021-08-31 07:30:00'),
	(303,'nye-datoer-til-lugeture-3',0,'post',4,'2021-07-10 03:28:41','2021-07-10 03:40:48','2021-07-10 03:28:00'),
	(344,'aaret-der-gik-2021-cloned',0,'post',4,'2022-01-22 21:56:17','2022-01-22 21:56:17','2022-01-22 21:56:00'),
	(372,'foraarsjaevndoegn-en-spaendende-og-spirende-tid',0,'post',4,'2022-04-06 22:33:44','2022-04-06 23:21:58','2022-04-06 22:33:00'),
	(475,'groentpose-hungry-gap',1,'productseasonalbag',4,'2022-12-14 21:04:13','2023-03-28 21:34:47','2023-03-28 21:34:00'),
	(476,'gavepose',1,'productseasonalbag',4,'2022-12-14 21:24:12','2022-12-15 20:48:05','2022-12-15 20:48:00'),
	(542,'pose-2023-uge-19',1,'weeklybag',4,'2023-05-07 16:39:52','2023-05-07 16:48:53','2023-05-07 16:48:00'),
	(545,'pose-2023-uge-21',1,'weeklybag',4,'2023-05-12 22:13:49','2023-05-16 23:06:48','2023-05-16 23:06:00'),
	(582,'nyhedsbrev-skabelon',1,'message',4,'2023-08-01 17:26:48','2023-08-01 22:44:28','2023-08-01 17:26:00'),
	(591,'faellesmoede-og-faellesmadlavnings-event-common-meeting-an',1,'message',4,'2023-08-16 10:08:53','2023-08-16 19:36:02','2023-08-16 10:05:00'),
	(595,'foraarsloeg',1,'productassorted',4,'2023-08-24 10:53:06','2024-08-05 10:14:51','2024-08-05 10:14:00'),
	(603,'nyhedsbrev-skabelon-cloned',1,'message',4,'2023-09-07 10:53:10','2023-09-07 12:03:28','2023-09-07 10:53:00'),
	(633,'pose-2023-uge-48',1,'weeklybag',4,'2023-11-25 08:34:16','2023-11-25 17:17:42','2023-11-25 17:17:00'),
	(650,'quick-start-guide',1,'page',4,'2024-02-07 10:51:46','2024-11-06 14:59:45','2024-02-07 10:51:00'),
	(655,'hvedemel-fuldkorn-5-kg',1,'productassorted',4,'2024-02-13 22:41:50','2024-10-15 15:44:21','2024-10-15 15:44:00'),
	(659,'vil-du-vaere-chauffoer-are-you-our-new-driver',1,'post',4,'2024-02-20 10:29:44','2024-09-04 15:36:05','2024-09-03 10:25:00'),
	(670,'pose-2024-uge-14',1,'weeklybag',4,'2024-03-28 09:24:46','2024-04-07 16:54:16','2024-04-07 16:54:00'),
	(679,'1712132561',1,'qna',4,'2024-04-03 10:23:58','2024-04-03 10:47:36','2024-04-03 10:47:00'),
	(680,'1712132991',1,'qna',4,'2024-04-03 10:31:42','2024-04-03 10:45:01','2024-04-03 10:45:00'),
	(681,'1712133310',1,'qna',4,'2024-04-03 10:35:30','2024-04-03 10:45:08','2024-04-03 10:45:00'),
	(682,'1712133375',1,'qna',4,'2024-04-03 10:39:32','2024-04-03 10:45:18','2024-04-03 10:45:00'),
	(683,'1712133637',1,'qna',4,'2024-04-03 10:41:52','2024-04-03 10:45:29','2024-04-03 10:45:00'),
	(686,'purloeg',0,'productassorted',4,'2024-04-14 15:16:11','2024-04-14 15:17:40','2024-04-14 15:17:00'),
	(697,'ugens-poser',1,'page',4,'2024-05-04 15:03:17','2024-05-04 15:09:48','2024-05-04 15:03:00'),
	(739,'new-zealandsk-spinat',1,'productassorted',4,'2024-08-30 16:50:58','2024-09-10 18:25:44','2024-09-10 18:25:00'),
	(750,'spelt-sigtet-1-kg',1,'productassorted',4,'2024-09-11 08:50:03','2024-10-15 15:43:30','2024-10-15 15:43:00'),
	(773,'avlermoede-2024',0,'page',4,'2024-10-28 11:18:24','2024-10-28 11:23:42','2024-10-28 11:18:00');

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_comments`;

CREATE TABLE `items_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `items_comments_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table items_mediae
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_mediae`;

CREATE TABLE `items_mediae` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `format` varchar(5) NOT NULL,
  `variant` varchar(40) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `items_mediae_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `items_mediae` WRITE;
/*!40000 ALTER TABLE `items_mediae` DISABLE KEYS */;

INSERT INTO `items_mediae` (`id`, `item_id`, `name`, `format`, `variant`, `width`, `height`, `filesize`, `position`)
VALUES
	(12,32,'Vegetable bag example with strawberries.jpg','jpg','HTMLEDITOR-html-amd8l7c9',400,147,56206,0),
	(27,58,'lugetur.png','png','HTMLEDITOR-html-edmbiar3',2048,1365,2923899,0),
	(65,206,'chauffør.jpg','jpg','mediae-m2j2aztp',1000,667,337436,0),
	(98,272,'grøntpose.png','png','single_media',960,960,848831,0),
	(99,273,'grøntpose.png','png','single_media',960,960,848831,0),
	(100,274,'Stofpose.png','png','single_media',960,960,262686,0),
	(101,275,'frugtpose.png','png','single_media',960,960,738473,0),
	(102,276,'svampepose.png','png','single_media',960,960,498722,0),
	(103,277,'kartoffelpose.png','png','single_media',960,960,565639,0),
	(104,278,'aspargspose.png','png','single_media',960,960,630994,0),
	(108,303,'lugetur.jpg','jpg','mediae-sk1d3jx9',3024,2306,1834815,0),
	(133,344,'127877000_2809432342635464_8469467433589811612_n.jpg','jpg','mediae-b2eokh98',640,640,142673,0),
	(158,372,'fugleskrmslet_5050650223_o.jpg','jpg','mediae-esn832g5',2592,1944,2953172,0),
	(232,475,'grøntpose.png','png','single_media',960,960,848831,0),
	(233,476,'Gavepose.jpg','jpg','single_media',1016,1045,160778,0),
	(235,18,'Fælleslager.PNG','png','HTMLEDITOR-html-qo1x7uh8',613,329,157382,0),
	(306,582,'test03.png','png','HTMLEDITOR-html-zjlylvfv',3106,1006,1992475,0),
	(307,582,'test04.png','png','HTMLEDITOR-html-a3bzqz64',3106,1006,1902721,0),
	(339,603,'test03.png','png','HTMLEDITOR-html-k45hdcav',3106,1006,1992475,0),
	(340,603,'test04.png','png','HTMLEDITOR-html-gt2ylfmf',3106,1006,1902721,0),
	(361,659,'HYRE.png','png','mediae-yc7e8ytx',291,183,46134,0),
	(362,39,'HYRE.png','png','mediae-q6wjfg08',291,183,46134,0),
	(378,8,'frivillig.jpg','jpg','single_media',960,540,169745,0),
	(400,6,'chift_circle_KBHFF.png','png','HTMLEDITOR-html-0qlhax4a',1121,793,427001,0),
	(406,116,'2024_KBHFF_organisering_DK.png','png','HTMLEDITOR-html-lgojnwpm',885,363,34874,0);

/*!40000 ALTER TABLE `items_mediae` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items_prices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_prices`;

CREATE TABLE `items_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `currency` varchar(3) NOT NULL,
  `vatrate_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `currency` (`currency`),
  KEY `vatrate_id` (`vatrate_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `items_prices_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_prices_ibfk_2` FOREIGN KEY (`currency`) REFERENCES `system_currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_prices_ibfk_3` FOREIGN KEY (`vatrate_id`) REFERENCES `system_vatrates` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `items_prices_ibfk_4` FOREIGN KEY (`type_id`) REFERENCES `system_price_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `items_prices` WRITE;
/*!40000 ALTER TABLE `items_prices` DISABLE KEYS */;

INSERT INTO `items_prices` (`id`, `item_id`, `price`, `currency`, `vatrate_id`, `type_id`, `quantity`)
VALUES
	(1,6,200,'DKK',1,1,NULL),
	(2,7,200,'DKK',1,1,NULL),
	(5,272,100,'DKK',2,5,NULL),
	(6,272,140,'DKK',2,4,NULL),
	(10,274,50,'DKK',2,5,NULL),
	(11,274,50,'DKK',2,4,NULL),
	(13,276,30,'DKK',2,5,NULL),
	(14,276,30,'DKK',2,4,NULL),
	(24,8,100,'DKK',1,1,NULL),
	(25,4,100,'DKK',1,1,NULL),
	(36,275,60,'DKK',2,5,NULL),
	(37,275,60,'DKK',2,4,NULL),
	(106,475,100,'DKK',2,5,NULL),
	(107,475,125,'DKK',2,4,NULL),
	(108,476,150,'DKK',2,5,NULL),
	(109,476,150,'DKK',2,4,NULL),
	(332,655,134,'DKK',2,5,NULL),
	(333,655,134,'DKK',2,4,NULL),
	(368,686,15,'DKK',2,5,NULL),
	(369,686,15,'DKK',2,4,NULL),
	(382,278,39,'DKK',2,5,NULL),
	(383,278,39,'DKK',2,4,NULL),
	(402,273,125,'DKK',2,5,NULL),
	(403,273,150,'DKK',2,4,NULL),
	(433,277,20,'DKK',2,5,NULL),
	(434,277,20,'DKK',2,4,NULL),
	(447,595,23,'DKK',2,5,NULL),
	(448,595,23,'DKK',2,4,NULL),
	(482,739,30,'DKK',2,5,NULL),
	(483,739,30,'DKK',2,4,NULL),
	(500,750,39,'DKK',2,5,NULL),
	(501,750,39,'DKK',2,4,NULL);

/*!40000 ALTER TABLE `items_prices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items_ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_ratings`;

CREATE TABLE `items_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `items_ratings_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table items_sindex_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_sindex_history`;

CREATE TABLE `items_sindex_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `sindex` varchar(255) DEFAULT NULL,
  `obsolete_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `items_sindex_history_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table items_subscription_method
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items_subscription_method`;

CREATE TABLE `items_subscription_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `subscription_method_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `subscription_method_id` (`subscription_method_id`),
  CONSTRAINT `items_subscription_method_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_subscription_method_ibfk_2` FOREIGN KEY (`subscription_method_id`) REFERENCES `system_subscription_methods` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `items_subscription_method` WRITE;
/*!40000 ALTER TABLE `items_subscription_method` DISABLE KEYS */;

INSERT INTO `items_subscription_method` (`id`, `item_id`, `subscription_method_id`)
VALUES
	(1,6,2),
	(2,7,2);

/*!40000 ALTER TABLE `items_subscription_method` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `navigation`;

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `handle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `navigation` WRITE;
/*!40000 ALTER TABLE `navigation` DISABLE KEYS */;

INSERT INTO `navigation` (`id`, `name`, `handle`)
VALUES
	(1,'main-admin','main-admin'),
	(2,'main-janitor','main-janitor'),
	(3,'main-member','main-member'),
	(4,'main-public','main-public'),
	(7,'main-butiksvagt','main-butiksvagt'),
	(8,'sub-about','sub-about'),
	(9,'sub-member','sub-member'),
	(10,'sub-butiksvagt','sub-butiksvagt');

/*!40000 ALTER TABLE `navigation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table navigation_nodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `navigation_nodes`;

CREATE TABLE `navigation_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navigation_id` int(11) NOT NULL,
  `node_name` varchar(255) NOT NULL,
  `node_link` varchar(255) DEFAULT NULL,
  `node_item_id` int(11) DEFAULT NULL,
  `node_item_controller` varchar(255) DEFAULT NULL,
  `node_classname` varchar(255) DEFAULT NULL,
  `node_target` varchar(255) DEFAULT NULL,
  `node_fallback` varchar(255) DEFAULT NULL,
  `relation` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `navigation_id` (`navigation_id`),
  KEY `node_item_id` (`node_item_id`),
  CONSTRAINT `navigation_nodes_ibfk_1` FOREIGN KEY (`navigation_id`) REFERENCES `navigation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `navigation_nodes_ibfk_2` FOREIGN KEY (`node_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `navigation_nodes` WRITE;
/*!40000 ALTER TABLE `navigation_nodes` DISABLE KEYS */;

INSERT INTO `navigation_nodes` (`id`, `navigation_id`, `node_name`, `node_link`, `node_item_id`, `node_item_controller`, `node_classname`, `node_target`, `node_fallback`, `relation`, `position`)
VALUES
	(4,1,'Min Side','/profil',NULL,NULL,'profile',NULL,NULL,0,1),
	(5,2,'Pages','/janitor/admin/page/list',NULL,NULL,'page',NULL,NULL,0,2),
	(7,2,'Signup fees','/janitor/signupfee/list',NULL,NULL,'signupfee',NULL,NULL,0,3),
	(8,2,'Departments','/janitor/department/list',NULL,NULL,'department',NULL,NULL,0,4),
	(9,1,'Medlemshjælp','/medlemshjaelp',NULL,NULL,NULL,NULL,NULL,0,2),
	(10,3,'Min side','/profil',NULL,NULL,'profile',NULL,NULL,0,1),
	(11,3,'Frivillig på arbejde','/medlemshjaelp',NULL,NULL,'volunteer',NULL,NULL,0,2),
	(14,7,'butiksvagt','./',NULL,NULL,'butiksvagt',NULL,'/',0,0),
	(15,4,'Afdelinger','/afdelinger',NULL,NULL,'department',NULL,NULL,0,3),
	(16,2,'Posts','/janitor/post/list',NULL,NULL,'post',NULL,NULL,0,1),
	(17,4,'Nyheder','/nyheder',NULL,NULL,'posts',NULL,NULL,0,4),
	(19,2,'Weekly bag (presentation)','/janitor/weeklybag/list',NULL,'','weeklybag',NULL,'',0,7),
	(20,4,'Om','/om/',NULL,NULL,'about',NULL,NULL,0,6),
	(24,4,'Ugens pose','/ugens-pose',NULL,NULL,NULL,NULL,NULL,0,5),
	(25,4,'English','/english',NULL,NULL,'engelsk',NULL,NULL,0,7),
	(26,4,'Bliv Medlem','/bliv-medlem',NULL,'','',NULL,'',0,2),
	(28,8,'10 grundprincipper','/om/10-grundprincipper',NULL,NULL,NULL,NULL,NULL,0,2),
	(29,2,'FAQ','/janitor/admin/qna/list',NULL,NULL,'faq',NULL,NULL,0,5),
	(30,8,'Tidslinje','/om/tidslinje',NULL,NULL,NULL,NULL,NULL,0,4),
	(32,8,'Om producenterne','/om/om-producenterne',NULL,NULL,NULL,NULL,NULL,0,3),
	(33,9,'Medlemsfordele','/medlem/medlemsfordele',NULL,NULL,NULL,NULL,NULL,0,3),
	(34,4,'For medlemmer','/medlem/',NULL,NULL,NULL,NULL,NULL,0,1),
	(38,8,'Spørgsmål og svar','/faq',NULL,NULL,NULL,NULL,NULL,0,1),
	(39,8,'For Leverandører','/om/for-leverandoerer',NULL,NULL,NULL,NULL,NULL,0,5),
	(40,4,'Min side','/profil',NULL,'','',NULL,'',0,0),
	(41,8,'Om organisationen','/om/organisationen',NULL,NULL,NULL,NULL,NULL,0,6),
	(43,1,'Butiksvagt','/butiksvagt',NULL,'','butiksvagt',NULL,'',0,3),
	(44,1,'Massemail','/massemail',NULL,'','massmail',NULL,'',0,4),
	(45,1,'Indkøb','/indkoeb',NULL,'','indkoeb',NULL,'',0,5),
	(46,2,'Pickup dates','/janitor/pickupdate/list',NULL,'','pickupdates',NULL,'',0,6),
	(47,2,'Weekly bag (product)','/janitor/product-weeklybag/list',NULL,'','',NULL,'',0,8),
	(48,2,'Seasonal bag (product)','/janitor/product-seasonalbag/list',NULL,'','',NULL,'',0,9),
	(49,2,'Canvas bag (product)','/janitor/product-canvasbag/list',NULL,'','',NULL,'',0,10),
	(50,2,'Assorted products','/janitor/product-assorted/list',NULL,'','',NULL,'',0,11),
	(51,2,'Ordered products','/janitor/order-item/list',NULL,'','ordered_products',NULL,'',0,12),
	(52,2,'Mass mail log','/janitor/mass-mail-log/list',NULL,'','mass_mail_log',NULL,'',0,13),
	(53,4,'Grøntshoppen','/butik',NULL,'','shop',NULL,'',0,0),
	(54,9,'Produkter','/om/produkter',NULL,'','',NULL,'',0,2),
	(55,10,'Tørvarer','https://docs.google.com/spreadsheets/d/1alG1R9cBvzim96stP8Vv4EbDQSy_ArjIMi8CjOg_3F8/htmlview#gid=0',NULL,'','','_blank','',0,0),
	(56,10,'Manual DK/EN','https://docs.google.com/document/d/1aNv9QKUD9LJIUS12jreM140f9l6D0-UR_FMamLFKnCU',NULL,'','','_blank','',0,0),
	(57,10,'Wiki','Http://wiki.kbhff.dk',NULL,'','','_blank','',0,0),
	(58,10,'FAQ','/faq',NULL,'','','_blank','',0,0),
	(60,9,'Opskrifter','http://opskrifter.kbhff.dk',NULL,'','',NULL,'',0,4),
	(61,9,'Kvikstart guide','/medlem/quick-start-guide',NULL,'','',NULL,'',0,1);

/*!40000 ALTER TABLE `navigation_nodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_department_pickupdate_cart_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_department_pickupdate_cart_items`;

CREATE TABLE `project_department_pickupdate_cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_pickupdate_id` int(11) NOT NULL,
  `cart_item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `departent_pickupdate_id` (`department_pickupdate_id`),
  KEY `cart_item_id` (`cart_item_id`),
  CONSTRAINT `project_department_pickupdate_cart_items_ibfk_1` FOREIGN KEY (`department_pickupdate_id`) REFERENCES `project_department_pickupdates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_department_pickupdate_cart_items_ibfk_2` FOREIGN KEY (`cart_item_id`) REFERENCES `shop_cart_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_department_pickupdate_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_department_pickupdate_order_items`;

CREATE TABLE `project_department_pickupdate_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_pickupdate_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `departent_pickupdate_id` (`department_pickupdate_id`),
  KEY `order_item_id` (`order_item_id`),
  CONSTRAINT `project_department_pickupdate_order_items_ibfk_1` FOREIGN KEY (`department_pickupdate_id`) REFERENCES `project_department_pickupdates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_department_pickupdate_order_items_ibfk_2` FOREIGN KEY (`order_item_id`) REFERENCES `shop_order_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_department_pickupdates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_department_pickupdates`;

CREATE TABLE `project_department_pickupdates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `pickupdate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `pickupdate_id` (`pickupdate_id`),
  CONSTRAINT `project_department_pickupdates_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `project_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_department_pickupdates_ibfk_2` FOREIGN KEY (`pickupdate_id`) REFERENCES `project_pickupdates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `project_department_pickupdates` WRITE;
/*!40000 ALTER TABLE `project_department_pickupdates` DISABLE KEYS */;

INSERT INTO `project_department_pickupdates` (`id`, `department_id`, `pickupdate_id`)
VALUES
	(20,5,3),
	(21,6,3),
	(22,3,3),
	(23,7,3),
	(24,9,3),
	(25,8,3),
	(26,1,3),
	(27,4,3),
	(29,5,4),
	(30,6,4),
	(31,3,4),
	(32,7,4),
	(33,9,4),
	(34,8,4),
	(35,1,4),
	(36,4,4),
	(37,2,5),
	(38,5,5),
	(39,6,5),
	(40,3,5),
	(41,7,5),
	(42,9,5),
	(43,8,5),
	(44,1,5),
	(45,4,5),
	(56,2,6),
	(57,5,6),
	(58,6,6),
	(59,3,6),
	(60,7,6),
	(61,9,6),
	(62,8,6),
	(63,1,6),
	(64,4,6),
	(65,2,7),
	(66,5,7),
	(67,6,7),
	(68,3,7),
	(69,7,7),
	(70,9,7),
	(71,8,7),
	(72,1,7),
	(73,4,7),
	(75,2,3),
	(76,2,4),
	(77,2,8),
	(78,5,8),
	(79,6,8),
	(80,3,8),
	(81,7,8),
	(82,9,8),
	(83,8,8),
	(84,1,8),
	(85,4,8),
	(86,2,9),
	(87,5,9),
	(88,6,9),
	(89,3,9),
	(90,7,9),
	(91,9,9),
	(92,8,9),
	(93,1,9),
	(94,4,9),
	(95,2,10),
	(96,5,10),
	(97,6,10),
	(98,3,10),
	(99,7,10),
	(100,9,10),
	(101,8,10),
	(102,1,10),
	(103,4,10),
	(104,2,11),
	(105,5,11),
	(106,6,11),
	(107,3,11),
	(108,7,11),
	(109,9,11),
	(110,8,11),
	(111,1,11),
	(112,4,11),
	(113,2,12),
	(114,5,12),
	(115,6,12),
	(116,3,12),
	(117,7,12),
	(118,9,12),
	(119,8,12),
	(120,1,12),
	(121,4,12),
	(122,2,13),
	(123,5,13),
	(124,6,13),
	(125,3,13),
	(126,9,13),
	(127,8,13),
	(128,4,13),
	(129,7,13),
	(130,1,13),
	(141,2,14),
	(142,5,14),
	(143,6,14),
	(144,3,14),
	(145,7,14),
	(146,9,14),
	(147,8,14),
	(148,1,14),
	(149,4,14),
	(150,2,15),
	(151,5,15),
	(152,6,15),
	(153,3,15),
	(154,7,15),
	(155,9,15),
	(156,8,15),
	(157,1,15),
	(158,4,15),
	(159,2,16),
	(160,5,16),
	(161,6,16),
	(162,3,16),
	(163,7,16),
	(164,9,16),
	(165,8,16),
	(166,1,16),
	(167,4,16),
	(168,2,17),
	(169,5,17),
	(170,6,17),
	(171,3,17),
	(172,7,17),
	(173,9,17),
	(174,8,17),
	(175,1,17),
	(176,4,17),
	(177,2,18),
	(178,5,18),
	(179,6,18),
	(180,3,18),
	(181,7,18),
	(182,9,18),
	(183,8,18),
	(184,1,18),
	(185,4,18),
	(186,2,19),
	(187,5,19),
	(188,6,19),
	(189,3,19),
	(190,7,19),
	(191,9,19),
	(192,8,19),
	(193,1,19),
	(194,4,19),
	(195,2,20),
	(196,5,20),
	(197,6,20),
	(198,3,20),
	(199,7,20),
	(200,9,20),
	(201,8,20),
	(202,1,20),
	(203,4,20),
	(204,2,21),
	(205,5,21),
	(206,6,21),
	(207,3,21),
	(208,7,21),
	(209,9,21),
	(210,8,21),
	(211,1,21),
	(212,4,21),
	(213,2,22),
	(214,5,22),
	(215,6,22),
	(216,3,22),
	(217,7,22),
	(218,9,22),
	(219,8,22),
	(220,1,22),
	(221,4,22),
	(222,2,23),
	(223,5,23),
	(224,6,23),
	(225,3,23),
	(226,7,23),
	(227,9,23),
	(228,8,23),
	(229,1,23),
	(230,4,23),
	(231,2,24),
	(232,5,24),
	(233,6,24),
	(234,3,24),
	(235,7,24),
	(236,9,24),
	(237,8,24),
	(238,1,24),
	(239,4,24),
	(240,2,25),
	(241,5,25),
	(242,6,25),
	(243,3,25),
	(244,7,25),
	(245,9,25),
	(246,8,25),
	(247,1,25),
	(248,4,25),
	(249,2,26),
	(250,5,26),
	(251,6,26),
	(252,3,26),
	(253,7,26),
	(254,9,26),
	(255,8,26),
	(256,1,26),
	(257,4,26),
	(258,2,27),
	(259,5,27),
	(260,6,27),
	(261,3,27),
	(262,7,27),
	(263,9,27),
	(264,8,27),
	(265,1,27),
	(266,4,27),
	(267,2,28),
	(268,5,28),
	(269,6,28),
	(270,3,28),
	(271,7,28),
	(272,9,28),
	(273,8,28),
	(274,1,28),
	(275,4,28),
	(276,2,29),
	(277,5,29),
	(279,7,29),
	(280,9,29),
	(281,8,29),
	(282,1,29),
	(283,4,29),
	(292,2,31),
	(293,5,31),
	(294,6,31),
	(295,3,31),
	(296,7,31),
	(297,9,31),
	(298,8,31),
	(299,1,31),
	(300,4,31),
	(301,2,32),
	(302,5,32),
	(303,6,32),
	(304,3,32),
	(305,7,32),
	(306,9,32),
	(307,8,32),
	(308,1,32),
	(309,4,32),
	(310,2,33),
	(311,5,33),
	(312,6,33),
	(313,3,33),
	(314,7,33),
	(315,9,33),
	(316,8,33),
	(317,1,33),
	(318,4,33),
	(319,2,34),
	(320,5,34),
	(321,6,34),
	(322,3,34),
	(323,7,34),
	(324,9,34),
	(325,8,34),
	(326,1,34),
	(327,4,34),
	(328,2,35),
	(329,5,35),
	(330,6,35),
	(331,3,35),
	(332,7,35),
	(333,9,35),
	(334,8,35),
	(335,1,35),
	(336,4,35),
	(337,2,36),
	(338,5,36),
	(339,6,36),
	(340,3,36),
	(341,7,36),
	(342,9,36),
	(343,8,36),
	(344,1,36),
	(345,4,36),
	(346,2,37),
	(347,5,37),
	(348,6,37),
	(349,3,37),
	(350,7,37),
	(351,9,37),
	(352,8,37),
	(353,1,37),
	(354,4,37),
	(355,2,38),
	(356,5,38),
	(357,6,38),
	(358,3,38),
	(359,7,38),
	(360,9,38),
	(361,8,38),
	(362,1,38),
	(363,4,38),
	(364,2,39),
	(365,5,39),
	(366,6,39),
	(367,3,39),
	(368,7,39),
	(369,9,39),
	(370,8,39),
	(371,1,39),
	(372,4,39),
	(373,3,29),
	(374,2,40),
	(375,5,40),
	(376,6,40),
	(377,3,40),
	(378,7,40),
	(379,9,40),
	(380,8,40),
	(381,1,40),
	(382,4,40),
	(383,2,41),
	(384,5,41),
	(385,6,41),
	(386,3,41),
	(387,7,41),
	(388,9,41),
	(389,8,41),
	(390,1,41),
	(391,4,41),
	(392,2,42),
	(393,5,42),
	(394,6,42),
	(395,3,42),
	(396,7,42),
	(397,9,42),
	(398,8,42),
	(399,1,42),
	(400,4,42),
	(401,2,43),
	(402,5,43),
	(403,6,43),
	(404,3,43),
	(405,7,43),
	(406,9,43),
	(407,8,43),
	(408,1,43),
	(409,4,43),
	(410,2,44),
	(411,5,44),
	(412,6,44),
	(413,3,44),
	(414,7,44),
	(415,9,44),
	(416,8,44),
	(417,1,44),
	(418,4,44),
	(419,2,45),
	(420,5,45),
	(421,6,45),
	(422,3,45),
	(423,7,45),
	(424,9,45),
	(425,8,45),
	(426,1,45),
	(427,4,45),
	(428,2,46),
	(429,5,46),
	(430,6,46),
	(431,3,46),
	(432,7,46),
	(433,9,46),
	(434,8,46),
	(435,1,46),
	(436,4,46),
	(437,2,47),
	(438,5,47),
	(439,6,47),
	(440,3,47),
	(441,7,47),
	(442,9,47),
	(443,8,47),
	(444,1,47),
	(445,4,47),
	(446,2,48),
	(447,5,48),
	(448,6,48),
	(449,3,48),
	(450,7,48),
	(451,9,48),
	(452,8,48),
	(453,1,48),
	(454,4,48),
	(455,2,49),
	(456,5,49),
	(457,6,49),
	(458,3,49),
	(459,7,49),
	(460,9,49),
	(461,8,49),
	(462,1,49),
	(463,4,49),
	(464,2,50),
	(465,5,50),
	(466,6,50),
	(467,3,50),
	(468,7,50),
	(469,9,50),
	(470,8,50),
	(471,1,50),
	(472,4,50),
	(473,2,51),
	(474,5,51),
	(475,6,51),
	(476,3,51),
	(477,7,51),
	(478,9,51),
	(479,8,51),
	(480,1,51),
	(481,4,51),
	(482,2,52),
	(483,5,52),
	(484,6,52),
	(485,3,52),
	(486,7,52),
	(487,9,52),
	(488,8,52),
	(489,1,52),
	(490,4,52),
	(491,2,53),
	(492,5,53),
	(493,6,53),
	(494,3,53),
	(495,7,53),
	(496,9,53),
	(497,8,53),
	(498,1,53),
	(499,4,53),
	(500,2,54),
	(501,5,54),
	(502,6,54),
	(503,3,54),
	(504,7,54),
	(505,9,54),
	(506,8,54),
	(507,1,54),
	(508,4,54),
	(509,2,55),
	(510,5,55),
	(511,6,55),
	(512,3,55),
	(513,7,55),
	(514,9,55),
	(515,8,55),
	(516,1,55),
	(517,4,55),
	(518,2,56),
	(519,5,56),
	(520,6,56),
	(521,3,56),
	(522,7,56),
	(523,9,56),
	(524,8,56),
	(525,1,56),
	(526,4,56),
	(527,2,57),
	(528,5,57),
	(529,6,57),
	(530,3,57),
	(531,7,57),
	(532,9,57),
	(533,8,57),
	(534,1,57),
	(535,4,57),
	(536,2,58),
	(537,5,58),
	(538,6,58),
	(539,3,58),
	(540,7,58),
	(541,9,58),
	(542,8,58),
	(543,1,58),
	(544,4,58),
	(545,2,59),
	(546,5,59),
	(547,6,59),
	(548,3,59),
	(549,7,59),
	(550,9,59),
	(551,8,59),
	(552,1,59),
	(553,4,59),
	(554,2,60),
	(555,5,60),
	(556,6,60),
	(557,3,60),
	(558,7,60),
	(559,9,60),
	(560,8,60),
	(561,1,60),
	(562,4,60),
	(563,2,61),
	(564,5,61),
	(565,6,61),
	(566,3,61),
	(567,7,61),
	(568,9,61),
	(569,8,61),
	(570,1,61),
	(571,4,61),
	(572,2,62),
	(573,5,62),
	(574,6,62),
	(575,3,62),
	(576,7,62),
	(577,9,62),
	(578,8,62),
	(579,1,62),
	(580,4,62),
	(581,2,63),
	(582,5,63),
	(583,6,63),
	(584,3,63),
	(585,7,63),
	(586,9,63),
	(587,8,63),
	(588,1,63),
	(589,4,63),
	(590,2,64),
	(591,5,64),
	(592,6,64),
	(593,3,64),
	(594,7,64),
	(595,9,64),
	(596,8,64),
	(597,1,64),
	(598,4,64),
	(599,2,65),
	(600,5,65),
	(601,6,65),
	(602,3,65),
	(603,7,65),
	(604,9,65),
	(605,8,65),
	(606,1,65),
	(607,4,65),
	(608,2,66),
	(609,5,66),
	(610,6,66),
	(611,3,66),
	(612,7,66),
	(613,9,66),
	(614,8,66),
	(615,1,66),
	(616,4,66),
	(617,2,67),
	(618,5,67),
	(619,6,67),
	(620,3,67),
	(621,7,67),
	(622,9,67),
	(623,8,67),
	(624,1,67),
	(625,4,67),
	(626,2,68),
	(627,5,68),
	(628,6,68),
	(629,3,68),
	(630,7,68),
	(631,9,68),
	(632,8,68),
	(633,1,68),
	(634,4,68),
	(635,2,69),
	(636,5,69),
	(637,6,69),
	(638,3,69),
	(639,7,69),
	(640,9,69),
	(641,8,69),
	(642,1,69),
	(643,4,69),
	(644,2,70),
	(645,5,70),
	(646,6,70),
	(647,3,70),
	(648,7,70),
	(649,9,70),
	(650,8,70),
	(651,1,70),
	(652,4,70),
	(653,2,71),
	(654,5,71),
	(655,6,71),
	(656,3,71),
	(657,7,71),
	(658,9,71),
	(659,8,71),
	(660,1,71),
	(661,4,71),
	(662,2,72),
	(663,5,72),
	(664,6,72),
	(665,3,72),
	(666,7,72),
	(667,9,72),
	(668,8,72),
	(669,1,72),
	(670,4,72),
	(671,2,73),
	(672,5,73),
	(673,6,73),
	(674,3,73),
	(675,7,73),
	(676,9,73),
	(677,8,73),
	(678,1,73),
	(679,4,73),
	(680,2,74),
	(681,5,74),
	(682,6,74),
	(683,3,74),
	(684,7,74),
	(685,9,74),
	(686,8,74),
	(687,1,74),
	(688,4,74),
	(689,2,75),
	(690,5,75),
	(691,6,75),
	(692,3,75),
	(693,7,75),
	(694,9,75),
	(695,8,75),
	(696,1,75),
	(697,4,75),
	(698,2,76),
	(699,5,76),
	(700,6,76),
	(701,3,76),
	(702,7,76),
	(703,9,76),
	(704,8,76),
	(705,1,76),
	(706,4,76),
	(707,2,77),
	(708,5,77),
	(709,6,77),
	(710,3,77),
	(711,7,77),
	(712,9,77),
	(713,8,77),
	(714,1,77),
	(715,4,77),
	(716,2,78),
	(717,5,78),
	(718,6,78),
	(719,3,78),
	(720,7,78),
	(721,9,78),
	(722,8,78),
	(723,1,78),
	(724,4,78),
	(725,2,79),
	(726,5,79),
	(727,6,79),
	(728,3,79),
	(729,7,79),
	(730,9,79),
	(731,8,79),
	(732,1,79),
	(733,4,79),
	(734,2,80),
	(735,5,80),
	(736,6,80),
	(737,3,80),
	(738,7,80),
	(739,9,80),
	(740,8,80),
	(741,1,80),
	(742,4,80),
	(743,2,81),
	(744,5,81),
	(745,6,81),
	(746,3,81),
	(747,7,81),
	(748,9,81),
	(749,8,81),
	(750,1,81),
	(751,4,81),
	(761,2,83),
	(762,5,83),
	(763,6,83),
	(764,3,83),
	(765,7,83),
	(766,9,83),
	(767,8,83),
	(768,1,83),
	(769,4,83),
	(770,2,84),
	(771,5,84),
	(772,6,84),
	(773,3,84),
	(774,7,84),
	(775,9,84),
	(776,8,84),
	(777,1,84),
	(778,4,84),
	(779,2,85),
	(780,5,85),
	(781,6,85),
	(782,3,85),
	(783,7,85),
	(784,9,85),
	(785,8,85),
	(786,1,85),
	(787,4,85),
	(788,2,86),
	(789,5,86),
	(790,6,86),
	(791,3,86),
	(792,7,86),
	(793,9,86),
	(794,8,86),
	(795,1,86),
	(796,4,86),
	(797,2,87),
	(798,5,87),
	(799,6,87),
	(800,3,87),
	(801,7,87),
	(802,9,87),
	(803,8,87),
	(804,1,87),
	(805,4,87),
	(806,2,88),
	(807,5,88),
	(808,6,88),
	(809,3,88),
	(810,7,88),
	(811,9,88),
	(812,8,88),
	(813,1,88),
	(814,4,88),
	(815,2,89),
	(816,5,89),
	(817,6,89),
	(818,3,89),
	(819,7,89),
	(820,9,89),
	(821,8,89),
	(822,1,89),
	(823,4,89),
	(824,2,90),
	(825,5,90),
	(826,6,90),
	(827,3,90),
	(828,7,90),
	(829,9,90),
	(830,8,90),
	(831,1,90),
	(832,4,90),
	(833,2,91),
	(834,5,91),
	(835,6,91),
	(836,3,91),
	(837,7,91),
	(838,9,91),
	(839,8,91),
	(840,1,91),
	(841,4,91),
	(842,2,92),
	(843,5,92),
	(844,6,92),
	(845,3,92),
	(846,7,92),
	(847,9,92),
	(848,8,92),
	(849,1,92),
	(850,4,92),
	(851,2,93),
	(852,5,93),
	(853,6,93),
	(854,3,93),
	(855,7,93),
	(856,9,93),
	(857,8,93),
	(858,1,93),
	(859,4,93),
	(860,2,94),
	(861,5,94),
	(862,6,94),
	(863,3,94),
	(864,7,94),
	(865,9,94),
	(866,8,94),
	(867,1,94),
	(868,4,94),
	(869,2,95),
	(870,5,95),
	(871,6,95),
	(872,3,95),
	(873,7,95),
	(874,9,95),
	(875,8,95),
	(876,1,95),
	(877,4,95),
	(878,2,96),
	(879,5,96),
	(880,6,96),
	(881,3,96),
	(882,7,96),
	(883,9,96),
	(884,8,96),
	(885,1,96),
	(886,4,96),
	(887,2,97),
	(888,5,97),
	(889,6,97),
	(890,3,97),
	(891,7,97),
	(892,9,97),
	(893,8,97),
	(894,1,97),
	(895,4,97),
	(896,2,98),
	(897,5,98),
	(898,6,98),
	(899,3,98),
	(900,7,98),
	(901,9,98),
	(902,8,98),
	(903,1,98),
	(904,4,98),
	(905,2,99),
	(906,5,99),
	(907,6,99),
	(908,3,99),
	(909,7,99),
	(910,9,99),
	(911,8,99),
	(912,1,99),
	(913,4,99),
	(914,2,100),
	(915,5,100),
	(916,6,100),
	(917,3,100),
	(918,7,100),
	(919,9,100),
	(920,8,100),
	(921,1,100),
	(922,4,100),
	(923,2,101),
	(924,5,101),
	(925,6,101),
	(926,3,101),
	(927,7,101),
	(928,9,101),
	(929,8,101),
	(930,1,101),
	(931,4,101),
	(932,2,102),
	(933,5,102),
	(934,6,102),
	(935,3,102),
	(936,7,102),
	(937,9,102),
	(938,8,102),
	(939,1,102),
	(940,4,102),
	(941,2,103),
	(942,5,103),
	(943,6,103),
	(944,3,103),
	(945,7,103),
	(946,9,103),
	(947,8,103),
	(948,1,103),
	(949,4,103),
	(950,2,104),
	(951,5,104),
	(952,6,104),
	(953,3,104),
	(954,7,104),
	(955,9,104),
	(956,8,104),
	(957,1,104),
	(958,4,104),
	(959,2,105),
	(960,5,105),
	(961,6,105),
	(962,3,105),
	(963,7,105),
	(964,9,105),
	(965,8,105),
	(966,1,105),
	(967,4,105),
	(968,2,106),
	(969,5,106),
	(970,6,106),
	(971,3,106),
	(972,7,106),
	(973,9,106),
	(974,8,106),
	(975,1,106),
	(976,4,106),
	(977,2,107),
	(978,5,107),
	(979,6,107),
	(980,3,107),
	(981,7,107),
	(982,9,107),
	(983,8,107),
	(984,1,107),
	(985,4,107),
	(986,2,108),
	(987,5,108),
	(988,6,108),
	(989,3,108),
	(990,7,108),
	(991,9,108),
	(992,8,108),
	(993,1,108),
	(994,4,108),
	(995,2,109),
	(996,5,109),
	(998,3,109),
	(999,7,109),
	(1000,9,109),
	(1001,8,109),
	(1002,1,109),
	(1003,4,109),
	(1004,2,110),
	(1005,5,110),
	(1006,3,110),
	(1007,7,110),
	(1008,9,110),
	(1009,8,110),
	(1010,1,110),
	(1011,4,110),
	(1012,2,111),
	(1013,5,111),
	(1014,3,111),
	(1015,7,111),
	(1016,9,111),
	(1017,8,111),
	(1018,1,111),
	(1019,4,111),
	(1020,2,112),
	(1021,5,112),
	(1022,6,112),
	(1023,3,112),
	(1024,7,112),
	(1025,9,112),
	(1026,8,112),
	(1027,1,112),
	(1028,4,112),
	(1029,2,113),
	(1030,5,113),
	(1031,6,113),
	(1032,3,113),
	(1033,7,113),
	(1034,9,113),
	(1035,8,113),
	(1036,1,113),
	(1037,4,113),
	(1038,2,114),
	(1039,5,114),
	(1040,6,114),
	(1041,3,114),
	(1042,7,114),
	(1043,9,114),
	(1044,8,114),
	(1045,1,114),
	(1046,4,114),
	(1047,2,115),
	(1048,5,115),
	(1049,6,115),
	(1050,3,115),
	(1051,7,115),
	(1052,9,115),
	(1053,8,115),
	(1054,1,115),
	(1055,4,115),
	(1056,2,116),
	(1057,5,116),
	(1058,6,116),
	(1059,3,116),
	(1060,7,116),
	(1061,9,116),
	(1062,8,116),
	(1063,1,116),
	(1064,4,116),
	(1065,2,117),
	(1066,5,117),
	(1067,6,117),
	(1068,3,117),
	(1069,7,117),
	(1070,9,117),
	(1071,8,117),
	(1072,1,117),
	(1073,4,117),
	(1074,2,118),
	(1075,5,118),
	(1076,6,118),
	(1077,3,118),
	(1078,7,118),
	(1079,9,118),
	(1080,8,118),
	(1081,1,118),
	(1082,4,118),
	(1083,2,119),
	(1084,5,119),
	(1085,6,119),
	(1086,3,119),
	(1087,7,119),
	(1088,9,119),
	(1089,8,119),
	(1090,1,119),
	(1091,4,119),
	(1092,6,109),
	(1093,6,110),
	(1094,6,111),
	(1095,2,120),
	(1096,5,120),
	(1097,6,120),
	(1098,3,120),
	(1099,7,120),
	(1100,9,120),
	(1101,8,120),
	(1102,1,120),
	(1103,4,120),
	(1104,2,121),
	(1105,5,121),
	(1106,6,121),
	(1107,3,121),
	(1108,7,121),
	(1109,9,121),
	(1110,8,121),
	(1111,1,121),
	(1112,4,121),
	(1113,2,122),
	(1114,5,122),
	(1115,6,122),
	(1116,3,122),
	(1117,7,122),
	(1118,9,122),
	(1119,8,122),
	(1120,1,122),
	(1121,4,122),
	(1122,2,123),
	(1123,5,123),
	(1124,6,123),
	(1125,3,123),
	(1126,7,123),
	(1127,9,123),
	(1128,8,123),
	(1129,1,123),
	(1130,4,123),
	(1131,2,124),
	(1132,5,124),
	(1133,6,124),
	(1134,3,124),
	(1135,7,124),
	(1136,9,124),
	(1137,8,124),
	(1138,1,124),
	(1139,4,124),
	(1140,2,125),
	(1141,5,125),
	(1142,6,125),
	(1143,3,125),
	(1144,7,125),
	(1145,9,125),
	(1146,8,125),
	(1147,1,125),
	(1148,4,125),
	(1149,2,126),
	(1150,5,126),
	(1151,6,126),
	(1152,3,126),
	(1153,7,126),
	(1154,9,126),
	(1155,8,126),
	(1156,1,126),
	(1157,4,126),
	(1158,2,127),
	(1159,5,127),
	(1160,6,127),
	(1161,3,127),
	(1162,7,127),
	(1163,9,127),
	(1164,8,127),
	(1165,1,127),
	(1166,4,127),
	(1167,2,128),
	(1168,5,128),
	(1169,6,128),
	(1170,3,128),
	(1171,7,128),
	(1172,9,128),
	(1173,8,128),
	(1174,1,128),
	(1175,4,128),
	(1176,2,129),
	(1177,5,129),
	(1178,6,129),
	(1179,3,129),
	(1180,7,129),
	(1181,9,129),
	(1182,8,129),
	(1183,1,129),
	(1184,4,129),
	(1185,2,130),
	(1186,5,130),
	(1187,6,130),
	(1188,3,130),
	(1189,7,130),
	(1190,9,130),
	(1191,8,130),
	(1192,1,130),
	(1193,4,130),
	(1194,2,131),
	(1195,5,131),
	(1196,6,131),
	(1197,3,131),
	(1198,7,131),
	(1199,9,131),
	(1200,8,131),
	(1201,1,131),
	(1202,4,131),
	(1203,2,132),
	(1204,5,132),
	(1206,3,132),
	(1207,7,132),
	(1208,9,132),
	(1209,8,132),
	(1210,1,132),
	(1211,4,132),
	(1212,2,133),
	(1213,5,133),
	(1214,3,133),
	(1215,7,133),
	(1216,8,133),
	(1217,1,133),
	(1218,2,134),
	(1219,5,134),
	(1220,6,134),
	(1221,3,134),
	(1222,7,134),
	(1223,9,134),
	(1224,8,134),
	(1225,1,134),
	(1226,4,134),
	(1227,2,135),
	(1228,5,135),
	(1229,6,135),
	(1230,3,135),
	(1231,7,135),
	(1232,9,135),
	(1233,8,135),
	(1234,1,135),
	(1235,4,135),
	(1236,2,136),
	(1237,5,136),
	(1238,6,136),
	(1239,3,136),
	(1240,7,136),
	(1241,9,136),
	(1242,8,136),
	(1243,1,136),
	(1244,4,136),
	(1245,2,137),
	(1246,5,137),
	(1247,6,137),
	(1248,3,137),
	(1249,7,137),
	(1250,9,137),
	(1251,8,137),
	(1252,1,137),
	(1253,4,137),
	(1254,2,138),
	(1255,5,138),
	(1256,6,138),
	(1257,3,138),
	(1258,7,138),
	(1259,9,138),
	(1260,8,138),
	(1261,1,138),
	(1262,4,138),
	(1263,2,139),
	(1264,5,139),
	(1265,6,139),
	(1266,3,139),
	(1267,7,139),
	(1268,9,139),
	(1269,8,139),
	(1270,1,139),
	(1271,4,139),
	(1272,2,140),
	(1273,5,140),
	(1274,6,140),
	(1275,3,140),
	(1276,7,140),
	(1277,9,140),
	(1278,8,140),
	(1279,1,140),
	(1280,4,140),
	(1281,2,141),
	(1282,5,141),
	(1283,6,141),
	(1284,3,141),
	(1285,7,141),
	(1286,9,141),
	(1287,8,141),
	(1288,1,141),
	(1289,4,141),
	(1290,2,142),
	(1291,5,142),
	(1292,6,142),
	(1293,3,142),
	(1294,7,142),
	(1295,9,142),
	(1296,8,142),
	(1297,1,142),
	(1298,4,142),
	(1301,11,133),
	(1311,6,132),
	(1312,6,133),
	(1313,2,143),
	(1314,5,143),
	(1315,6,143),
	(1316,3,143),
	(1317,7,143),
	(1318,9,143),
	(1319,8,143),
	(1320,1,143),
	(1321,4,143),
	(1322,2,144),
	(1323,5,144),
	(1324,6,144),
	(1325,3,144),
	(1326,7,144),
	(1327,9,144),
	(1328,8,144),
	(1329,1,144),
	(1330,4,144),
	(1331,2,145),
	(1332,5,145),
	(1333,6,145),
	(1334,3,145),
	(1335,7,145),
	(1336,9,145),
	(1337,8,145),
	(1338,1,145),
	(1339,4,145),
	(1340,2,146),
	(1341,5,146),
	(1342,6,146),
	(1343,3,146),
	(1344,7,146),
	(1345,9,146),
	(1346,8,146),
	(1347,1,146),
	(1348,4,146),
	(1349,2,147),
	(1350,5,147),
	(1351,6,147),
	(1352,3,147),
	(1353,7,147),
	(1354,9,147),
	(1355,8,147),
	(1356,1,147),
	(1357,4,147),
	(1358,2,148),
	(1359,5,148),
	(1360,6,148),
	(1361,3,148),
	(1362,7,148),
	(1363,9,148),
	(1364,8,148),
	(1365,1,148),
	(1366,4,148),
	(1367,2,149),
	(1368,5,149),
	(1369,6,149),
	(1370,3,149),
	(1371,7,149),
	(1372,9,149),
	(1373,8,149),
	(1374,1,149),
	(1375,4,149),
	(1376,2,150),
	(1377,5,150),
	(1378,6,150),
	(1379,3,150),
	(1380,7,150),
	(1381,9,150),
	(1382,8,150),
	(1383,1,150),
	(1384,4,150),
	(1385,2,151),
	(1386,5,151),
	(1387,6,151),
	(1388,3,151),
	(1389,7,151),
	(1390,9,151),
	(1391,8,151),
	(1392,1,151),
	(1393,4,151),
	(1394,2,152),
	(1395,5,152),
	(1396,6,152),
	(1397,3,152),
	(1398,7,152),
	(1399,9,152),
	(1400,8,152),
	(1401,1,152),
	(1402,4,152),
	(1403,2,153),
	(1404,5,153),
	(1405,6,153),
	(1406,3,153),
	(1407,7,153),
	(1408,9,153),
	(1409,8,153),
	(1410,1,153),
	(1411,4,153),
	(1412,2,154),
	(1413,5,154),
	(1414,6,154),
	(1415,3,154),
	(1416,7,154),
	(1417,9,154),
	(1418,8,154),
	(1419,1,154),
	(1420,4,154),
	(1421,2,155),
	(1422,5,155),
	(1423,6,155),
	(1424,3,155),
	(1425,7,155),
	(1426,9,155),
	(1427,8,155),
	(1428,1,155),
	(1429,4,155),
	(1430,2,156),
	(1431,5,156),
	(1432,6,156),
	(1433,3,156),
	(1434,7,156),
	(1435,9,156),
	(1436,8,156),
	(1437,1,156),
	(1438,4,156),
	(1439,2,157),
	(1440,5,157),
	(1441,6,157),
	(1442,3,157),
	(1443,7,157),
	(1444,9,157),
	(1445,8,157),
	(1446,1,157),
	(1447,4,157),
	(1448,2,158),
	(1449,5,158),
	(1450,6,158),
	(1451,3,158),
	(1452,7,158),
	(1453,9,158),
	(1454,8,158),
	(1455,1,158),
	(1456,4,158),
	(1457,2,159),
	(1458,5,159),
	(1460,3,159),
	(1461,7,159),
	(1462,9,159),
	(1463,8,159),
	(1464,1,159),
	(1465,4,159),
	(1466,2,160),
	(1467,5,160),
	(1469,3,160),
	(1470,7,160),
	(1471,9,160),
	(1472,8,160),
	(1473,1,160),
	(1474,4,160),
	(1484,2,162),
	(1485,5,162),
	(1487,3,162),
	(1488,7,162),
	(1489,9,162),
	(1490,8,162),
	(1491,1,162),
	(1492,4,162),
	(1493,2,163),
	(1494,5,163),
	(1495,6,163),
	(1496,3,163),
	(1497,7,163),
	(1498,9,163),
	(1499,8,163),
	(1500,1,163),
	(1501,4,163),
	(1502,2,164),
	(1503,5,164),
	(1504,6,164),
	(1505,3,164),
	(1506,7,164),
	(1508,8,164),
	(1509,1,164),
	(1510,4,164),
	(1511,2,165),
	(1512,5,165),
	(1513,6,165),
	(1514,3,165),
	(1515,7,165),
	(1516,9,165),
	(1517,8,165),
	(1518,1,165),
	(1519,4,165),
	(1520,2,166),
	(1521,5,166),
	(1522,6,166),
	(1523,3,166),
	(1524,7,166),
	(1525,9,166),
	(1526,8,166),
	(1527,1,166),
	(1528,4,166),
	(1529,2,167),
	(1530,5,167),
	(1531,6,167),
	(1532,3,167),
	(1533,7,167),
	(1534,9,167),
	(1535,8,167),
	(1536,1,167),
	(1537,4,167),
	(1547,2,169),
	(1548,5,169),
	(1549,6,169),
	(1550,3,169),
	(1551,7,169),
	(1552,9,169),
	(1553,8,169),
	(1554,1,169),
	(1555,4,169),
	(1556,2,170),
	(1557,5,170),
	(1558,6,170),
	(1559,3,170),
	(1560,7,170),
	(1561,9,170),
	(1562,8,170),
	(1563,1,170),
	(1564,4,170),
	(1565,2,171),
	(1566,5,171),
	(1567,6,171),
	(1568,3,171),
	(1569,7,171),
	(1570,9,171),
	(1571,8,171),
	(1572,1,171),
	(1573,4,171),
	(1574,2,172),
	(1575,5,172),
	(1576,6,172),
	(1577,3,172),
	(1578,7,172),
	(1579,9,172),
	(1580,8,172),
	(1581,1,172),
	(1582,4,172),
	(1583,2,173),
	(1584,5,173),
	(1585,6,173),
	(1586,3,173),
	(1587,7,173),
	(1588,9,173),
	(1589,8,173),
	(1590,1,173),
	(1591,4,173),
	(1592,2,174),
	(1593,5,174),
	(1594,6,174),
	(1595,3,174),
	(1596,7,174),
	(1597,9,174),
	(1598,8,174),
	(1599,1,174),
	(1600,4,174),
	(1601,2,175),
	(1602,5,175),
	(1603,6,175),
	(1604,3,175),
	(1605,7,175),
	(1606,9,175),
	(1607,8,175),
	(1608,1,175),
	(1609,4,175),
	(1610,2,176),
	(1611,5,176),
	(1612,6,176),
	(1613,3,176),
	(1614,7,176),
	(1615,9,176),
	(1616,8,176),
	(1617,1,176),
	(1618,4,176),
	(1619,2,177),
	(1620,5,177),
	(1621,6,177),
	(1622,3,177),
	(1623,7,177),
	(1624,9,177),
	(1625,8,177),
	(1626,1,177),
	(1627,4,177),
	(1628,2,178),
	(1629,5,178),
	(1630,6,178),
	(1631,3,178),
	(1632,7,178),
	(1633,9,178),
	(1634,8,178),
	(1635,1,178),
	(1636,4,178),
	(1637,2,179),
	(1638,5,179),
	(1639,6,179),
	(1640,3,179),
	(1641,7,179),
	(1642,9,179),
	(1643,8,179),
	(1644,1,179),
	(1645,4,179),
	(1646,2,180),
	(1647,5,180),
	(1648,6,180),
	(1649,3,180),
	(1650,7,180),
	(1651,9,180),
	(1652,8,180),
	(1653,1,180),
	(1654,4,180),
	(1655,2,181),
	(1656,5,181),
	(1657,6,181),
	(1658,3,181),
	(1659,7,181),
	(1660,9,181),
	(1661,8,181),
	(1662,1,181),
	(1663,4,181),
	(1664,2,182),
	(1665,5,182),
	(1666,6,182),
	(1667,3,182),
	(1668,7,182),
	(1669,9,182),
	(1670,8,182),
	(1671,1,182),
	(1672,4,182),
	(1673,2,183),
	(1674,5,183),
	(1675,6,183),
	(1676,3,183),
	(1677,7,183),
	(1678,9,183),
	(1679,8,183),
	(1680,1,183),
	(1681,4,183),
	(1682,2,184),
	(1683,5,184),
	(1684,6,184),
	(1685,3,184),
	(1686,7,184),
	(1687,9,184),
	(1688,8,184),
	(1689,1,184),
	(1690,4,184);

/*!40000 ALTER TABLE `project_department_pickupdates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_department_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_department_products`;

CREATE TABLE `project_department_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `project_department_products_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `project_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_department_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `project_department_products` WRITE;
/*!40000 ALTER TABLE `project_department_products` DISABLE KEYS */;

INSERT INTO `project_department_products` (`id`, `department_id`, `product_id`)
VALUES
	(1,2,272),
	(2,5,272),
	(3,6,272),
	(4,3,272),
	(5,7,272),
	(6,9,272),
	(7,8,272),
	(8,1,272),
	(9,4,272),
	(10,2,273),
	(11,5,273),
	(12,6,273),
	(13,3,273),
	(14,7,273),
	(15,9,273),
	(16,8,273),
	(17,1,273),
	(18,4,273),
	(19,2,274),
	(20,5,274),
	(21,6,274),
	(22,3,274),
	(23,7,274),
	(24,9,274),
	(25,8,274),
	(26,1,274),
	(27,4,274),
	(28,2,275),
	(29,5,275),
	(30,6,275),
	(31,3,275),
	(32,7,275),
	(33,9,275),
	(34,8,275),
	(35,1,275),
	(36,4,275),
	(37,2,276),
	(38,5,276),
	(39,6,276),
	(40,3,276),
	(41,7,276),
	(42,9,276),
	(43,8,276),
	(44,1,276),
	(45,4,276),
	(46,2,277),
	(47,5,277),
	(48,6,277),
	(49,3,277),
	(50,7,277),
	(51,9,277),
	(52,8,277),
	(53,1,277),
	(54,4,277),
	(55,2,278),
	(56,5,278),
	(57,6,278),
	(58,3,278),
	(59,7,278),
	(60,9,278),
	(61,8,278),
	(62,1,278),
	(63,4,278),
	(332,2,475),
	(333,5,475),
	(334,6,475),
	(335,3,475),
	(336,7,475),
	(337,9,475),
	(338,8,475),
	(339,1,475),
	(340,4,475),
	(341,2,476),
	(342,5,476),
	(343,6,476),
	(344,3,476),
	(345,7,476),
	(346,9,476),
	(347,8,476),
	(348,1,476),
	(349,4,476),
	(638,2,595),
	(639,5,595),
	(640,6,595),
	(641,3,595),
	(642,7,595),
	(643,9,595),
	(644,8,595),
	(645,1,595),
	(646,4,595),
	(782,11,275),
	(793,11,276),
	(807,11,274),
	(822,11,277),
	(825,11,595),
	(837,11,278),
	(840,11,273),
	(841,11,475),
	(853,11,476),
	(865,11,272),
	(906,2,655),
	(907,11,655),
	(908,5,655),
	(909,6,655),
	(910,3,655),
	(911,7,655),
	(912,9,655),
	(913,8,655),
	(914,1,655),
	(915,4,655),
	(1016,2,686),
	(1017,11,686),
	(1018,5,686),
	(1019,6,686),
	(1020,3,686),
	(1021,7,686),
	(1022,9,686),
	(1023,8,686),
	(1024,1,686),
	(1025,4,686),
	(1176,2,739),
	(1177,11,739),
	(1178,5,739),
	(1179,6,739),
	(1180,3,739),
	(1181,7,739),
	(1182,9,739),
	(1183,8,739),
	(1184,1,739),
	(1185,4,739),
	(1236,2,750),
	(1237,11,750),
	(1238,5,750),
	(1239,6,750),
	(1240,3,750),
	(1241,7,750),
	(1242,9,750),
	(1243,8,750),
	(1244,1,750),
	(1245,4,750);

/*!40000 ALTER TABLE `project_department_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_departments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_departments`;

CREATE TABLE `project_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `abbreviation` varchar(3) NOT NULL,
  `address1` varchar(50) NOT NULL DEFAULT '',
  `address2` text NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `postal` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `opening_hours` text NOT NULL DEFAULT '',
  `mobilepay_id` varchar(50) DEFAULT NULL,
  `accepts_signup` int(1) NOT NULL DEFAULT 1,
  `geolocation` varchar(255) NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `description` text NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `project_departments` WRITE;
/*!40000 ALTER TABLE `project_departments` DISABLE KEYS */;

INSERT INTO `project_departments` (`id`, `name`, `abbreviation`, `address1`, `address2`, `city`, `postal`, `email`, `opening_hours`, `mobilepay_id`, `accepts_signup`, `geolocation`, `latitude`, `longitude`, `description`, `html`)
VALUES
	(1,'Vesterbro','VES','Staldgade 10','','København V','1715','vesterbro@kbhff.dk','Onsdage, 17:00-19:00 // Wednesday, 17:00-19:00','93362',1,'Kitchen collective',55.676098,12.568337,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Vesterbro</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Vesterbro er et lokalt cooperative community, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Vesterbro.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Vesterbro</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/1160722373952510/?hoisted_section_header_type=recently_seen&amp;multi_permalinks=8524432577581416\" target=\"_blank\">På vores Facebook-gruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt på et par timer én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Vesterbro her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til vesterbro@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />butiksgruppen, Vesterbro</p>\r\n<h2>Welcome to KBHFF Vesterbro</h2>\r\n<p><em>English version</em></p>\r\n<p>The Vesterbro branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Vesterbro.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Vesterbro</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/1160722373952510/?hoisted_section_header_type=recently_seen&amp;multi_permalinks=8524432577581416\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Vesterbro here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at vesterbro@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Store Group, Vesterbro</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/1432176\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;</p>'),
	(2,'Amager','AMA','C/O Foreningshuset','Sundholmsvej 8','København S','2300','amager@kbhff.dk','Onsdage, 16:00-19:00 // Wednesday, 16:00-19:00','26027',1,'Sundholmsvej 8',55.66122,12.5969,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Amager</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Amager er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Amager.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Amager</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/607257685954953\" target=\"_blank\">På vores facebookgruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Amager her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til amager@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />Butiksgruppen, Amager</p>\r\n<h2>Welcome to KBHFF Amager</h2>\r\n<p><em>English version</em></p>\r\n<p>The Amager branch of Københavns Fødevarefællesskab is a local action community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Amager.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community&nbsp; Amager</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/607257685954953\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being an cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Amager here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at amager@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Store Group, Amager</p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/561778\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her</a></p>\r\n<p><a href=\"https://www.findsmiley.dk/561778\" target=\"_blank\">Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>'),
	(3,'Nørrebro','NB','C/O Kafax','Korsgade 19','København N','2200','norrebro@kbhff.dk','Onsdage, 16:00-18:00 // Wednesday, 16:00-18:00','84267',1,'Korsgade 19',55.6853468,12.5571472,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Nørrebro</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Nørrebro er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Nørrebro.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Nørrebro</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/237671016286108/\" target=\"_blank\">På vores facebookgruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Nørrebro her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til noerrebro@kbhff.dk.<br /><br />Venlig hilsen<br />Butiksgruppen, Nørrebro</p>\r\n<h2>Welcome to KBHFF Nørrebro</h2>\r\n<p><em>English version</em></p>\r\n<p>The Nørrebro branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Nørrebro.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community  Amager</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/237671016286108/\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being an cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Nørrebro here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at noerrebro@kbhff.dk.<br /><br />Kind regards,<br />The Store Group, Nørrebro</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/549806\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>'),
	(4,'Østerbro','OB','C/O Randersgade skole, Randersgade 38','I skolekøkkenet - adgang via Løgstørgade','København Ø','2100','osterbro@kbhff.dk','Onsdage, 16:30-18:30 // Wednesday, 16:30-18:30','70495',1,'Løgstørgade',55.705596,12.581535,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Østerbro</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Østerbro er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Østerbro.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Østerbro</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt på et par timer én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Østerbro her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til oesterbro@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />Butiksgruppen, Østerbro</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<h2>Welcome to KBHFF Østerbro</h2>\r\n<p><em>English version</em></p>\r\n<p>The Østerbro branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Østerbro.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community on Østerbro</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Østerbro here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at oesterbro@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Local Board, Østerbro</p>\r\n<p><a href=\"https://www.findsmiley.dk/1207477\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>'),
	(5,'Frederiksberg','FRB','C/O Det Bæredygtige Forsamlingshus','Stockflethsvej 2','Frederiksberg','2000','frederiksberg@kbhff.dk','Onsdage, 16:00-18:00 // Wednesday, 16:00-18:00','90569',1,'Stockflethsvej 2',55.6857,12.5196,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Frederiksberg</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Frederiksberg er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Frederiksberg.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Frederiksberg</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/105783246269986\" target=\"_blank\">På vores facebookgruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/\" target=\"_blank\">Bliv medlem af KBHFF Frederiksberg her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til frederiksberg@kbhff.dk.<br /><br />Venlig hilsen<br />Butiksgruppen, Frederiksberg</p>\r\n<h2>Welcome to KBHFF Frederiksberg</h2>\r\n<p><em>English version</em></p>\r\n<p>The Frederiksberg branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Frederiksberg.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Frederiksberg</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/105783246269986\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Frederiksberg here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at frederiksberg@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Store Group, Frederiksberg</p>\r\n<p><a href=\"https://www.findsmiley.dk/1457731\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>'),
	(6,'Nordvest','NV','Cafeen Flok, Biblioteket Rentemestervej','Rentemestervej 76','København NV','2400','nordvest@kbhff.dk','Onsdage, 16:00-18:30 // Wednesday, 16:00-18:30','36530',1,'Rentemestervej 76',55.708412,12.522916,'','<p><em>English below</em></p>\r\n<h2>Velkommen til KBHFF Nordvest</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling i Nordvest er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling i Nordvest.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab i Nordvest</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/330519240315505\" target=\"_blank\">På vores facebookgruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Nordvest her</a></h2>\r\n<p>Du er altid velkommen til at komme forbi om onsdagen, når vi uddeler grøntsager, for at høre mere om foreningen, eller sende os en mail med dine spørgsmål til nordvest@kbhff.dk.<br /><br />Venlig hilsen<br />Butiksgruppen, Nordvest</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h2>Welcome to KBHFF Nordvest</h2>\r\n<p>The Nordvest branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Nordvest.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Nordvest</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/330519240315505\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/afdelinger/Nordvest\" target=\"_blank\">Become a member of KBHFF Nordvest here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays when we distribute vegetables to learn more about the association or send us an email with your questions at nordvest@kbhff.dk.<br /><br />Kind regards,<br />The Store Group, Nordvest</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/549810\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>'),
	(7,'Sydhavnen','SYD','C/O Karens Minde','Wagnersvej 19','København SV','2450','sydhavnen@kbhff.dk','Onsdage, 17:00-19:00 // Wednesday, 17:00-19:00','78679',1,'Wagnersvej 19',55.64682,12.52963,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Sydhavnen</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling i Sydhavnen er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling i Sydhavnen, der holder til i Rytterstuen bagved Karens Minde Kulturhus.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab i Sydhavnen</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet og de skønne omgivelser omkring Karens Minde, er med til at skabe en hyggelig og uformel stemning.</p>\r\n<p>På <a href=\"https://www.facebook.com/groups/kbhsvmedlem/\" target=\"_blank\">vores facebookgruppe</a> annoncerer vi aktuelle arrangementer, nyheder mm.</p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Sydhavnen her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til sydhavnen@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />Butiksgruppen,<br />Anna, Linda, Lisbeth &amp; Bettina</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<h2>Welcome to Sydhavnen</h2>\r\n<p><em>English version</em></p>\r\n<p>The Sydhavn branch of Københavns Fødevarefællesskab is a local cooperative, were we collaborate to provide our members with delicious, locally produced organic and biodynamic food. Every Wednesday, members pick up pre-ordered vegetables, fruits, mushrooms, flour, and much more at our cozy branch in Sydhavn, located in the Rytterstuen behind Karens Minde Kulturhus.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Sydhavnen</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic and biodynamic foods, support the local community, and celebrate the beautiful surroundings around Karens Minde, helping to create a warm and informal atmosphere.</p>\r\n<p><a href=\"https://www.facebook.com/groups/kbhsvmedlem/\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Sydhavnen here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at sydhavnen@kbhff.dk.</p>\r\n<p>Best regards<br />the local board,<br />Anna, Linda, Lisbeth &amp; Bettina</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/549823\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>'),
	(8,'Vanløse','VAN','C/O Hus Forbi','Jernbane Allé 68, baghuset th.','Vanløse','2720','vanlose@kbhff.dk','Onsdage, 16:00-18:00 // Wednesday, 16:00-18:00','94161',1,'Jernbane Allé 68',55.68967,12.48887,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Vanløse</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling i Vanløse er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling i Vanløse.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab i Vanløse</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/groups/850931281692157/\" target=\"_blank\">På vores facebookgruppe annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Vanløse her</a></h2>\r\n<p>Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til vanlose@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />Butiksgruppen, Vanløse</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<h2>Welcome to KBHFF Vanløse</h2>\r\n<p><em>English version</em></p>\r\n<p>The Vanløse branch of Københavns Fødevarefællesskab is a local cooperative community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Vanløse.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Vanløse</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a href=\"https://www.facebook.com/groups/850931281692157\" target=\"_blank\">On our Facebook group, we announce current events, news, and more.</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Vanløse here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at vanlose@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Local board, Vanløse</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/1457732\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>\r\n<p>&nbsp; &nbsp;</p>'),
	(9,'Valby','VAL','Hotel- og Restaurantskolen','Vigerslev Allé 18','Valby','2500','valby@kbhff.dk','Onsdage, 16:00-18:00 // Wednesday, 16:00-18:00','19378',1,'Vigerslev Allé 18',55.6633,12.52108,'','<p><em>For English: See below</em></p>\r\n<h2>Velkommen til KBHFF Valby</h2>\r\n<p>Københavns Fødevarefællesskabs afdeling på Valby er et lokalt handlefællesskab, hvor vi samarbejder om at forsyne vores medlemmer med lækre, lokalt producerede, økologiske og biodynamiske fødevarer. Hver onsdag henter medlemmer forudbestilte grøntsager, frugt, svampe, mel og meget mere i vores hyggelige afdeling på Valby.</p>\r\n<p>Vi er så heldige, at vi kan holde til på Hotel- og Restaurantskolen, som ligger centralt i Valby, tæt på stationen, Hønsebroen og Toftegårds Plads. Det er et dejligt sted, der emmer af godt humør og lækker mad. KBHFF har sit fælleslager her, og nu har vi fået lov at bruge stedets hyggelige kantine til vores Valby-afdeling.</p>\r\n<h3>Vi tilbyder</h3>\r\n<ul>\r\n	<li>lokalt producerede økologiske/biodynamiske fødevarer</li>\r\n	<li>et hyggeligt lokalt fællesskab på Valby</li>\r\n	<li>fællesarrangementer for alle medlemmer af KBHFF</li>\r\n</ul>\r\n<h3>Fællesskab og Arrangementer</h3>\r\n<p>Vi afholder fællesspisninger og mange andre aktiviteter og samarbejder med lokale foreninger om forskellige arrangementer, som fremmer kendskabet til lokale økologiske/biodynamiske fødevarer og støtter lokalsamfundet.</p>\r\n<p><a href=\"https://www.facebook.com/kbhffValby\" target=\"_blank\">På vores facebookside annoncerer vi aktuelle arrangementer, nyheder mm.</a></p>\r\n<h3>Vi er et handlefællesskab</h3>\r\n<p>At vi er et handlefællesskab betyder, at vi løfter i flok. Hver onsdag hjælper vi hinanden med at uddele forudbestilte varer. Det forventes derfor, at alle medlemmer tager en vagt, på et par timer, én gang om måneden. Hvis du er ny, sørger vi for, at du får hjælp til at komme godt i gang med din første vagt. Har du ikke mulighed for at tage vagter i vores afdeling om onsdagen, er der mange andre muligheder i KBHFF\'s fælles arbejdsgrupper.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Bliv medlem af KBHFF Valby her</a></h2>\r\n<p>Bliv medlem af KBHFF Valby her<br />Du er altid velkommen til at kigge forbi om onsdagen under vores uddeling af grøntsager for at høre mere om foreningen og måske blive medlem. Du kan også kontakte os med spørgsmål ved at sende en mail til valby@kbhff.dk.</p>\r\n<p>Venlig hilsen<br />Butiksgruppen, Valby</p>\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n<h2>Welcome to KBHFF Valby</h2>\r\n<p><em>English version</em></p>\r\n<p>The Valby branch of Københavns Fødevarefællesskab is a local action community where we work together to supply our members with delicious, locally produced, organic, and biodynamic foods. Every Wednesday, members pick up pre-ordered vegetables, fruit, mushrooms, flour, and much more at our cozy branch in Valby.</p>\r\n<p>We are fortunate to be able to hold our activities at the Hotel and Restaurant School, which is centrally located in Valby, close to the station, Hønsebroen, and Toftegårds Plads. It is a lovely place that exudes good cheer and delicious food. KBHFF has its shared storage here, and now we have been allowed to use the cozy cafeteria for our Valby branch.</p>\r\n<h3>What we offer</h3>\r\n<ul>\r\n	<li>locally produced organic/biodynamic foods</li>\r\n	<li>a welcoming local community in Valby</li>\r\n	<li>joint events for all members of KBHFF</li>\r\n</ul>\r\n<h3>Community and Events</h3>\r\n<p>We host communal meals and many other activities and collaborate with local associations on various events that promote awareness of local organic/biodynamic foods and support the local community.</p>\r\n<p><a>On our Facebook page, we announce current events, news, and more</a></p>\r\n<h3>We are a cooperative community</h3>\r\n<p>Being a cooperative community means that we work together to share the load. Every Wednesday, we help each other distribute pre-ordered goods. Therefore, it is expected that all members take a shift of a few hours once a month. If you are new, we will ensure that you get the help you need to get started with your first shift. If you are unable to take shifts in our department on Wednesdays, there are many other opportunities in KBHFF\'s shared working groups.</p>\r\n<h2><a href=\"https://kbhff.dk/bliv-medlem\" target=\"_blank\">Become a member of KBHFF Valby here</a></h2>\r\n<p>You are always welcome to stop by on Wednesdays during our vegetable distribution to learn more about the association and maybe become a member. You can also reach out with any questions by emailing us at valby@kbhff.dk.</p>\r\n<p>Kind regards,<br />The Store Group, Valby</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p><a href=\"https://www.findsmiley.dk/953855\" target=\"_blank\">Fødevarestyrelsens kontrolrapport findes her<br />Inspection report from the Danish Veterinary and Food Administration can be found here</a></p>'),
	(11,'Emdrup','EMD','Emdrupvej 32','c/o Havero Planteskolen','København Ø','2100','emdrup@kbhff.dk','\"\"','00000',0,'KBHFF Emdrup',55.7197049,12.5505324,'Afdelingen er endnu ikke åbnet','');

/*!40000 ALTER TABLE `project_departments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_kbhffmessage_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_kbhffmessage_log`;

CREATE TABLE `project_kbhffmessage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `recipient` varchar(50) NOT NULL DEFAULT '',
  `html` text NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_order_item_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_order_item_log`;

CREATE TABLE `project_order_item_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `department_pickupdate_order_item_id` int(11) DEFAULT NULL,
  `department_pickupdate_id` int(11) DEFAULT NULL,
  `pickupdate` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `department_pickupdate_order_item_id` (`department_pickupdate_order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_pickupdates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_pickupdates`;

CREATE TABLE `project_pickupdates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pickupdate` varchar(50) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `project_pickupdates` WRITE;
/*!40000 ALTER TABLE `project_pickupdates` DISABLE KEYS */;

INSERT INTO `project_pickupdates` (`id`, `pickupdate`, `comment`, `created_at`, `modified_at`)
VALUES
	(3,'2021-07-07',NULL,'2021-06-15 21:12:18',NULL),
	(4,'2021-07-14',NULL,'2021-06-15 21:12:40',NULL),
	(5,'2021-07-21',NULL,'2021-06-15 21:12:51',NULL),
	(6,'2021-06-23',NULL,'2021-06-16 08:51:28',NULL),
	(7,'2021-06-30',NULL,'2021-06-16 08:56:18',NULL),
	(8,'2021-07-28',NULL,'2021-06-17 11:57:11',NULL),
	(9,'2021-08-04',NULL,'2021-06-17 11:57:16',NULL),
	(10,'2021-08-11',NULL,'2021-06-17 11:57:21',NULL),
	(11,'2021-08-18',NULL,'2021-06-17 11:57:26',NULL),
	(12,'2021-08-25',NULL,'2021-06-17 11:57:31',NULL),
	(13,'2021-09-01',NULL,'2021-06-22 18:11:25',NULL),
	(14,'2021-09-08',NULL,'2021-08-11 10:44:09',NULL),
	(15,'2021-09-15',NULL,'2021-08-11 10:44:16',NULL),
	(16,'2021-09-22',NULL,'2021-08-11 10:44:23',NULL),
	(17,'2021-09-29',NULL,'2021-08-11 10:44:29',NULL),
	(18,'2021-10-06',NULL,'2021-08-11 10:44:35',NULL),
	(19,'2021-10-13',NULL,'2021-09-08 15:07:03',NULL),
	(20,'2021-10-20',NULL,'2021-09-08 15:07:14',NULL),
	(21,'2021-10-27',NULL,'2021-09-08 15:07:22',NULL),
	(22,'2021-12-01',NULL,'2021-09-08 15:07:43',NULL),
	(23,'2021-11-03',NULL,'2021-09-08 15:07:54',NULL),
	(24,'2021-11-10',NULL,'2021-09-08 15:08:02',NULL),
	(25,'2021-11-17',NULL,'2021-09-08 15:08:15',NULL),
	(26,'2021-11-24',NULL,'2021-09-08 15:08:20',NULL),
	(27,'2021-12-08',NULL,'2021-11-10 10:51:43',NULL),
	(28,'2021-12-15',NULL,'2021-11-10 10:51:51',NULL),
	(29,'2021-12-22',NULL,'2021-11-10 11:23:46',NULL),
	(30,'2021-12-29',NULL,'2021-11-10 11:24:01',NULL),
	(31,'2022-01-05',NULL,'2021-12-07 10:53:58',NULL),
	(32,'2022-01-12',NULL,'2021-12-07 10:54:04',NULL),
	(33,'2022-01-19',NULL,'2021-12-07 10:54:09',NULL),
	(34,'2022-01-26',NULL,'2021-12-07 10:54:22',NULL),
	(35,'2022-02-02',NULL,'2021-12-07 10:54:27',NULL),
	(36,'2022-02-09',NULL,'2021-12-07 10:54:33',NULL),
	(37,'2022-02-16',NULL,'2021-12-07 10:54:38',NULL),
	(38,'2022-02-23',NULL,'2021-12-07 10:54:46',NULL),
	(39,'2022-03-02',NULL,'2021-12-07 10:54:56',NULL),
	(40,'2022-03-09',NULL,'2022-02-02 18:02:47',NULL),
	(41,'2022-03-16',NULL,'2022-02-02 18:02:56',NULL),
	(42,'2022-03-23',NULL,'2022-02-02 18:03:06',NULL),
	(43,'2022-03-30',NULL,'2022-02-02 18:03:13',NULL),
	(44,'2022-04-06',NULL,'2022-02-02 18:03:19',NULL),
	(45,'2022-04-13',NULL,'2022-02-02 18:03:27',NULL),
	(46,'2022-04-20',NULL,'2022-02-02 18:03:33',NULL),
	(47,'2022-04-27',NULL,'2022-02-02 18:03:39',NULL),
	(48,'2022-05-04',NULL,'2022-03-07 13:46:46',NULL),
	(49,'2022-05-11',NULL,'2022-03-07 13:46:55',NULL),
	(50,'2022-05-18',NULL,'2022-03-07 13:47:06',NULL),
	(51,'2022-05-25',NULL,'2022-03-07 13:47:15',NULL),
	(52,'2022-06-01',NULL,'2022-03-07 13:47:26',NULL),
	(53,'2022-06-08',NULL,'2022-04-06 11:39:38',NULL),
	(54,'2022-06-15',NULL,'2022-04-06 11:39:44',NULL),
	(55,'2022-06-22',NULL,'2022-04-06 11:39:54',NULL),
	(56,'2022-06-29',NULL,'2022-04-06 11:39:59',NULL),
	(57,'2022-07-06',NULL,'2022-05-04 15:31:15',NULL),
	(58,'2022-07-13',NULL,'2022-05-04 15:31:24',NULL),
	(59,'2022-07-20',NULL,'2022-05-04 15:31:32',NULL),
	(60,'2022-07-27',NULL,'2022-05-04 15:31:37',NULL),
	(61,'2022-08-03',NULL,'2022-07-06 10:17:39',NULL),
	(62,'2022-08-10',NULL,'2022-07-06 10:17:50',NULL),
	(63,'2022-08-17',NULL,'2022-07-06 10:18:10',NULL),
	(64,'2022-08-24',NULL,'2022-07-06 10:18:32',NULL),
	(65,'2022-08-31',NULL,'2022-07-06 10:19:01',NULL),
	(66,'2022-09-07',NULL,'2022-07-06 10:19:11',NULL),
	(67,'2022-09-14',NULL,'2022-07-06 10:19:54',NULL),
	(68,'2022-09-21',NULL,'2022-07-06 10:20:06',NULL),
	(69,'2022-09-28',NULL,'2022-07-06 10:20:22',NULL),
	(70,'2022-10-05',NULL,'2022-08-03 10:08:10',NULL),
	(71,'2022-10-12',NULL,'2022-08-03 10:08:16',NULL),
	(72,'2022-10-19',NULL,'2022-08-03 10:08:22',NULL),
	(73,'2022-10-26',NULL,'2022-08-03 10:08:27',NULL),
	(74,'2022-11-02',NULL,'2022-09-07 10:37:04',NULL),
	(75,'2022-11-09',NULL,'2022-09-07 10:37:13',NULL),
	(76,'2022-11-16',NULL,'2022-09-07 10:37:20',NULL),
	(77,'2022-11-23',NULL,'2022-09-07 10:37:25',NULL),
	(78,'2022-11-30',NULL,'2022-09-07 10:37:29',NULL),
	(79,'2022-12-07',NULL,'2022-10-12 11:00:21',NULL),
	(80,'2022-12-14',NULL,'2022-10-12 11:00:36',NULL),
	(81,'2022-12-21',NULL,'2022-10-12 11:00:54',NULL),
	(82,'2022-12-28',NULL,'2022-11-02 11:06:34',NULL),
	(83,'2023-01-04',NULL,'2022-11-02 11:06:50',NULL),
	(84,'2023-01-11',NULL,'2022-11-02 11:06:59',NULL),
	(85,'2023-01-18',NULL,'2022-11-02 11:07:11',NULL),
	(86,'2023-01-25',NULL,'2022-11-02 11:07:23',NULL),
	(87,'2023-02-01',NULL,'2022-12-14 11:47:01',NULL),
	(88,'2023-02-08',NULL,'2022-12-14 11:47:10',NULL),
	(89,'2023-02-15',NULL,'2022-12-14 11:47:25',NULL),
	(90,'2023-02-22',NULL,'2023-02-01 10:30:24',NULL),
	(91,'2023-03-01',NULL,'2023-02-01 10:30:33',NULL),
	(92,'2023-03-08',NULL,'2023-02-01 10:30:39',NULL),
	(93,'2023-03-15',NULL,'2023-02-01 10:30:46',NULL),
	(94,'2023-03-22',NULL,'2023-02-01 10:30:54',NULL),
	(95,'2023-03-29',NULL,'2023-02-01 10:31:02',NULL),
	(96,'2023-04-05',NULL,'2023-02-01 10:31:11',NULL),
	(97,'2023-04-12',NULL,'2023-02-01 10:31:26',NULL),
	(98,'2023-04-19',NULL,'2023-02-01 10:31:41',NULL),
	(99,'2023-04-26',NULL,'2023-02-01 10:31:50',NULL),
	(100,'2023-05-03',NULL,'2023-03-01 11:30:19',NULL),
	(101,'2023-05-10',NULL,'2023-03-01 11:30:28',NULL),
	(102,'2023-05-17',NULL,'2023-03-01 11:30:36',NULL),
	(103,'2023-05-24',NULL,'2023-03-01 11:30:46',NULL),
	(104,'2023-05-31',NULL,'2023-04-05 15:51:45',NULL),
	(105,'2023-06-07',NULL,'2023-04-05 15:51:55',NULL),
	(106,'2023-06-14',NULL,'2023-04-05 15:52:01',NULL),
	(107,'2023-06-21',NULL,'2023-04-05 15:52:11',NULL),
	(108,'2023-06-28',NULL,'2023-05-03 11:30:06',NULL),
	(109,'2023-07-05',NULL,'2023-05-03 11:30:14',NULL),
	(110,'2023-07-19',NULL,'2023-06-28 11:04:08',NULL),
	(111,'2023-07-26',NULL,'2023-06-28 11:04:24',NULL),
	(112,'2023-08-02',NULL,'2023-06-28 11:05:37',NULL),
	(113,'2023-08-09',NULL,'2023-06-28 11:05:51',NULL),
	(114,'2023-08-16',NULL,'2023-06-28 11:06:02',NULL),
	(115,'2023-08-23',NULL,'2023-06-28 11:06:15',NULL),
	(116,'2023-08-30',NULL,'2023-06-28 11:06:27',NULL),
	(117,'2023-09-06',NULL,'2023-06-28 11:06:38',NULL),
	(118,'2023-09-13',NULL,'2023-06-28 11:06:51',NULL),
	(119,'2023-09-20',NULL,'2023-06-28 11:07:01',NULL),
	(120,'2023-09-27',NULL,'2023-08-02 09:25:24',NULL),
	(121,'2023-10-04',NULL,'2023-08-02 09:25:32',NULL),
	(122,'2023-10-11',NULL,'2023-08-02 09:25:41',NULL),
	(123,'2023-10-18',NULL,'2023-08-02 09:25:49',NULL),
	(124,'2023-10-25',NULL,'2023-08-02 09:25:57',NULL),
	(125,'2023-11-01',NULL,'2023-09-06 10:52:47',NULL),
	(126,'2023-11-08',NULL,'2023-09-06 10:52:56',NULL),
	(127,'2023-11-15',NULL,'2023-09-06 10:53:05',NULL),
	(128,'2023-11-22',NULL,'2023-09-06 10:53:14',NULL),
	(129,'2023-11-29',NULL,'2023-09-06 10:53:22',NULL),
	(130,'2023-12-06',NULL,'2023-10-25 11:04:32',NULL),
	(131,'2023-12-13',NULL,'2023-10-25 11:04:41',NULL),
	(132,'2023-12-20',NULL,'2023-10-25 11:04:49',NULL),
	(133,'2024-01-03',NULL,'2023-12-07 08:24:36',NULL),
	(134,'2024-01-10',NULL,'2023-12-07 08:24:50',NULL),
	(135,'2024-01-17',NULL,'2023-12-07 08:25:03',NULL),
	(136,'2024-01-24',NULL,'2023-12-07 08:25:17',NULL),
	(137,'2024-01-31',NULL,'2023-12-07 08:25:27',NULL),
	(138,'2024-02-07',NULL,'2023-12-07 08:25:38',NULL),
	(139,'2024-02-14',NULL,'2023-12-07 08:25:50',NULL),
	(140,'2024-02-21',NULL,'2023-12-07 08:26:05',NULL),
	(141,'2024-02-28',NULL,'2023-12-07 08:26:13',NULL),
	(142,'2024-03-06',NULL,'2023-12-07 08:26:22',NULL),
	(143,'2024-03-13',NULL,'2024-02-07 10:45:10',NULL),
	(144,'2024-03-20',NULL,'2024-02-07 10:45:29',NULL),
	(145,'2024-03-27',NULL,'2024-02-07 10:45:43',NULL),
	(146,'2024-04-03',NULL,'2024-02-07 10:45:59',NULL),
	(147,'2024-04-10',NULL,'2024-02-07 10:46:13',NULL),
	(148,'2024-04-17',NULL,'2024-02-07 10:46:32',NULL),
	(149,'2024-04-24',NULL,'2024-02-07 10:46:48',NULL),
	(150,'2024-05-01',NULL,'2024-02-07 10:47:09',NULL),
	(151,'2024-05-08',NULL,'2024-03-06 14:13:03',NULL),
	(152,'2024-05-15',NULL,'2024-03-06 14:13:18',NULL),
	(153,'2024-05-22',NULL,'2024-03-06 14:13:38',NULL),
	(154,'2024-05-29',NULL,'2024-03-06 14:13:56',NULL),
	(155,'2024-06-05',NULL,'2024-04-02 09:20:38',NULL),
	(156,'2024-06-12',NULL,'2024-04-02 09:20:53',NULL),
	(157,'2024-06-19',NULL,'2024-04-02 09:21:02',NULL),
	(158,'2024-06-26',NULL,'2024-04-02 09:21:10',NULL),
	(159,'2024-07-03',NULL,'2024-06-05 10:09:19',NULL),
	(160,'2024-07-10',NULL,'2024-06-05 10:10:04',NULL),
	(162,'2024-07-24',NULL,'2024-06-05 10:10:45',NULL),
	(163,'2024-07-31',NULL,'2024-06-05 10:10:59',NULL),
	(164,'2024-08-07',NULL,'2024-06-05 10:11:14',NULL),
	(165,'2024-08-14',NULL,'2024-06-05 10:11:36',NULL),
	(166,'2024-08-21',NULL,'2024-07-10 10:27:58',NULL),
	(167,'2024-08-28',NULL,'2024-07-10 10:29:27',NULL),
	(168,'2024-07-17',NULL,'2024-07-10 10:29:44',NULL),
	(169,'2024-09-04',NULL,'2024-08-07 11:45:27',NULL),
	(170,'2024-09-11',NULL,'2024-08-07 11:45:35',NULL),
	(171,'2024-09-18',NULL,'2024-08-07 11:45:42',NULL),
	(172,'2024-09-25',NULL,'2024-08-07 11:45:49',NULL),
	(173,'2024-10-02',NULL,'2024-08-07 11:45:58',NULL),
	(174,'2024-10-09',NULL,'2024-08-07 11:46:06',NULL),
	(175,'2024-10-16',NULL,'2024-09-04 10:01:44',NULL),
	(176,'2024-10-23',NULL,'2024-09-04 10:01:52',NULL),
	(177,'2024-10-30',NULL,'2024-09-04 10:02:02',NULL),
	(178,'2024-11-06',NULL,'2024-09-04 10:02:13',NULL),
	(179,'2024-11-13',NULL,'2024-09-04 10:02:23',NULL),
	(180,'2024-11-20',NULL,'2024-09-04 10:02:39',NULL),
	(181,'2024-11-27',NULL,'2024-09-04 10:02:53',NULL),
	(182,'2024-12-04',NULL,'2024-10-03 12:48:01',NULL),
	(183,'2024-12-11',NULL,'2024-10-03 12:48:12',NULL),
	(184,'2024-12-18',NULL,'2024-10-03 12:48:29',NULL);

/*!40000 ALTER TABLE `project_pickupdates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_tallies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_tallies`;

CREATE TABLE `project_tallies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `start_cash` float DEFAULT NULL,
  `end_cash` float DEFAULT NULL,
  `deposited` float DEFAULT NULL,
  `comment` text NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `opened_by` int(11) NOT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `opened_by` (`opened_by`),
  KEY `closed_by` (`closed_by`),
  CONSTRAINT `project_tallies_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `project_departments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `project_tallies_ibfk_2` FOREIGN KEY (`opened_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `project_tallies_ibfk_3` FOREIGN KEY (`closed_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_tally_cash_payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_tally_cash_payments`;

CREATE TABLE `project_tally_cash_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tally_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tally_id` (`tally_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `project_tally_cash_payments_ibfk_1` FOREIGN KEY (`tally_id`) REFERENCES `project_tallies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_tally_cash_payments_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `shop_payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_tally_misc_revenues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_tally_misc_revenues`;

CREATE TABLE `project_tally_misc_revenues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tally_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tally_id` (`tally_id`),
  CONSTRAINT `project_tally_misc_revenues_ibfk_1` FOREIGN KEY (`tally_id`) REFERENCES `project_tallies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table project_tally_payouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_tally_payouts`;

CREATE TABLE `project_tally_payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tally_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tally_id` (`tally_id`),
  CONSTRAINT `project_tally_payouts_ibfk_1` FOREIGN KEY (`tally_id`) REFERENCES `project_tallies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table shop_cancelled_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_cancelled_orders`;

CREATE TABLE `shop_cancelled_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `creditnote_no` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `shop_cancelled_orders_ibfk_1` (`order_id`),
  CONSTRAINT `shop_cancelled_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table shop_cart_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_cart_items`;

CREATE TABLE `shop_cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `custom_name` varchar(100) DEFAULT NULL,
  `custom_price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `shop_cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `shop_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_cart_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table shop_carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_carts`;

CREATE TABLE `shop_carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart_reference` varchar(12) NOT NULL,
  `country` varchar(2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `delivery_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  KEY `currency` (`currency`),
  KEY `delivery_address_id` (`delivery_address_id`),
  KEY `billing_address_id` (`billing_address_id`),
  KEY `shop_carts_ibfk_1` (`user_id`),
  CONSTRAINT `shop_carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_carts_ibfk_2` FOREIGN KEY (`country`) REFERENCES `system_countries` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_carts_ibfk_3` FOREIGN KEY (`currency`) REFERENCES `system_currencies` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_carts_ibfk_4` FOREIGN KEY (`delivery_address_id`) REFERENCES `user_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_carts_ibfk_5` FOREIGN KEY (`billing_address_id`) REFERENCES `user_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table shop_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_order_items`;

CREATE TABLE `shop_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `shipped_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `unit_vat` float NOT NULL,
  `total_price` float NOT NULL,
  `total_vat` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  KEY `shop_order_items_ibfk_2` (`shipped_by`),
  CONSTRAINT `shop_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_order_items_ibfk_2` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_order_items_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `shop_order_items` WRITE;
/*!40000 ALTER TABLE `shop_order_items` DISABLE KEYS */;

INSERT INTO `shop_order_items` (`id`, `order_id`, `item_id`, `shipped_by`, `name`, `quantity`, `unit_price`, `unit_vat`, `total_price`, `total_vat`)
VALUES
	(15023,7910,283,NULL,'grøntsagspose',1,100,20,100,20),
	(15348,8071,283,NULL,'grøntsagspose',1,100,20,100,20),
	(15349,8071,285,NULL,'kartoffelpose',1,50,10,50,10),
	(17063,8839,283,NULL,'grøntsagspose',1,100,20,100,20),
	(17064,8839,288,NULL,'svampepose',1,50,10,50,10),
	(24981,12730,283,NULL,'grøntsagspose',1,100,20,100,20),
	(24982,12730,283,NULL,'grøntsagspose',1,100,20,100,20),
	(24983,12730,283,NULL,'grøntsagspose',1,100,20,100,20),
	(24984,12730,283,NULL,'grøntsagspose',1,100,20,100,20),
	(25829,13290,287,NULL,'støttepose (grøntsager) ',1,125,25,125,25),
	(25830,13290,287,NULL,'støttepose (grøntsager) ',1,125,25,125,25),
	(25831,13290,287,NULL,'støttepose (grøntsager) ',1,125,25,125,25),
	(25832,13290,287,NULL,'støttepose (grøntsager) ',1,125,25,125,25),
	(25833,13290,287,NULL,'støttepose (grøntsager) ',1,125,25,125,25),
	(26537,13738,283,NULL,'grøntsagspose',1,100,20,100,20),
	(26538,13738,283,NULL,'grøntsagspose',1,100,20,100,20),
	(26539,13738,283,NULL,'grøntsagspose',1,100,20,100,20),
	(26540,13738,283,NULL,'grøntsagspose',1,100,20,100,20),
	(27699,14298,288,NULL,'svampepose',2,50,10,100,20),
	(28037,14465,6,NULL,'KBHFF Kontingent 2018/19',1,200,40,200,40),
	(28038,14465,283,NULL,'grøntsagspose',1,100,20,100,20),
	(28039,14465,283,NULL,'grøntsagspose',1,100,20,100,20),
	(63389,31270,6,NULL,'Kontingent 2021',1,200,40,200,40),
	(108726,48108,8,NULL,'Indmeldelsesgebyr (Frivillig)',1,100,0,100,0);

/*!40000 ALTER TABLE `shop_order_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shop_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_orders`;

CREATE TABLE `shop_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_no` varchar(10) NOT NULL,
  `cart_reference` varchar(12) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `shipping_status` int(11) NOT NULL DEFAULT 0,
  `delivery_name` varchar(255) DEFAULT NULL,
  `delivery_att` varchar(255) DEFAULT NULL,
  `delivery_address1` varchar(255) DEFAULT NULL,
  `delivery_address2` varchar(255) DEFAULT NULL,
  `delivery_city` varchar(255) DEFAULT NULL,
  `delivery_postal` varchar(255) DEFAULT NULL,
  `delivery_state` varchar(255) DEFAULT NULL,
  `delivery_country` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_att` varchar(255) DEFAULT NULL,
  `billing_address1` varchar(255) DEFAULT NULL,
  `billing_address2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_postal` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `country` (`country`),
  KEY `currency` (`currency`),
  CONSTRAINT `shop_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_orders_ibfk_2` FOREIGN KEY (`country`) REFERENCES `system_countries` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_orders_ibfk_3` FOREIGN KEY (`currency`) REFERENCES `system_currencies` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `shop_orders` WRITE;
/*!40000 ALTER TABLE `shop_orders` DISABLE KEYS */;

INSERT INTO `shop_orders` (`id`, `user_id`, `order_no`, `cart_reference`, `country`, `currency`, `status`, `payment_status`, `shipping_status`, `delivery_name`, `delivery_att`, `delivery_address1`, `delivery_address2`, `delivery_city`, `delivery_postal`, `delivery_state`, `delivery_country`, `billing_name`, `billing_att`, `billing_address1`, `billing_address2`, `billing_city`, `billing_postal`, `billing_state`, `billing_country`, `comment`, `created_at`, `modified_at`)
VALUES
	(7910,4,'WEB7910',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2017-05-17 18:07:00','2021-06-17 14:06:14'),
	(8071,4,'WEB8071',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2017-05-25 13:07:13','2021-06-17 14:06:33'),
	(8839,4,'WEB8839',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2017-07-05 20:05:07','2021-06-17 14:08:11'),
	(12730,4,'WEB12730',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2018-02-28 22:55:58','2021-06-17 14:18:40'),
	(13290,4,'WEB13290',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2018-04-11 23:10:46','2021-06-17 14:20:20'),
	(13738,4,'WEB13738',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2018-05-10 20:35:50','2021-06-17 14:21:41'),
	(14298,4,'WEB14298',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2018-06-06 22:30:07','2021-06-17 14:23:26'),
	(14465,4,'WEB14465',NULL,'DK','DKK',2,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transferred from old system','2018-06-13 21:54:00','2021-06-17 14:23:58'),
	(31270,4,'WEB31270',NULL,'DK','DKK',3,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martin Kæstel Nielse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Created by import script','2021-06-17 15:55:40','2021-06-17 15:55:40'),
	(48108,4,'WEB31271','xaspsr4our1q','DK','DKK',1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Test Person',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-08 11:14:14',NULL);

/*!40000 ALTER TABLE `shop_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shop_payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_payments`;

CREATE TABLE `shop_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `payment_amount` float NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `currency` (`currency`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `shop_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_payments_ibfk_2` FOREIGN KEY (`currency`) REFERENCES `system_currencies` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `shop_payments_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `system_payment_methods` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `shop_payments` WRITE;
/*!40000 ALTER TABLE `shop_payments` DISABLE KEYS */;

INSERT INTO `shop_payments` (`id`, `order_id`, `currency`, `payment_amount`, `transaction_id`, `payment_method_id`, `created_at`, `modified_at`)
VALUES
	(7910,7910,'DKK',100,'2017-05-17(kontant)',4,'2017-05-17 18:07:00',NULL),
	(8071,8071,'DKK',150,'46087375',5,'2017-05-25 13:07:49',NULL),
	(8839,8839,'DKK',150,'46785283',5,'2017-07-05 20:06:15',NULL),
	(12730,12730,'DKK',400,'50529848',5,'2018-02-28 22:57:20',NULL),
	(13290,13290,'DKK',625,'50966921',5,'2018-04-11 23:11:58',NULL),
	(13738,13738,'DKK',400,'50967174',5,'2018-05-10 20:38:41',NULL),
	(14298,14298,'DKK',100,'2018-06-06(mobilepay)',3,'2018-06-06 22:30:07',NULL),
	(14465,14465,'DKK',400,'50967685',5,'2018-06-13 21:55:03',NULL),
	(46800,48108,'DKK',100,'pm_1QIq8iFJ8oOb0rEkQTIjhD18',2,'2024-11-08 11:14:17',NULL);

/*!40000 ALTER TABLE `shop_payments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_countries`;

CREATE TABLE `system_countries` (
  `id` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_countrycode` varchar(4) NOT NULL,
  `phone_format` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `currency` (`currency`),
  CONSTRAINT `system_countries_ibfk_1` FOREIGN KEY (`language`) REFERENCES `system_languages` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `system_countries_ibfk_2` FOREIGN KEY (`currency`) REFERENCES `system_currencies` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_countries` WRITE;
/*!40000 ALTER TABLE `system_countries` DISABLE KEYS */;

INSERT INTO `system_countries` (`id`, `name`, `phone_countrycode`, `phone_format`, `language`, `currency`)
VALUES
	('DK','Danmark','45','#### ####','EN','DKK');

/*!40000 ALTER TABLE `system_countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_currencies`;

CREATE TABLE `system_currencies` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbreviation` varchar(10) NOT NULL,
  `abbreviation_position` varchar(10) NOT NULL DEFAULT 'after',
  `decimals` int(11) NOT NULL DEFAULT 0,
  `decimal_separator` varchar(1) NOT NULL DEFAULT ',',
  `grouping_separator` varchar(1) NOT NULL DEFAULT '.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_currencies` WRITE;
/*!40000 ALTER TABLE `system_currencies` DISABLE KEYS */;

INSERT INTO `system_currencies` (`id`, `name`, `abbreviation`, `abbreviation_position`, `decimals`, `decimal_separator`, `grouping_separator`)
VALUES
	('DKK','Kroner (Denmark)','kr.','after',2,',','.');

/*!40000 ALTER TABLE `system_currencies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_languages`;

CREATE TABLE `system_languages` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_languages` WRITE;
/*!40000 ALTER TABLE `system_languages` DISABLE KEYS */;

INSERT INTO `system_languages` (`id`, `name`)
VALUES
	('DA','Dansk'),
	('EN','English');

/*!40000 ALTER TABLE `system_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_maillists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_maillists`;

CREATE TABLE `system_maillists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_maillists` WRITE;
/*!40000 ALTER TABLE `system_maillists` DISABLE KEYS */;

INSERT INTO `system_maillists` (`id`, `name`, `description`)
VALUES
	(1,'Nyheder',NULL);

/*!40000 ALTER TABLE `system_maillists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_payment_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_payment_methods`;

CREATE TABLE `system_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `description` text DEFAULT '',
  `gateway` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_payment_methods` WRITE;
/*!40000 ALTER TABLE `system_payment_methods` DISABLE KEYS */;

INSERT INTO `system_payment_methods` (`id`, `name`, `classname`, `description`, `gateway`, `state`, `position`)
VALUES
	(1,'Bank transfer','banktransfer','Regular bank transfer. Preferred option.',NULL,'admin',1),
	(2,'Betalingskort','stripe','','stripe','public',2),
	(3,'MobilePay','mobilepay','MobilePay payment',NULL,'memberhelp',3),
	(4,'Cash','cash','Cash payment',NULL,'admin',4),
	(5,'NETS (legacy)','nets','NETS (legacy payment method)',NULL,NULL,5);

/*!40000 ALTER TABLE `system_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_price_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_price_types`;

CREATE TABLE `system_price_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `system_price_types_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_price_types` WRITE;
/*!40000 ALTER TABLE `system_price_types` DISABLE KEYS */;

INSERT INTO `system_price_types` (`id`, `item_id`, `name`, `description`)
VALUES
	(1,NULL,'default','Standard price'),
	(2,NULL,'offer','Special price'),
	(3,NULL,'bulk','Bulk price'),
	(4,7,'stoettemedlem','Price for \'Støttemedlem\' members'),
	(5,6,'frivillig','Price for \'Frivillig\' members');

/*!40000 ALTER TABLE `system_price_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_subscription_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_subscription_methods`;

CREATE TABLE `system_subscription_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `starts_on` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_subscription_methods` WRITE;
/*!40000 ALTER TABLE `system_subscription_methods` DISABLE KEYS */;

INSERT INTO `system_subscription_methods` (`id`, `name`, `duration`, `starts_on`)
VALUES
	(1,'Måned','monthly',NULL),
	(2,'År','annually',NULL),
	(3,'Never expires','*',NULL);

/*!40000 ALTER TABLE `system_subscription_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_vatrates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_vatrates`;

CREATE TABLE `system_vatrates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `vatrate` float NOT NULL,
  `country` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  CONSTRAINT `system_vatrates_ibfk_1` FOREIGN KEY (`country`) REFERENCES `system_countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_vatrates` WRITE;
/*!40000 ALTER TABLE `system_vatrates` DISABLE KEYS */;

INSERT INTO `system_vatrates` (`id`, `name`, `vatrate`, `country`)
VALUES
	(1,'No VAT',0,'DK'),
	(2,'25%',25,'DK');

/*!40000 ALTER TABLE `system_vatrates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_version`;

CREATE TABLE `system_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_version` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `system_version` WRITE;
/*!40000 ALTER TABLE `system_version` DISABLE KEYS */;

INSERT INTO `system_version` (`id`, `db_version`)
VALUES
	(1,'0.7.9.2');

/*!40000 ALTER TABLE `system_version` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taggings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taggings`;

CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `taggings_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `taggings_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;

INSERT INTO `taggings` (`id`, `item_id`, `tag_id`)
VALUES
	(2,2,2),
	(3,9,3),
	(4,10,4),
	(10,12,7),
	(21,28,9),
	(22,27,11),
	(25,43,12),
	(30,32,14),
	(31,20,15),
	(60,42,19),
	(61,46,19),
	(62,56,19),
	(64,63,19),
	(65,50,19),
	(66,48,23),
	(67,66,21),
	(68,67,21),
	(70,68,21),
	(71,69,21),
	(72,74,21),
	(73,70,21),
	(74,71,21),
	(75,72,21),
	(76,73,21),
	(77,75,21),
	(78,76,21),
	(79,77,21),
	(80,79,21),
	(81,80,21),
	(82,78,21),
	(84,53,22),
	(85,52,22),
	(86,54,22),
	(87,55,22),
	(88,57,22),
	(89,59,22),
	(90,61,22),
	(91,62,22),
	(92,51,22),
	(93,49,22),
	(95,93,19),
	(97,96,19),
	(98,97,19),
	(99,98,19),
	(100,99,20),
	(101,100,20),
	(102,101,20),
	(103,102,20),
	(104,103,20),
	(105,104,20),
	(106,105,20),
	(107,106,20),
	(108,107,20),
	(109,108,20),
	(110,109,20),
	(111,110,20),
	(112,111,20),
	(113,112,20),
	(114,113,20),
	(115,115,20),
	(117,117,22),
	(118,65,21),
	(119,81,21),
	(168,206,6),
	(190,25,24),
	(191,289,20),
	(192,290,20),
	(193,291,21),
	(198,303,6),
	(199,303,16),
	(220,344,6),
	(221,344,8),
	(252,372,6),
	(420,659,6),
	(429,679,20),
	(432,680,20),
	(437,681,20),
	(438,682,20),
	(439,683,20),
	(446,697,26);

/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taglist_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taglist_tags`;

CREATE TABLE `taglist_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taglist_id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `taglist_id` (`taglist_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `taglist_tags_ibfk_1` FOREIGN KEY (`taglist_id`) REFERENCES `taglists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `taglist_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `taglist_tags` WRITE;
/*!40000 ALTER TABLE `taglist_tags` DISABLE KEYS */;

INSERT INTO `taglist_tags` (`id`, `taglist_id`, `tag_id`, `position`)
VALUES
	(4,1,19,1),
	(5,1,20,4),
	(6,1,21,2),
	(7,1,22,3),
	(8,1,23,5);

/*!40000 ALTER TABLE `taglist_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taglists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taglists`;

CREATE TABLE `taglists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `handle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `taglists` WRITE;
/*!40000 ALTER TABLE `taglists` DISABLE KEYS */;

INSERT INTO `taglists` (`id`, `name`, `handle`)
VALUES
	(1,'faq','faq');

/*!40000 ALTER TABLE `taglists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL,
  `description` text DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `context`, `value`, `description`)
VALUES
	(2,'page','persondata',NULL),
	(3,'page','already-member',NULL),
	(4,'page','signup',NULL),
	(5,'page','signupfees',NULL),
	(6,'on','frontpage',NULL),
	(7,'page','departments',NULL),
	(8,'post','Nyhed',NULL),
	(9,'page','contact',NULL),
	(10,'page','kontakt',NULL),
	(11,'page','about',NULL),
	(12,'page','member',NULL),
	(13,'page','terms',NULL),
	(14,'page','english',NULL),
	(15,'page','businessterms',NULL),
	(16,'post','Arrangement',NULL),
	(17,'faq','Bestilling',NULL),
	(18,'faq','Medlemssystemet',NULL),
	(19,'faq','Medlemskab',NULL),
	(20,'faq','Det frivillige arbejde',NULL),
	(21,'faq','Bestilling af ugens pose',NULL),
	(22,'faq','Grøntsager og Løssalg',NULL),
	(23,'faq','Andre spørgsmål',NULL),
	(24,'page','products',''),
	(25,'post','event',''),
	(26,'page','weekly-bag','');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_access`;

CREATE TABLE `user_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `permission` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_group_id` (`user_group_id`),
  CONSTRAINT `access_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_access` WRITE;
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;

INSERT INTO `user_access` (`id`, `user_group_id`, `controller`, `action`, `permission`, `created_at`)
VALUES
	(741,2,'/profil','/',1,'2021-06-14 14:38:38'),
	(742,2,'/bestil','/',1,'2021-06-14 14:38:38'),
	(743,2,'/janitor/admin/profile','/',1,'2021-06-14 14:38:38'),
	(819,7,'/profil','/',1,'2021-06-14 14:45:19'),
	(820,7,'/bestil','/',1,'2021-06-14 14:45:19'),
	(821,7,'/medlemshjaelp','/',1,'2021-06-14 14:45:19'),
	(822,7,'/butiksvagt','/',1,'2021-06-14 14:45:19'),
	(823,7,'/janitor/admin/profile','/',1,'2021-06-14 14:45:19'),
	(824,9,'/massemail','/',1,'2021-06-14 14:48:31'),
	(825,9,'/massemail','/sendToDepartmentMembers',1,'2021-06-14 14:48:31'),
	(826,9,'/massemail','/sendToAllMembers',1,'2021-06-14 14:48:31'),
	(827,9,'/profil','/',1,'2021-06-14 14:48:31'),
	(828,9,'/indkoeb','/',1,'2021-06-14 14:48:31'),
	(829,9,'/bestil','/',1,'2021-06-14 14:48:31'),
	(830,9,'/medlemshjaelp','/',1,'2021-06-14 14:48:31'),
	(831,9,'/medlemshjaelp','/globalSearch',1,'2021-06-14 14:48:31'),
	(832,9,'/butiksvagt','/',1,'2021-06-14 14:48:31'),
	(833,9,'/janitor/weeklybag','/',1,'2021-06-14 14:48:31'),
	(834,9,'/janitor/weeklybag','/new',1,'2021-06-14 14:48:31'),
	(835,9,'/janitor/index','/',1,'2021-06-14 14:48:31'),
	(836,9,'/janitor/post','/',1,'2021-06-14 14:48:31'),
	(837,9,'/janitor/admin/items','/',1,'2021-06-14 14:48:31'),
	(838,9,'/janitor/admin/profile','/',1,'2021-06-14 14:48:31'),
	(839,8,'/massemail','/',1,'2021-06-14 14:51:45'),
	(840,8,'/massemail','/sendToDepartmentMembers',1,'2021-06-14 14:51:45'),
	(841,8,'/profil','/',1,'2021-06-14 14:51:45'),
	(842,8,'/bestil','/',1,'2021-06-14 14:51:45'),
	(843,8,'/medlemshjaelp','/',1,'2021-06-14 14:51:45'),
	(844,8,'/medlemshjaelp','/globalSearch',1,'2021-06-14 14:51:45'),
	(845,8,'/lokaladmin','/',1,'2021-06-14 14:51:45'),
	(846,8,'/butiksvagt','/',1,'2021-06-14 14:51:45'),
	(847,8,'/janitor/index','/',1,'2021-06-14 14:51:45'),
	(848,8,'/janitor/admin/profile','/',1,'2021-06-14 14:51:45'),
	(962,10,'/massemail','/',1,'2021-06-14 14:58:59'),
	(963,10,'/massemail','/sendToDepartmentMembers',1,'2021-06-14 14:58:59'),
	(964,10,'/massemail','/sendToAllMembers',1,'2021-06-14 14:58:59'),
	(965,10,'/profil','/',1,'2021-06-14 14:58:59'),
	(966,10,'/bestil','/',1,'2021-06-14 14:58:59'),
	(967,10,'/medlemshjaelp','/',1,'2021-06-14 14:58:59'),
	(968,10,'/medlemshjaelp','/globalSearch',1,'2021-06-14 14:58:59'),
	(969,10,'/butiksvagt','/',1,'2021-06-14 14:58:59'),
	(970,10,'/janitor/weeklybag','/',1,'2021-06-14 14:58:59'),
	(971,10,'/janitor/weeklybag','/new',1,'2021-06-14 14:58:59'),
	(972,10,'/janitor/index','/',1,'2021-06-14 14:58:59'),
	(973,10,'/janitor/department','/',1,'2021-06-14 14:58:59'),
	(974,10,'/janitor/post','/',1,'2021-06-14 14:58:59'),
	(975,10,'/janitor/admin/items','/',1,'2021-06-14 14:58:59'),
	(976,10,'/janitor/admin/qna','/',1,'2021-06-14 14:58:59'),
	(977,10,'/janitor/admin/profile','/',1,'2021-06-14 14:58:59'),
	(978,10,'/janitor/admin/page','/',1,'2021-06-14 14:58:59'),
	(1097,11,'/massemail','/',1,'2022-12-15 21:24:52'),
	(1098,11,'/massemail','/sendToDepartmentMembers',1,'2022-12-15 21:24:52'),
	(1099,11,'/massemail','/sendToAllMembers',1,'2022-12-15 21:24:52'),
	(1100,11,'/profil','/',1,'2022-12-15 21:24:52'),
	(1101,11,'/indkoeb','/',1,'2022-12-15 21:24:52'),
	(1102,11,'/bestil','/',1,'2022-12-15 21:24:52'),
	(1103,11,'/medlemshjaelp','/',1,'2022-12-15 21:24:52'),
	(1104,11,'/medlemshjaelp','/globalSearch',1,'2022-12-15 21:24:52'),
	(1105,11,'/lokaladmin','/',1,'2022-12-15 21:24:52'),
	(1106,11,'/butiksvagt','/',1,'2022-12-15 21:24:52'),
	(1107,11,'/bogholder','/',1,'2022-12-15 21:24:52'),
	(1108,11,'/janitor/product-seasonalbag','/',1,'2022-12-15 21:24:52'),
	(1109,11,'/janitor/product-seasonalbag','/new',1,'2022-12-15 21:24:52'),
	(1110,11,'/janitor/pickupdate','/',1,'2022-12-15 21:24:52'),
	(1111,11,'/janitor/pickupdate','/new',1,'2022-12-15 21:24:52'),
	(1112,11,'/janitor/weeklybag','/',1,'2022-12-15 21:24:52'),
	(1113,11,'/janitor/weeklybag','/new',1,'2022-12-15 21:24:52'),
	(1114,11,'/janitor/mass-mail-log','/',1,'2022-12-15 21:24:52'),
	(1115,11,'/janitor/index','/',1,'2022-12-15 21:24:52'),
	(1116,11,'/janitor/department','/',1,'2022-12-15 21:24:52'),
	(1117,11,'/janitor/signupfee','/',1,'2022-12-15 21:24:52'),
	(1118,11,'/janitor/signupfee','/new',1,'2022-12-15 21:24:52'),
	(1119,11,'/janitor/tally','/',1,'2022-12-15 21:24:52'),
	(1120,11,'/janitor/product-weeklybag','/',1,'2022-12-15 21:24:52'),
	(1121,11,'/janitor/product-weeklybag','/new',1,'2022-12-15 21:24:52'),
	(1122,11,'/janitor/product-canvasbag','/',1,'2022-12-15 21:24:52'),
	(1123,11,'/janitor/product-canvasbag','/new',1,'2022-12-15 21:24:52'),
	(1124,11,'/janitor/membership','/',1,'2022-12-15 21:24:52'),
	(1125,11,'/janitor/membership','/subscription',1,'2022-12-15 21:24:52'),
	(1126,11,'/janitor/membership','/new',1,'2022-12-15 21:24:52'),
	(1127,11,'/janitor/product-assorted','/',1,'2022-12-15 21:24:52'),
	(1128,11,'/janitor/product-assorted','/new',1,'2022-12-15 21:24:52'),
	(1129,11,'/janitor/post','/',1,'2022-12-15 21:24:52'),
	(1130,11,'/janitor/post','/comments',1,'2022-12-15 21:24:52'),
	(1131,11,'/janitor/order-item','/',1,'2022-12-15 21:24:52'),
	(1132,11,'/janitor/admin/message','/',1,'2022-12-15 21:24:52'),
	(1133,11,'/janitor/admin/message','/owner',1,'2022-12-15 21:24:52'),
	(1134,11,'/janitor/admin/user','/list',1,'2022-12-15 21:24:52'),
	(1135,11,'/janitor/admin/user','/new',1,'2022-12-15 21:24:52'),
	(1136,11,'/janitor/admin/user','/edit',1,'2022-12-15 21:24:52'),
	(1137,11,'/janitor/admin/user','/delete',1,'2022-12-15 21:24:52'),
	(1138,11,'/janitor/admin/user','/status',1,'2022-12-15 21:24:52'),
	(1139,11,'/janitor/admin/user','/cancel',1,'2022-12-15 21:24:52'),
	(1140,11,'/janitor/admin/user','/updateUsernames',1,'2022-12-15 21:24:52'),
	(1141,11,'/janitor/admin/user','/setPassword',1,'2022-12-15 21:24:52'),
	(1142,11,'/janitor/admin/user','/address',1,'2022-12-15 21:24:52'),
	(1143,11,'/janitor/admin/user','/maillists',1,'2022-12-15 21:24:52'),
	(1144,11,'/janitor/admin/user','/subscription',1,'2022-12-15 21:24:52'),
	(1145,11,'/janitor/admin/user','/content',1,'2022-12-15 21:24:52'),
	(1146,11,'/janitor/admin/user','/online',1,'2022-12-15 21:24:52'),
	(1147,11,'/janitor/admin/user','/unverified-usernames',1,'2022-12-15 21:24:52'),
	(1148,11,'/janitor/admin/user','/sendVerificationLink',1,'2022-12-15 21:24:52'),
	(1149,11,'/janitor/admin/user','/sendVerificationLinks',1,'2022-12-15 21:24:52'),
	(1150,11,'/janitor/admin/shop','/',1,'2022-12-15 21:24:52'),
	(1151,11,'/janitor/admin/shop','/registerPayment',1,'2022-12-15 21:24:52'),
	(1152,11,'/janitor/admin/shop','/payment/new',1,'2022-12-15 21:24:52'),
	(1153,11,'/janitor/admin/items','/',1,'2022-12-15 21:24:52'),
	(1154,11,'/janitor/admin/qna','/',1,'2022-12-15 21:24:52'),
	(1155,11,'/janitor/admin/qna','/owner',1,'2022-12-15 21:24:52'),
	(1156,11,'/janitor/admin/qna','/edit',1,'2022-12-15 21:24:52'),
	(1157,11,'/janitor/admin/qna','/new',1,'2022-12-15 21:24:52'),
	(1158,11,'/janitor/admin/taglist','/',1,'2022-12-15 21:24:52'),
	(1159,11,'/janitor/admin/profile','/',1,'2022-12-15 21:24:52'),
	(1160,11,'/janitor/admin/profile','/subscription',1,'2022-12-15 21:24:52'),
	(1161,11,'/janitor/admin/profile','/membership',1,'2022-12-15 21:24:52'),
	(1162,11,'/janitor/admin/membership','/',1,'2022-12-15 21:24:52'),
	(1163,11,'/janitor/admin/membership','/owner',1,'2022-12-15 21:24:52'),
	(1164,11,'/janitor/admin/membership','/comments',1,'2022-12-15 21:24:52'),
	(1165,11,'/janitor/admin/membership','/subscription',1,'2022-12-15 21:24:52'),
	(1166,11,'/janitor/admin/membership','/new',1,'2022-12-15 21:24:52'),
	(1167,11,'/janitor/admin/tag','/list',1,'2022-12-15 21:24:52'),
	(1168,11,'/janitor/admin/tag','/edit',1,'2022-12-15 21:24:52'),
	(1169,11,'/janitor/admin/tag','/updateTag',1,'2022-12-15 21:24:52'),
	(1170,11,'/janitor/admin/tag','/deleteTag',1,'2022-12-15 21:24:52'),
	(1171,11,'/janitor/admin/page','/',1,'2022-12-15 21:24:52'),
	(1172,11,'/janitor/admin/page','/comments',1,'2022-12-15 21:24:52'),
	(1173,3,'/massemail','/',1,'2023-05-07 21:34:25'),
	(1174,3,'/massemail','/sendToDepartmentMembers',1,'2023-05-07 21:34:25'),
	(1175,3,'/massemail','/sendToAllMembers',1,'2023-05-07 21:34:25'),
	(1176,3,'/profil','/',1,'2023-05-07 21:34:25'),
	(1177,3,'/indkoeb','/',1,'2023-05-07 21:34:25'),
	(1178,3,'/bestil','/',1,'2023-05-07 21:34:25'),
	(1179,3,'/medlemshjaelp','/',1,'2023-05-07 21:34:25'),
	(1180,3,'/medlemshjaelp','/globalSearch',1,'2023-05-07 21:34:25'),
	(1181,3,'/lokaladmin','/',1,'2023-05-07 21:34:25'),
	(1182,3,'/butiksvagt','/',1,'2023-05-07 21:34:25'),
	(1183,3,'/bogholder','/',1,'2023-05-07 21:34:25'),
	(1184,3,'/janitor/product-seasonalbag','/',1,'2023-05-07 21:34:25'),
	(1185,3,'/janitor/product-seasonalbag','/new',1,'2023-05-07 21:34:25'),
	(1186,3,'/janitor/pickupdate','/',1,'2023-05-07 21:34:25'),
	(1187,3,'/janitor/pickupdate','/new',1,'2023-05-07 21:34:25'),
	(1188,3,'/janitor/weeklybag','/',1,'2023-05-07 21:34:25'),
	(1189,3,'/janitor/weeklybag','/new',1,'2023-05-07 21:34:25'),
	(1190,3,'/janitor/restructure','/',1,'2023-05-07 21:34:25'),
	(1191,3,'/janitor/mass-mail-log','/',1,'2023-05-07 21:34:25'),
	(1192,3,'/janitor/index','/',1,'2023-05-07 21:34:25'),
	(1193,3,'/janitor/department','/',1,'2023-05-07 21:34:25'),
	(1194,3,'/janitor/signupfee','/',1,'2023-05-07 21:34:25'),
	(1195,3,'/janitor/signupfee','/new',1,'2023-05-07 21:34:25'),
	(1196,3,'/janitor/restructure-ref','/',1,'2023-05-07 21:34:25'),
	(1197,3,'/janitor/fix','/',1,'2023-05-07 21:34:25'),
	(1198,3,'/janitor/tally','/',1,'2023-05-07 21:34:25'),
	(1199,3,'/janitor/product-weeklybag','/',1,'2023-05-07 21:34:25'),
	(1200,3,'/janitor/product-weeklybag','/new',1,'2023-05-07 21:34:25'),
	(1201,3,'/janitor/product-canvasbag','/',1,'2023-05-07 21:34:25'),
	(1202,3,'/janitor/product-canvasbag','/new',1,'2023-05-07 21:34:25'),
	(1203,3,'/janitor/cronjob','/sendRenewalNotices',1,'2023-05-07 21:34:25'),
	(1204,3,'/janitor/cronjob','/cancelUnpaidOrders',1,'2023-05-07 21:34:25'),
	(1205,3,'/janitor/cronjob','/sendCancellationWarnings',1,'2023-05-07 21:34:25'),
	(1206,3,'/janitor/membership','/',1,'2023-05-07 21:34:25'),
	(1207,3,'/janitor/membership','/subscription',1,'2023-05-07 21:34:25'),
	(1208,3,'/janitor/membership','/new',1,'2023-05-07 21:34:25'),
	(1209,3,'/janitor/product-assorted','/',1,'2023-05-07 21:34:25'),
	(1210,3,'/janitor/product-assorted','/new',1,'2023-05-07 21:34:25'),
	(1211,3,'/janitor/post','/',1,'2023-05-07 21:34:25'),
	(1212,3,'/janitor/post','/comments',1,'2023-05-07 21:34:25'),
	(1213,3,'/janitor/order-item','/',1,'2023-05-07 21:34:25'),
	(1214,3,'/janitor/admin/navigation','/',1,'2023-05-07 21:34:25'),
	(1215,3,'/janitor/admin/message','/',1,'2023-05-07 21:34:25'),
	(1216,3,'/janitor/admin/message','/owner',1,'2023-05-07 21:34:25'),
	(1217,3,'/janitor/admin/log','/',1,'2023-05-07 21:34:25'),
	(1218,3,'/janitor/admin/event','/',1,'2023-05-07 21:34:25'),
	(1219,3,'/janitor/admin/event','/comments',1,'2023-05-07 21:34:25'),
	(1220,3,'/janitor/admin/todolist','/',1,'2023-05-07 21:34:25'),
	(1221,3,'/janitor/admin/user','/list',1,'2023-05-07 21:34:25'),
	(1222,3,'/janitor/admin/user','/new',1,'2023-05-07 21:34:25'),
	(1223,3,'/janitor/admin/user','/edit',1,'2023-05-07 21:34:25'),
	(1224,3,'/janitor/admin/user','/delete',1,'2023-05-07 21:34:25'),
	(1225,3,'/janitor/admin/user','/status',1,'2023-05-07 21:34:25'),
	(1226,3,'/janitor/admin/user','/cancel',1,'2023-05-07 21:34:25'),
	(1227,3,'/janitor/admin/user','/updateUsernames',1,'2023-05-07 21:34:25'),
	(1228,3,'/janitor/admin/user','/setPassword',1,'2023-05-07 21:34:25'),
	(1229,3,'/janitor/admin/user','/apitoken',1,'2023-05-07 21:34:25'),
	(1230,3,'/janitor/admin/user','/address',1,'2023-05-07 21:34:25'),
	(1231,3,'/janitor/admin/user','/maillists',1,'2023-05-07 21:34:25'),
	(1232,3,'/janitor/admin/user','/subscription',1,'2023-05-07 21:34:25'),
	(1233,3,'/janitor/admin/user','/renewSubscriptions',1,'2023-05-07 21:34:25'),
	(1234,3,'/janitor/admin/user','/content',1,'2023-05-07 21:34:25'),
	(1235,3,'/janitor/admin/user','/access',1,'2023-05-07 21:34:25'),
	(1236,3,'/janitor/admin/user','/group',1,'2023-05-07 21:34:25'),
	(1237,3,'/janitor/admin/user','/online',1,'2023-05-07 21:34:25'),
	(1238,3,'/janitor/admin/user','/unverified-usernames',1,'2023-05-07 21:34:25'),
	(1239,3,'/janitor/admin/user','/sendVerificationLink',1,'2023-05-07 21:34:25'),
	(1240,3,'/janitor/admin/user','/sendVerificationLinks',1,'2023-05-07 21:34:25'),
	(1241,3,'/janitor/admin/user','/flushUserSession',1,'2023-05-07 21:34:25'),
	(1242,3,'/janitor/admin/member','/list',1,'2023-05-07 21:34:25'),
	(1243,3,'/janitor/admin/member','/new',1,'2023-05-07 21:34:25'),
	(1244,3,'/janitor/admin/member','/',1,'2023-05-07 21:34:25'),
	(1245,3,'/janitor/admin/wish','/',1,'2023-05-07 21:34:25'),
	(1246,3,'/janitor/admin/shop','/',1,'2023-05-07 21:34:25'),
	(1247,3,'/janitor/admin/shop','/registerPayment',1,'2023-05-07 21:34:25'),
	(1248,3,'/janitor/admin/shop','/payment/new',1,'2023-05-07 21:34:25'),
	(1249,3,'/janitor/admin/items','/',1,'2023-05-07 21:34:25'),
	(1250,3,'/janitor/admin/person','/',1,'2023-05-07 21:34:25'),
	(1251,3,'/janitor/admin/photocollection','/',1,'2023-05-07 21:34:25'),
	(1252,3,'/janitor/admin/qna','/',1,'2023-05-07 21:34:25'),
	(1253,3,'/janitor/admin/qna','/edit',1,'2023-05-07 21:34:25'),
	(1254,3,'/janitor/admin/qna','/new',1,'2023-05-07 21:34:25'),
	(1255,3,'/janitor/admin/taglist','/',1,'2023-05-07 21:34:25'),
	(1256,3,'/janitor/admin/system','/',1,'2023-05-07 21:34:25'),
	(1257,3,'/janitor/admin/profile','/',1,'2023-05-07 21:34:25'),
	(1258,3,'/janitor/admin/profile','/apitoken',1,'2023-05-07 21:34:25'),
	(1259,3,'/janitor/admin/profile','/readstates',1,'2023-05-07 21:34:25'),
	(1260,3,'/janitor/admin/profile','/subscription',1,'2023-05-07 21:34:25'),
	(1261,3,'/janitor/admin/profile','/membership',1,'2023-05-07 21:34:25'),
	(1262,3,'/janitor/admin/membership','/',1,'2023-05-07 21:34:25'),
	(1263,3,'/janitor/admin/membership','/comments',1,'2023-05-07 21:34:25'),
	(1264,3,'/janitor/admin/membership','/subscription',1,'2023-05-07 21:34:25'),
	(1265,3,'/janitor/admin/membership','/new',1,'2023-05-07 21:34:25'),
	(1266,3,'/janitor/admin/setup','/',1,'2023-05-07 21:34:25'),
	(1267,3,'/janitor/admin/setup','/pull',1,'2023-05-07 21:34:25'),
	(1268,3,'/janitor/admin/todo','/',1,'2023-05-07 21:34:25'),
	(1269,3,'/janitor/admin/todo','/edit',1,'2023-05-07 21:34:25'),
	(1270,3,'/janitor/admin/todo','/new',1,'2023-05-07 21:34:25'),
	(1271,3,'/janitor/admin/article','/',1,'2023-05-07 21:34:25'),
	(1272,3,'/janitor/admin/article','/comments',1,'2023-05-07 21:34:25'),
	(1273,3,'/janitor/admin/post','/',1,'2023-05-07 21:34:25'),
	(1274,3,'/janitor/admin/post','/owner',1,'2023-05-07 21:34:25'),
	(1275,3,'/janitor/admin/post','/comments',1,'2023-05-07 21:34:25'),
	(1276,3,'/janitor/admin/tag','/list',1,'2023-05-07 21:34:25'),
	(1277,3,'/janitor/admin/tag','/edit',1,'2023-05-07 21:34:25'),
	(1278,3,'/janitor/admin/tag','/updateTag',1,'2023-05-07 21:34:25'),
	(1279,3,'/janitor/admin/tag','/deleteTag',1,'2023-05-07 21:34:25'),
	(1280,3,'/janitor/admin/wishlist','/',1,'2023-05-07 21:34:25'),
	(1281,3,'/janitor/admin/page','/',1,'2023-05-07 21:34:25'),
	(1282,3,'/janitor/admin/page','/comments',1,'2023-05-07 21:34:25'),
	(1303,13,'/janitor/cronjob','/sendRenewalNotices',1,'2024-08-09 18:36:59'),
	(1304,13,'/janitor/cronjob','/sendOrderingReminders',1,'2024-08-09 18:36:59'),
	(1305,13,'/janitor/cronjob','/sendPickupReminders',1,'2024-08-09 18:36:59'),
	(1306,13,'/janitor/cronjob','/sendTallyNotClosedReminders',1,'2024-08-09 18:36:59'),
	(1307,13,'/janitor/cronjob','/cancelUnpaidOrders',1,'2024-08-09 18:36:59'),
	(1308,13,'/janitor/cronjob','/sendCancellationWarnings',1,'2024-08-09 18:36:59'),
	(1309,13,'/janitor/cronjob','/removeExceededDeadlineCartItems',1,'2024-08-09 18:36:59'),
	(1310,13,'/janitor/cronjob','/cancelUnpaidRenewalOrdersFromLastYear',1,'2024-08-09 18:36:59'),
	(1311,13,'/janitor/cronjob','/sendDeletionWarningToInactiveUsers',1,'2024-08-09 18:36:59'),
	(1312,13,'/janitor/cronjob','/deleteInactiveUsers',1,'2024-08-09 18:36:59'),
	(1313,13,'/janitor/cronjob','/sendCompleteSignupReminder',1,'2024-08-09 18:36:59'),
	(1314,13,'/janitor/cronjob','/deleteIncompleteSignups',1,'2024-08-09 18:36:59'),
	(1315,13,'/janitor/admin/user','/renewSubscriptions',1,'2024-08-09 18:36:59');

/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_addresses`;

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1,
  `address_label` varchar(255) DEFAULT NULL,
  `address_name` varchar(255) DEFAULT NULL,
  `att` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `country` (`country`),
  CONSTRAINT `item_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_addresses_ibfk_2` FOREIGN KEY (`country`) REFERENCES `system_countries` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_apitokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_apitokens`;

CREATE TABLE `user_apitokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_apitokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_apitokens` WRITE;
/*!40000 ALTER TABLE `user_apitokens` DISABLE KEYS */;

INSERT INTO `user_apitokens` (`id`, `user_id`, `token`)
VALUES
	(1,3,'2a2d9f7f-57ac-4853-a2a0-ccf35dcf2a95');

/*!40000 ALTER TABLE `user_apitokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_department`;

CREATE TABLE `user_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `user_department_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `project_departments` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_department` WRITE;
/*!40000 ALTER TABLE `user_department` DISABLE KEYS */;

INSERT INTO `user_department` (`id`, `user_id`, `department_id`)
VALUES
	(8055,4,4);

/*!40000 ALTER TABLE `user_department` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_gateway_stripe_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_gateway_stripe_customer`;

CREATE TABLE `user_gateway_stripe_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_gateway_stripe_customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_gateway_stripe_customer` WRITE;
/*!40000 ALTER TABLE `user_gateway_stripe_customer` DISABLE KEYS */;

INSERT INTO `user_gateway_stripe_customer` (`id`, `user_id`, `customer_id`, `created_at`)
VALUES
	(1032,4,'cus_RBCXFh9yTXqGT1','2024-11-08 11:13:26');

/*!40000 ALTER TABLE `user_gateway_stripe_customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_gateway_stripe_order_intent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_gateway_stripe_order_intent`;

CREATE TABLE `user_gateway_stripe_order_intent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_intent_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `user_gateway_stripe_order_intent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_gateway_stripe_order_intent_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_gateway_stripe_subscription_payment_method
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_gateway_stripe_subscription_payment_method`;

CREATE TABLE `user_gateway_stripe_subscription_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `payment_method_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subscription_id` (`subscription_id`),
  CONSTRAINT `user_gateway_stripe_subscription_payment_method_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_gateway_stripe_subscription_payment_method_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `user_item_subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_gateway_stripe_subscription_payment_method` WRITE;
/*!40000 ALTER TABLE `user_gateway_stripe_subscription_payment_method` DISABLE KEYS */;

INSERT INTO `user_gateway_stripe_subscription_payment_method` (`id`, `user_id`, `subscription_id`, `payment_method_id`, `created_at`)
VALUES
	(1036,4,1983,'pm_1QIq8iFJ8oOb0rEkQTIjhD18','2024-11-08 11:14:15');

/*!40000 ALTER TABLE `user_gateway_stripe_subscription_payment_method` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;

INSERT INTO `user_groups` (`id`, `user_group`)
VALUES
	(1,'Guest'),
	(2,'User'),
	(3,'Developer'),
	(7,'Shop shift'),
	(8,'Local administrator'),
	(9,'Purchasing group'),
	(10,'Communication group'),
	(11,'Super User'),
	(13,'cronjob');

/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_item_readstates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_item_readstates`;

CREATE TABLE `user_item_readstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `read_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `user_item_readstates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_item_readstates_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_item_subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_item_subscriptions`;

CREATE TABLE `user_item_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `custom_price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  `renewed_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `user_item_subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_item_subscriptions_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `user_item_subscriptions_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_item_subscriptions` WRITE;
/*!40000 ALTER TABLE `user_item_subscriptions` DISABLE KEYS */;

INSERT INTO `user_item_subscriptions` (`id`, `user_id`, `item_id`, `order_id`, `custom_price`, `created_at`, `modified_at`, `renewed_at`, `expires_at`)
VALUES
	(1983,4,6,48108,NULL,'2024-11-08 11:14:14',NULL,NULL,'2025-05-01 00:00:00');

/*!40000 ALTER TABLE `user_item_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_log_agreements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_log_agreements`;

CREATE TABLE `user_log_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `accepted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_log_agreements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_log_agreements` WRITE;
/*!40000 ALTER TABLE `user_log_agreements` DISABLE KEYS */;

INSERT INTO `user_log_agreements` (`id`, `user_id`, `name`, `accepted_at`)
VALUES
	(1529,4,'memberhelp','2022-11-16 11:55:42'),
	(2455,4,'terms','2024-11-08 10:44:39'),
	(2456,4,'terms','2024-11-08 10:45:17'),
	(2457,4,'terms','2024-11-08 10:55:44'),
	(2458,4,'terms','2024-11-08 10:58:18');

/*!40000 ALTER TABLE `user_log_agreements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_log_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_log_messages`;

CREATE TABLE `user_log_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `user_log_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_log_messages_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_log_messages` WRITE;
/*!40000 ALTER TABLE `user_log_messages` DISABLE KEYS */;

INSERT INTO `user_log_messages` (`id`, `user_id`, `item_id`, `token`, `data`, `created_at`)
VALUES
	(769,4,5,'ev07fy4ymoz1ot1hdje6kkfp9whra1','{\"MAILLIST_ID\":0,\"PRICE\":\"100,00 kr.\"}','2024-11-08 11:14:14');

/*!40000 ALTER TABLE `user_log_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_log_payment_reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_log_payment_reminders`;

CREATE TABLE `user_log_payment_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `user_log_payment_reminders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_log_payment_reminders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_log_verification_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_log_verification_links`;

CREATE TABLE `user_log_verification_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  `reminded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_log_user_log_verification_links_ibfk_2` (`username_id`),
  CONSTRAINT `user_log_user_log_verification_links_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_log_user_log_verification_links_ibfk_2` FOREIGN KEY (`username_id`) REFERENCES `user_usernames` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_maillists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_maillists`;

CREATE TABLE `user_maillists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `maillist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `maillist_id` (`maillist_id`),
  CONSTRAINT `user_maillists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_maillists_ibfk_2` FOREIGN KEY (`maillist_id`) REFERENCES `system_maillists` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_members`;

CREATE TABLE `user_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subscription_id` (`subscription_id`),
  CONSTRAINT `user_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `user_members_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `user_item_subscriptions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_members` WRITE;
/*!40000 ALTER TABLE `user_members` DISABLE KEYS */;

INSERT INTO `user_members` (`id`, `user_id`, `subscription_id`, `created_at`, `modified_at`)
VALUES
	(1,4,1983,'2024-11-08 11:14:14',NULL);

/*!40000 ALTER TABLE `user_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_password_reset_tokens`;

CREATE TABLE `user_password_reset_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(24) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



# Dump of table user_passwords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_passwords`;

CREATE TABLE `user_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `upgrade_password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_passwords_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_passwords` WRITE;
/*!40000 ALTER TABLE `user_passwords` DISABLE KEYS */;

INSERT INTO `user_passwords` (`id`, `user_id`, `password`, `upgrade_password`)
VALUES
	(1,2,'$2y$10$Pu.fvomgXo.JvnPWLsI.Le4D8ybZoN17g/gHTy3uKkb6otdv3dTJi',''),
	(2155,4,'$2y$10$LA154hxJQZlU9YO.oiapquFdPNhgGp1Mz8ThNH2eKSPkKbJFlsxc.','');

/*!40000 ALTER TABLE `user_passwords` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_payment_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_payment_methods`;

CREATE TABLE `user_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `default_method` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `user_payment_methods_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_payment_methods_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `system_payment_methods` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_payment_methods` WRITE;
/*!40000 ALTER TABLE `user_payment_methods` DISABLE KEYS */;

INSERT INTO `user_payment_methods` (`id`, `user_id`, `payment_method_id`, `default_method`, `created_at`)
VALUES
	(1021,4,2,1,'2024-11-08 11:14:13');

/*!40000 ALTER TABLE `user_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_usernames
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_usernames`;

CREATE TABLE `user_usernames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verification_code` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_usernames_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `user_usernames` WRITE;
/*!40000 ALTER TABLE `user_usernames` DISABLE KEYS */;

INSERT INTO `user_usernames` (`id`, `user_id`, `username`, `type`, `verified`, `verification_code`)
VALUES
	(1,2,'it@kbhff.dk','email',1,'dhenix8e'),
	(2,3,'cronjob@kbhff.dk','email',1,'31emz8zq'),
	(3,4,'dev@kbhff.dk','email',1,'kjs3kjdi'),
	(28912,4,'1','member_no',1,'gjnai2fl');

/*!40000 ALTER TABLE `user_usernames` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `language` varchar(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_group_id` (`user_group_id`),
  KEY `language` (`language`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`language`) REFERENCES `system_languages` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `user_group_id`, `firstname`, `lastname`, `nickname`, `status`, `language`, `created_at`, `modified_at`, `last_login_at`)
VALUES
	(1,2,NULL,NULL,'Anonymous',1,'EN','2018-06-22 21:24:33','2024-05-01 00:25:58',NULL),
	(2,3,NULL,NULL,'IT Working Group',1,'EN','2018-06-22 21:24:33','2021-06-15 10:23:47','2024-11-06 21:58:06'),
	(3,13,NULL,NULL,'Cronjob (Automated processes)',1,'DA','2021-06-14 15:49:20','2021-06-14 15:49:50',NULL),
	(4,3,'Test','Person','Test Person',1,NULL,'2017-05-17 18:05:28','2023-05-26 13:00:17','2024-11-08 15:09:06');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
