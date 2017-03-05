CREATE DATABASE  IF NOT EXISTS `bdscg` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdscg`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: bdscg
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` char(8) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `iduunn` int(11) DEFAULT NULL,
  `idestado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersonal`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  KEY `FK_personal_iduunn_unidadnegocio` (`iduunn`),
  CONSTRAINT `FK_personal_iduunn_unidadnegocio` FOREIGN KEY (`iduunn`) REFERENCES `unidadnegocio` (`iduunn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Alan Hugo','Florez Torres','34545656',NULL,1,1),(2,'Geynen','Montenegro','67900876',NULL,1,1),(10,'Miguel','Senmache Bravo','34343434','msenmacheb@gescom.com.pe',1,1),(11,'Javier','Alvino Lingan','24353533','jalvinol@gescom.com.pe',1,1),(14,'Javier','Marquina','56456456','jmarquina@gescom.com.pe',2,1);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `idrol` int(11) DEFAULT NULL,
  `idestado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuario`),
  KEY `FK_usuario_idpersonal_personal` (`idpersonal`),
  CONSTRAINT `FK_usuario_idpersonal_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'alan','alan',1,1),(2,2,'geynen','geynen',NULL,1),(3,10,'miguel','miguel',1,1),(4,11,'jalvinol','jalvinol',1,1),(7,14,'javier','javier',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametro` (
  `idparametro` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(5) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `descripcion_corta` varchar(20) DEFAULT NULL,
  `valor` varchar(300) DEFAULT NULL,
  `idparent` int(11) DEFAULT NULL,
  `idestado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idparametro`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES (1,'01','Estado','Estado',NULL,NULL,1),(2,'01001','Activo','Activo','1',1,1),(3,'01002','Inactivo','Inactivo','2',1,1),(4,'02','TipoMovimiento','TipoMovimiento',NULL,NULL,1),(5,'02001','Ingreso','Ingreso','1',4,1),(6,'02002','Egreso','Egreso','2',4,1),(7,'03','Rol','Rol',NULL,NULL,1),(8,'03001','Administrador','Administrador','1',7,1),(9,'03002','Supervisor','Supervisor','2',7,1),(10,'04','TipoDocumento','TipoDocumento',NULL,NULL,1),(11,'04001','Boleta','Boleta','1',10,1),(12,'04002','Factura','Factura','2',10,1),(13,'04003','Recibo','Recibo','3',10,1),(14,'04004','Voucher','Voucher','4',10,1),(15,'04005','Transacción','Transacción','5',10,1),(16,'03003','Trabajador','Trabajador','3',7,1),(17,'05','IGV','IGV','18',NULL,1);
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento` (
  `idmovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(15) NOT NULL COMMENT '999-999999-9999',
  `idtipomovimiento` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `iduunn` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idpersonal` int(11) DEFAULT NULL,
  `idconcepto` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `idtipodocumento` int(11) DEFAULT NULL COMMENT 'IdTipoDocumentoReferencia',
  `nrodocumento` varchar(25) DEFAULT NULL,
  `fotodocumento` varchar(250) DEFAULT NULL,
  `observacion` text,
  `idestado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmovimiento`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `FK_movimiento_iduunn_unidadnegocio` (`iduunn`),
  KEY `FK_movimiento_idusuario_usuario` (`idusuario`),
  KEY `FK_movimiento_idpersonal_personal` (`idpersonal`),
  KEY `FK_movimiento_idconcepto_concepto` (`idconcepto`),
  CONSTRAINT `FK_movimiento_idconcepto_concepto` FOREIGN KEY (`idconcepto`) REFERENCES `concepto` (`idconcepto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_movimiento_idpersonal_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_movimiento_idusuario_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_movimiento_iduunn_unidadnegocio` FOREIGN KEY (`iduunn`) REFERENCES `unidadnegocio` (`iduunn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento`
--

LOCK TABLES `movimiento` WRITE;
/*!40000 ALTER TABLE `movimiento` DISABLE KEYS */;
INSERT INTO `movimiento` VALUES (3,'00000000000',5,'2016-10-01 01:25:43',1,1,1,2,453.00,0.00,453.00,12,'34534534','',NULL,1),(4,'00000000001',5,'2016-10-01 01:27:14',1,1,1,5,4533.00,0.00,4533.00,11,'34534','',NULL,1),(5,'00000000002',5,'2016-10-01 16:20:15',1,1,2,1,500.00,0.00,500.00,13,'8787899898','',NULL,1),(6,'00000000003',5,'2016-10-01 16:21:36',1,1,2,1,500.00,0.00,500.00,13,'001-00003','',NULL,1),(7,'00000000004',5,'2016-10-01 16:28:02',1,1,2,1,600.00,0.00,600.00,13,'001-00004','',NULL,1),(9,'00000000005',5,'2016-10-01 17:13:52',2,1,1,7,6000.00,0.00,6000.00,11,'e345645','',NULL,1),(12,'00000000006',5,'2016-10-01 17:25:38',2,1,2,3,67788.00,0.00,67788.00,12,'35345345','',NULL,1),(14,'00000000007',5,'2016-10-01 17:35:08',2,1,1,1,1000.00,0.00,1000.00,12,'34343','','',1),(16,'00000000008',5,'2016-10-01 17:42:51',2,1,2,2,1000.00,0.00,1000.00,11,'3245353454','',NULL,1),(17,'00000000009',6,'2016-10-01 17:42:52',1,1,2,2,1000.00,0.00,1000.00,11,'3245353454','',NULL,1),(18,'00000000010',5,'2016-10-01 22:06:56',1,1,1,3,777.00,0.00,777.00,11,'76767','',NULL,1),(19,'00000000011',5,'2016-10-01 22:14:03',1,2,1,3,55.00,0.00,55.00,11,'545646','',NULL,1),(20,'00000000012',5,'2016-09-10 00:00:00',1,2,2,6,478.00,0.00,478.00,12,'6799-888','',NULL,1),(21,'00000000013',6,'2016-10-01 00:00:00',1,2,1,4,3400.00,0.00,3400.00,11,'0009334','',NULL,1),(22,'00000000014',5,'2016-10-01 00:00:00',2,2,1,3,555.00,0.00,555.00,11,'435465','',NULL,1),(23,'00000000015',6,'2016-10-01 00:00:00',1,2,1,3,555.00,0.00,555.00,11,'435465','',NULL,1),(24,'00000000016',5,'2016-10-01 00:00:00',2,2,1,5,99.00,0.00,99.00,12,'009-99977','',NULL,1),(25,'00000000017',6,'2016-10-01 00:00:00',1,2,1,5,99.00,0.00,99.00,12,'009-99977','',NULL,1),(26,'00000000018',5,'2016-10-02 00:00:00',1,2,1,2,88.00,0.00,88.00,11,'009-9999','',NULL,1),(27,'00000000019',5,'2016-10-02 00:00:00',1,2,2,2,33.00,0.00,33.00,11,'989-8787','',NULL,1),(28,'00000000020',5,'2016-10-02 00:00:00',1,2,2,2,22.00,0.00,22.00,12,'007-9987','',NULL,1),(32,'00000000021',5,'2017-03-05 00:00:00',1,2,10,2,230.00,0.00,230.00,13,'550','','Pago a ENOSA',1);
/*!40000 ALTER TABLE `movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto`
--

DROP TABLE IF EXISTS `concepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepto` (
  `idconcepto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idestado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idconcepto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto`
--

LOCK TABLES `concepto` WRITE;
/*!40000 ALTER TABLE `concepto` DISABLE KEYS */;
INSERT INTO `concepto` VALUES (1,'Pago de planilla','Pago de planilla',1),(2,'Pago de servicio de luz','Pago de servicio de luz',1),(3,'Pago de servicio de agua','Pago de servicio de agua',1),(4,'Pago de servicio de internet','Pago de servicio de internet',1),(5,'Combustible','Combustible',1),(6,'Movilidad','Movilidad',1),(7,'Otros','Otros',1),(8,'prueba','prueba',1),(10,'TEST3','TEST3',1);
/*!40000 ALTER TABLE `concepto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadnegocio`
--

DROP TABLE IF EXISTS `unidadnegocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadnegocio` (
  `iduunn` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idestado` int(11) NOT NULL,
  PRIMARY KEY (`iduunn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadnegocio`
--

LOCK TABLES `unidadnegocio` WRITE;
/*!40000 ALTER TABLE `unidadnegocio` DISABLE KEYS */;
INSERT INTO `unidadnegocio` VALUES (1,'Piura',1),(2,'Tumbes',1);
/*!40000 ALTER TABLE `unidadnegocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bdscg'
--
/*!50003 DROP PROCEDURE IF EXISTS `spConceptoAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spConceptoAdd`(
IN var_id int,
IN var_nombre varchar(150),
IN var_descripcion varchar(255),
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    INSERT INTO concepto
    (
    `idconcepto`,
    `nombre`,
    `descripcion`,
    `idestado`)
    VALUES
    (
    var_id,
    var_nombre,
    var_descripcion,
    1
    );
    
    SET var_codigo = LAST_INSERT_ID();
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spConceptoDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spConceptoDelete`(
IN var_id int,
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    DELETE FROM `concepto`WHERE `idconcepto` = var_id;
    
    SET var_codigo = var_id;
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spConceptoUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spConceptoUpdate`(
IN var_id int,
IN var_nombre varchar(150),
IN var_descripcion varchar(255),
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    UPDATE `concepto`
    SET
    `nombre` = var_nombre,
    `descripcion` = var_descripcion
    WHERE `idconcepto` = var_id;
    
    SET var_codigo = var_id;
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMovimientoAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spMovimientoAdd`(
IN var_iduunn int,
IN var_idtipo int,
IN var_idconcepto int,
IN var_fecha varchar(10),
IN var_idusuario int,
IN var_idpersonal int,
IN var_importe decimal(10,2),
IN var_idtipodocref int,
IN var_nrodocref varchar(80),
IN var_observacion text,
OUT var_codigo char(11)
)
BEGIN
    DECLARE var_codigo char(11);
    DECLARE var_correlativo int;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    -- SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento WHERE idtipomovimiento=var_idtipo);
    SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento);
    SET var_codigo = LPAD(IFNULL(var_correlativo,1),11,'0');
    
    INSERT INTO movimiento
    (
    `codigo`,
    `idtipomovimiento`,
    `fecha`,
    `iduunn`,
    `idusuario`,
    `idpersonal`,
    `idconcepto`,
    `importe`,
    `igv`,
    `total`,
    `idtipodocumento`,
    `nrodocumento`,
    `fotodocumento`,
    `observacion`,
    `idestado`)
    VALUES
    (
    var_codigo,
    var_idtipo,
    var_fecha,
    var_iduunn,
    var_idusuario,
    var_idpersonal,
    var_idconcepto,
    var_importe,
    0,
    var_importe,
    var_idtipodocref,
    var_nrodocref,
    '',
    var_observacion,
    1
    );
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMovimientoDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spMovimientoDelete`(
IN var_idmovimiento int,
OUT var_codigo char(11)
)
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    DELETE FROM `movimiento` WHERE idmovimiento = var_idmovimiento;
    
    SELECT var_idmovimiento;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMovimientoTransferencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spMovimientoTransferencia`(
IN var_iduunn int,
IN var_iduunndestino int,
IN var_idconcepto int,
IN var_fecha varchar(10),
IN var_idusuario int,
IN var_idpersonal int,
IN var_importe decimal(10,2),
IN var_idtipodocref int,
IN var_nrodocref varchar(80),
IN var_observacion text,
OUT var_codigo char(11)
)
BEGIN
    DECLARE var_codigo char(11);
    DECLARE var_correlativo int;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    -- SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento WHERE idtipomovimiento=5);
    SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento);
    SET var_codigo = LPAD(IFNULL(var_correlativo,1),11,'0');
    
    INSERT INTO movimiento
    (
    `codigo`,
    `idtipomovimiento`,
    `fecha`,
    `iduunn`,
    `idusuario`,
    `idpersonal`,
    `idconcepto`,
    `importe`,
    `igv`,
    `total`,
    `idtipodocumento`,
    `nrodocumento`,
    `fotodocumento`,
    `observacion`,
    `idestado`)
    VALUES
    (
    var_codigo,
    6,
    var_fecha,
    var_iduunn,
    var_idusuario,
    var_idpersonal,
    var_idconcepto,
    var_importe,
    0,
    var_importe,
    var_idtipodocref,
    var_nrodocref,
    '',
    CONCAT('TRANSFERENCIA:',var_observacion),
    1
    );
    
    -- SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento WHERE idtipomovimiento=6);
    SET var_correlativo = (SELECT max(convert(codigo,unsigned))+1 FROM movimiento);
    SET var_codigo = LPAD(IFNULL(var_correlativo,1),11,'0');
    
    INSERT INTO movimiento
    (
    `codigo`,
    `idtipomovimiento`,
    `fecha`,
    `iduunn`,
    `idusuario`,
    `idpersonal`,
    `idconcepto`,
    `importe`,
    `igv`,
    `total`,
    `idtipodocumento`,
    `nrodocumento`,
    `fotodocumento`,
    `observacion`,
    `idestado`)
    VALUES
    (
    var_codigo,
    5,
    var_fecha,
    var_iduunndestino,
    var_idusuario,
    var_idpersonal,
    var_idconcepto,
    var_importe,
    0,
    var_importe,
    var_idtipodocref,
    var_nrodocref,
    '',
    CONCAT('TRANSFERENCIA:',var_observacion),
    1
    );
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUsuarioLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spUsuarioLogin`(
IN var_login varchar(45),
IN var_clave varchar(45)
)
BEGIN
select * from usuario where login=var_login and clave=var_clave and idestado=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUsuarioPersonaAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spUsuarioPersonaAdd`(
IN var_nombres varchar(45),
IN var_apellidos varchar(45),
IN var_dni char(8),
IN var_email varchar(50),
IN var_login varchar(45),
IN var_clave varchar(45),
IN var_idrol int,
IN var_iduunn int,
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo int;
    DECLARE var_idpersonal int;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    INSERT INTO `personal`
    (
    `nombres`,
    `apellidos`,
    `dni`,
    `email`,
    `iduunn`,
    `idestado`)
    VALUES
    (
    var_nombres,
    var_apellidos,
    var_dni,
    var_email,
    var_iduunn,
    1
    );
    SET var_idpersonal = LAST_INSERT_ID();
    
    INSERT INTO `usuario`
    (
    `idpersonal`,
    `login`,
    `clave`,
    `idrol`,
    `idestado`)
    VALUES
    (
    var_idpersonal,
    var_login,
    var_clave,
    var_idrol,
    1
    );
    
    SET var_codigo = LAST_INSERT_ID();
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUsuarioPersonaDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spUsuarioPersonaDelete`(
IN var_idusuario int,
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo int;
    DECLARE var_idpersonal int;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    SET var_idpersonal = (SELECT idpersonal FROM usuario WHERE idusuario = var_idusuario);
    
    DELETE FROM `usuario` WHERE `idusuario` = var_idusuario;
    
    DELETE FROM `personal` WHERE `idpersonal` = var_idpersonal;    
    
    SET var_codigo = var_idusuario;
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUsuarioPersonaUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `spUsuarioPersonaUpdate`(
IN var_idusuario int,
IN var_nombres varchar(45),
IN var_apellidos varchar(45),
IN var_dni char(8),
IN var_email varchar(50),
IN var_login varchar(45),
IN var_clave varchar(45),
IN var_idrol int,
IN var_iduunn int,
OUT var_codigo int
)
BEGIN
    DECLARE var_codigo int;
    DECLARE var_idpersonal int;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    UPDATE `usuario`
    SET
    `login` = var_login,
    `clave` = var_clave,
    `idrol` = var_idrol
    WHERE `idusuario` = var_idusuario;
    
    UPDATE `personal`
    SET
    `nombres` = var_nombres,
    `apellidos` = var_apellidos,
    `dni` = var_dni,
    `email` = var_email,
    `iduunn` = var_iduunn
    WHERE `idpersonal` = (SELECT idpersonal FROM usuario WHERE idusuario = var_idusuario);
    
    SET var_codigo = var_idusuario;
    
    SELECT var_codigo;
    COMMIT;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 18:23:00
