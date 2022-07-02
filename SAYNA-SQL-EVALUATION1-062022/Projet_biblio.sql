-- V1 Analyse et correction de la base de données
-- Réponse question numero 1 
-- Création de la base de données biblio 
create database biblio;

-- activer la base de données 
use biblio;

-- Création table oeuvres 
CREATE TABLE oeuvres(
	NO 		integer primary key auto_increment,
	titre 		varchar(150) not null,
	auteur 		varchar(100),
    editeur		varchar(50),
	annee		integer,
	genre		varchar(30)
) ENGINE InnoDB;

-- Création table adherents 
CREATE TABLE adherents (
	NA		INT PRIMARY KEY AUTO_INCREMENT,
	nom		VARCHAR(30) not null,
	prenom		VARCHAR(30),
	adr		VARCHAR(100) not null,
	tel		CHAR(10)
) ENGINE InnoDB;


-- Création table emprunter 
CREATE TABLE emprunter (
	dateEmp		date not null,
	dureeMax	integer not null,
	dateRet 	date,
	index(dateEmp)
) ENGINE InnoDB;


-- Insertion table oeuvres 
INSERT INTO oeuvres (titre, auteur, editeur, annee, genre) VALUES
('Narcisse et Goldmund','Hermann HESSE','GF',1930, 'Roman'),
('Bérénice','Jean RACINE','FOLIO - HACHETTE', 1670, 'Théâtre'),
('Prolégomènes à  toute métaphysique future','Emmanuel KANT','HACHETTE',1783, 'Philosophie'),
('Mon coeur mis à nu','Charles BAUDELAIRE','GF - FOLIO - HACHETTE', 1887, 'Journal'),
('Voyage au bout de la nuit','Louis-Ferdinand CELINE','FOLIO - GF', 1932, 'Roman'),
('Les possédés','Fedor DOSTOIEVSKI','FOLIO', 1872, 'Roman'),
('Le Rouge et le Noir','STENDHAL','GF - HACHETTE', 1830, 'Roman'),
('Alcibiade','Jacqueline de ROMILLY','FOLIO', 1995, 'Roman'),
('Monsieur Teste','Paul VALERY','HACHETTE', 1926, 'Roman'),
('Lettres de Gourgounel','Kenneth WHITE','GF - HACHETTE', 1979, 'Récit'),
('Lettres à un jeune poète','Rainer Maria RILKE','HACHETTE - FOLIO', 1929, 'Lettre'),
('Logique sans peine','Lewis CAROLL','FOLIO', 1887, 'Logique'),
('L''éthique','Baruch SPINOZA','GF', 1677, 'Philosophie'),
('Sur le rêve','Sigmund FREUD','FOLIO - HACHETTE',1900, 'Philosophie'),
('Sens et dénotation','Gottlob FREGE','HACHETTE', 1892, 'Philosophie'),
('Penser la logique','Gilbert HOTTOIS','HACHETTE', 1989, 'Philosophie'),
('Au coeur des ténèbres','Joseph CONRAD','FOLIO',1899, 'Roman'),
('Jan Karski','Yannick HAENEL','GALLIMARD', 2009, 'Roman');

-- Insertion table adherents 
INSERT INTO adherents VALUES 
(1,'Lecoeur','Jeanette','16 rue de la République, 75010 Paris','0145279274'),
(2,'Lecoeur','Philippe','16 rue de la République, 75010 Paris','0145279274'),
(3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294'),
(4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736'),
(5,'Léger','Marc','90 avenue du Maine, 75014 Paris','0164832947'),
(6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277'),
(7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384'),
(8,'Lebon','Clément','196 boulevard de Sebastopol, 75001 Paris','0132884739'),
(9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940'),
(10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940'),
(11,'Dufour','Stéphanie','32 rue des Alouettes, 75003 Paris','0155382940'),
(12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402'),
(13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021'),
(14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407'),
(15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983'),
(16,'Carre','Stéphane','51 boulevard Diderot, 75012 Paris','0174693277'),
(17,'Johnson','Astrid','3 rue Léon Blum, 75002 Paris','0143762947'),
(18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399'),
(19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264'),
(20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463'),
(21,'Terlu','Véronique','45 rue des Batignolles, 75020 Paris','0165998372'),
(22,'Rihour','Cécile','7 rue Montorgueil, 75002 Paris','0166894754'),
(23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549'),
(24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563'),
(25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934'),
(26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065'),
(27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489'),
(28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492'),
(29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700'),
(30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221');

-- Insertion table emprunter 
INSERT INTO emprunter (NO_O, dateEmp, dureeMax, dateRet, NA_A) VALUES 
(1,from_days(to_days(current_date)-350),21,from_days(to_days(current_date)-349),26),
(4,from_days(to_days(current_date)-323),21,from_days(to_days(current_date)-310),4),
(10,from_days(to_days(current_date)-315),21,from_days(to_days(current_date)-318),9),
(1,from_days(to_days(current_date)-311),21,from_days(to_days(current_date)-293),1),
(12,from_days(to_days(current_date)-300),21,from_days(to_days(current_date)-1290),7),
(4,from_days(to_days(current_date)-283),21,from_days(to_days(current_date)-282),27),
(10,from_days(to_days(current_date)-273),21,from_days(to_days(current_date)-250),7),
(4,from_days(to_days(current_date)-232),14,from_days(to_days(current_date)-228),12),
(8,from_days(to_days(current_date)-226),14,from_days(to_days(current_date)-220),26),
(8,from_days(to_days(current_date)-201),14,from_days(to_days(current_date)-183),13),
(6,from_days(to_days(current_date)-199),14,from_days(to_days(current_date)-194),3),
(10,from_days(to_days(current_date)-169),14,from_days(to_days(current_date)-157),8),
(1,from_days(to_days(current_date)-153),14,from_days(to_days(current_date)-142),3),
(15,from_days(to_days(current_date)-146),14,from_days(to_days(current_date)-138),10),
(1,from_days(to_days(current_date)-106),14,from_days(to_days(current_date)-101),2),
(4,from_days(to_days(current_date)-103),14,from_days(to_days(current_date)-93),5),
(2,from_days(to_days(current_date)-86),14,from_days(to_days(current_date)-79),3),
(8,from_days(to_days(current_date)-76),14,from_days(to_days(current_date)-70),18),
(2,from_days(to_days(current_date)-37),14,from_days(to_days(current_date)-28),4),
(1,from_days(to_days(current_date)-28),14,from_days(to_days(current_date)-23),1),
(3,from_days(to_days(current_date)-21),14,from_days(to_days(current_date)-17),3),
(4,from_days(to_days(current_date)-24),14,from_days(to_days(current_date)-8),9),
(5,from_days(to_days(current_date)-23),14,from_days(to_days(current_date)-11),14),
(2,from_days(to_days(current_date)-10),14, NULL,28),
(9,from_days(to_days(current_date)-10),14, NULL,28),
(14,from_days(to_days(current_date)-9),14, NULL,1),
(16,from_days(to_days(current_date)-9),14, NULL,1),
(5,from_days(to_days(current_date)-5),14, NULL,16),
(1,from_days(to_days(current_date)-395),14, NULL,27),
(11,from_days(to_days(current_date)-30),14, NULL,22),
(17,from_days(to_days(current_date)-1),14, NULL,20),
(5,from_days(to_days(current_date)-1),14, NULL,20),
(18,from_days(to_days(current_date)-1),14, NULL,20);

-- Réponse question numéro 2
-- Voir Analyse_de_lenonce.docs

-- Réponse question numéro 3
-- Calcul nombre d'enregistrement dans la table oeuvre 
SELECT COUNT(*) AS tuples_total_oeuvres FROM oeuvres; -- 18

-- Calcul nombre d'enregistrement dans la table adherents 
SELECT COUNT(*) AS tuples_total_adherents FROM adherents; -- 30

-- Calcul nombre d'enregistrement dans la table emprunter 
SELECT COUNT(*) AS tuples_total_emprunter FROM emprunter; -- 33

-- Calcul le nombre d'enregistrement dans la base de données biblio
SELECT  
(
	SELECT COUNT(*) FROM oeuvres
) +
(
	SELECT COUNT(*) FROM adherents
) +
(
	SELECT COUNT(*) FROM emprunter
)
AS tpl_total_biblio; -- 81

-- Réponse question numéro 4
-- Calcul nombre de colonne dans table oeuvres
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='oeuvres'; -- 6

-- Calcul nombre de colonne dans table adherents
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='adherents'; -- 5

-- Calcul nombre de colonne dans table emprunter
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='emprunter'; -- 6

-- Calcul le nombre d'enregistrement dans la base de données biblio
SELECT  
(
	SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='oeuvres'
) +
(
	SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='adherents'
) +
(
	SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='emprunter'
)
AS colonne_total_biblio; -- 17

-- Réponse de la question numéro 5
-- Clé primaire de la table oeuvres
-- NO int(11) AI PK 

-- Clé primaire de la table adherents
-- NA int(11) AI PK

-- Clé primaire de la table emprunter
-- idEmprunter int(11) AI PK

-- V.2 - Interactions avec la base de données
-- Réponse de la question numéro 6
-- Nombre de livre emprunter actuellement
SELECT DISTINCT titre FROM oeuvres, emprunter WHERE NO_O = NO AND dateEmp = current_date; -- 0

-- Réponse de la question numéro 7
-- livres emprunter par Jeanette Lecoeur
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter WHERE NA_A = NA AND prenom = 'Jeanette'; 

-- Réponse de la question numéro 8
-- livres emprunter à la date du Septembre
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter GROUP BY NO_O = NO AND annee = 'septembre 2009';

-- Réponse de la question numéro 9
-- Liste des adherents qui ont emprunté un livre de Fedor Dostoievski
SELECT DISTINCT prenom, nom FROM oeuvres, adherents, emprunter GROUP BY NA_A = NA AND titre = 'Fedor Dostoievski';

-- Réponse de la question numéro 10
-- nouvel adhérent vient de s’inscrire : Olivier DUPOND, 76, quai de la Loire, 75019 Paris, téléphone : 0102030405
INSERT INTO adherents VALUES  
(31,'DUPOND','Olivier','76 quai de la Loire, 75019 Paris','0102030405');

-- Réponse de la question numéro 11
--  Martine CROZIER vient d’emprunter « Au cœur des ténèbres » que vous venez d’ajouter et « Le rouge et le noir » chez Hachette, livre n°23. Faire les mises à jour de la BD.
INSERT INTO oeuvres (titre, auteur, editeur) VALUES
('Au cœur des ténèbres','Hermann HESSE','chez Hachette - livre n°23'),
('Le rouge et le noir','Hermann HESSE','chez Hachette - livre n°23');

-- Réponse de la question numéro 12
-- M. Cyril FREDERIC ramène les livres qu’il a empruntés. Faire la mise à jour de la BD.
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter WHERE NA_A = NA AND prenom = 'Cyril FREDERIC';

-- Réponse de la question numéro 13
-- M.  Cyril  FREDERIC  essaye d’emprunter le livre n°23. Ecrire la requête. Que constatez-vous ?
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter WHERE NO_O = 23; -- Il n y a pas de livre numéro 23

-- Réponse de la question numéro 14
-- M.  Cyril  FREDERIC  essaye d’emprunter le livre n°29. Écrire la requête. Que constatez-vous ?
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter WHERE NO_O = 29; -- Il n y a pas de livre numéro 23

-- Réponse de la question numéro 15
-- Le ou les auteurs du titre « Voyage au bout de la nuit »
SELECT DISTINCT auteur FROM oeuvres, adherents, emprunter WHERE NO_O = NO AND titre = 'Voyage au bout de la nuit';

-- Réponse de la question numéro 16
-- Le ou les éditeurs du titre « Narcisse et Goldmund »
SELECT DISTINCT editeur FROM oeuvres, adherents, emprunter WHERE NO_O = NO AND titre = 'Narcisse et Goldmund';

-- Réponse de la question numéro 17
-- Les adhérents actuellement en retard ?
SELECT DISTINCT prenom, nom FROM oeuvres, adherents, emprunter GROUP BY NA_A = NA AND dateRet = NULL;

-- Réponse de la question numéro 18
-- Quels sont les livres actuellement en retard ?
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter GROUP BY NO_O = NO AND dateRet = NULL;

-- Réponse de la question numéro 19
-- Les  adhérents en retard, avec le nombre de livres en retard et la moyenne du nombre de jours de retard.
SELECT DISTINCT prenom, nom FROM 

-- Réponse de la question numéro 20
-- Nombre de livres empruntés par auteur.
SELECT DISTINCT titre FROM oeuvres, adherents, emprunter GROUP BY NO_O = NO AND ;

-- Réponse de la question numéro 21
-- Nombre de livres empruntés par éditeur.


-- Réponse de la question numéro 22
-- Durée moyenne des emprunts rendus. On commencera par afficher les durées des emprunts rendus.


-- Réponse de la question numéro 23
-- Durée moyenne des retards pour l’ensemble des emprunts


-- Réponse de la question numéro 24
-- Durée moyenne des retards parmi les seuls retardataires

