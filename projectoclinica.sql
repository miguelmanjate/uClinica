-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: projectoclinica
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carreira`
--

DROP TABLE IF EXISTS `carreira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreira` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreira`
--

LOCK TABLES `carreira` WRITE;
/*!40000 ALTER TABLE `carreira` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_forma_de_pagamento`
--

DROP TABLE IF EXISTS `clinica_forma_de_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_forma_de_pagamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `codigo_transacao` varchar(255) DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_trancacao` date DEFAULT NULL,
  `designacao` varchar(255) DEFAULT NULL,
  `nome_do_banco` varchar(255) DEFAULT NULL,
  `numero_conta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_forma_de_pagamento`
--

LOCK TABLES `clinica_forma_de_pagamento` WRITE;
/*!40000 ALTER TABLE `clinica_forma_de_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_forma_de_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_iva`
--

DROP TABLE IF EXISTS `clinica_iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_iva` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `tipo_iva` varchar(255) DEFAULT NULL,
  `valor_iva` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_iva`
--

LOCK TABLES `clinica_iva` WRITE;
/*!40000 ALTER TABLE `clinica_iva` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_categoria`
--

DROP TABLE IF EXISTS `clinica_param_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `param_categoria_descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_categoria`
--

LOCK TABLES `clinica_param_categoria` WRITE;
/*!40000 ALTER TABLE `clinica_param_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_ciclo`
--

DROP TABLE IF EXISTS `clinica_param_ciclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_ciclo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `activo` bit(1) NOT NULL,
  `data_fim` date DEFAULT NULL,
  `param_ciclo_data_inicio` date DEFAULT NULL,
  `designacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_ciclo`
--

LOCK TABLES `clinica_param_ciclo` WRITE;
/*!40000 ALTER TABLE `clinica_param_ciclo` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_exame_do_paciente`
--

DROP TABLE IF EXISTS `clinica_param_exame_do_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_exame_do_paciente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `data_marcacao` date DEFAULT NULL,
  `data_realizacao` date DEFAULT NULL,
  `ordem` varchar(255) DEFAULT NULL,
  `realizado` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_exame_do_paciente`
--

LOCK TABLES `clinica_param_exame_do_paciente` WRITE;
/*!40000 ALTER TABLE `clinica_param_exame_do_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_exame_do_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_grupo`
--

DROP TABLE IF EXISTS `clinica_param_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_grupo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_grupo`
--

LOCK TABLES `clinica_param_grupo` WRITE;
/*!40000 ALTER TABLE `clinica_param_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_orgao`
--

DROP TABLE IF EXISTS `clinica_param_orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_orgao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_orgao`
--

LOCK TABLES `clinica_param_orgao` WRITE;
/*!40000 ALTER TABLE `clinica_param_orgao` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_orgao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_risco`
--

DROP TABLE IF EXISTS `clinica_param_risco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_risco` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_risco`
--

LOCK TABLES `clinica_param_risco` WRITE;
/*!40000 ALTER TABLE `clinica_param_risco` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_risco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_sectors`
--

DROP TABLE IF EXISTS `clinica_param_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) DEFAULT NULL,
  `unidades_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9tkdf8qkf97n54kboypf7p4fv` (`unidades_id`),
  CONSTRAINT `FK9tkdf8qkf97n54kboypf7p4fv` FOREIGN KEY (`unidades_id`) REFERENCES `clinica_param_unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_sectors`
--

LOCK TABLES `clinica_param_sectors` WRITE;
/*!40000 ALTER TABLE `clinica_param_sectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_servico_do_sector`
--

DROP TABLE IF EXISTS `clinica_param_servico_do_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_servico_do_sector` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `data` date DEFAULT NULL,
  `estado_activo` bit(1) NOT NULL,
  `preco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_servico_do_sector`
--

LOCK TABLES `clinica_param_servico_do_sector` WRITE;
/*!40000 ALTER TABLE `clinica_param_servico_do_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_servico_do_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_tipo_risco`
--

DROP TABLE IF EXISTS `clinica_param_tipo_risco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_tipo_risco` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designcao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_tipo_risco`
--

LOCK TABLES `clinica_param_tipo_risco` WRITE;
/*!40000 ALTER TABLE `clinica_param_tipo_risco` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica_param_tipo_risco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_param_unidades`
--

DROP TABLE IF EXISTS `clinica_param_unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_param_unidades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `designacao` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `orgao_unidade` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4t5osjn7xhwyehy54gqk6lyte` (`orgao_unidade`),
  CONSTRAINT `FK4t5osjn7xhwyehy54gqk6lyte` FOREIGN KEY (`orgao_unidade`) REFERENCES `clinica_param_orgao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_param_unidades`
--

LOCK TABLES `clinica_param_unidades` WRITE;
/*!40000 ALTER TABLE `clinica_param_unidades` DISABLE KEYS */;
INSERT INTO `clinica_param_unidades` VALUES (1,'2018-06-04 11:44:38','2018-06-04 11:44:38','Centro de Informática da UEM',NULL,NULL,NULL),(2,'2018-06-04 11:46:17','2018-06-04 11:46:17','Registo Académico',NULL,NULL,NULL),(3,'2018-06-04 11:47:17','2018-06-04 11:47:17','Biblioteca',NULL,NULL,NULL),(4,'2018-06-04 11:48:57','2018-06-04 11:48:57','Faculdade de Letras',NULL,NULL,NULL),(5,'2018-06-04 11:49:56','2018-06-04 11:49:56','Faculdade de Ciências',NULL,NULL,NULL),(6,'2018-06-04 11:51:06','2018-06-04 11:51:06','Faculdade de Economia',NULL,NULL,NULL),(7,'2018-06-04 11:56:47','2018-06-04 11:56:47','Faculdade de Medicina',NULL,NULL,NULL),(8,'2018-06-04 11:57:31','2018-06-04 11:57:31','Faculdade de Engenharia',NULL,NULL,NULL),(9,'2018-06-04 11:58:11','2018-06-04 11:58:11','Reitoria',NULL,NULL,NULL),(10,'2018-06-04 12:07:06','2018-06-04 12:07:06','Faculdade de Arquitectura e Planeamento Físico',NULL,NULL,NULL),(11,'2018-06-04 12:07:53','2018-06-04 12:07:53','Faculdade de Filosofia',NULL,NULL,NULL),(12,'2018-06-04 12:08:49','2018-06-04 12:08:49','Centro de Análise de Políticas',NULL,NULL,NULL),(13,'2018-06-04 12:09:39','2018-06-04 12:09:39','Recursos Humanos',NULL,NULL,NULL),(14,'2018-06-04 12:10:29','2018-06-04 12:10:29','Centro de Biotecnologia',NULL,NULL,NULL),(15,'2018-06-04 12:11:18','2018-06-04 12:11:18','Centro Clínica Jurídica',NULL,NULL,NULL),(16,'2018-06-04 12:12:59','2018-06-04 12:12:59','Centro de Coordenação dos Assuntos do Género',NULL,NULL,NULL),(17,'2018-06-04 12:13:58','2018-06-04 12:13:58','Centro de Desenvolvimento Académico',NULL,NULL,NULL),(18,'2018-06-04 12:14:51','2018-06-04 12:14:51','Centro de Estudos Africanos',NULL,NULL,NULL),(19,'2018-06-04 12:15:41','2018-06-04 12:15:41','Museu de Histórias Natural',NULL,NULL,NULL),(20,'2018-06-04 12:16:30','2018-06-04 12:16:30','Imprensa Universitária',NULL,NULL,NULL),(21,'2018-06-04 12:17:21','2018-06-04 12:17:21','Gabinete para a Qualidade Académica',NULL,NULL,NULL),(22,'2018-06-04 12:18:52','2018-06-04 12:18:52','Direcção Cientifica',NULL,NULL,NULL),(23,'2018-06-04 12:19:28','2018-06-04 12:19:28','Direcção de Cultura',NULL,NULL,NULL),(24,'2018-06-04 12:20:58','2018-06-04 12:20:58','Direcção de Infra-Estrutura e Manutenção',NULL,NULL,NULL),(25,'2018-06-04 12:21:54','2018-06-04 12:21:54','Centro de Comunicação e Marketing',NULL,NULL,NULL),(26,'2018-06-04 12:22:34','2018-06-04 12:22:34','Centro de Línguas',NULL,NULL,NULL);
/*!40000 ALTER TABLE `clinica_param_unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta_consulta`
--

DROP TABLE IF EXISTS `consulta_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulta_consulta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `causa_admissao_consulta` varchar(255) DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `estado_consulta` varchar(255) DEFAULT NULL,
  `consulta_hora` time DEFAULT NULL,
  `preco` double NOT NULL,
  `tipo_consulta` varchar(255) DEFAULT NULL,
  `consulta_especialidade_id` bigint(20) DEFAULT NULL,
  `medico_id` bigint(20) DEFAULT NULL,
  `paciente_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi7detji0d0f727ektci8qql3m` (`consulta_especialidade_id`),
  KEY `FK97rbr1hqlqeku1fgnkgp4y55u` (`medico_id`),
  KEY `FK30895hhmq0p80df9249s9799w` (`paciente_id`),
  CONSTRAINT `FK30895hhmq0p80df9249s9799w` FOREIGN KEY (`paciente_id`) REFERENCES `paciente_paciente` (`id`),
  CONSTRAINT `FK97rbr1hqlqeku1fgnkgp4y55u` FOREIGN KEY (`medico_id`) REFERENCES `medico_medico` (`id`),
  CONSTRAINT `FKi7detji0d0f727ektci8qql3m` FOREIGN KEY (`consulta_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta_consulta`
--

LOCK TABLES `consulta_consulta` WRITE;
/*!40000 ALTER TABLE `consulta_consulta` DISABLE KEYS */;
INSERT INTO `consulta_consulta` VALUES (4,'2018-08-28 16:49:10','2018-08-28 16:49:10','DOENCA','2018-08-30','AGENDADA','07:48:00',0,'URGENTE',6,4,10),(5,'2018-06-05 17:30:39','2018-06-05 17:30:39','MORDEDURA_DE_CAO','2018-06-05','AGENDADA','17:29:00',0,'URGENTE',5,20,10),(6,'2018-06-01 10:52:53','2018-06-01 10:52:53','DOENCA','2018-06-01','AGENDADA','10:52:00',0,'NORMAL',5,5,10),(7,'2018-06-05 17:23:36','2018-06-05 17:23:36','MORDEDURA_DE_CAO','2018-06-05','AGENDADA','17:23:00',0,'NORMAL',5,18,10),(8,'2018-06-05 17:48:13','2018-06-05 17:48:13','DOENCA','2018-06-05','AGENDADA','17:47:00',0,'NORMAL',5,19,13),(9,'2018-06-05 17:36:13','2018-06-05 17:36:13','DOENCA','2018-06-05','AGENDADA','17:35:00',0,'CONTROLE',5,19,11),(10,'2018-06-03 12:31:09','2018-06-03 12:31:09','DOENCA','2018-06-03','AGENDADA','12:30:00',0,'URGENTE',5,5,10),(11,'2018-06-03 12:59:38','2018-09-01 12:53:30','DOENCA','2018-06-03','PAGA','12:57:00',7266,'CONTROLE',5,5,11),(12,'2018-06-03 14:13:52','2018-06-06 11:33:37','DOENCA','2018-06-03','ATENDIDA','14:12:00',580,'URGENTE',5,5,7),(13,'2018-06-03 14:30:41','2018-06-06 12:03:04','DOENCA','2018-06-03','ATENDIDA','14:30:00',2044,'URGENTE',5,5,11),(14,'2018-06-03 14:42:11','2018-08-28 15:02:03','DOENCA','2018-06-03','CANCELA','14:40:00',0,'NORMAL',5,5,11),(15,'2018-06-03 14:55:11','2018-06-06 11:18:59','DOENCA','2018-06-03','ATENDIDA','14:53:00',0,'CONTROLE',5,5,7),(16,'2018-06-03 14:59:08','2018-06-03 14:59:08','DOENCA','2018-06-03','AGENDADA','14:58:00',0,'CONTROLE',5,5,11),(17,'2018-06-05 14:49:36','2018-06-05 14:50:22','DOENCA','2018-06-05','PAGA','14:49:00',550,'URGENTE',5,5,14),(18,'2018-06-04 16:30:11','2018-06-04 16:30:11','DOENCA','2018-06-04','AGENDADA','16:28:00',0,'NORMAL',5,5,15),(19,'2018-06-05 22:07:04','2018-06-05 22:07:04','DOENCA','2018-06-05','AGENDADA','22:06:00',0,'NORMAL',6,4,16),(20,'2018-06-05 11:00:21','2018-06-05 11:00:21','DOENCA','2018-06-05','AGENDADA','10:59:00',0,'CONTROLE',5,5,15),(21,'2018-06-06 11:51:32','2018-06-06 11:56:58','DOENCA','2018-06-06','ATENDIDA','11:51:00',1900,'NORMAL',2,8,17),(22,'2018-08-24 20:09:15','2018-08-24 20:09:15','DOENCA','2018-08-24','AGENDADA','20:08:00',0,'NORMAL',5,20,17),(23,'2018-08-28 15:16:58','2018-08-28 15:16:58','DOENCA','2018-08-28','AGENDADA','15:16:00',0,'NORMAL',11,1,7),(24,'2018-08-28 16:15:14','2018-08-28 16:15:14','DOENCA','2018-09-19','AGENDADA','16:14:00',0,'URGENTE',11,1,11),(25,'2018-08-28 16:47:18','2018-08-28 16:47:18','DOENCA','2018-08-28','AGENDADA','16:46:00',0,'URGENTE',5,5,13);
/*!40000 ALTER TABLE `consulta_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_da_uem`
--

DROP TABLE IF EXISTS `curso_da_uem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso_da_uem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `faculdade_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq8unxmst73i7xbkwij24qx2ma` (`faculdade_id`),
  CONSTRAINT `FKq8unxmst73i7xbkwij24qx2ma` FOREIGN KEY (`faculdade_id`) REFERENCES `faculdade_da_uem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_da_uem`
--

LOCK TABLES `curso_da_uem` WRITE;
/*!40000 ALTER TABLE `curso_da_uem` DISABLE KEYS */;
INSERT INTO `curso_da_uem` VALUES (1,'2018-05-25 18:55:53','2018-05-25 18:55:53','Enge_Iinformática',1),(2,'2018-05-25 18:56:52','2018-05-25 18:56:52','Enge_Mecânica',1),(3,'2018-05-25 18:57:31','2018-05-25 18:57:31','Enge_Electrônica',1),(4,'2018-05-25 18:57:52','2018-05-25 18:57:52','Enge_Quimica',1),(5,'2018-05-25 18:58:55','2018-05-25 18:58:55','Enge_Florestal',1),(6,'2018-05-25 19:00:58','2018-05-25 19:00:58','Enge_Constr_Civil',1),(7,'2018-05-25 19:04:00','2018-05-25 19:04:00','História',2),(8,'2018-05-25 19:06:20','2018-05-25 19:06:20','Geográfia',2),(9,'2018-05-25 19:07:52','2018-05-25 19:07:52','Português',2),(10,'2018-05-25 19:09:32','2018-05-25 19:09:32','Inglês',2),(11,'2018-05-25 19:12:28','2018-05-25 19:12:28','Francês',2),(12,'2018-05-25 19:15:26','2018-05-25 19:15:26','Informática',3),(13,'2018-05-25 19:18:13','2018-05-25 19:18:13','Matemática',3),(14,'2018-05-25 19:20:34','2018-05-25 19:20:34','Física',3),(15,'2018-05-25 19:22:23','2018-05-25 19:22:23','Quimica',3),(16,'2018-05-25 19:27:30','2018-05-25 19:27:30','Medicina_Geral',4),(17,'2018-05-25 19:32:07','2018-05-25 19:32:07','Medicina_Dentária',4),(18,'2018-05-29 18:19:59','2018-05-29 18:19:59','Eng_Electrica',1),(19,'2018-05-29 18:23:02','2018-05-29 18:23:02','Biologia',3),(20,'2018-05-29 18:23:58','2018-05-29 18:23:58','Ecologia',3),(21,'2018-05-29 18:24:23','2018-05-29 18:24:23','Meteorologia',3),(22,'2018-05-29 18:24:45','2018-05-29 18:24:45','Geologia Aplicada',3),(23,'2018-05-29 18:25:14','2018-05-29 18:25:14','Cartografia e Pesquisa Geológica',3),(24,'2018-05-29 18:25:32','2018-05-29 18:25:32','Estatística',3),(25,'2018-05-29 18:25:52','2018-05-29 18:25:52','Ciências de Informação Geográfica',3),(26,'2018-05-29 18:28:59','2018-05-29 18:28:59','Contabilidade e Finanças',6),(27,'2018-05-29 18:29:20','2018-05-29 18:29:20','Economia',6),(28,'2018-05-29 18:30:07','2018-05-29 18:30:07','Gestão de Negócios',6),(29,'2018-05-29 18:30:30','2018-05-29 18:30:30','Gestão Empresarial',6),(30,'2018-05-29 18:30:55','2018-05-29 18:30:55','Gestão de Politicas Económicas',6),(31,'2018-05-29 18:31:32','2018-05-29 18:31:32','Contabilidade e Auditoria',6),(32,'2018-05-29 18:32:07','2018-05-29 18:32:07','Empreendedorismo  ',6),(33,'2018-05-29 18:32:47','2018-05-29 18:32:47','Marketing  e Comunicação',6),(34,'2018-05-29 18:36:35','2018-05-29 18:36:35','Administração Pública',2),(35,'2018-05-29 18:36:59','2018-05-29 18:36:59','Antropologia',2),(36,'2018-05-29 18:37:26','2018-05-29 18:37:26','Linguística',2),(37,'2018-05-29 18:37:38','2018-05-29 18:37:38',' Linguística e Literatura',2),(38,'2018-05-29 18:37:59','2018-05-29 18:37:59','Ensino de Línguas Bantu',2),(39,'2018-05-29 18:38:18','2018-05-29 18:38:18','Ciência Política',2),(40,'2018-05-29 18:38:30','2018-05-29 18:38:30','Arqueologia',2),(41,'2018-05-29 18:39:09','2018-05-29 18:39:09','Literatura Moçambicana',2),(42,'2018-05-29 18:39:22','2018-05-29 18:39:22','Serviço Social ',2),(43,'2018-05-29 18:39:34','2018-05-29 18:39:34','Sociologia',2),(44,'2018-05-29 18:39:50','2018-05-29 18:39:50','Tradução e Interpretação Inglês/Português',2),(45,'2018-05-29 18:40:16','2018-05-29 18:40:16','Governação e Administração Pública',2),(46,'2018-05-29 18:40:36','2018-05-29 18:40:36','História de Moçambique e da África Austral',2),(47,'2018-05-29 18:40:57','2018-05-29 18:40:57','Sociologia Rural e Gestão de Desenvolvimento',2),(48,'2018-05-29 18:42:55','2018-05-29 18:42:55','Direito',5),(49,'2018-05-29 18:44:00','2018-05-29 18:44:00','Filosofia',7),(50,'2018-05-29 18:45:34','2018-05-29 18:45:34','Agronomia',8),(51,'2018-05-29 18:46:33','2018-05-29 18:46:33','Arquitectura',9);
/*!40000 ALTER TABLE `curso_da_uem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos_da_uem`
--

DROP TABLE IF EXISTS `cursos_da_uem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos_da_uem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `faculdade` tinyblob,
  `faculdade_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9wmviv4f73ftxt3lujgynno60` (`faculdade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos_da_uem`
--

LOCK TABLES `cursos_da_uem` WRITE;
/*!40000 ALTER TABLE `cursos_da_uem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos_da_uem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_especialidade`
--

DROP TABLE IF EXISTS `especialidade_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidade_especialidade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `especialidade_codigo` varchar(255) DEFAULT NULL,
  `especialidade_designacao` varchar(255) DEFAULT NULL,
  `especialidade_tipo` varchar(255) DEFAULT NULL,
  `especialidade_sigla` varchar(255) DEFAULT NULL,
  `especialidade_sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10olv65on6gyyayuxhprs1rh8` (`especialidade_sector_id`),
  CONSTRAINT `FK10olv65on6gyyayuxhprs1rh8` FOREIGN KEY (`especialidade_sector_id`) REFERENCES `sectors_clinica` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_especialidade`
--

LOCK TABLES `especialidade_especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade_especialidade` DISABLE KEYS */;
INSERT INTO `especialidade_especialidade` VALUES (1,'2018-05-30 18:40:52','2018-05-30 18:40:52','2018DRMT','DERMATOLOGIA','CONSULTA_MEDICA','DRMT',1),(2,'2018-05-30 18:33:07','2018-05-30 18:33:07','2018EXC','Exame Complementar','EXAME_MEDICO','EXC',6),(3,'2018-05-30 18:36:30','2018-05-30 18:36:30','2018OFT','OFTALMOLOGIA','EXAME_MEDICO','OFT',6),(4,'2018-05-30 18:41:20','2018-05-30 18:41:20','2018CGL','Clinica Geral','CONSULTA_MEDICA','CGL',1),(5,'2018-08-24 19:15:25','2018-08-24 19:15:32','2018HTA','HEMATOLOGIA','CONSULTA_MEDICA','HTA',1),(6,'2018-08-25 12:51:24','2018-08-25 12:51:24','2018MFL','Medicina Familiar','CONSULTA_MEDICA','MFL',3),(7,'2018-05-30 18:40:23','2018-05-30 18:40:23','2018DT','DENTISTA','CONSULTA_MEDICA','DT',4),(8,'2018-05-30 18:38:03','2018-05-30 18:38:03','2018GLG','GENECOLOGIA','CONSULTA_MEDICA','GLG',5),(9,'2018-05-30 18:35:17','2018-05-30 18:35:17','2018PCG','PSICOLOGIA','CONSULTA_MEDICA','PCG',4),(10,'2018-05-30 10:08:35','2018-05-30 10:08:35','2018SMI','Saúde Materno Infátil','CONSULTA_MEDICA','SMI',NULL),(11,'2018-08-25 12:50:59','2018-08-25 12:50:59','2018ISRG','IMUNO/SEROLOGIA','CONSULTA_MEDICA','ISRG',4),(12,'2018-08-24 18:10:02','2018-08-24 18:10:02','2018MICRO','MICROBIOLOGIAPARASITOLOGIA','EXAME_MEDICO','MIPATO',7),(13,'2018-08-24 18:39:46','2018-08-24 18:39:46','2018FNL','FUNCAO RENAL','EXAME_MEDICO','FNL',7),(14,'2018-08-25 12:52:46','2018-08-25 12:52:46','2018RAD','RADIOLOGIA','EXAME_MEDICO','RAD',7);
/*!40000 ALTER TABLE `especialidade_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_especialidade_consultas`
--

DROP TABLE IF EXISTS `especialidade_especialidade_consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidade_especialidade_consultas` (
  `especialidade_id` bigint(20) NOT NULL,
  `consultas_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_idd4j8xv2s6xr2uku4p2iytky` (`consultas_id`),
  KEY `FKmludn1bvyiy9x1e4c4cc113ia` (`especialidade_id`),
  CONSTRAINT `FKhw84kx03gpixlvyhxck81tg0a` FOREIGN KEY (`consultas_id`) REFERENCES `consulta` (`id`),
  CONSTRAINT `FKmludn1bvyiy9x1e4c4cc113ia` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_especialidade_consultas`
--

LOCK TABLES `especialidade_especialidade_consultas` WRITE;
/*!40000 ALTER TABLE `especialidade_especialidade_consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidade_especialidade_consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_especialidade_medicos`
--

DROP TABLE IF EXISTS `especialidade_especialidade_medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidade_especialidade_medicos` (
  `especialidade_id` bigint(20) NOT NULL,
  `medicos_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_m0fkwcgra1kt5iq7rfqbeawgr` (`medicos_id`),
  KEY `FKpe6v4f4vbbk1yfm7yw1suk7kn` (`especialidade_id`),
  CONSTRAINT `FK4edekhgiewe0qo2t8qd8yhyjb` FOREIGN KEY (`medicos_id`) REFERENCES `medico_medico` (`id`),
  CONSTRAINT `FKee5np8wgena0oul4oxr542nl2` FOREIGN KEY (`medicos_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `FKpe6v4f4vbbk1yfm7yw1suk7kn` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_especialidade_medicos`
--

LOCK TABLES `especialidade_especialidade_medicos` WRITE;
/*!40000 ALTER TABLE `especialidade_especialidade_medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidade_especialidade_medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade_especialidade_servicos`
--

DROP TABLE IF EXISTS `especialidade_especialidade_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidade_especialidade_servicos` (
  `especialidade_id` bigint(20) NOT NULL,
  `servicos_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_gjo1mrncmtawl65go671axqf1` (`servicos_id`),
  KEY `FKgq9twqbv7dripjqdek2e3sh6q` (`especialidade_id`),
  CONSTRAINT `FK459as9ohp8k386hid8yvw5p1r` FOREIGN KEY (`servicos_id`) REFERENCES `param_servico` (`id`),
  CONSTRAINT `FKgq9twqbv7dripjqdek2e3sh6q` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade_especialidade_servicos`
--

LOCK TABLES `especialidade_especialidade_servicos` WRITE;
/*!40000 ALTER TABLE `especialidade_especialidade_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidade_especialidade_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante_uem`
--

DROP TABLE IF EXISTS `estudante_uem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudante_uem` (
  `ano` varchar(255) DEFAULT NULL,
  `numero_bi` varchar(255) DEFAULT NULL,
  `semestre` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `curso_estudante` bigint(20) DEFAULT NULL,
  `faculdade_estudante` bigint(20) DEFAULT NULL,
  `faculdade` tinyblob,
  `curso_id` bigint(20) DEFAULT NULL,
  `faculdade_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8vue5p2ns2ksfuq7s1vx26kei` (`faculdade_estudante`),
  KEY `FKsgq77pav5191t0v8jjnrtqkag` (`curso_estudante`),
  KEY `FKnfcvcyq7vld2n3wy0m903xvc4` (`curso_id`),
  KEY `FKe3n0xym0x5h6oe8uuai16ptvc` (`faculdade_id`),
  CONSTRAINT `FK8vue5p2ns2ksfuq7s1vx26kei` FOREIGN KEY (`faculdade_estudante`) REFERENCES `faculdade_da_uem` (`id`),
  CONSTRAINT `FKavdgqnqkeylnwhfodm84hwugb` FOREIGN KEY (`id`) REFERENCES `paciente_paciente` (`id`),
  CONSTRAINT `FKchwgliapbcknqtk42lfrlniqd` FOREIGN KEY (`curso_estudante`) REFERENCES `curso_da_uem` (`id`),
  CONSTRAINT `FKe3n0xym0x5h6oe8uuai16ptvc` FOREIGN KEY (`faculdade_id`) REFERENCES `faculdade_da_uem` (`id`),
  CONSTRAINT `FKnfcvcyq7vld2n3wy0m903xvc4` FOREIGN KEY (`curso_id`) REFERENCES `curso_da_uem` (`id`),
  CONSTRAINT `FKsgq77pav5191t0v8jjnrtqkag` FOREIGN KEY (`curso_estudante`) REFERENCES `cursos_da_uem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante_uem`
--

LOCK TABLES `estudante_uem` WRITE;
/*!40000 ALTER TABLE `estudante_uem` DISABLE KEYS */;
INSERT INTO `estudante_uem` VALUES ('QUINTO_ANO','1002933903L','PRIMEIRO',4,NULL,NULL,NULL,12,3),('QUINTO_ANO','288357339H','SEGUNDO',5,NULL,NULL,NULL,12,3),('QUARTO_ANO','183293833E','SEGUNDO',6,NULL,NULL,NULL,7,2),('TERCEIRO_ANO','13839392382J','SEGUNDO',7,NULL,NULL,NULL,9,2),('QUARTO_ANO','1239484948K','SEGUNDO',8,NULL,NULL,NULL,48,5),('QUARTO_ANO','223739383Q','SEGUNDO',9,NULL,NULL,NULL,51,9),('SEGUNDO_ANO','29272828292E','PRIMEIRO',15,NULL,NULL,NULL,49,7),('TERCEIRO_ANO','2008126R','SEGUNDO',16,NULL,NULL,NULL,28,6);
/*!40000 ALTER TABLE `estudante_uem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exame_exame`
--

DROP TABLE IF EXISTS `exame_exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exame_exame` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `paciente_id` bigint(20) DEFAULT NULL,
  `tipo_exame` varchar(255) DEFAULT NULL,
  `consulta_especialidade_id` bigint(20) DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `consulta_hora` time DEFAULT NULL,
  `preco` double NOT NULL,
  `estado_consulta` varchar(255) DEFAULT NULL,
  `laboratorio` int(11) DEFAULT NULL,
  `laboratorio_exame` varchar(255) DEFAULT NULL,
  `laboratorio_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbm61ttlpkar2t3abt69pq06pk` (`paciente_id`),
  KEY `FK3e7fsdun8cn29wbf65s7t042o` (`consulta_especialidade_id`),
  KEY `FK6de9adp7li1qnh3gue0tyfhyg` (`laboratorio_id`),
  CONSTRAINT `FK3e7fsdun8cn29wbf65s7t042o` FOREIGN KEY (`consulta_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`),
  CONSTRAINT `FK6de9adp7li1qnh3gue0tyfhyg` FOREIGN KEY (`laboratorio_id`) REFERENCES `laboratorio_laboratorio` (`id`),
  CONSTRAINT `FKbm61ttlpkar2t3abt69pq06pk` FOREIGN KEY (`paciente_id`) REFERENCES `paciente_paciente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame_exame`
--

LOCK TABLES `exame_exame` WRITE;
/*!40000 ALTER TABLE `exame_exame` DISABLE KEYS */;
INSERT INTO `exame_exame` VALUES (1,'2018-08-25 14:56:34','2018-08-28 15:01:44',15,'CONTROLE',14,'2018-08-27','08:30:00',0,'CANCELA',NULL,NULL,4),(2,'2018-08-25 15:53:26','2018-08-28 11:22:49',15,'URGENTE',14,'2018-08-29','09:40:00',0,'CANCELA',NULL,NULL,5),(3,'2018-08-25 18:37:33','2018-08-28 14:26:44',13,'CONTROLE',14,'2018-08-26','08:00:00',0,'CANCELA',NULL,NULL,4),(4,'2018-08-30 13:08:38','2018-08-30 13:13:19',10,'URGENTE',13,'2018-09-02','13:08:00',6650,'ATENDIDA',NULL,NULL,2),(5,'2018-08-28 15:15:55','2018-08-28 15:15:55',14,'NORMAL',13,'2018-09-19','15:15:00',0,'AGENDADA',NULL,NULL,2),(6,'2018-08-28 16:07:11','2018-08-28 22:37:36',16,'NORMAL',14,'2018-08-28','16:05:00',1100,'ATENDIDA',NULL,NULL,3),(7,'2018-08-28 16:08:21','2018-08-28 16:08:21',16,'NORMAL',2,'2018-08-28','16:08:00',0,'AGENDADA',NULL,NULL,6),(8,'2018-08-28 16:10:18','2018-08-28 16:10:18',16,'NORMAL',14,'2018-08-28','16:08:00',0,'AGENDADA',NULL,NULL,3),(9,'2018-08-28 16:38:38','2018-08-28 16:38:38',17,'CONTROLE',14,'2018-08-29','09:37:00',0,'AGENDADA',NULL,NULL,3),(10,'2018-08-28 16:40:36','2018-08-28 16:40:36',17,'URGENTE',2,'2018-09-20','16:40:00',0,'AGENDADA',NULL,NULL,6),(11,'2018-08-28 16:45:48','2018-08-28 18:53:55',13,'URGENTE',14,'2018-09-04','08:45:00',2800,'PAGA',NULL,NULL,3);
/*!40000 ALTER TABLE `exame_exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_factura`
--

DROP TABLE IF EXISTS `factura_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_factura` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `data_fim` datetime DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `numero_factura` bigint(20) DEFAULT NULL,
  `total` double NOT NULL,
  `consulta` bigint(20) DEFAULT NULL,
  `forma_pagamento` int(11) DEFAULT NULL,
  `estado_consulta` varchar(255) DEFAULT NULL,
  `forma_de_pagamento` varchar(255) DEFAULT NULL,
  `consulta_id` bigint(20) DEFAULT NULL,
  `exame_id` bigint(20) DEFAULT NULL,
  `total_exame` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8s657eis6me6gxcrwefub7cjx` (`consulta`),
  KEY `FKav14jgu6va20hnrho56ir97e7` (`consulta_id`),
  KEY `FKgppjpw2efbtru5eouxsvc009j` (`exame_id`),
  CONSTRAINT `FK8s657eis6me6gxcrwefub7cjx` FOREIGN KEY (`consulta`) REFERENCES `consulta_consulta` (`id`),
  CONSTRAINT `FKav14jgu6va20hnrho56ir97e7` FOREIGN KEY (`consulta_id`) REFERENCES `consulta_consulta` (`id`),
  CONSTRAINT `FKgppjpw2efbtru5eouxsvc009j` FOREIGN KEY (`exame_id`) REFERENCES `exame_exame` (`id`),
  CONSTRAINT `FKp5a8vrscuksis3aebvi3mm46v` FOREIGN KEY (`consulta`) REFERENCES `consulta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_factura`
--

LOCK TABLES `factura_factura` WRITE;
/*!40000 ALTER TABLE `factura_factura` DISABLE KEYS */;
INSERT INTO `factura_factura` VALUES (4,'2018-06-05 14:04:32','2018-06-05 14:04:33',NULL,'2018-06-05 14:04:32',4,2044,NULL,NULL,NULL,'NUMERÁRIO',13,NULL,0),(5,'2018-06-05 14:13:18','2018-06-05 14:13:19',NULL,'2018-06-05 14:13:18',5,580,NULL,NULL,NULL,'MONTANTE_CASH',12,NULL,0),(6,'2018-06-05 14:14:02','2018-06-05 14:14:04',NULL,'2018-06-05 14:14:02',6,580,NULL,NULL,NULL,'MONTANTE_CASH',12,NULL,0),(7,'2018-06-05 14:37:42','2018-06-05 14:37:42',NULL,'2018-06-05 14:37:42',7,1280,NULL,NULL,NULL,'CHECK',17,NULL,0),(8,'2018-06-05 14:50:22','2018-06-05 14:50:23',NULL,'2018-06-05 14:50:22',8,550,NULL,NULL,NULL,'CHECK',17,NULL,0),(9,'2018-06-06 11:54:03','2018-06-06 11:54:03',NULL,'2018-06-06 11:54:03',9,1900,NULL,NULL,NULL,'CARTÃO',21,NULL,0),(10,'2018-08-28 18:53:55','2018-08-28 18:53:55',NULL,'2018-08-28 18:53:55',10,0,NULL,NULL,NULL,'CHECK',NULL,11,2800),(11,'2018-08-28 19:10:29','2018-08-28 19:10:29',NULL,'2018-08-28 19:10:29',11,0,NULL,NULL,NULL,'CARTÃO',NULL,6,1100),(12,'2018-08-30 13:12:28','2018-08-30 13:12:28',NULL,'2018-08-30 13:12:28',12,0,NULL,NULL,NULL,'NUMERÁRIO',NULL,4,6650),(13,'2018-09-01 12:53:31','2018-09-01 12:53:31',NULL,'2018-09-01 12:53:31',13,7266,NULL,NULL,NULL,'MONTANTE_CASH',11,NULL,0);
/*!40000 ALTER TABLE `factura_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculdade_da_uem`
--

DROP TABLE IF EXISTS `faculdade_da_uem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculdade_da_uem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculdade_da_uem`
--

LOCK TABLES `faculdade_da_uem` WRITE;
/*!40000 ALTER TABLE `faculdade_da_uem` DISABLE KEYS */;
INSERT INTO `faculdade_da_uem` VALUES (1,'2018-05-25 16:45:39','2018-05-25 16:45:39','Faculdade_de_Engenharia'),(2,'2018-05-25 18:46:35','2018-05-25 18:46:35','Faculdade_de_Letras'),(3,'2018-05-25 18:47:28','2018-05-25 18:47:28','Faculdade_de_Ciências'),(4,'2018-05-25 18:48:52','2018-05-25 18:48:52','Faculdade_de_Medicina'),(5,'2018-05-29 17:41:14','2018-05-29 17:41:14','Faculdade_de_Direito'),(6,'2018-05-29 17:42:45','2018-05-29 17:42:45','Faculdade_de_Economia'),(7,'2018-05-29 17:49:14','2018-05-29 17:49:14','Faculdade_de_Filosofia'),(8,'2018-05-29 17:53:54','2018-05-29 17:53:54','Faculdade_de_Agronomia'),(9,'2018-05-29 17:55:34','2018-05-29 17:55:34','Faculdade_de_Arquitectura_Planeamento_Físico');
/*!40000 ALTER TABLE `faculdade_da_uem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fake_pessoa`
--

DROP TABLE IF EXISTS `fake_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fake_pessoa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fake_pessoa`
--

LOCK TABLES `fake_pessoa` WRITE;
/*!40000 ALTER TABLE `fake_pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `fake_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_uem`
--

DROP TABLE IF EXISTS `funcionario_uem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_uem` (
  `funcao` varchar(255) DEFAULT NULL,
  `nivel_academico` varchar(255) DEFAULT NULL,
  `numero_bi` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `unidade_funcionario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpwpm11t4vck4ush8upj8o6eod` (`unidade_funcionario`),
  CONSTRAINT `FKgspl108qo8kgkk2j76l99lod1` FOREIGN KEY (`id`) REFERENCES `paciente_paciente` (`id`),
  CONSTRAINT `FKpwpm11t4vck4ush8upj8o6eod` FOREIGN KEY (`unidade_funcionario`) REFERENCES `clinica_param_unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_uem`
--

LOCK TABLES `funcionario_uem` WRITE;
/*!40000 ALTER TABLE `funcionario_uem` DISABLE KEYS */;
INSERT INTO `funcionario_uem` VALUES ('Secretario','MEDIO','2008126R',12,3),('Docente','MESTRADO','193830292022G',13,6),('Docente','LICENCIATURA','292839373Y',14,4);
/*!40000 ALTER TABLE `funcionario_uem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_consulta_servico`
--

DROP TABLE IF EXISTS `item_consulta_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_consulta_servico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `item_cliente` varchar(255) DEFAULT NULL,
  `item_designacao_servico` varchar(255) DEFAULT NULL,
  `item_preco` double DEFAULT NULL,
  `item_quantidade` int(11) DEFAULT NULL,
  `item_tipo_consulta` varchar(255) DEFAULT NULL,
  `consulta_id` bigint(20) DEFAULT NULL,
  `servico_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkr8mrcwcmrreyx2apdaflbl7i` (`consulta_id`),
  KEY `FKgaw2lvbfu0h8i3rr18psr0ka2` (`servico_id`),
  CONSTRAINT `FKgaw2lvbfu0h8i3rr18psr0ka2` FOREIGN KEY (`servico_id`) REFERENCES `param_servico` (`id`),
  CONSTRAINT `FKkr8mrcwcmrreyx2apdaflbl7i` FOREIGN KEY (`consulta_id`) REFERENCES `consulta_consulta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_consulta_servico`
--

LOCK TABLES `item_consulta_servico` WRITE;
/*!40000 ALTER TABLE `item_consulta_servico` DISABLE KEYS */;
INSERT INTO `item_consulta_servico` VALUES (3,'2018-06-01 10:36:04','2018-06-01 10:36:04','Salvador Matola','Ecografia do Coração II',0,1,NULL,6,2),(18,'2018-06-03 12:31:10','2018-06-03 12:31:10','Salvador Matola','Anca',1600,1,NULL,10,21),(19,'2018-06-03 12:59:39','2018-06-03 12:59:39','Jacinto Tembe','Abdomen',6666,1,NULL,11,20),(20,'2018-06-03 12:59:39','2018-06-03 12:59:39','Jacinto Tembe','Anca',600,1,NULL,11,21),(21,'2018-06-03 14:13:52','2018-06-03 14:13:52','Vanessa Uamusse','Abdomen',250,1,NULL,12,20),(22,'2018-06-03 14:13:52','2018-06-03 14:13:52','Vanessa Uamusse','Anca',330,1,NULL,12,21),(23,'2018-06-03 14:30:42','2018-06-03 14:30:42','Jacinto Tembe','Abdomen',444,1,NULL,13,20),(24,'2018-06-03 14:30:42','2018-06-03 14:30:42','Jacinto Tembe','Anca',1600,1,NULL,13,21),(25,'2018-06-03 14:42:11','2018-06-03 14:42:11','Jacinto Tembe','Abdomen',2222,1,NULL,14,20),(26,'2018-06-03 14:55:12','2018-06-03 14:55:12','Vanessa Uamusse','Abdomen',75,1,NULL,15,20),(27,'2018-06-03 14:59:08','2018-06-03 14:59:08','Jacinto Tembe','Abdomen',6666,1,NULL,16,20),(30,'2018-06-04 16:30:11','2018-06-04 16:30:11','João Zandamela','Abdomen',150,1,NULL,18,20),(31,'2018-06-04 16:30:12','2018-06-04 16:30:12','João Zandamela','Anca',230,1,NULL,18,21),(36,'2018-06-05 11:00:22','2018-06-05 11:00:22','João Zandamela','Abdomen',75,1,NULL,20,20),(37,'2018-06-05 14:49:38','2018-06-05 14:49:38','Gildo Macaringa','Abdomen',550,1,NULL,17,20),(38,'2018-06-05 17:23:37','2018-06-05 17:23:37','Salvador Matola','Ecografia do Figado',950,1,NULL,7,6),(39,'2018-06-05 17:23:37','2018-06-05 17:23:37','Salvador Matola','Cavum(Laringe)',3000,1,NULL,7,17),(40,'2018-06-05 17:30:40','2018-06-05 17:30:40','Salvador Matola','Ecografia do Coração',2220,1,NULL,5,3),(41,'2018-06-05 17:30:40','2018-06-05 17:30:40','Salvador Matola','Clavícula',1500,1,NULL,5,10),(42,'2018-06-05 17:30:40','2018-06-05 17:30:40','Salvador Matola','Anca',1600,1,NULL,5,21),(43,'2018-06-05 17:36:13','2018-06-05 17:36:13','Jacinto Tembe','Ecografia Escroto/Testiculos',600,1,NULL,9,5),(44,'2018-06-05 17:36:13','2018-06-05 17:36:13','Jacinto Tembe','Ecografia do Pescoço',180,1,NULL,9,7),(45,'2018-06-05 17:48:14','2018-06-05 17:48:14','Armando Sitoe','Ecografia Escrotal',800,1,NULL,8,4),(46,'2018-06-05 17:48:14','2018-06-05 17:48:14','Armando Sitoe','Ecografia Renal e Bexiga',200,1,NULL,8,8),(47,'2018-06-05 17:48:14','2018-06-05 17:48:14','Armando Sitoe','Cotovelo',520,1,NULL,8,16),(48,'2018-06-05 22:07:05','2018-06-05 22:07:05','Yara Xirindza','Ecografia do Coração II',1800,1,NULL,19,2),(51,'2018-06-06 11:51:33','2018-06-06 11:51:33','Angelo Timane','CTG',900,1,NULL,21,15),(52,'2018-06-06 11:51:33','2018-06-06 11:51:33','Angelo Timane','Laboratorio',1000,1,NULL,21,19),(53,'2018-08-24 20:09:18','2018-08-24 20:09:18','Angelo Timane','Teste Rapido De Malaria',1100,1,NULL,22,21),(54,'2018-08-24 20:09:20','2018-08-24 20:09:20','Angelo Timane','Velocidade de Sedimentacao',430,1,NULL,22,22),(55,'2018-08-24 20:09:20','2018-08-24 20:09:20','Angelo Timane','Reticulocitos',700,1,NULL,22,23),(58,'2018-08-28 16:47:19','2018-08-28 16:47:19','Armando Sitoe','Hemocrama Completo',550,1,NULL,25,20),(59,'2018-08-28 16:47:19','2018-08-28 16:47:19','Armando Sitoe','Teste Rapido De Malaria',730,1,NULL,25,21),(60,'2018-08-28 16:49:10','2018-08-28 16:49:10','Salvador Matola','Consulta de Cardiologia do Coração II',5200,1,NULL,4,2);
/*!40000 ALTER TABLE `item_consulta_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_exame_servico`
--

DROP TABLE IF EXISTS `item_exame_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_exame_servico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `item_preco` double DEFAULT NULL,
  `item_designacao_servico` varchar(255) DEFAULT NULL,
  `item_tipo_exame` varchar(255) DEFAULT NULL,
  `item_quantidade` int(11) DEFAULT NULL,
  `item_cliente` varchar(255) DEFAULT NULL,
  `servico_id` bigint(20) DEFAULT NULL,
  `exame_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfl6nob7snwbyrvkvxsckwnygx` (`servico_id`),
  KEY `FKprum8yn96hhops4ypqkft6g3q` (`exame_id`),
  CONSTRAINT `FKfl6nob7snwbyrvkvxsckwnygx` FOREIGN KEY (`servico_id`) REFERENCES `param_servico` (`id`),
  CONSTRAINT `FKprum8yn96hhops4ypqkft6g3q` FOREIGN KEY (`exame_id`) REFERENCES `exame_exame` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_exame_servico`
--

LOCK TABLES `item_exame_servico` WRITE;
/*!40000 ALTER TABLE `item_exame_servico` DISABLE KEYS */;
INSERT INTO `item_exame_servico` VALUES (1,'2018-08-25 15:53:33','2018-08-25 15:53:33',120,'Ecografia do Coração',NULL,1,'João Zandamela',3,2),(2,'2018-08-25 15:53:44','2018-08-25 15:53:44',600,'Ecografia Escroto/Testiculos',NULL,1,'João Zandamela',5,2),(3,'2018-08-25 18:37:34','2018-08-25 18:37:34',190,'Ecografia do Coração',NULL,1,'Armando Sitoe',3,3),(4,'2018-08-25 18:37:34','2018-08-25 18:37:34',120,'Ecografia do Pescoço',NULL,1,'Armando Sitoe',7,3),(5,'2018-08-25 18:37:34','2018-08-25 18:37:34',480,'Ecografia Abdominal',NULL,1,'Armando Sitoe',18,3),(6,'2018-08-28 16:07:12','2018-08-28 16:07:12',600,'Ecografia de Tiroide',NULL,1,'Yara Xirindza',1,6),(7,'2018-08-28 16:07:12','2018-08-28 16:07:12',500,'Ecografia do Coração',NULL,1,'Yara Xirindza',3,6),(8,'2018-08-28 16:08:21','2018-08-28 16:08:21',500,'CTG',NULL,1,'Yara Xirindza',15,7),(9,'2018-08-28 16:08:21','2018-08-28 16:08:21',230,'Laboratorio',NULL,1,'Yara Xirindza',19,7),(10,'2018-08-28 16:10:18','2018-08-28 16:10:18',600,'Ecografia Escrotal',NULL,1,'Yara Xirindza',4,8),(11,'2018-08-28 16:10:18','2018-08-28 16:10:18',300,'Ecografia Escroto/Testiculos',NULL,1,'Yara Xirindza',5,8),(12,'2018-08-28 16:10:18','2018-08-28 16:10:18',200,'Ecografia do Pescoço',NULL,1,'Yara Xirindza',7,8),(13,'2018-08-28 16:10:18','2018-08-28 16:10:18',100,'Ecografia Renal e Bexiga',NULL,1,'Yara Xirindza',8,8),(14,'2018-08-28 16:10:18','2018-08-28 16:10:18',750,'Cranio',NULL,1,'Yara Xirindza',11,8),(15,'2018-08-28 16:10:18','2018-08-28 16:10:18',650,'C.Sacral',NULL,1,'Yara Xirindza',12,8),(16,'2018-08-28 16:10:18','2018-08-28 16:10:18',900,'Costelas',NULL,1,'Yara Xirindza',13,8),(17,'2018-08-28 16:10:18','2018-08-28 16:10:18',350,'C.torácica',NULL,1,'Yara Xirindza',14,8),(18,'2018-08-28 16:10:18','2018-08-28 16:10:18',250,'Cotovelo',NULL,1,'Yara Xirindza',16,8),(19,'2018-08-28 16:10:18','2018-08-28 16:10:18',1450,'Ecografia Abdominal',NULL,1,'Yara Xirindza',18,8),(20,'2018-08-28 16:38:38','2018-08-28 16:38:38',300,'Ecografia Escrotal',NULL,1,'Angelo Timane',4,9),(21,'2018-08-28 16:38:38','2018-08-28 16:38:38',180,'Ecografia do Pescoço',NULL,1,'Angelo Timane',7,9),(22,'2018-08-28 16:38:38','2018-08-28 16:38:38',900,'C.Sacral',NULL,1,'Angelo Timane',12,9),(24,'2018-08-28 16:40:37','2018-08-28 16:40:37',1400,'CTG',NULL,1,'Angelo Timane',15,10),(25,'2018-08-28 16:40:37','2018-08-28 16:40:37',1500,'Laboratorio',NULL,1,'Angelo Timane',19,10),(26,'2018-08-28 16:45:48','2018-08-28 16:45:48',1000,'Ecografia Escrotal',NULL,1,'Armando Sitoe',4,11),(27,'2018-08-28 16:45:49','2018-08-28 16:45:49',1800,'Costelas',NULL,1,'Armando Sitoe',13,11),(28,'2018-08-30 13:08:39','2018-08-30 13:08:39',2200,'EXAME DE UREIA',NULL,1,'Salvador Matola',36,4),(29,'2018-08-30 13:08:39','2018-08-30 13:08:39',1900,'EXAME DE ACIDO URICO',NULL,1,'Salvador Matola',37,4),(30,'2018-08-30 13:08:39','2018-08-30 13:08:39',2550,'EXAME DE CREATININA',NULL,1,'Salvador Matola',38,4);
/*!40000 ALTER TABLE `item_exame_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio_laboratorio`
--

DROP TABLE IF EXISTS `laboratorio_laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_laboratorio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `sigla` varchar(255) DEFAULT NULL,
  `laboratorio_especialidade_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK94g4mjfyjhacy44m3ub9sfkrf` (`laboratorio_especialidade_id`),
  CONSTRAINT `FK94g4mjfyjhacy44m3ub9sfkrf` FOREIGN KEY (`laboratorio_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio_laboratorio`
--

LOCK TABLES `laboratorio_laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio_laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio_laboratorio` VALUES (1,'2018-08-24 21:08:59','2018-08-24 21:08:59','LABORATORIO_1','LAB_1',12),(2,'2018-08-24 21:12:28','2018-08-24 21:12:28','LABORATORIO_2','LAB_2',13),(3,'2018-08-25 14:10:31','2018-08-25 14:10:31','LABORATORIO_3','LAB_3',14),(4,'2018-08-25 14:11:04','2018-08-25 14:11:04','LABORATORIO_4','LAB_4',14),(5,'2018-08-25 14:11:13','2018-08-25 14:11:13','LABORATORIO_5','LAB_5',14),(6,'2018-08-30 10:55:19','2018-08-30 10:55:19','LABORATORIO_6','LAB_6',2),(7,'2018-08-25 14:14:04','2018-08-25 14:14:04','LABORATORIO_7','LAB_7',3),(8,'2018-08-25 14:14:53','2018-08-25 14:14:53','LABORATORIO_8','LAB_8',12);
/*!40000 ALTER TABLE `laboratorio_laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `medico_apelido` varchar(255) DEFAULT NULL,
  `medico_especialidade` varchar(255) DEFAULT NULL,
  `medico_nome` varchar(255) DEFAULT NULL,
  `medico_codigo` varchar(255) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) NOT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `local_trabalho` varchar(255) DEFAULT NULL,
  `medico_naturalidade` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `numero_docuemento` varchar(255) DEFAULT NULL,
  `medico_profissao` varchar(255) DEFAULT NULL,
  `raca` varchar(255) DEFAULT NULL,
  `telefone_alternativo` varchar(255) DEFAULT NULL,
  `telefone_principal` varchar(255) DEFAULT NULL,
  `tipo_documento_identificacao` varchar(255) DEFAULT NULL,
  `medico_especialidade_id` bigint(20) DEFAULT NULL,
  `medico_sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc12awsoa1gfnglholtnp8epdu` (`medico_especialidade_id`),
  KEY `FKe44u4eikpckaceq1fr64qacot` (`medico_sector_id`),
  CONSTRAINT `FKc12awsoa1gfnglholtnp8epdu` FOREIGN KEY (`medico_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`),
  CONSTRAINT `FKe44u4eikpckaceq1fr64qacot` FOREIGN KEY (`medico_sector_id`) REFERENCES `clinica_param_sectors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_medico`
--

DROP TABLE IF EXISTS `medico_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico_medico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `medico_apelido` varchar(255) DEFAULT NULL,
  `medico_codigo` varchar(255) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `medico_naturalidade` varchar(255) DEFAULT NULL,
  `medico_nome` varchar(255) DEFAULT NULL,
  `numero_bi` varchar(255) DEFAULT NULL,
  `telefone_alternativo` varchar(255) DEFAULT NULL,
  `telefone_principal` varchar(255) DEFAULT NULL,
  `medico_especialidade_id` bigint(20) DEFAULT NULL,
  `medico_sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnkeao4y8dh8jk7otnqajgh4kl` (`medico_especialidade_id`),
  KEY `FKru1ngdm5kry599qrdnr6hlr11` (`medico_sector_id`),
  CONSTRAINT `FKnkeao4y8dh8jk7otnqajgh4kl` FOREIGN KEY (`medico_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`),
  CONSTRAINT `FKru1ngdm5kry599qrdnr6hlr11` FOREIGN KEY (`medico_sector_id`) REFERENCES `sectors_clinica` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_medico`
--

LOCK TABLES `medico_medico` WRITE;
/*!40000 ALTER TABLE `medico_medico` DISABLE KEYS */;
INSERT INTO `medico_medico` VALUES (1,'2018-05-30 17:49:26','2018-05-30 17:49:26','Bomba','0011','1979-12-20','celsob@gmail.com','Malhazine','CASADO','MASCULINO','Sofala','Celso','29393823933U','+25883374784','+25884827333',11,NULL),(2,'2018-05-30 13:53:14','2018-05-30 13:53:15','Novela','003','1988-10-21','irenecarmen@outlook.pt','Alto Maé','SOLTEIRO','FEMININO','Maputo','Irene Carmen','4667765454K','+2588458324','+25882342686',7,1),(3,'2018-05-30 13:36:02','2018-05-30 13:36:02','Cumbe','004','1983-06-13','gomescumbe@gmail.com','Matola B','CASADO','MASCULINO','Gaza','Gomes','854587879890L','+258373333','+25884827333',4,1),(4,'2018-05-30 13:50:31','2018-05-30 13:50:31','Rodrigues','005','1962-12-17','alexsrodrigues@gmail.com','Malhangalene','CASADO','MASCULINO','Cuba','Alexis','29393823339V','+258373333344','+25884827333',6,7),(5,'2018-05-30 13:49:54','2018-05-30 13:49:54','Afonso','006','1972-02-08','adianezafonso@gmail.com','Cupe','CASADO','FEMININO','Cuba','Adianez','0393623682W','+2588423282','+258872638363',5,6),(6,'2018-05-30 17:47:59','2018-05-30 17:47:59','Correia','007','1988-02-18','margarida@gmail.com','Somarshilde','CASADO','FEMININO','Brasil','Margarida','182927192872Z','+25883374784','+2588453733',7,NULL),(7,'2018-06-05 15:06:46','2018-06-05 15:06:46','Cassamo','0012','1978-09-22','yolandaca@gmail.com','Bairro Central','SOLTEIRO','FEMININO','Sofala','Yolanda','83732387393783H','82648373833','84743928922',1,NULL),(8,'2018-06-05 15:10:09','2018-06-05 15:10:09','Cuna','0013','1979-03-13','fellixcuna@gmail.com','Alto Maé','CASADO','MASCULINO','Cuba','Felix','28392728273G','8537383733','862637836',2,NULL),(9,'2018-06-05 15:13:29','2018-06-05 15:13:29','Bilai','0014','1983-03-14','margarida@gmail.com','Cidade da Matola','SOLTEIRO','FEMININO','Maputo','Margarida','192837393C','+258373333','+25884827333',3,NULL),(10,'2018-06-05 15:15:56','2018-06-05 15:15:56','Perreira','0015','1984-03-09','ruiperreira@outlook.pt','Zimpeto','CASADO','MASCULINO','Nampula','Rui','283735282782','846282822','8263527221',3,NULL),(11,'2018-06-05 15:18:07','2018-06-05 15:18:07','Coelho','0016','1988-07-20','coelhojose@gmail.com','Machava','SOLTEIRO','MASCULINO','Zambézia','Jose','29393823933U','8327282822','+25886847684',8,NULL),(12,'2018-06-05 15:21:16','2018-06-05 15:21:16','Almeida','0017','1978-10-10','patriciaalmeida@outlook.pt','Mozal','SOLTEIRO','FEMININO','Manica','Patricia','292739383P','+258373333','+25884827333',8,NULL),(13,'2018-06-05 15:24:56','2018-06-05 15:24:56','Garcia','0018','1967-09-20','marcogarcia@gmail.com','Cupe','CASADO','MASCULINO','Brazil','Março','18292829229B','+258373333','+2588453733',4,NULL),(14,'2018-06-05 15:29:36','2018-06-05 15:29:36','Ferreira','0019','1982-12-23','jeneferreira@outlook.pt','Pandora','CASADO','FEMININO','Portugal','Jene','1928288272A','+258863747','+2588453733',4,NULL),(15,'2018-06-05 15:42:05','2018-06-05 15:42:05','Remane','0020','1975-03-19','ivanremane@gmail.com','Jardim','SOLTEIRO','MASCULINO','Inhambane','Ivan','4667765454K','+258863747','+2588453733',4,NULL),(16,'2018-06-05 15:54:13','2018-06-05 15:54:13','Antonio','0021','1979-04-13','faizalantonio@outlook.pt','Malhangalene','CASADO','MASCULINO','Sofala','Faizal','19273927822R','843837383883','82837393883',10,NULL),(17,'2018-06-05 15:56:22','2018-06-05 15:56:22','Ubisse','0022','1989-05-18','marizaubisse@gmail.com','Laulane','SOLTEIRO','FEMININO','Sofala','Mariza','9273637383J','+25883374784','+2588453733',10,NULL),(18,'2018-06-05 16:00:01','2018-06-05 16:00:01','Antoniz','0023','1982-01-21','rafaela@gmail.com','Ronil','CASADO','MASCULINO','Cuba','Rafael','1928282882G','+25883374784','+25884827333',5,NULL),(19,'2018-06-05 16:02:42','2018-06-05 16:02:42','Nhamagone','0024','1976-02-18','tanian@gmail.com','Cidade da Matola','SOLTEIRO','FEMININO','Maputo','Tania','4667765454K','+258373333','+258872638363',5,NULL),(20,'2018-06-05 16:04:38','2018-06-05 16:04:38','Langa','0025','1975-02-14','eduardolanga@outlook.pt','Bairro Central','CASADO','MASCULINO','Gaza','Eduardo','2827267822Z','826373833','84837383773',5,NULL),(21,'2018-09-01 14:44:32','2018-09-01 14:44:32','Flores','0027','1966-11-16','afonso@gmail.com','Polana  Semento','SOLTEIRO','MASCULINO','Sofala','Afonso','29393823933U','+25883374784','+2588453733',9,NULL);
/*!40000 ALTER TABLE `medico_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_paciente`
--

DROP TABLE IF EXISTS `paciente_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente_paciente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `apelido` varchar(255) NOT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `local_trabalho` varchar(255) DEFAULT NULL,
  `naturalidade` varchar(255) DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `numero_docuemento` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `raca` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `telefone_alternativo` varchar(255) DEFAULT NULL,
  `tipo_bolsa` int(11) DEFAULT NULL,
  `tipo_paciente` varchar(255) DEFAULT NULL,
  `tipo_documento_identificacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_paciente`
--

LOCK TABLES `paciente_paciente` WRITE;
/*!40000 ALTER TABLE `paciente_paciente` DISABLE KEYS */;
INSERT INTO `paciente_paciente` VALUES (4,'2018-05-29 12:47:07','2018-05-29 12:47:07','Manjate','1990-09-20','','Fomento','SOLTEIRO','MASCULINO',NULL,'',NULL,'Miguel','Pascoa','Ambrosio',NULL,NULL,NULL,NULL,'+258844830446','',NULL,NULL,NULL),(5,'2018-05-29 12:49:21','2018-05-29 12:49:21','Maposse','1991-12-12',NULL,'Liberdade','CASADO','MASCULINO',NULL,NULL,NULL,'Euzebio','Maria','Jose',NULL,NULL,NULL,NULL,'+2588437383',NULL,NULL,NULL,NULL),(6,'2018-05-29 12:52:26','2018-05-29 12:52:26','Chafira','1991-01-17',NULL,'Mavalane','CASADO','MASCULINO',NULL,NULL,NULL,'Emilio','Meraldina ','Salvador',NULL,NULL,NULL,NULL,'+25886494843',NULL,NULL,NULL,NULL),(7,'2018-06-04 13:43:45','2018-06-04 13:43:46','Uamusse','1994-07-19','vanessa@gmail.com','Tchumene1','SOLTEIRO','FEMININO',NULL,'Quelimane',7,'Vanessa','Izaura','Guilherme',NULL,NULL,'NEGRA',NULL,'+25884572833','+258373333344',NULL,'PACIENTE_ESTUDANTE',NULL),(8,'2018-05-29 19:02:55','2018-05-29 19:02:55','Machava','1992-02-10',NULL,'Belo_Horizonte','CASADO','FEMININO',NULL,NULL,NULL,'Maura','Patricia','Ercilio',NULL,NULL,NULL,NULL,'+258937333',NULL,NULL,NULL,NULL),(9,'2018-05-29 19:04:58','2018-05-29 19:04:58','Frances','1990-06-13',NULL,'Matola D','CASADO','MASCULINO',NULL,NULL,NULL,'Flavio','Josefa','Helder',NULL,NULL,NULL,NULL,'+2588383733',NULL,NULL,NULL,NULL),(10,'2018-05-30 10:13:01','2018-05-30 10:13:01','Matola','1975-07-15','salvadort@outlook.pt','Polana Caniço A','CASADO','MASCULINO','Home Center','Gaza',10,'Salvador','Crizelina','Castigo','1833038292','Carpinteiro','NEGRA',NULL,'+2588436373','+25886272722',NULL,'PACIENTE_GERAL','CARTAO_ELEITOR'),(11,'2018-06-04 14:29:04','2018-06-04 14:29:04','Tembe','1975-08-18','tembejacinto@gmail.com','Katembe','DIVORCIADO','MASCULINO','Ministerio Do Trabalho','KaTembe',11,'Jacinto','Lidia','Afonso',NULL,NULL,'BRANCA',NULL,'+2829292992','2923738282',NULL,'PACIENTE_GERAL',NULL),(12,'2018-06-04 13:39:43','2018-06-04 13:39:43','Figueredo','1992-02-14','','Tsalala','SOLTEIRO','MASCULINO',NULL,'',NULL,'Paulo','Rosa Figueredo','Manuel Figueredo',NULL,NULL,NULL,NULL,'+258844830446','',NULL,NULL,NULL),(13,'2018-06-04 13:41:31','2018-06-04 13:41:31','Sitoe','1975-04-12','armandositoe@outlook.pt','Maxaquene b','CASADO','MASCULINO',NULL,'Quelimane',13,'Armando','Amélia','João',NULL,NULL,'NEGRA',NULL,'823748933','853244345',NULL,'PACIENTE_FUNCIONARIO',NULL),(14,'2018-06-04 14:27:38','2018-06-04 14:27:38','Macaringa','1988-03-15','macaringagildo@outlook.pt','Dona Alice','DIVORCIADO','MASCULINO','','Manhiça',14,'Gildo','Pricilda','Leonel',NULL,NULL,'BRANCA',NULL,'8725236252','8427382782',NULL,'PACIENTE_FUNCIONARIO',NULL),(15,'2018-06-04 14:42:25','2018-06-04 14:42:25','Zandamela','1988-03-18','joaoz@gmail.com','Matola A','SOLTEIRO','MASCULINO',NULL,'Boquiço',15,'João','Helena','Ferão',NULL,NULL,'NEGRA',NULL,'+258844830446','856252726',NULL,'PACIENTE_ESTUDANTE',NULL),(16,'2018-06-04 15:06:50','2018-06-04 15:06:50','Xirindza','1991-03-15','yara@gmail.com','Pandora','DIVORCIADO','FEMININO','','Maputo',16,'Yara','Fatima','Batista',NULL,NULL,'NEGRA',NULL,'+258844830446','8565215266',NULL,'PACIENTE_ESTUDANTE',NULL),(17,'2018-06-06 11:40:57','2018-06-06 11:40:57','Timane','1988-03-17','angelotimae@gmail.com','Chamanculo','DIVORCIADO','MASCULINO','Ibavete','Tete',17,'Angelo','Julia','Cristovão',NULL,NULL,'NEGRA',NULL,'84538628722','8234363733',NULL,'PACIENTE_GERAL',NULL),(18,'2018-09-01 13:57:29','2018-09-01 13:57:29','Mourinho','1981-07-06','sezar@gmail.com','Namaacha','SOLTEIRO','MASCULINO','Caseiro','Chibuto',18,'Sezar','Vera Mourinho','Alvaro Mourinho','1829372922','Mecânico','NEGRA',NULL,'2937383933','2827389229',NULL,'PACIENTE_GERAL','CARTA_CONDUCAO');
/*!40000 ALTER TABLE `paciente_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `param_servico`
--

DROP TABLE IF EXISTS `param_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param_servico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `servico_descricao` varchar(255) DEFAULT NULL,
  `servico_especialidade_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK117eogaah0f8inyc41vabgo8u` (`servico_especialidade_id`),
  CONSTRAINT `FK117eogaah0f8inyc41vabgo8u` FOREIGN KEY (`servico_especialidade_id`) REFERENCES `especialidade_especialidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `param_servico`
--

LOCK TABLES `param_servico` WRITE;
/*!40000 ALTER TABLE `param_servico` DISABLE KEYS */;
INSERT INTO `param_servico` VALUES (1,'2018-08-25 13:12:20','2018-08-25 13:12:20','2018ECDT','Ecografia de Tiroide',14),(2,'2018-08-25 12:59:36','2018-08-25 12:59:36','2018CCCII','Consulta de Cardiologia do Coração II',6),(3,'2018-08-25 13:11:57','2018-08-25 13:11:57','2018ECDC','Ecografia do Coração',14),(4,'2018-08-25 13:12:52','2018-08-25 13:12:52','2018EECT','Ecografia Escrotal',14),(5,'2018-08-25 13:13:01','2018-08-25 13:13:01','2018EET','Ecografia Escroto/Testiculos',14),(6,'2018-08-24 19:49:22','2018-08-24 19:49:22','2018PPM','Pesquisa de Plasmodio',5),(7,'2018-08-25 13:20:27','2018-08-25 13:20:27','2018EPSC','Ecografia do Pescoço',14),(8,'2018-08-25 13:20:33','2018-08-25 13:20:33','2018ERB','Ecografia Renal e Bexiga',14),(9,'2018-05-30 19:31:46','2018-05-30 19:31:46','2018ESPL','Escapula',5),(10,'2018-05-30 19:33:00','2018-05-30 19:33:00','2018CLVL','Clavícula',5),(11,'2018-08-25 13:09:49','2018-08-25 13:09:49','2018CR','Cranio',14),(12,'2018-08-25 13:10:08','2018-08-25 13:10:08','2018CSRL','C.Sacral',14),(13,'2018-08-25 13:10:21','2018-08-25 13:10:21','2018CST','Costelas',14),(14,'2018-08-25 13:10:40','2018-08-25 13:10:40','2018CTCA','C.torácica',14),(15,'2018-05-30 19:37:36','2018-05-30 19:37:36','2018CTG','CTG',2),(16,'2018-08-25 13:11:09','2018-08-25 13:11:09','2018CTV','Cotovelo',14),(17,'2018-05-30 19:39:49','2018-05-30 19:39:49','2018CVM','Cavum(Laringe)',5),(18,'2018-08-25 13:11:31','2018-08-25 13:11:31','2018EABM','Ecografia Abdominal',14),(19,'2018-05-30 19:42:04','2018-05-30 19:42:04','03','Laboratorio',2),(20,'2018-09-01 14:18:41','2018-09-01 14:18:41','2018HC','Hemocrama Completo',4),(21,'2018-09-01 14:17:26','2018-09-01 14:17:26','2018TRM','Teste Rapido De Malaria',4),(22,'2018-08-24 19:41:16','2018-08-24 19:41:16','2018VS','Velocidade de Sedimentacao',5),(23,'2018-08-24 19:35:22','2018-08-24 19:35:24','2018RTT','Reticulocitos',5),(24,'2018-05-30 20:07:11','2018-05-30 20:07:11','2018EPTTB','Hepatite B',11),(25,'2018-05-30 20:08:19','2018-05-30 20:08:19','2018CVHTB','Carga Viral Hepatite B',11),(26,'2018-05-30 20:09:11','2018-05-30 20:09:11','HCV','Hepatite C',11),(27,'2018-09-01 14:16:29','2018-09-01 14:16:29','2018HIV','HIV I & II',4),(28,'2018-05-30 20:11:19','2018-05-30 20:11:19','2018CD4','CD4',11),(29,'2018-08-24 18:14:48','2018-08-24 18:14:48','2018EUTS','EXAME DE UROCULTURA +TSA',12),(30,'2018-08-24 18:18:43','2018-08-24 18:18:43','2018EPFF','EXAME PARASIT. DE FEZES A FRESCO',12),(31,'2018-08-24 18:21:55','2018-08-24 18:21:55','2018EPF123','EXAME PARSITOLOGICO DE FEZES 1,2,3',12),(32,'2018-08-24 18:24:34','2018-08-24 18:24:34','2018ECTS','EXAME COPROCUTURA + TSA',12),(33,'2018-08-24 18:26:51','2018-08-24 18:26:51','2018EPRF','EX. PESQ. DE ROTA VIRUS NAS FEZES',12),(34,'2018-08-24 18:30:43','2018-08-24 18:30:43','2018PSF','EX. DE SANGUE OCULTO NAS FEZES',12),(35,'2018-08-24 18:34:25','2018-08-24 18:34:25','2018EVCT','EX. EXSUDATO VAGINAL CULTU + TSA',12),(36,'2018-08-24 18:42:35','2018-08-24 18:42:35','2018EU','EXAME DE UREIA',13),(37,'2018-08-24 18:48:18','2018-08-24 18:48:18','2018EAU','EXAME DE ACIDO URICO',13),(38,'2018-08-24 18:51:21','2018-08-24 18:51:21','2018ECTNN','EXAME DE CREATININA',13),(39,'2018-09-01 14:17:01','2018-09-01 14:17:01','2018CVHIV','Carga Viral HIV',4),(40,'2018-08-25 13:17:49','2018-08-25 13:17:49','2018PCRQ','PCR Qualitativo',11),(41,'2018-08-25 13:18:28','2018-08-25 13:18:28','2018RWL','Reacao de Widal',11),(42,'2018-09-01 14:04:48','2018-09-01 14:04:48','2018CGP','Cuidados Gerais da Pele',1),(43,'2018-09-01 14:05:30','2018-09-01 14:05:30','2018CGC','Cuidados Gerais do Cabelo(Fungos)',1),(44,'2018-09-01 14:24:11','2018-09-01 14:24:11','2018EXT','Extração dentária',7),(45,'2018-09-01 14:26:25','2018-09-01 14:26:25','2018IPD','Implantes  Dentários',7),(46,'2018-09-01 14:27:11','2018-09-01 14:27:11','2018CD','Clareamento Dental',7),(47,'2018-09-01 14:36:36','2018-09-01 14:36:36','2018DP','Consulta de Depressão',9),(48,'2018-09-01 14:37:10','2018-09-01 14:37:10','2018EQZ',' Esquizofrenia',9),(49,'2018-09-01 14:41:02','2018-09-01 14:41:02','2018CGV','Cuidados Gerais Vaginais',8);
/*!40000 ALTER TABLE `param_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `param_servico_consultas`
--

DROP TABLE IF EXISTS `param_servico_consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param_servico_consultas` (
  `servico_id` bigint(20) NOT NULL,
  `consultas_id` bigint(20) NOT NULL,
  KEY `FKm4cddl1grjedmswjd6fpg5v8w` (`consultas_id`),
  KEY `FK47ykqrdu0an12k3xbw3ikldum` (`servico_id`),
  CONSTRAINT `FK47ykqrdu0an12k3xbw3ikldum` FOREIGN KEY (`servico_id`) REFERENCES `param_servico` (`id`),
  CONSTRAINT `FKm4cddl1grjedmswjd6fpg5v8w` FOREIGN KEY (`consultas_id`) REFERENCES `consulta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `param_servico_consultas`
--

LOCK TABLES `param_servico_consultas` WRITE;
/*!40000 ALTER TABLE `param_servico_consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `param_servico_consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `param_servico_unidade`
--

DROP TABLE IF EXISTS `param_servico_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param_servico_unidade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `sevico_rubrica_codigo` varchar(255) NOT NULL,
  `servico_rubrica` varchar(255) DEFAULT NULL,
  `servico_designacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `param_servico_unidade`
--

LOCK TABLES `param_servico_unidade` WRITE;
/*!40000 ALTER TABLE `param_servico_unidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `param_servico_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `autorizacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (19,'2018-05-27 21:12:40','2018-05-27 21:12:40','ROLE_AGENDAR_CONSULTA'),(20,'2018-05-27 21:13:22','2018-05-27 21:13:22','ROLE_CONFIGURACAO_UEM'),(21,'2018-05-27 21:13:55','2018-05-27 21:13:55','ROLE_LABORATORIOS'),(22,'2018-05-27 21:14:26','2018-05-27 21:14:26','ROLE_LISTAR_CONSULTA'),(24,'2018-05-27 21:15:34','2018-05-27 21:15:34','ROLE_LISTAR_PACIENTE'),(25,'2018-05-27 21:16:05','2018-05-27 21:16:05','ROLE_LISTAR_PERFIL'),(26,'2018-05-27 21:16:40','2018-05-27 21:16:40','ROLE_LISTAR_UTILIZADOR'),(27,'2018-05-27 21:17:26','2018-05-27 21:17:26','ROLE_MEDICOS'),(28,'2018-05-27 21:18:14','2018-05-27 21:18:14','ROLE_PESQUISAR_PACIENTE'),(29,'2018-05-27 21:18:56','2018-05-27 21:18:56','ROLE_REGISTAR_PACIENTE_COMUN'),(30,'2018-05-27 21:19:28','2018-05-27 21:19:28','ROLE_REGISTAR_PACIENTE_EST'),(31,'2018-05-27 21:20:11','2018-05-27 21:20:11','ROLE_REGISTAR_PACIENTE_FUNC'),(32,'2018-05-27 21:20:56','2018-05-27 21:20:56','ROLE_REGISTAR_PERFIL'),(33,'2018-05-27 21:21:43','2018-05-27 21:21:43','ROLE_REGISTAR_SERVICO'),(34,'2018-05-27 21:23:08','2018-05-27 21:23:08','ROLE_REGISTAR_UTILIZADOR'),(36,'2018-05-29 09:21:09','2018-05-29 09:21:09','ROLE_LISTAR_RECIBOS'),(38,'2018-08-31 13:08:59','2018-08-31 13:08:59','ROLE_PARAMETRIZACAO'),(39,'2018-09-01 12:57:42','2018-09-01 12:57:42','ROLE_LISTAR_CONSULTAS');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo`
--

DROP TABLE IF EXISTS `recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `data_de_pagamento` date DEFAULT NULL,
  `numero_de_recibo` bigint(20) DEFAULT NULL,
  `valor_pago` double DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL,
  `formadepagamento` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7xpkvg7ke53xta6r2vjt6qb6` (`factura_id`),
  KEY `FKmpc3982j9uc4hwnblry8jfrvh` (`formadepagamento`),
  CONSTRAINT `FK7xpkvg7ke53xta6r2vjt6qb6` FOREIGN KEY (`factura_id`) REFERENCES `factura_factura` (`id`),
  CONSTRAINT `FKmpc3982j9uc4hwnblry8jfrvh` FOREIGN KEY (`formadepagamento`) REFERENCES `clinica_forma_de_pagamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo`
--

LOCK TABLES `recibo` WRITE;
/*!40000 ALTER TABLE `recibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2018-09-01 13:03:09','2018-09-01 13:03:09','ROLE_ADMIN_SIST'),(2,'2018-05-27 22:18:33','2018-05-27 22:18:33','ROLE_ADMINISTRADOR'),(3,'2018-08-31 13:20:07','2018-08-31 13:20:07','ROLE_RECEPCIONISTA'),(4,'2018-09-01 13:03:39','2018-09-01 13:03:39','ROLE_CONTABILISTA'),(5,'2018-09-01 13:25:15','2018-09-01 13:25:15','ROLE_MEDICO');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  KEY `FKf8yllw1ecvwqy3ehyxawqa1qp` (`permission_id`),
  KEY `FKa6jx8n8xkesmjmv6jqug6bg68` (`role_id`),
  CONSTRAINT `FKa6jx8n8xkesmjmv6jqug6bg68` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKf8yllw1ecvwqy3ehyxawqa1qp` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (2,25),(2,26),(2,32),(2,34),(3,19),(3,20),(3,22),(3,24),(3,28),(3,29),(3,30),(3,31),(1,19),(1,20),(1,21),(1,22),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,36),(1,38),(1,39),(4,36),(4,39),(5,21),(5,27);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors_clinica`
--

DROP TABLE IF EXISTS `sectors_clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors_clinica` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `sector_codigo` varchar(255) DEFAULT NULL,
  `sector_designacao` varchar(255) NOT NULL,
  `sector_sigla` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4x4eb1dwyasqwgqw38lb9ryjy` (`sector_designacao`),
  UNIQUE KEY `UK_55m2fc16u0fqd2mr9ainpp866` (`sector_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors_clinica`
--

LOCK TABLES `sectors_clinica` WRITE;
/*!40000 ALTER TABLE `sectors_clinica` DISABLE KEYS */;
INSERT INTO `sectors_clinica` VALUES (1,'2018-05-30 11:32:22','2018-05-30 11:32:22','2018CLI','Clinico','CLI'),(2,'2018-05-30 11:40:51','2018-05-30 11:40:51','2018ESTMLG','ESTOMALOGIA','ESTMLG'),(3,'2018-05-30 11:34:35','2018-05-30 11:34:35','2018GAB_1','GABINETE MEDICO_1','GAB_1'),(4,'2018-05-30 11:35:46','2018-05-30 11:35:46','2018GAB_2','GABINETE MEDICO_2','GAB_2'),(5,'2018-05-30 11:36:43','2018-05-30 11:36:43','2018GAB_3','GABINETE MEDICO_3','GAB_3'),(6,'2018-05-30 11:37:16','2018-05-30 11:37:16','2018IMG','IMAGIOLOGIA','IMG'),(7,'2018-05-30 11:37:49','2018-05-30 11:37:49','2018LAB','LABORATORIO','LAB'),(8,'2018-05-30 11:38:55','2018-05-30 11:38:55','2018PCRG','PEQUENA CIRUGIA','PCRG'),(9,'2018-05-30 11:39:23','2018-05-30 11:39:23','2018PED','PEDIATRIA','PED'),(10,'2018-05-30 11:40:02','2018-05-30 11:40:02','2018SMI','SAÚDE MATERNAL INFATIL','SMI');
/*!40000 ALTER TABLE `sectors_clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_consulta`
--

DROP TABLE IF EXISTS `servico_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_consulta` (
  `consulta_id` bigint(20) NOT NULL,
  `servico_id` bigint(20) NOT NULL,
  KEY `FKbt8895hbfuqbp1x195h07vlw3` (`servico_id`),
  KEY `FKbas50y0uh5glaw9a949y0d7bj` (`consulta_id`),
  CONSTRAINT `FKbas50y0uh5glaw9a949y0d7bj` FOREIGN KEY (`consulta_id`) REFERENCES `consulta_consulta` (`id`),
  CONSTRAINT `FKbt8895hbfuqbp1x195h07vlw3` FOREIGN KEY (`servico_id`) REFERENCES `param_servico` (`id`),
  CONSTRAINT `FKikjcpaiwuu2b209g349obmjjw` FOREIGN KEY (`consulta_id`) REFERENCES `consulta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_consulta`
--

LOCK TABLES `servico_consulta` WRITE;
/*!40000 ALTER TABLE `servico_consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_taxa`
--

DROP TABLE IF EXISTS `servico_taxa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_taxa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `servico_taxa_normal` double DEFAULT NULL,
  `servico_taxa_retorno` double DEFAULT NULL,
  `servico_taxa_segunda_via` double DEFAULT NULL,
  `servico_taxa_urgente` double DEFAULT NULL,
  `servico_taxa_tipo_cliente` varchar(255) DEFAULT NULL,
  `servico_taxa_id` bigint(20) DEFAULT NULL,
  `servico_taxa_controle` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7vfn8b9kv4vd9w8fift2uipnt` (`servico_taxa_id`),
  CONSTRAINT `FK7vfn8b9kv4vd9w8fift2uipnt` FOREIGN KEY (`servico_taxa_id`) REFERENCES `param_servico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_taxa`
--

LOCK TABLES `servico_taxa` WRITE;
/*!40000 ALTER TABLE `servico_taxa` DISABLE KEYS */;
INSERT INTO `servico_taxa` VALUES (1,'2018-05-30 23:25:54','2018-05-30 23:25:54',350,NULL,NULL,550,'PACIENTE_FUNCIONARIO',20,150),(2,'2018-05-30 23:39:06','2018-05-30 23:39:06',150,NULL,NULL,250,'PACIENTE_ESTUDANTE',20,75),(3,'2018-05-30 23:42:38','2018-05-30 23:42:38',600,NULL,NULL,NULL,'PACIENTE_GERAL',28,NULL),(4,'2018-06-02 14:11:58','2018-06-02 14:11:58',1000,NULL,NULL,1500,'PACIENTE_GERAL',19,500),(5,'2018-06-02 14:12:52','2018-06-02 14:12:52',500,NULL,NULL,1000,'PACIENTE_FUNCIONARIO',19,250),(7,'2018-06-02 14:46:48','2018-06-02 14:46:48',2222,NULL,NULL,444,'PACIENTE_GERAL',20,6666),(8,'2018-06-02 17:11:50','2018-06-02 17:11:50',230,NULL,NULL,430,'PACIENTE_ESTUDANTE',19,130),(9,'2018-06-02 17:16:07','2018-06-02 17:16:07',530,NULL,NULL,730,'PACIENTE_FUNCIONARIO',21,130),(10,'2018-06-02 17:19:44','2018-06-02 17:19:44',1100,NULL,NULL,1600,'PACIENTE_GERAL',21,600),(11,'2018-06-02 17:25:28','2018-06-02 17:25:28',230,NULL,NULL,330,'PACIENTE_ESTUDANTE',21,120),(12,'2018-06-05 16:08:18','2018-06-05 16:08:18',100,NULL,NULL,180,'PACIENTE_FUNCIONARIO',28,60),(13,'2018-06-05 16:09:08','2018-06-05 16:09:08',80,NULL,NULL,120,'PACIENTE_ESTUDANTE',28,30),(14,'2018-06-05 16:10:16','2018-06-05 16:10:16',430,NULL,NULL,670,'PACIENTE_GERAL',22,260),(15,'2018-06-05 16:11:02','2018-06-05 16:11:02',300,NULL,NULL,400,'PACIENTE_FUNCIONARIO',22,150),(16,'2018-06-05 16:12:07','2018-06-05 16:12:07',240,NULL,NULL,280,'PACIENTE_ESTUDANTE',22,170),(17,'2018-06-05 16:12:53','2018-06-05 16:12:53',700,NULL,NULL,900,'PACIENTE_GERAL',23,500),(18,'2018-06-05 16:13:38','2018-06-05 16:13:38',500,NULL,NULL,700,'PACIENTE_FUNCIONARIO',23,250),(19,'2018-06-05 16:14:19','2018-06-05 16:14:19',270,NULL,NULL,370,'PACIENTE_ESTUDANTE',23,170),(20,'2018-06-05 16:15:06','2018-06-05 16:15:06',1000,NULL,NULL,1500,'PACIENTE_GERAL',10,700),(21,'2018-06-05 16:15:43','2018-06-05 16:15:43',800,NULL,NULL,1200,'PACIENTE_FUNCIONARIO',10,300),(22,'2018-06-05 16:16:31','2018-06-05 16:16:31',500,NULL,NULL,800,'PACIENTE_ESTUDANTE',10,150),(23,'2018-06-05 16:17:22','2018-06-05 16:17:22',2000,NULL,NULL,3000,'PACIENTE_GERAL',11,1000),(24,'2018-06-05 16:17:56','2018-06-05 16:17:56',1300,NULL,NULL,2300,'PACIENTE_FUNCIONARIO',11,800),(25,'2018-06-05 16:18:44','2018-06-05 16:18:44',750,NULL,NULL,1150,'PACIENTE_ESTUDANTE',11,350),(26,'2018-06-05 16:19:49','2018-06-05 16:19:49',1400,NULL,NULL,2400,'PACIENTE_GERAL',12,900),(27,'2018-06-05 16:20:51','2018-06-05 16:20:51',850,NULL,NULL,1450,'PACIENTE_FUNCIONARIO',12,500),(28,'2018-06-05 16:21:27','2018-06-05 16:21:27',650,NULL,NULL,950,'PACIENTE_ESTUDANTE',12,350),(29,'2018-06-05 16:22:15','2018-06-05 16:22:15',2000,NULL,NULL,4500,'PACIENTE_GERAL',13,1500),(30,'2018-06-05 16:22:57','2018-06-05 16:22:57',1200,NULL,NULL,1800,'PACIENTE_FUNCIONARIO',13,600),(31,'2018-06-05 16:23:54','2018-06-05 16:23:54',900,NULL,NULL,1600,'PACIENTE_ESTUDANTE',13,700),(32,'2018-06-05 16:42:43','2018-06-05 16:42:43',940,NULL,NULL,1450,'PACIENTE_GERAL',14,550),(33,'2018-06-05 16:43:36','2018-06-05 16:43:36',670,NULL,NULL,1170,'PACIENTE_FUNCIONARIO',14,350),(34,'2018-06-05 16:44:14','2018-06-05 16:44:14',350,NULL,NULL,550,'PACIENTE_ESTUDANTE',14,150),(35,'2018-06-05 16:45:24','2018-06-05 16:45:24',900,NULL,NULL,1400,'PACIENTE_GERAL',15,600),(36,'2018-06-05 16:46:02','2018-06-05 16:46:02',700,NULL,NULL,1100,'PACIENTE_FUNCIONARIO',15,400),(37,'2018-06-05 16:46:40','2018-06-05 16:46:40',500,NULL,NULL,700,'PACIENTE_ESTUDANTE',15,200),(38,'2018-06-05 16:47:31','2018-06-05 16:47:31',680,NULL,NULL,820,'PACIENTE_GERAL',16,340),(39,'2018-06-05 16:48:11','2018-06-05 16:48:11',520,NULL,NULL,780,'PACIENTE_FUNCIONARIO',16,220),(40,'2018-06-05 16:48:59','2018-06-05 16:48:59',250,NULL,NULL,380,'PACIENTE_ESTUDANTE',16,150),(41,'2018-06-05 16:49:51','2018-06-05 16:49:51',380,NULL,NULL,630,'PACIENTE_GERAL',25,190),(42,'2018-06-05 16:50:34','2018-06-05 16:50:34',280,NULL,NULL,430,'PACIENTE_FUNCIONARIO',25,130),(43,'2018-06-05 16:52:23','2018-06-05 16:52:23',180,NULL,NULL,330,'PACIENTE_ESTUDANTE',25,60),(44,'2018-06-05 16:53:15','2018-06-05 16:53:15',3000,NULL,NULL,4000,'PACIENTE_GERAL',17,1500),(45,'2018-06-05 16:53:36','2018-06-05 16:53:36',2000,NULL,NULL,3000,'PACIENTE_FUNCIONARIO',17,500),(46,'2018-06-05 16:54:00','2018-06-05 16:54:00',1000,NULL,NULL,2000,'PACIENTE_ESTUDANTE',17,250),(47,'2018-06-05 16:55:01','2018-06-05 16:55:01',3450,NULL,NULL,4800,'PACIENTE_GERAL',18,1480),(48,'2018-06-05 16:55:21','2018-06-05 16:55:21',2450,NULL,NULL,3800,'PACIENTE_FUNCIONARIO',18,480),(49,'2018-06-05 16:55:38','2018-06-05 16:55:38',1450,NULL,NULL,2800,'PACIENTE_ESTUDANTE',18,280),(50,'2018-06-05 16:56:39','2018-06-05 16:56:39',1700,NULL,NULL,2220,'PACIENTE_GERAL',3,890),(51,'2018-06-05 16:57:00','2018-06-05 16:57:00',700,NULL,NULL,220,'PACIENTE_FUNCIONARIO',3,190),(52,'2018-06-05 16:57:19','2018-06-05 16:57:19',500,NULL,NULL,120,'PACIENTE_ESTUDANTE',3,90),(53,'2018-06-05 16:58:57','2018-06-05 16:58:57',1900,NULL,NULL,2700,'PACIENTE_GERAL',1,850),(54,'2018-06-05 16:59:16','2018-06-05 16:59:16',900,NULL,NULL,1700,'PACIENTE_FUNCIONARIO',1,650),(55,'2018-06-05 16:59:38','2018-06-05 16:59:38',600,NULL,NULL,700,'PACIENTE_ESTUDANTE',1,350),(56,'2018-06-05 17:00:16','2018-06-05 17:00:16',3800,NULL,NULL,5200,'PACIENTE_GERAL',2,2400),(57,'2018-06-05 17:00:35','2018-06-05 17:00:35',2800,NULL,NULL,4200,'PACIENTE_FUNCIONARIO',2,1400),(58,'2018-06-05 17:00:58','2018-06-05 17:00:58',1800,NULL,NULL,3200,'PACIENTE_ESTUDANTE',2,700),(59,'2018-06-05 17:01:29','2018-06-05 17:01:29',900,NULL,NULL,1300,'PACIENTE_GERAL',4,300),(60,'2018-06-05 17:01:52','2018-06-05 17:01:52',800,NULL,NULL,1000,'PACIENTE_FUNCIONARIO',4,200),(61,'2018-06-05 17:02:19','2018-06-05 17:02:19',600,NULL,NULL,900,'PACIENTE_ESTUDANTE',4,100),(62,'2018-06-05 17:03:16','2018-06-05 17:03:16',500,NULL,NULL,700,'PACIENTE_GERAL',27,400),(63,'2018-06-05 17:03:38','2018-06-05 17:03:38',300,NULL,NULL,500,'PACIENTE_FUNCIONARIO',27,200),(64,'2018-06-05 17:04:04','2018-06-05 17:04:04',200,NULL,NULL,300,'PACIENTE_ESTUDANTE',27,100),(65,'2018-06-05 17:04:47','2018-06-05 17:04:47',950,NULL,NULL,1350,'PACIENTE_GERAL',6,650),(66,'2018-06-05 17:05:11','2018-06-05 17:05:11',750,NULL,NULL,1050,'PACIENTE_FUNCIONARIO',6,450),(67,'2018-06-05 17:05:36','2018-06-05 17:05:36',450,NULL,NULL,850,'PACIENTE_ESTUDANTE',6,250),(68,'2018-06-05 17:06:21','2018-06-05 17:06:21',400,NULL,NULL,600,'PACIENTE_GERAL',7,180),(69,'2018-06-05 17:07:02','2018-06-05 17:07:02',300,NULL,NULL,500,'PACIENTE_FUNCIONARIO',7,120),(70,'2018-06-05 17:07:31','2018-06-05 17:07:31',200,NULL,NULL,300,'PACIENTE_ESTUDANTE',7,95),(71,'2018-06-05 17:08:58','2018-06-05 17:08:58',800,NULL,NULL,1700,'PACIENTE_GERAL',5,600),(72,'2018-06-05 17:09:24','2018-06-05 17:09:24',500,NULL,NULL,1100,'PACIENTE_FUNCIONARIO',5,300),(73,'2018-06-05 17:09:57','2018-06-05 17:09:57',300,NULL,NULL,600,'PACIENTE_ESTUDANTE',5,150),(74,'2018-06-05 17:10:40','2018-06-05 17:10:40',400,NULL,NULL,680,'PACIENTE_GERAL',8,220),(75,'2018-06-05 17:11:00','2018-06-05 17:11:00',200,NULL,NULL,480,'PACIENTE_FUNCIONARIO',8,120),(76,'2018-06-05 17:11:20','2018-06-05 17:11:20',100,NULL,NULL,280,'PACIENTE_ESTUDANTE',8,80),(77,'2018-08-30 12:21:17','2018-08-30 12:21:17',1750,NULL,NULL,2550,'PACIENTE_GERAL',38,800),(78,'2018-08-30 12:22:13','2018-08-30 12:22:13',1050,NULL,NULL,1850,'PACIENTE_FUNCIONARIO',38,700),(79,'2018-08-30 12:23:04','2018-08-30 12:23:04',850,NULL,NULL,1050,'PACIENTE_ESTUDANTE',38,300),(80,'2018-08-30 12:24:57','2018-08-30 12:24:57',1600,NULL,NULL,2200,'PACIENTE_GERAL',36,700),(81,'2018-08-30 12:25:46','2018-08-30 12:25:46',1100,NULL,NULL,1900,'PACIENTE_FUNCIONARIO',36,400),(82,'2018-08-30 12:26:38','2018-08-30 12:26:38',700,NULL,NULL,1200,'PACIENTE_ESTUDANTE',36,300),(83,'2018-08-30 12:30:24','2018-08-30 12:30:24',1300,NULL,NULL,1900,'PACIENTE_GERAL',37,550),(84,'2018-08-30 12:31:08','2018-08-30 12:31:08',800,NULL,NULL,1150,'PACIENTE_FUNCIONARIO',37,350),(85,'2018-08-30 12:32:01','2018-08-30 12:32:01',630,NULL,NULL,920,'PACIENTE_ESTUDANTE',37,250),(86,'2018-08-30 13:36:25','2018-08-30 13:36:25',460,NULL,NULL,720,'PACIENTE_GERAL',39,270),(87,'2018-08-30 13:36:52','2018-08-30 13:36:52',260,NULL,NULL,520,'PACIENTE_FUNCIONARIO',39,170),(88,'2018-08-30 13:37:24','2018-08-30 13:37:24',160,NULL,NULL,320,'PACIENTE_ESTUDANTE',39,80),(89,'2018-08-30 13:38:35','2018-08-30 13:38:35',1300,NULL,NULL,3200,'PACIENTE_GERAL',32,900),(90,'2018-08-30 13:39:03','2018-08-30 13:39:03',900,NULL,NULL,2400,'PACIENTE_FUNCIONARIO',32,500),(91,'2018-08-30 13:39:26','2018-08-30 13:39:26',600,NULL,NULL,1400,'PACIENTE_ESTUDANTE',32,200),(92,'2018-08-30 13:40:56','2018-08-30 13:40:56',1250,NULL,NULL,2300,'PACIENTE_GERAL',31,750),(93,'2018-08-30 13:41:35','2018-08-30 13:41:35',1050,NULL,NULL,1900,'PACIENTE_FUNCIONARIO',31,450),(94,'2018-08-30 13:41:59','2018-08-30 13:41:59',650,NULL,NULL,1100,'PACIENTE_ESTUDANTE',31,250),(95,'2018-08-30 13:42:50','2018-08-30 13:42:50',3200,NULL,NULL,5100,'PACIENTE_GERAL',30,1300),(96,'2018-08-30 13:43:11','2018-08-30 13:43:11',2200,NULL,NULL,3100,'PACIENTE_FUNCIONARIO',30,800),(97,'2018-08-30 13:43:27','2018-08-30 13:43:27',1200,NULL,NULL,2100,'PACIENTE_ESTUDANTE',30,600),(98,'2018-08-30 13:45:00','2018-08-30 13:45:00',2300,NULL,NULL,3750,'PACIENTE_GERAL',33,1250),(99,'2018-08-30 13:45:25','2018-08-30 13:45:25',1300,NULL,NULL,2750,'PACIENTE_FUNCIONARIO',33,850),(100,'2018-08-30 13:46:14','2018-08-30 13:46:14',830,NULL,NULL,1080,'PACIENTE_ESTUDANTE',33,370),(101,'2018-08-30 13:47:15','2018-08-30 13:47:15',700,NULL,NULL,1000,'PACIENTE_GERAL',24,300),(102,'2018-08-30 13:47:41','2018-08-30 13:47:41',500,NULL,NULL,800,'PACIENTE_FUNCIONARIO',24,150),(103,'2018-08-30 13:48:02','2018-08-30 13:48:02',300,NULL,NULL,500,'PACIENTE_ESTUDANTE',24,70),(104,'2018-08-30 13:48:59','2018-08-30 13:48:59',600,NULL,NULL,800,'PACIENTE_GERAL',9,300),(105,'2018-08-30 13:49:22','2018-08-30 13:49:22',400,NULL,NULL,700,'PACIENTE_FUNCIONARIO',9,200),(106,'2018-08-30 13:49:38','2018-08-30 13:49:38',200,NULL,NULL,500,'PACIENTE_ESTUDANTE',9,100),(107,'2018-08-30 13:50:39','2018-08-30 13:50:39',2100,NULL,NULL,3000,'PACIENTE_GERAL',29,700),(108,'2018-08-30 13:51:07','2018-08-30 13:51:07',1800,NULL,NULL,2100,'PACIENTE_FUNCIONARIO',29,400),(109,'2018-08-30 13:51:26','2018-08-30 13:51:26',1200,NULL,NULL,1800,'PACIENTE_ESTUDANTE',29,200),(110,'2018-08-30 13:52:34','2018-08-30 13:52:34',800,NULL,NULL,1500,'PACIENTE_GERAL',35,350),(111,'2018-08-30 13:52:51','2018-08-30 13:52:51',600,NULL,NULL,1200,'PACIENTE_FUNCIONARIO',35,250),(112,'2018-08-30 13:53:08','2018-08-30 13:53:08',400,NULL,NULL,900,'PACIENTE_ESTUDANTE',35,150),(113,'2018-08-30 13:54:09','2018-08-30 13:54:09',680,NULL,NULL,130,'PACIENTE_GERAL',40,330),(114,'2018-08-30 13:54:38','2018-08-30 13:54:38',580,NULL,NULL,830,'PACIENTE_FUNCIONARIO',40,130),(115,'2018-08-30 13:54:59','2018-08-30 13:54:59',380,NULL,NULL,530,'PACIENTE_ESTUDANTE',40,90),(116,'2018-08-30 13:55:58','2018-08-30 13:55:58',900,NULL,NULL,1590,'PACIENTE_GERAL',34,300),(117,'2018-08-30 13:56:22','2018-08-30 13:56:22',700,NULL,NULL,1090,'PACIENTE_FUNCIONARIO',34,200),(118,'2018-08-30 13:56:40','2018-08-30 13:56:40',400,NULL,NULL,890,'PACIENTE_ESTUDANTE',34,100),(119,'2018-08-30 13:57:39','2018-08-30 13:57:39',600,NULL,NULL,1000,'PACIENTE_GERAL',41,300),(120,'2018-08-30 13:58:00','2018-08-30 13:58:00',400,NULL,NULL,700,'PACIENTE_FUNCIONARIO',41,180),(121,'2018-08-30 13:58:19','2018-08-30 13:58:19',200,NULL,NULL,400,'PACIENTE_ESTUDANTE',41,110),(122,'2018-08-30 13:58:58','2018-08-30 13:58:58',500,NULL,NULL,900,'PACIENTE_GERAL',26,200),(123,'2018-08-30 13:59:17','2018-08-30 13:59:17',300,NULL,NULL,500,'PACIENTE_FUNCIONARIO',26,100),(124,'2018-08-30 13:59:39','2018-08-30 13:59:39',200,NULL,NULL,300,'PACIENTE_ESTUDANTE',26,80),(125,'2018-09-01 14:46:06','2018-09-01 14:46:06',120,NULL,NULL,210,'PACIENTE_GERAL',43,100),(126,'2018-09-01 14:46:29','2018-09-01 14:46:29',100,NULL,NULL,150,'PACIENTE_FUNCIONARIO',43,70),(127,'2018-09-01 14:46:47','2018-09-01 14:46:47',75,NULL,NULL,100,'PACIENTE_ESTUDANTE',43,30),(128,'2018-09-01 14:47:18','2018-09-01 14:47:18',1000,NULL,NULL,1750,'PACIENTE_GERAL',46,750),(129,'2018-09-01 14:47:35','2018-09-01 14:47:35',800,NULL,NULL,1350,'PACIENTE_FUNCIONARIO',46,450),(130,'2018-09-01 14:47:50','2018-09-01 14:47:50',500,NULL,NULL,1050,'PACIENTE_ESTUDANTE',46,250),(131,'2018-09-01 14:48:20','2018-09-01 14:48:20',300,NULL,NULL,500,'PACIENTE_GERAL',42,180),(132,'2018-09-01 14:48:35','2018-09-01 14:48:35',200,NULL,NULL,300,'PACIENTE_FUNCIONARIO',42,110),(133,'2018-09-01 14:48:51','2018-09-01 14:48:51',100,NULL,NULL,200,'PACIENTE_ESTUDANTE',42,80),(134,'2018-09-01 14:49:21','2018-09-01 14:49:21',450,NULL,NULL,600,'PACIENTE_GERAL',49,300),(135,'2018-09-01 14:49:41','2018-09-01 14:49:41',300,NULL,NULL,500,'PACIENTE_FUNCIONARIO',49,200),(136,'2018-09-01 14:50:11','2018-09-01 14:50:11',150,NULL,NULL,300,'PACIENTE_ESTUDANTE',49,50),(137,'2018-09-01 14:50:40','2018-09-01 14:50:40',200,NULL,NULL,370,'PACIENTE_GERAL',47,120),(138,'2018-09-01 14:51:06','2018-09-01 14:51:06',100,NULL,NULL,230,'PACIENTE_FUNCIONARIO',47,80),(139,'2018-09-01 14:51:26','2018-09-01 14:51:26',70,NULL,NULL,130,'PACIENTE_ESTUDANTE',47,50),(140,'2018-09-01 14:52:03','2018-09-01 14:52:03',200,NULL,NULL,350,'PACIENTE_GERAL',48,150),(141,'2018-09-01 14:52:21','2018-09-01 14:52:21',150,NULL,NULL,250,'PACIENTE_FUNCIONARIO',48,100),(142,'2018-09-01 14:52:37','2018-09-01 14:52:37',100,NULL,NULL,200,'PACIENTE_ESTUDANTE',48,60),(143,'2018-09-01 14:53:11','2018-09-01 14:53:11',500,NULL,NULL,700,'PACIENTE_GERAL',44,300),(144,'2018-09-01 14:53:29','2018-09-01 14:53:29',300,NULL,NULL,500,'PACIENTE_FUNCIONARIO',44,160),(145,'2018-09-01 14:53:45','2018-09-01 14:53:45',100,NULL,NULL,200,'PACIENTE_ESTUDANTE',44,60),(146,'2018-09-01 14:54:24','2018-09-01 14:54:24',2000,NULL,NULL,4000,'PACIENTE_GERAL',45,1500),(147,'2018-09-01 14:54:46','2018-09-01 14:54:46',1600,NULL,NULL,2200,'PACIENTE_FUNCIONARIO',45,1100),(148,'2018-09-01 14:55:09','2018-09-01 14:55:09',1200,NULL,NULL,2100,'PACIENTE_ESTUDANTE',45,700);
/*!40000 ALTER TABLE `servico_taxa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2018-05-27 22:31:24','2018-05-27 22:31:25','\0','$2a$10$C4WGRgsLs7eV.M.rVK//5.g6SHuMoCpK7xuCIbgrDzB5BrcdmcbAC','miguelmmanjate@gmail.com','Miguel','+258844830446'),(2,'2018-05-27 22:33:07','2018-05-27 22:33:07','\0','$2a$10$ORfsdpWzdjS4jpRJVMC8TOaEzfEgHUnQJABfkTn41RV3aigtaeJRK','eusebiom@outlook.pt','Euzebio','+25884374643'),(3,'2018-05-27 22:34:04','2018-05-27 22:34:04','\0','$2a$10$S03058TSf1DHM6qhR7wfP.tbn4AWPBynoLLV4gVOa5JRKpAVkw3L2','demes@gmail.com','Demes','37383366363'),(4,'2018-08-31 11:59:01','2018-08-31 11:59:01','\0','$2a$10$vnvGvT34GjYyaVuwINAHC.CyUIXpsWEQ3uQH4FKRg1sGm7NAVIhJO','timoteo@gmail.com','Timoteo','825886273'),(5,'2018-09-01 13:19:18','2018-09-01 13:19:18','\0','$2a$10$o2zbEDeaDEaIZAuh2.Z6UeSvB3pzpehzAsQqDEiD01nAW.4EzGvN.','george@gmail.com','George','846962310'),(6,'2018-09-01 13:27:26','2018-09-01 13:27:26','\0','$2a$10$z9w7JuVdyFm2ql78rLNDy.cf.u7032VXxjW./EgevHrsrlCRW0w0C','alexis@gmail.com','Alexis','846335072');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(5,2),(3,3),(4,3),(2,4),(6,5);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-01 15:03:11
