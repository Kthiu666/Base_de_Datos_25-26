-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: campeonatoformidable
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arbitro`
--

DROP TABLE IF EXISTS `arbitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbitro` (
  `id_arbitro` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_arbitro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitro`
--

LOCK TABLES `arbitro` WRITE;
/*!40000 ALTER TABLE `arbitro` DISABLE KEYS */;
INSERT INTO `arbitro` VALUES (301,'Szymon Marciniak'),(302,'Daniele Orsato'),(303,'Anthony Taylor'),(304,'Clément Turpin'),(305,'Michael Oliver'),(306,'Néstor Pitana'),(307,'Wilton Sampaio'),(308,'Jesús Gil Manzano'),(309,'Danny Makkelie'),(310,'Slavko Vinčić'),(311,'István Kovács'),(312,'Cüneyt Çakır'),(313,'Félix Brych'),(314,'Björn Kuipers'),(315,'Pierluigi Collina');
/*!40000 ALTER TABLE `arbitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenador`
--

DROP TABLE IF EXISTS `entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenador` (
  `id_entrenador` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_entrenador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenador`
--

LOCK TABLES `entrenador` WRITE;
/*!40000 ALTER TABLE `entrenador` DISABLE KEYS */;
INSERT INTO `entrenador` VALUES (101,'Pep Guardiola','Española'),(102,'Carlo Ancelotti','Italiana'),(103,'Jürgen Klopp','Alemana'),(104,'Mikel Arteta','Española'),(105,'Xabi Alonso','Española'),(106,'Diego Simeone','Argentina'),(107,'Luis Enrique','Española'),(108,'Zinedine Zidane','Francesa'),(109,'Julian Nagelsmann','Alemana'),(110,'Thomas Tuchel','Alemana'),(111,'Antonio Conte','Italiana'),(112,'Massimiliano Allegri','Italiana'),(113,'Unai Emery','Española'),(114,'Tite','Brasileña'),(115,'Hansi Flick','Alemana');
/*!40000 ALTER TABLE `entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `id_equipo` int NOT NULL,
  `nombre_oficial` varchar(255) NOT NULL,
  `id_entrenador` int NOT NULL,
  PRIMARY KEY (`id_equipo`),
  UNIQUE KEY `id_entrenador` (`id_entrenador`),
  CONSTRAINT `fk_equipo_entrenador` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenador` (`id_entrenador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (401,'Manchester City',101),(402,'Real Madrid',102),(403,'Liverpool',103),(404,'Arsenal',104),(405,'Bayer Leverkusen',105),(406,'Atlético de Madrid',106),(407,'Paris Saint-Germain',107),(408,'Olympique Marseille',108),(409,'Bayern Múnich',109),(410,'Borussia Dortmund',110),(411,'Inter de Milán',111),(412,'Juventus',112),(413,'Aston Villa',113),(414,'Flamengo',114),(415,'FC Barcelona',115);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `id_estadio` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_estadio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (201,'Santiago Bernabéu'),(202,'Camp Nou'),(203,'Wembley Stadium'),(204,'Maracanã'),(205,'Anfield'),(206,'Old Trafford'),(207,'Allianz Arena'),(208,'San Siro (Giuseppe Meazza)'),(209,'La Bombonera'),(210,'Estadio Monumental (River)'),(211,'Signal Iduna Park'),(212,'Parc des Princes'),(213,'Etihad Stadium'),(214,'Estadio Azteca'),(215,'Estádio da Luz');
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `estadio_partido_real_city`
--

DROP TABLE IF EXISTS `estadio_partido_real_city`;
/*!50001 DROP VIEW IF EXISTS `estadio_partido_real_city`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `estadio_partido_real_city` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `goles`
--

DROP TABLE IF EXISTS `goles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goles` (
  `id_gol` int NOT NULL AUTO_INCREMENT,
  `id_jugador` int NOT NULL,
  `id_partido` int NOT NULL,
  `minuto` int DEFAULT NULL,
  PRIMARY KEY (`id_gol`),
  KEY `fk_gol_jugador` (`id_jugador`),
  KEY `fk_gol_partido` (`id_partido`),
  CONSTRAINT `fk_gol_jugador` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `fk_gol_partido` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goles`
--

LOCK TABLES `goles` WRITE;
/*!40000 ALTER TABLE `goles` DISABLE KEYS */;
INSERT INTO `goles` VALUES (1,501,601,22),(2,502,601,45),(3,503,602,15),(4,504,602,78),(5,505,603,91),(6,507,604,8),(7,509,605,33),(8,510,605,50),(9,511,606,68),(10,513,607,72),(11,515,608,19),(12,501,608,85),(13,502,609,9),(14,502,609,92),(15,514,615,44);
/*!40000 ALTER TABLE `goles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_jugador` int NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `posicion` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `dorsal` int DEFAULT NULL,
  `id_equipo` int NOT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `fk_jugador_equipo` (`id_equipo`),
  CONSTRAINT `fk_jugador_equipo` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (501,'Erling Haaland','Delantero','Noruega',9,401),(502,'Jude Bellingham','Mediocampista','Inglaterra',5,402),(503,'Mohamed Salah','Delantero','Egipto',11,403),(504,'Bukayo Saka','Delantero','Inglaterra',7,404),(505,'Florian Wirtz','Mediocampista','Alemania',10,405),(506,'Antoine Griezmann','Delantero','Francia',7,406),(507,'Kylian Mbappé','Delantero','Francia',10,407),(508,'P.E. Aubameyang','Delantero','Gabón',10,408),(509,'Harry Kane','Delantero','Inglaterra',9,409),(510,'Marco Reus','Mediocampista','Alemania',11,410),(511,'Lautaro Martínez','Delantero','Argentina',10,411),(512,'Dušan Vlahović','Delantero','Serbia',9,412),(513,'Ollie Watkins','Delantero','Inglaterra',11,413),(514,'Giorgian De Arrascaeta','Mediocampista','Uruguay',14,414),(515,'Lamine Yamal','Delantero','España',27,415);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `id_partido` int NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `id_equipo_local` int NOT NULL,
  `id_equipo_visitante` int NOT NULL,
  `id_estadio` int NOT NULL,
  `id_arbitro` int NOT NULL,
  PRIMARY KEY (`id_partido`),
  KEY `fk_partido_local` (`id_equipo_local`),
  KEY `fk_partido_visitante` (`id_equipo_visitante`),
  KEY `fk_partido_estadio` (`id_estadio`),
  KEY `fk_partido_arbitro` (`id_arbitro`),
  CONSTRAINT `fk_partido_arbitro` FOREIGN KEY (`id_arbitro`) REFERENCES `arbitro` (`id_arbitro`),
  CONSTRAINT `fk_partido_estadio` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`),
  CONSTRAINT `fk_partido_local` FOREIGN KEY (`id_equipo_local`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `fk_partido_visitante` FOREIGN KEY (`id_equipo_visitante`) REFERENCES `equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (601,'2025-12-01 20:00:00',401,402,213,301),(602,'2025-12-01 20:00:00',403,404,205,302),(603,'2025-12-02 18:00:00',405,406,207,303),(604,'2025-12-02 18:00:00',407,408,212,304),(605,'2025-12-03 21:00:00',409,410,207,305),(606,'2025-12-03 21:00:00',411,412,208,306),(607,'2025-12-04 15:00:00',413,414,203,307),(608,'2025-12-04 15:00:00',415,401,202,308),(609,'2025-12-05 17:00:00',402,403,201,309),(610,'2025-12-05 17:00:00',404,405,206,310),(611,'2025-12-06 19:00:00',406,407,210,311),(612,'2025-12-06 19:00:00',408,409,209,312),(613,'2025-12-07 20:00:00',410,411,211,313),(614,'2025-12-07 20:00:00',412,413,208,314),(615,'2025-12-08 21:00:00',414,415,204,315);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id_tarjeta` int NOT NULL AUTO_INCREMENT,
  `id_jugador` int NOT NULL,
  `id_partido` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tarjeta`),
  KEY `fk_tarjeta_jugador` (`id_jugador`),
  KEY `fk_tarjeta_partido` (`id_partido`),
  CONSTRAINT `fk_tarjeta_jugador` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `fk_tarjeta_partido` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,501,601,'Amarilla'),(2,502,601,'Amarilla'),(3,504,602,'Roja'),(4,506,603,'Amarilla'),(5,508,604,'Amarilla'),(6,509,605,'Amarilla'),(7,512,606,'Amarilla'),(8,511,606,'Amarilla'),(9,513,607,'Amarilla'),(10,515,608,'Amarilla'),(11,503,609,'Roja'),(12,505,610,'Amarilla'),(13,507,611,'Amarilla'),(14,510,613,'Amarilla'),(15,514,615,'Amarilla');
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_arbitos_inter`
--

DROP TABLE IF EXISTS `view_arbitos_inter`;
/*!50001 DROP VIEW IF EXISTS `view_arbitos_inter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_arbitos_inter` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_delantero_noruego_city`
--

DROP TABLE IF EXISTS `view_delantero_noruego_city`;
/*!50001 DROP VIEW IF EXISTS `view_delantero_noruego_city`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_delantero_noruego_city` AS SELECT 
 1 AS `nombre_completo`,
 1 AS `posicion`,
 1 AS `nombre_oficial`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_entrenador_aleman_barca`
--

DROP TABLE IF EXISTS `view_entrenador_aleman_barca`;
/*!50001 DROP VIEW IF EXISTS `view_entrenador_aleman_barca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_entrenador_aleman_barca` AS SELECT 
 1 AS `nombre`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_estadio_partido_city_real`
--

DROP TABLE IF EXISTS `view_estadio_partido_city_real`;
/*!50001 DROP VIEW IF EXISTS `view_estadio_partido_city_real`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_estadio_partido_city_real` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_jugadores_amarilla`
--

DROP TABLE IF EXISTS `view_jugadores_amarilla`;
/*!50001 DROP VIEW IF EXISTS `view_jugadores_amarilla`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_jugadores_amarilla` AS SELECT 
 1 AS `nombre_completo`,
 1 AS `dorsal`,
 1 AS `nacionalidad`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `estadio_partido_real_city`
--

/*!50001 DROP VIEW IF EXISTS `estadio_partido_real_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estadio_partido_real_city` AS select distinct `es`.`nombre` AS `nombre` from (((`estadio` `es` join `partido` `p` on((`es`.`id_estadio` = `p`.`id_estadio`))) join `equipo` `e_local` on((`p`.`id_equipo_local` = `e_local`.`id_equipo`))) join `equipo` `e_visitante` on((`p`.`id_equipo_visitante` = `e_visitante`.`id_equipo`))) where ((`e_local`.`nombre_oficial` = 'Manchester City') and (`e_visitante`.`nombre_oficial` = 'Real Madrid')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_arbitos_inter`
--

/*!50001 DROP VIEW IF EXISTS `view_arbitos_inter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_arbitos_inter` AS select `a`.`nombre` AS `nombre` from ((`arbitro` `a` join `partido` `p` on((`a`.`id_arbitro` = `p`.`id_arbitro`))) join `equipo` `e` on(((`e`.`id_equipo` = `p`.`id_equipo_local`) or (`e`.`id_equipo` = `p`.`id_equipo_visitante`)))) where (`e`.`nombre_oficial` = 'Inter de Mil�n') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_delantero_noruego_city`
--

/*!50001 DROP VIEW IF EXISTS `view_delantero_noruego_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_delantero_noruego_city` AS select `j`.`nombre_completo` AS `nombre_completo`,`j`.`posicion` AS `posicion`,`e`.`nombre_oficial` AS `nombre_oficial`,`j`.`nacionalidad` AS `nacionalidad` from (`jugador` `j` join `equipo` `e` on((`j`.`id_equipo` = `e`.`id_equipo`))) where ((`j`.`posicion` = 'Delantero') and (`e`.`nombre_oficial` = 'Manchester City') and (`j`.`nacionalidad` = 'Noruega')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_entrenador_aleman_barca`
--

/*!50001 DROP VIEW IF EXISTS `view_entrenador_aleman_barca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_entrenador_aleman_barca` AS select `en`.`nombre` AS `nombre`,`en`.`nacionalidad` AS `nacionalidad` from (`entrenador` `en` join `equipo` `e` on((`en`.`id_entrenador` = `e`.`id_entrenador`))) where ((`en`.`nacionalidad` = 'Alemana') and (`e`.`nombre_oficial` = 'FC Barcelona')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_estadio_partido_city_real`
--

/*!50001 DROP VIEW IF EXISTS `view_estadio_partido_city_real`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_estadio_partido_city_real` AS select `estadio`.`nombre` AS `nombre` from `estadio` where `estadio`.`id_estadio` in (select `p`.`id_estadio` from `partido` `p` where ((`p`.`id_equipo_local` = (select `equipo`.`id_equipo` from `equipo` where (`equipo`.`nombre_oficial` = 'Manchester City'))) and (`p`.`id_equipo_visitante` = (select `equipo`.`id_equipo` from `equipo` where (`equipo`.`nombre_oficial` = 'Real Madrid'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_jugadores_amarilla`
--

/*!50001 DROP VIEW IF EXISTS `view_jugadores_amarilla`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_jugadores_amarilla` AS select `j`.`nombre_completo` AS `nombre_completo`,`j`.`dorsal` AS `dorsal`,`j`.`nacionalidad` AS `nacionalidad`,`t`.`tipo` AS `tipo` from (`tarjetas` `t` join `jugador` `j` on((`t`.`tipo` = 'Amarilla'))) where (`j`.`id_jugador` = `t`.`id_jugador`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-12  8:52:32
