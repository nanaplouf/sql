--1-- Lister toutes les BDD
SHOW DATABASES;

--2-- Créer une base de données SQL nommée HARIBO
CREATE DATABASE `haribo`;
USE `haribo`;
--3--
/**
* Créer une table user qui comporte 4 champs :
* - id_user => nombre qui s'auto-incrémente, requis et clé primaire
* - name => 100 caractères, requis
* - color_eyes => 30 caractères, requis
* - gender => homme / femme / autre , requis
*/
CREATE TABLE `user` (
    `id_user` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100),
    `color_eyes` VARCHAR(30),
    `gender` VARCHAR(30)
);
 
--4--
/**
* Insérer dans cette table les informations de votre groupe (données ci-dessous) :
* Vera marron f
* Hafida marron f
* Kylian marron h
* Priscille marron f
* Pauline marron f
* Ilyes marron a
* Balamini marron h
* Kevin vert h
* Mohamed marron h
* Lamia marron f
* Catherine marron f
*/
INSERT INTO `user` (`name`, `color_eyes`, `gender`)
VALUES
('Vera','marron','f'),
('Hafida','marron','f'),
('Kylian','marron','h'),
('Priscille','marron','f'),
('Pauline','marron','f'),
('Ilyes','marron','a'),
('Balamini','marron','h'),
('Kevin','vert','h'),
('Mohamed','marron','h'),
('Lamia','marron','f'),
('Catherine','marron','f');

--5--
/**
* Créer une table candy qui comporte 3 champs :
* - id_candy => nombre qui s'auto-incrémente, requis et clé primaire
* - name => 100 caractères, requis
* - flavor => 100 caractères, requis
*/
CREATE TABLE `candy` (
    `id_candy` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100),
    `flavor` VARCHAR(100)
);

--pour suprimer une table c'est 
DROP TABLE `candy`;

--6--
/**
* Insérer dans cette table des bonbons Haribo (données ci-dessous) :
* 'dragibus', 'cola'
* 'tagada', 'fraise'
* 'bams', 'banane'
* 'rotella', 'reglisse'
* 'floppys', 'sucre'
* 'rainbollows', 'marshmallow'
* 'bigharri', 'cerise'
* 'oursor', 'fruits'
* 'croco', 'fruits'
* 'oeufoplat', 'guimauve')
* 'flanbotti', 'caramel'
*/
INSERT INTO `candy` (`name`, `flavor` )
VALUES
('dragibus', 'cola'),
('tagada', 'fraise'),
('bams', 'banane'),
('rotella', 'reglisse'),
('floppys', 'sucre'),
('rainbollows', 'marshmallow'),
('bigharri', 'cerise'),
('oursor', 'fruits'),
('croco', 'fruits'),
('oeufoplat', 'guimauve'),
('flanbotti', 'caramel');

--7--
/**
* créer une table eat qui comporte 5 champs :
* - id_eat => nombre qui s'auto-incrémente, requis et clé primaire
* - id_user => champs de la table user (clé étrangère table user)
* - id_candy => champs de la table bonbon (clé étrangère table candy)
* - date_eat => type date, requis
* - quantity => nombre, requis
*/

CREATE TABLE `eat` (
    `id_eat` INT AUTO_INCREMENT PRIMARY KEY,
    `id_user` INT,
    `id_candy` INT,
    `date_eat` Date,
    `quantity` INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_candy) REFERENCES candy(id_candy)
);

--8--
/**
* insérer dans la table eat des informations sur qui a consommé quel bonbon, quand et dans quelles quantités (données ci-dessous) :
(4,7,'2025-08-20', 5),
(1,1,'2025-08-05', 5),
(2,2,'2025-08-03', 5),
(3,3,'2025-08-04', 5),
(5,4,'2025-08-15', 5),
(6,5,'2025-08-18', 5),
(7,6,'2025-08-22', 5),
(8,8,'2025-08-19', 5),
(9,9,'2025-08-21', 5),
(10,10,'2025-08-01', 5),
(11,11,'2025-08-01', 5)
*/


--9-- Lister les tables de la BDD *Haribo*


--10-- voir les colones de la table *candy*


--11-- Sélectionner tous les champs de tous les enregistrements de la table *user*


--12-- Rajouter un nouveau user *Patriiiick* en forçant la numérotation de l'id par la valeur 150


--13-- Rajouter un nouveau user *Mila* SANS forcer la numérotation de l'id


--14-- Changer le prénom du user qui a l'id 150 de *Patriiiick* à *Patrick*


--15-- Rajouter dans la table eat que Patrick a mangé 5 Tagada purpule le 15 septembre 2023


--16-- Sélectionner tous les noms des bonbons


--17-- Sélectionner tous les noms des bonbons en enlevant les doublons


--18-- Récupérer les couleurs des yeux des users (Sélectionner plusieurs champs dans une table)


--19-- Dédoublonner un résultat sur plusieurs champs


--20-- Sélectionner l'user qui a l'id 5


--21-- Sélectionner tous les users qui ont les yeux marrons


--22-- Sélectionner tous les users dont l'id est plus grand que 9


--23-- Sélectionner tous les users SAUF celui dont l'id est 13 (soyons supersticieux !) :!\ il y a 2 façons de faire

--24-- Sélectionner tous les users qui ont un id inférieur ou égal à 10


--25-- Sélectionner tous les users dont l'id est compris entre 7 et 11


--26-- Sélectionner les users dont le prénom commence par un *S*


--27-- Trier les users femmes par id décroissant


--28-- Trier les users hommes par prénom dans l'ordre alphabétique


--29-- Trier les users en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabétique


--30-- Limiter l'affichage d'une requête de sélection de tous les users aux 3 premires résultats


--31-- Limiter l'affichage d'une requête de sélection de tous les users à partir du 3ème résultat et des 5 suivants


--32-- Afficher les 4 premiers users qui ont les yeux marron


--33-- Pareil mais en triant les prénoms dans l'ordre alphabétique


--34-- Compter le nombre de users


--35-- Compter le nombre de users hommes mais en changeant le nom de la colonne de résultat par *nb_users_H*


--36-- Compter le nombre de couleurs d'yeux différentes


--37-- Afficher le prénom et les yeux du user qui a l'id le plus petit


--38-- Afficher le prénom et les yeux du user qui a l'id le plus grand /!\ 
--c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête)


--39-- Afficher les users qui ont les yeux bleu et vert


--40-- A l'inverse maintenant, afficher les users qui n'ont pas les yeux bleu ni vert


--41-- récupérer tous les users qui ont mangé des bonbons, avec le détail de leurs consommations


--42-- récupérer que les users qui ont mangé des bonbons, avec le détail de leurs consommations


--43-- prénom du user, le nom du bonbon, la date de consommation pour tous les users qui ont mangé au moins une fois


--44-- Afficher les quantités consommées par les users (uniquement ceux qui ont mangé !)


--45-- Calculer combien de bonbons ont été mangés au total par chaque user et afficher le nombre de fois où ils ont mangé


--46-- Afficher combien de bonbons ont été consommés au total


--47-- Afficher le total de *Tagada* consommées


--48-- Afficher les prénoms des users qui n'ont rien mangé


--49-- Afficher les saveurs des bonbons (sans doublons)


--50-- Afficher le prénom du user qui a mangé le plus de bonbons
