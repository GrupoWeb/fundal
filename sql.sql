-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para fundal
CREATE DATABASE IF NOT EXISTS `fundal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fundal`;

-- Volcando estructura para tabla fundal.capacitaciones_recibidas
CREATE TABLE IF NOT EXISTS `capacitaciones_recibidas` (
  `id_cap_recibidas` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(200) DEFAULT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `logros_resultados` varchar(100) DEFAULT NULL,
  `tiempo` varchar(200) DEFAULT NULL,
  `institucion_representan` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `aldea` varchar(100) DEFAULT NULL,
  `docentes_fundal` varchar(100) DEFAULT NULL,
  `cantidad_docentes` int(11) DEFAULT NULL,
  `total_cantidad` int(11) DEFAULT NULL,
  `hombre` int(11) DEFAULT NULL,
  `mujeres` int(11) DEFAULT NULL,
  `grupo_etnico` varchar(100) DEFAULT NULL,
  `estudiantes_directos` varchar(100) DEFAULT NULL,
  `estudiantes_IndirectosDiscapacidad` varchar(100) DEFAULT NULL,
  `estudiantes_indirectosSDiscapacidad` varchar(100) DEFAULT NULL,
  `nbr_fcltdr` varchar(100) DEFAULT NULL,
  `tipo_actividad` varchar(100) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_cap_recibidas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.capacitaciones_recibidas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `capacitaciones_recibidas` DISABLE KEYS */;
INSERT INTO `capacitaciones_recibidas` (`id_cap_recibidas`, `fecha`, `tema`, `logros_resultados`, `tiempo`, `institucion_representan`, `pais`, `departamento`, `municipio`, `aldea`, `docentes_fundal`, `cantidad_docentes`, `total_cantidad`, `hombre`, `mujeres`, `grupo_etnico`, `estudiantes_directos`, `estudiantes_IndirectosDiscapacidad`, `estudiantes_indirectosSDiscapacidad`, `nbr_fcltdr`, `tipo_actividad`, `tipo`, `activo`) VALUES
	(1, '2019-09-16T06:00:00.000Z', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 2, 2, 2, 2, '2', '2', '2', '2', '2', '2', NULL, 'I'),
	(2, '2019-09-16T06:00:00.000Z', 'LK', 'LK', 'LKL', 'LKLK', 'LKL', 'KLK', 'LK', 'LK', 'LK', 23, 2, 2, 2, '2', '2', '2', '2', '2', '2', NULL, 'A');
/*!40000 ALTER TABLE `capacitaciones_recibidas` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.cap_impartidas
CREATE TABLE IF NOT EXISTS `cap_impartidas` (
  `id_cap_impar` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(200) DEFAULT NULL,
  `tema` varchar(60) DEFAULT NULL,
  `logros_resultados` varchar(100) DEFAULT NULL,
  `tiempo` varchar(200) DEFAULT NULL,
  `institucion_representan` varchar(100) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `aldea` varchar(50) DEFAULT NULL,
  `nombre_docente` varchar(50) DEFAULT NULL,
  `cantidad_docentesfundal` int(11) DEFAULT NULL,
  `profesional_disciplina` varchar(50) DEFAULT NULL,
  `cantidad_profesionales` varchar(200) DEFAULT NULL,
  `practicantes` varchar(100) DEFAULT NULL,
  `cantidad_praticantes` varchar(100) DEFAULT NULL,
  `estudiantes` varchar(100) DEFAULT NULL,
  `cantidad_estudiantes` varchar(200) DEFAULT NULL,
  `cantidad_docentes` varchar(200) DEFAULT NULL,
  `total_cantidad` varchar(200) DEFAULT NULL,
  `hombres` int(11) DEFAULT NULL,
  `mujeres` int(11) DEFAULT NULL,
  `total_nuevos` int(11) DEFAULT NULL,
  `total_hombres` int(11) DEFAULT NULL,
  `total_mujeres` int(11) DEFAULT NULL,
  `grupo_etnico` varchar(50) DEFAULT NULL,
  `estudiantes_direct` char(50) DEFAULT NULL,
  `estudiantes_indirec_cnDiscapa` char(100) DEFAULT NULL,
  `estudiantes_direc_SnDiscapa` char(100) DEFAULT NULL,
  `nombre_dlfacilitador` varchar(100) DEFAULT NULL,
  `tipo_actividad` varchar(100) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_cap_impar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.cap_impartidas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cap_impartidas` DISABLE KEYS */;
INSERT INTO `cap_impartidas` (`id_cap_impar`, `fecha`, `tema`, `logros_resultados`, `tiempo`, `institucion_representan`, `pais`, `departamento`, `municipio`, `aldea`, `nombre_docente`, `cantidad_docentesfundal`, `profesional_disciplina`, `cantidad_profesionales`, `practicantes`, `cantidad_praticantes`, `estudiantes`, `cantidad_estudiantes`, `cantidad_docentes`, `total_cantidad`, `hombres`, `mujeres`, `total_nuevos`, `total_hombres`, `total_mujeres`, `grupo_etnico`, `estudiantes_direct`, `estudiantes_indirec_cnDiscapa`, `estudiantes_direc_SnDiscapa`, `nombre_dlfacilitador`, `tipo_actividad`, `tipo`, `activo`) VALUES
	(1, '2019-09-17T06:00:00.000Z', 'fdfds', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 2, 'l', '2', 'l', '2', '2', '2', '2', '2', 2, 2, 2, 2, 2, '2', '2', '2', '2', '2', '2', 'Distancia_GT', 'I');
/*!40000 ALTER TABLE `cap_impartidas` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.cap_padres
CREATE TABLE IF NOT EXISTS `cap_padres` (
  `id_cap_padres` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(200) DEFAULT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `logros_resultados` varchar(100) DEFAULT NULL,
  `tiempo` varchar(200) DEFAULT NULL,
  `institucion_representan` varchar(100) DEFAULT NULL,
  `programa_pertenecen` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `aldea` varchar(100) DEFAULT NULL,
  `cantidad_padres` varchar(100) DEFAULT NULL,
  `padres` int(11) DEFAULT NULL,
  `madres` int(11) DEFAULT NULL,
  `cantidad_miembros` int(11) DEFAULT NULL,
  `hombres` int(11) DEFAULT NULL,
  `mujeres` int(11) DEFAULT NULL,
  `total_cantidad` int(11) DEFAULT NULL,
  `grupo_etnico` varchar(100) DEFAULT NULL,
  `estudiantes_directos` varchar(100) DEFAULT NULL,
  `estudiantes_indirectos` varchar(100) DEFAULT NULL,
  `nombre_facilitador` varchar(100) DEFAULT NULL,
  `tipo_actividad` varchar(100) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_cap_padres`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.cap_padres: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cap_padres` DISABLE KEYS */;
INSERT INTO `cap_padres` (`id_cap_padres`, `fecha`, `tema`, `logros_resultados`, `tiempo`, `institucion_representan`, `programa_pertenecen`, `pais`, `departamento`, `municipio`, `aldea`, `cantidad_padres`, `padres`, `madres`, `cantidad_miembros`, `hombres`, `mujeres`, `total_cantidad`, `grupo_etnico`, `estudiantes_directos`, `estudiantes_indirectos`, `nombre_facilitador`, `tipo_actividad`, `tipo`, `activo`) VALUES
	(1, '2019-09-16T06:00:00.000Z', 'prueba', 'a', 's', 'a', 's', 's', 's', 's', 's', '2', 2, 2, 25, 2, 2, 2, 'd', 's', 's', 's', 's', 'Distancia_QZ', 'I');
/*!40000 ALTER TABLE `cap_padres` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.evualy
CREATE TABLE IF NOT EXISTS `evualy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `fechnaci` date DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `diagnóstico` varchar(100) DEFAULT NULL,
  `clasificacion` varchar(100) DEFAULT NULL,
  `razo_refe` varchar(200) DEFAULT NULL,
  `donde_refe` varchar(200) DEFAULT NULL,
  `refe_lugar` varchar(100) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.evualy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `evualy` DISABLE KEYS */;
INSERT INTO `evualy` (`id`, `no_`, `nombre`, `genero`, `fechnaci`, `edad`, `diagnóstico`, `clasificacion`, `razo_refe`, `donde_refe`, `refe_lugar`, `tipo`, `activo`) VALUES
	(1, 190929, 'Jaco', 'Fene', '2012-01-23', 23, 'Sin enfermedades', 'nivel 2', 'No hay', 'No hay', 'sin Informacion', '', NULL);
/*!40000 ALTER TABLE `evualy` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.jornadas
CREATE TABLE IF NOT EXISTS `jornadas` (
  `id_jornadas` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_jorna` varchar(200) DEFAULT NULL,
  `insti_propo` varchar(200) DEFAULT NULL,
  `departamento` varchar(200) DEFAULT NULL,
  `municipio` varchar(200) DEFAULT NULL,
  `aldea` varchar(200) DEFAULT NULL,
  `total_refe` varchar(200) DEFAULT NULL,
  `total_aten` varchar(200) DEFAULT NULL,
  `mujer` varchar(20) DEFAULT NULL,
  `hombre` varchar(20) DEFAULT NULL,
  `ladino` varchar(20) DEFAULT NULL,
  `maya` varchar(20) DEFAULT NULL,
  `Xinka` varchar(20) DEFAULT NULL,
  `Garifuna` varchar(20) DEFAULT NULL,
  `mayor` varchar(20) DEFAULT NULL,
  `menor` varchar(20) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_jornadas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.jornadas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jornadas` DISABLE KEYS */;
INSERT INTO `jornadas` (`id_jornadas`, `tipo_jorna`, `insti_propo`, `departamento`, `municipio`, `aldea`, `total_refe`, `total_aten`, `mujer`, `hombre`, `ladino`, `maya`, `Xinka`, `Garifuna`, `mayor`, `menor`, `tipo`, `activo`) VALUES
	(1, 'jkj', 'j', 'jkj', 'j', 'kjk', 'jk', 'jk', 'jj', 'j', 'kj', 'kjk', 'dsf', 'jkj', 'kj', 'fsdf', 'Distancia_GT', 'I'),
	(2, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', '25', '2', '2', 'x', 'x', 'x', 'x', 'x', 'x', 'Distancia_GT', 'I');
/*!40000 ALTER TABLE `jornadas` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.lista_estudiantes
CREATE TABLE IF NOT EXISTS `lista_estudiantes` (
  `id_lis_estud` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT NULL,
  `nombre_partida` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `fecha_nac` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `diagnostico` varchar(100) DEFAULT NULL,
  `clasificacion` varchar(100) DEFAULT NULL,
  `referido` varchar(100) DEFAULT NULL,
  `constancia` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `aldea` varchar(100) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `grupo_etnico` varchar(50) DEFAULT NULL,
  `fecha_evaluacion` varchar(50) DEFAULT NULL,
  `fecha_ingreso` varchar(50) DEFAULT NULL,
  `docente` varchar(50) DEFAULT NULL,
  `etapa_mineduc` varchar(50) DEFAULT NULL,
  `codigo_mineduc` varchar(500) DEFAULT NULL,
  `jornana` varchar(50) DEFAULT NULL,
  `etapa_fundal` varchar(50) DEFAULT NULL,
  `inclusion` varchar(50) DEFAULT NULL,
  `fecha_egreso` varchar(50) DEFAULT NULL,
  `motivo_egreso` varchar(50) DEFAULT NULL,
  `consta_egreso` varchar(100) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_lis_estud`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fundal.lista_estudiantes: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_estudiantes` DISABLE KEYS */;
INSERT INTO `lista_estudiantes` (`id_lis_estud`, `codigo`, `nombre_partida`, `genero`, `fecha_nac`, `edad`, `diagnostico`, `clasificacion`, `referido`, `constancia`, `departamento`, `municipio`, `aldea`, `telefono`, `grupo_etnico`, `fecha_evaluacion`, `fecha_ingreso`, `docente`, `etapa_mineduc`, `codigo_mineduc`, `jornana`, `etapa_fundal`, `inclusion`, `fecha_egreso`, `motivo_egreso`, `consta_egreso`, `tipo`, `activo`) VALUES
	(1, 25, 'asdf', 'asf', '2019-09-16T06:00:00.000Z', 25, 'asf', 'asf', 'asf', 'asf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2019-09-16T06:00:00.000Z', '2019-09-18T06:00:00.000Z', 'asdf', 'asdf', 'asfd', 'asdf', 'asdf', 'asdf', '2019-09-17T06:00:00.000Z', 'asdf', 'asdf', 'Distancia_GT', 'I');
/*!40000 ALTER TABLE `lista_estudiantes` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fundal.migrations: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fundal.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla fundal.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fundal.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Juan Jose Jolon', 'jjolong@miumg.edu.gt', '$2y$10$Areve9f/JXJFJ/Jsdo4mbOHdPZaHNfdURf4NTxDJn9BclQ9T7aL.W', 'GgN2LreB1aPqKwWBqcQH7aPjBMQxUN40x4OnIkh1TiolQaM1wzI2UeoSEwjr', '2019-09-16 01:00:34', '2019-09-16 01:00:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
