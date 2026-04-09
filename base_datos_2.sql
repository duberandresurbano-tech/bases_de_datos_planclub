SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- ==========================================================
-- 1. CREACIÓN DE TABLAS (ESTRUCTURA Y DATOS)
-- ==========================================================

-- TABLA: usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `ID_USUARIO` varchar(20) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `CORREO` varchar(20) NOT NULL,
  `CONTRASEÑA` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `VERIFICACION` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `usuario` VALUES
('USU001', 'Armando', 'Panes', 'noarmocasas@mail.com', 'casasnoarmadas', 'Activo', 'Sin verificar'),
('USU002', 'Ana', 'Morales', 'amorales@mail.com', 'ana464641', 'Activo', 'Verificado'),
('USU003', 'Juan', 'Perez', 'jperez@mail.com', 'perez123', 'Activo', 'Verificado'),
('USU004', 'Monica', 'Galindo', 'egomez@mail.com', 'soyelenagomez', 'Vetado', 'Verificado'),
('USU005', 'David', 'Lyon', 'dlyon@mail.com', 'lyonkennedy', 'Suspendido', 'Sin verificar'),
('USU006', 'Sofia', 'Vega', 'sofia@mail.com', 'welcomevegas', 'Pendiente', 'Sin verificar'),
('USU007', 'Luis', 'Castro', 'lcastro@mail.com', 'castro111111', 'Pendiente', 'Verificado'),
('USU008', 'Marta', 'Diaz', 'diazm@mail.com', 'buenosdias', 'Suspendido', 'Sin verificar'),
('USU009', 'petro', 'Sola', 'solopetro@mail.com', 'solitopetrosky', 'Activo', 'Verificado'),
('USU010', 'Lucia', 'Fernandes', 'lfer@mail.com', 'ferch123', 'Pendiente', 'Verificado'),
('USU011', 'Luis', 'Garcia', 'Luisf@mail.com', 'luisf123', 'Pendiente', 'Verificado'),
('USU012', 'Viky', 'Avila', 'VikyRia@mail.com', 'Vikynodavila123', 'Activo', 'Verificado');

-- TABLA: rol
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `id_rol` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `rol` VALUES ('R001', 'Administrador'), ('R002', 'Cliente'), ('R003', 'Vendedor/Mesero'), ('R004', 'DJ');

-- TABLA: usuario_rol
DROP TABLE IF EXISTS `usuario_rol`;
CREATE TABLE `usuario_rol` (
  `id_usuario` varchar(20) NOT NULL,
  `id_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `usuario_rol` VALUES ('USU001', 'R001'), ('USU003', 'R002'), ('USU006', 'R003'), ('USU002', 'R002'), ('USU004', 'R003'), ('USU005', 'R003'), ('USU002', 'R003'), ('USU007', 'R003'), ('USU008', 'R004'), ('USU009', 'R003'), ('USU010', 'R002'), ('USU011', 'R003'), ('USU012', 'R003');

-- TABLA: permisos
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id_permiso` varchar(20) NOT NULL,
  `accion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `permisos` VALUES ('P001', 'Gestionar_Usuarios'), ('P002', 'Ver_Reportes_Ventas'), ('P003', 'Modificar_Inventario'), ('P004', 'Abrir_Pedido'), ('P005', 'Registrar_Pago'), ('P006', 'Crear_Reservas'), ('P007', 'Cancelar_Reservas'), ('P008', 'Editar_Precios'), ('P009', 'Procesar_Pago'), ('P010', 'Calificar_Servicio');

-- TABLA: permisos_rol
DROP TABLE IF EXISTS `permisos_rol`;
CREATE TABLE `permisos_rol` (
  `id_permiso` varchar(20) NOT NULL,
  `id_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `permisos_rol` VALUES ('P001', 'R001'), ('P003', 'R001'), ('P009', 'R002'), ('P002', 'R001'), ('P007', 'R002'), ('P004', 'R003'), ('P006', 'R003'), ('P007', 'R003'), ('P010', 'R003'), ('P008', 'R001');

-- TABLA: mesa
DROP TABLE IF EXISTS `mesa`;
CREATE TABLE `mesa` (
  `ID_MESA` varchar(20) NOT NULL,
  `ID_RESERVA` varchar(20) DEFAULT NULL,
  `NUMERO` int(11) NOT NULL,
  `CAPACIDAD` int(11) NOT NULL,
  `ZONA` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_MESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `mesa` VALUES
('M001','RES001', 1, 4, 'terraza', 'Ocupado'), ('M002','RES002', 2, 4, 'vip', 'Ocupado'), ('M003','RES003', 3, 2, 'dj', 'Fuera de servicio'), ('M004','RES004', 4, 2, 'barra', 'Disponible'), ('M005','RES005', 5, 6, 'general', 'Ocupado'), ('M006','RES006', 6, 6, 'terraza', 'Disponible'), ('M007','RES007', 7, 4, 'general', 'Ocupado'), ('M008','RES008', 8, 4, 'general', 'Disponible'), ('M009','RES009', 9, 8, 'terraza', 'Disponible'), ('M010','RES010', 10, 8, 'general', 'Ocupado');

-- TABLA: producto
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `CATEGORIA` varchar(20) NOT NULL,
  `CANTIDAD_ATUAL` int(11) NOT NULL,
  `PUNTO_REORDEN` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `producto` VALUES
('P001', 'Cerveza Aguila 330ml', 6000, 'Cervezas', 200, 50), ('P002', 'Cerveza Poker 330ml', 5800, 'Cervezas', 180, 40), ('P003', 'Corona', 9000, 'Cervezas', 100, 30), ('P004', 'Aguardiente Antioqueño Botella', 95000, 'Licores', 25, 5), ('P005', 'Ron Medellín Botella', 85000, 'Licores', 20, 5), ('P006', 'Mojito', 20000, 'Cocteles', 60, 15), ('P007', 'Margarita', 22000, 'Cocteles', 55, 15), ('P008', 'Gaseosa 400ml', 5000, 'Bebidas Sin Alcohol', 120, 30), ('P009', 'Agua Mineral', 4000, 'Bebidas Sin Alcohol', 100, 25), ('P010', 'Papas Margarita 40g', 3500, 'Snacks', 90, 20), ('P011', 'Papas Ruffles 40g', 4000, 'Snacks', 80, 20), ('P012', 'Maní Salado', 3000, 'Snacks', 70, 15), ('P013', 'Chocorramo', 3500, 'Snacks', 60, 15), ('P014', 'Marlboro Cajetilla', 18000, 'Cigarrillos', 40, 10), ('P015', 'Lucky Strike Cajetilla', 17000, 'Cigarrillos', 35, 10);

-- TABLA: pedido
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `ID_PEDIDO` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `ID_MESA` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `METODO_PAGO` varchar(20) NOT NULL,
  `OBSERVACIONES` text NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `pedido` VALUES
('PD001', 'USU001', 'P001', 'M001', '2026-03-01', 'Entregado', 'Efectivo', 'BIEN FRÍAS'),
('PD002', 'USU002', 'P001', 'M002', '2026-03-01', 'Pagado', 'Bancolombia', 'SIN GAS'),
('PD003', 'USU003', 'P005', 'M004', '2026-03-01', 'Pendiente', 'Tarjeta', 'CON HIELERA'),
('PD004', 'USU004', 'P004', 'M004', '2026-03-01', 'Pagado', 'Nequi', 'MEDIA DE AGUARDIENTE'),
('PD005', 'USU005', 'P010', 'M005', '2026-03-01', 'Entregado', 'Daviplata', 'PAPAS GRANDES'),
('PD006', 'USU006', 'P006', 'M006', '2026-03-01', 'Entregado', 'Daviplata', 'COMBOS DE CUMPLEAÑOS'),
('PD007', 'USU007', 'P002', 'M007', '2026-03-01', 'Cancelado', 'Tarjeta', 'CURETA'),
('PD008', 'USU008', 'P008', 'M008', '2026-03-01', 'Pagado', 'Daviplata', 'SHOTS DE BIENVENIDA'),
('PD009', 'USU009', 'P005', 'M009', '2026-03-01', 'Entregado', 'Daviplata', 'RON ESPECIAL DE LA CASA'),
('PD010', 'USU010', 'P010', 'M010', '2026-03-01', 'Pagado', 'Tarjeta', 'PARA COMPARTIR');

-- TABLA: detalle_pedido
DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE `detalle_pedido` (
  `ID_DETALLE_PEDIDO` varchar(20) NOT NULL,
  `ID_PEDIDO` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO_UNITARIO` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_DETALLE_PEDIDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `detalle_pedido` VALUES ('D001', 'PD001', 'P001', 4, 6000, 24000), ('D002', 'PD001', 'P010', 6, 3500, 24500), ('D003', 'PD001', 'P008', 2, 2500, 5000), ('D004', 'PD002', 'P006', 3, 13000, 39000), ('D005', 'PD002', 'P014', 5, 3600, 18000), ('D006', 'PD001', 'P001', 1, 24000, 24000), ('D007', 'PD001', 'P010', 8, 875, 7000), ('D008', 'PD001', 'P008', 5, 1000, 5000), ('D009', 'PD002', 'P006', 4, 10000, 40000), ('D010', 'PD002', 'P014', 6, 1800, 10800);

-- TABLA: insumo
DROP TABLE IF EXISTS `insumo`;
CREATE TABLE `insumo` (
  `ID_INSUMO` varchar(20) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `UNIDAD` varchar(20) NOT NULL,
  `COSTO_ENVASE` int(11) NOT NULL,
  `COSTO_UNITARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_INSUMO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `insumo` VALUES ('INS001', 'Ron Blanco', 'ml', 45000, 60), ('INS002', 'Tequila', 'ml', 105000, 140), ('INS003', 'Jarabe', 'ml', 26500, 27), ('INS004', 'Limón', 'ml', 2500, 5), ('INS005', 'Hierbabuena', 'gr', 3500, 15), ('INS006', 'Sal', 'gr', 2200, 4), ('INS007', 'Soda', 'ml', 3700, 12);

-- TABLA: recetas
DROP TABLE IF EXISTS `recetas`;
CREATE TABLE `recetas` (
  `id_receta` varchar(20) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `recetas` VALUES ('REC001', 'P006', 'Mojito Clásico'), ('REC002', 'P007', 'Margarita Premium');

-- TABLA: detalle_receta
DROP TABLE IF EXISTS `detalle_receta`;
CREATE TABLE `detalle_receta` (
  `id_detalle_receta` varchar(20) NOT NULL,
  `id_receta` varchar(20) NOT NULL,
  `id_insumo` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `detalle_receta` VALUES ('DR001', 'REC001', 'INS001', 60), ('DR002', 'REC001', 'INS004', 30), ('DR003', 'REC001', 'INS005', 10), ('DR004', 'REC001', 'INS003', 20), ('DR005', 'REC001', 'INS007', 100), ('DR006', 'REC002', 'INS002', 60), ('DR007', 'REC002', 'INS004', 30), ('DR008', 'REC002', 'INS003', 15), ('DR009', 'REC002', 'INS006', 5);

-- TABLA: reserva
DROP TABLE IF EXISTS `reserva`;
CREATE TABLE `reserva` (
  `ID_RESERVA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `ID_MESA` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `CANTIDAD_PERSONAS` int(11) NOT NULL,
  PRIMARY KEY (`ID_RESERVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `reserva` VALUES
('RES001', 'USU001', 'M001', '2025-12-03', 'Finalizada', 6), ('RES002', 'USU002', 'M002', '2026-01-10', 'Finalizada', 2), ('RES003', 'USU003', 'M004', '2026-01-30', 'Finalizada', 1), ('RES004', 'USU004', 'M003', '2026-01-22', 'Pendiente', 2), ('RES005', 'USU005', 'M005', '2026-01-30', 'Finalizada', 3), ('RES006', 'USU006', 'M006', '2026-03-17', 'Pendiente', 1), ('RES007', 'USU007', 'M007', '2026-01-30', 'Pendiente', 10), ('RES008', 'USU008', 'M008', '2026-03-17', 'Cancelada', 5), ('RES009', 'USU009', 'M009', '2026-01-30', 'En curso', 1), ('RES010', 'USU010', 'M010', '2026-01-30', 'En curso', 1);

-- TABLA: reseña
DROP TABLE IF EXISTS `reseña`;
CREATE TABLE `reseña` (
  `ID_RESEÑA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `COMENTARIO` text NOT NULL,
  `PUNTUACION` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  PRIMARY KEY (`ID_RESEÑA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `reseña` VALUES
('Rese001', 'USU004', 'Excelente.', 4, '2025-12-03', '21:12:00'), ('Rese002', 'USU005', 'Increible.', 5, '2026-01-10', '22:00:00'), ('Rese003', 'USU009', 'Buena atención.', 5, '2026-01-22', '16:01:00'), ('Rese004', 'USU007', 'Espera larga.', 3, '2026-01-30', '23:50:00'), ('Rese005', 'USU006', 'Cócteles top.', 5, '2026-02-15', '20:30:00'), ('Rese006', 'USU004', 'Fria.', 1, '2026-03-17', '19:45:00');

-- TABLA: telefono
DROP TABLE IF EXISTS `telefono`;
CREATE TABLE `telefono` (
  `ID_TELEFONO` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `NUMERO` bigint(20) NOT NULL,
  PRIMARY KEY (`ID_TELEFONO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `telefono` VALUES ('TEL001', 'USU002', 3245697531), ('TEL002', 'USU002', 3486215397), ('TEL003', 'USU001', 3012369745), ('TEL004', 'USU005', 3003159631), ('TEL005', 'USU005', 3012369745), ('TEL006', 'USU005', 3697412586), ('TEL007', 'USU008', 3267896452), ('TEL008', 'USU008', 3000257896), ('TEL009', 'USU001', 3000365478), ('TEL010', 'USU003', 3030302569);

-- TABLA: mensajes
DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE `mensajes` (
  `id_mensaje` varchar(20) NOT NULL,
  `id_pedido` varchar(20) NOT NULL,
  `id_emisor` varchar(20) NOT NULL,
  `id_receptor` varchar(20) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`id_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `mensajes` VALUES ('MEN001', 'PD001', 'USU003', 'USU002', 'Hola'), ('MEN010', 'PD008', 'USU002', 'USU003', 'Clave WI-FI');

-- TABLA: incidencia
DROP TABLE IF EXISTS `incidencia`;
CREATE TABLE `incidencia` (
  `ID_INCIDENCIA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `PRIORIDAD` varchar(100) NOT NULL,
  `OBSERVACIONES` text NOT NULL,
  PRIMARY KEY (`ID_INCIDENCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `incidencia` VALUES ('INC001', 'USU008', '2026-03-01', 'Reserva', 'No pudo reservar', 'Resuelta', 'Alta', 'OK');

-- TABLA: venta
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `ID_VENTA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `METODO_PAGO` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_VENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `venta` VALUES ('Ven001', 'USU003', '2026-08-03', 'Nequi', 'Cumplida'), ('Ven002', 'USU009', '2026-07-03', 'Efectivo', 'Cancelada');

-- TABLA: detalle_venta
DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE `detalle_venta` (
  `ID_DETALLE_VENTA` varchar(20) NOT NULL,
  `ID_VENTA` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `PRECIO_UNITARIO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  PRIMARY KEY (`ID_DETALLE_VENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- TABLA: pago
DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago` (
  `ID_PAGO` varchar(20) NOT NULL,
  `ID_PEDIDO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `METODO` varchar(20) NOT NULL,
  `MONTO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PAGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ==========================================================
-- 2. BLOQUE DE RELACIONES (FOREIGN KEYS) CON CASCADE
-- ==========================================================

-- Relaciones Usuario_Rol
ALTER TABLE `usuario_rol` ADD CONSTRAINT `FK_UR_USU` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `usuario_rol` ADD CONSTRAINT `FK_UR_ROL` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Permisos_Rol
ALTER TABLE `permisos_rol` ADD CONSTRAINT `FK_PR_PER` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `permisos_rol` ADD CONSTRAINT `FK_PR_ROL` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Pedido
ALTER TABLE `pedido` ADD CONSTRAINT `FK_PED_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `pedido` ADD CONSTRAINT `FK_PED_MESA` FOREIGN KEY (`ID_MESA`) REFERENCES `mesa` (`ID_MESA`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `pedido` ADD CONSTRAINT `FK_PED_PROD` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Detalle_Pedido
ALTER TABLE `detalle_pedido` ADD CONSTRAINT `FK_DP_PED` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `detalle_pedido` ADD CONSTRAINT `FK_DP_PROD` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Recetas e Insumos
ALTER TABLE `recetas` ADD CONSTRAINT `FK_REC_PROD` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `detalle_receta` ADD CONSTRAINT `FK_DR_REC` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `detalle_receta` ADD CONSTRAINT `FK_DR_INS` FOREIGN KEY (`id_insumo`) REFERENCES `insumo` (`ID_INSUMO`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Reserva, Reseña, Telefono
ALTER TABLE `reserva` ADD CONSTRAINT `FK_RES_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `reserva` ADD CONSTRAINT `FK_RES_MESA` FOREIGN KEY (`ID_MESA`) REFERENCES `mesa` (`ID_MESA`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `reseña` ADD CONSTRAINT `FK_RESE_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `telefono` ADD CONSTRAINT `FK_TEL_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Relaciones Mensajes, Incidencia, Venta
ALTER TABLE `mensajes` ADD CONSTRAINT `FK_MSJ_USU_E` FOREIGN KEY (`id_emisor`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `mensajes` ADD CONSTRAINT `FK_MSJ_USU_R` FOREIGN KEY (`id_receptor`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `incidencia` ADD CONSTRAINT `FK_INC_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `venta` ADD CONSTRAINT `FK_VEN_USU` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `detalle_venta` ADD CONSTRAINT `FK_DV_VEN` FOREIGN KEY (`ID_VENTA`) REFERENCES `venta` (`ID_VENTA`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `pago` ADD CONSTRAINT `FK_PAGO_PED` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;
SET FOREIGN_KEY_CHECKS = 1;