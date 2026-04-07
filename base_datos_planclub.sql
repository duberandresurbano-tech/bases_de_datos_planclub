-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2026 a las 19:22:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_datos_planclub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `ID_DETALLE_PEDIDO` varchar(20) NOT NULL,
  `ID_PEDIDO` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO_UNITARIO` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`ID_DETALLE_PEDIDO`, `ID_PEDIDO`, `ID_PRODUCTO`, `CANTIDAD`, `PRECIO_UNITARIO`, `PRECIO`) VALUES
('D001', 'PD001', 'P001', 4, 6000, 24000),
('D002', 'PD001', 'P010', 6, 3500, 24500),
('D003', 'PD001', 'P008', 2, 2500, 5000),
('D004', 'PD002', 'P006', 3, 13000, 39000),
('D005', 'PD002', 'P014', 5, 3600, 18000),
('D006', 'PD001', 'P001', 1, 24000, 24000),
('D007', 'PD001', 'P010', 8, 875, 7000),
('D008', 'PD001', 'P008', 5, 1000, 5000),
('D009', 'PD002', 'P006', 4, 10000, 40000),
('D010', 'PD002', 'P014', 6, 1800, 10800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_receta`
--

CREATE TABLE `detalle_receta` (
  `id_detalle_receta` varchar(20) NOT NULL,
  `id_receta` varchar(20) NOT NULL,
  `id_insumo` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_receta`
--

INSERT INTO `detalle_receta` (`id_detalle_receta`, `id_receta`, `id_insumo`, `cantidad`) VALUES
('DR001', 'REC001', 'INS001', 60),
('DR002', 'REC001', 'INS004', 30),
('DR003', 'REC001', 'INS005', 10),
('DR004', 'REC001', 'INS003', 20),
('DR005', 'REC001', 'INS007', 100),
('DR006', 'REC002', 'INS002', 60),
('DR007', 'REC002', 'INS004', 30),
('DR008', 'REC002', 'INS003', 15),
('DR009', 'REC002', 'INS006', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `ID_DETALLE_VENTA` varchar(20) NOT NULL,
  `ID_VENTA` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `PRECIO_UNITARIO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`ID_DETALLE_VENTA`, `ID_VENTA`, `ID_PRODUCTO`, `PRECIO_UNITARIO`, `CANTIDAD`, `TOTAL`) VALUES
('DTV001', 'Ven001', 'P001', 6000, 4, 24000),
('DTV002', 'Ven002', 'P008', 5000, 7, 35000),
('DTV003', 'Ven003', 'P007', 22000, 5, 110000),
('DTV004', 'Ven004', 'P004', 95000, 3, 285000),
('DTV005', 'Ven005', 'P005', 85000, 4, 340000),
('DTV006', 'Ven007', 'P003', 9000, 5, 45000),
('DTV007', 'Ven008', 'P002', 5800, 7, 40600),
('DTV008', 'Ven009', 'P009', 4000, 8, 32000),
('DTV009', 'Ven010', 'P010', 3500, 1, 3500),
('DTV010', 'Ven006', 'P006', 20000, 6, 120000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `ID_INCIDENCIA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DESCRIPCION` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `PRIORIDAD` varchar(100) NOT NULL,
  `OBSERVACIONES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`ID_INCIDENCIA`, `ID_USUARIO`, `FECHA`, `TIPO`, `DESCRIPCION`, `ESTADO`, `PRIORIDAD`, `OBSERVACIONES`) VALUES
('INS001', 'USU008', '2026-03-01', 'Reserva', 'Cliente no pudo rese', 'Resuelta', 'Se creó reserva manu', 'Cliente satisfecho'),
('INS002', 'USU007', '2026-03-01', 'Pago', 'Pago duplicado en ta', 'Resuelta', 'Reembolso realizado', 'Cliente notificado'),
('INS003', 'USU005', '2026-03-02', 'Mesa', 'Mesa asignada ya est', 'En proceso', 'Reasignar otra mesa', 'Cliente esperando'),
('INS004', 'USU009', '2026-03-02', 'Sistema', 'Error al confirmar r', 'Resuelta', 'Reinicio del servido', 'Sistema funcionando correctamente'),
('INS005', 'USU008', '2026-03-03', 'Pedido', 'Pedido de bebidas no', 'En proceso', 'Reenviar pedido', 'Cliente molesto'),
('INS006', 'USU010', '2026-03-03', 'Cliente', 'Factura incorrecta', 'En proceso', 'Verificar pedido y f', 'Posible error en sistema POS'),
('INS007', 'USU006', '2026-03-04', 'Inventario', 'Bebida agotada inesp', 'Pendiente', 'Notificar barman y a', 'Reponer bebida pronto'),
('INS008', 'USU008', '2026-03-04', 'Sistema', 'Caída temporal del s', 'Resuelta', 'Reinicio del servido', 'Sin pérdida de información'),
('INS009', 'USU010', '2026-03-05', 'Cliente', 'Cliente no pudo canc', 'En proceso', 'Verificar política d', 'Cliente satisfecho después'),
('INS010', 'USU004', '2026-03-05', 'Personal Bar', 'Máquina de cocteles ', 'Resuelta', 'Mantenimiento realiz', 'Máquina funcionando nuevamente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `ID_INSUMO` varchar(20) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `UNIDAD` varchar(20) NOT NULL,
  `COSTO_ENVASE` int(11) NOT NULL,
  `COSTO_UNITARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`ID_INSUMO`, `NOMBRE`, `UNIDAD`, `COSTO_ENVASE`, `COSTO_UNITARIO`) VALUES
('INS001', 'Ron Blanco (750ml)', 'ml', 45000, 60),
('INS002', 'Tequila (750ml)', 'ml', 105000, 140),
('INS003', 'Jarabe de Goma (1Lt)', 'ml', 26500, 27),
('INS004', 'Limón Tahití (1kg)*', 'ml', 2500, 5),
('INS005', 'Hierbabuena (Atado)', 'gr', 3500, 15),
('INS006', 'Sal (500gr)', 'gr', 2200, 4),
('INS007', 'Soda/Bretaña (300ml)', 'ml', 3700, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` varchar(20) NOT NULL,
  `id_pedido` varchar(20) NOT NULL,
  `id_emisor` varchar(20) NOT NULL,
  `id_receptor` varchar(20) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `id_pedido`, `id_emisor`, `id_receptor`, `contenido`) VALUES
('MEN001', 'PD001', 'USU003', 'USU002', '¿Tienen alguna promoción en cubetazos hoy?'),
('MEN002', 'PD002', 'USU002', 'USU003', 'Sí, la Águila Light está a 5x4 hasta las 8 PM.'),
('MEN003', 'PD001', 'USU003', 'USU002', 'Tráenos otros dos tequilas a la mesa 4, porfa.'),
('MEN004', 'PD005', 'USU002', 'USU003', 'Marchando. En 2 minutos se los llevo.'),
('MEN005', 'PD001', 'USU005', 'USU002', '¿El Gin Tonic lo preparan con pepino o limón?'),
('MEN006', 'PD008', 'USU002', 'USU005', 'Lo preparamos con pepino y pimienta rosa.'),
('MEN007', 'PD005', 'USU008', 'USU002', 'A esta cerveza le falta frío, ¿me la cambias?'),
('MEN008', 'PD009', 'USU002', 'USU008', 'Mil disculpas, ya mismo te llevo una bajo cero'),
('MEN009', 'PD008', 'USU003', 'USU002', '¿Me puedes enviar la clave del WI-FI?'),
('MEN010', 'PD008', 'USU002', 'USU003', 'Claro, la clave es: Macarena2026');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `ID_MESA` varchar(20) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `CAPACIDAD` int(11) NOT NULL,
  `ZONA` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`ID_MESA`, `NUMERO`, `CAPACIDAD`, `ZONA`, `ESTADO`) VALUES
('M001', 1, 4, 'terraza', 'Ocupado'),
('M002', 2, 4, 'vip', 'Ocupado'),
('M003', 3, 2, 'dj', 'Fuera de servicio'),
('M004', 4, 2, 'barra', 'Disponible'),
('M005', 5, 6, 'general', 'Ocupado'),
('M006', 6, 6, 'terraza', 'Disponible'),
('M007', 7, 4, 'general', 'Ocupado'),
('M008', 8, 4, 'general', 'Disponible'),
('M009', 9, 8, 'terraza', 'Disponible'),
('M010', 10, 8, 'general', 'Ocupado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_PAGO` varchar(20) NOT NULL,
  `ID_PEDIDO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `METODO` varchar(20) NOT NULL,
  `MONTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`ID_PAGO`, `ID_PEDIDO`, `FECHA`, `METODO`, `MONTO`) VALUES
('PAY001', 'PD001', '2026-01-03', 'Efectivo', 38000),
('PAY002', 'PD002', '2026-02-03', 'Tarjeta', 58000),
('PAY003', 'PD005', '2026-03-01', 'Tarjeta', 5000),
('PAY004', 'PD003', '2026-01-03', 'Nequi', 24000),
('PAY005', 'PD004', '2026-02-03', 'Nequi', 10000),
('PAY006', 'PD006', '2026-03-01', 'Efectivo', 1800),
('PAY007', 'PD007', '2026-02-03', 'Tarjeta', 24000),
('PAY008', 'PD008', '2026-01-03', 'Efectivo', 1800),
('PAY009', 'PD009', '2026-03-01', 'Tarjeta', 10000),
('PAY010', 'PD010', '2026-02-03', 'Efectivo', 1800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `ID_PEDIDO` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `ID_MESA` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `METODO_PAGO` varchar(20) NOT NULL,
  `OBSERVACIONES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`ID_PEDIDO`, `ID_USUARIO`, `ID_PRODUCTO`, `ID_MESA`, `FECHA`, `ESTADO`, `METODO_PAGO`, `OBSERVACIONES`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` varchar(20) NOT NULL,
  `accion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `accion`) VALUES
('P001', 'Gestionar_Usuarios'),
('P002', 'Ver_Reportes_Ventas'),
('P003', 'Modificar_Inventario'),
('P004', 'Abrir_Pedido'),
('P005', 'Registrar_Pago'),
('P006', 'Crear_Reservas'),
('P007', 'Cancelar_Reservas'),
('P008', 'Editar_Precios'),
('P009', 'Procesar_Pago'),
('P010', 'Calificar_Servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_rol`
--

CREATE TABLE `permisos_rol` (
  `id_permiso` varchar(20) NOT NULL,
  `id_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos_rol`
--

INSERT INTO `permisos_rol` (`id_permiso`, `id_rol`) VALUES
('P001', 'R001'),
('P003', 'R001'),
('P009', 'R002'),
('P002', 'R001'),
('P007', 'R002'),
('P004', 'R003'),
('P006', 'R003'),
('P007', 'R003'),
('P010', 'R003'),
('P008', 'R001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` varchar(20) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `CATEGORIA` varchar(20) NOT NULL,
  `CANTIDAD_ATUAL` int(11) NOT NULL,
  `PUNTO_REORDEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_PRODUCTO`, `NOMBRE`, `PRECIO`, `CATEGORIA`, `CANTIDAD_ATUAL`, `PUNTO_REORDEN`) VALUES
('P001', 'Cerveza Aguila 330ml', 6000, 'Cervezas', 200, 50),
('P002', 'Cerveza Poker 330ml', 5800, 'Cervezas', 180, 40),
('P003', 'Corona', 9000, 'Cervezas', 100, 30),
('P004', 'Aguardiente Antioqueño Botella', 95000, 'Licores', 25, 5),
('P005', 'Ron Medellín Botella', 85000, 'Licores', 20, 5),
('P006', 'Mojito', 20000, 'Cocteles', 60, 15),
('P007', 'Margarita', 22000, 'Cocteles', 55, 15),
('P008', 'Gaseosa 400ml', 5000, 'Bebidas Sin Alcohol', 120, 30),
('P009', 'Agua Mineral', 4000, 'Bebidas Sin Alcohol', 100, 25),
('P010', 'Papas Margarita 40g', 3500, 'Snacks', 90, 20),
('P011', 'Papas Ruffles 40g', 4000, 'Snacks', 80, 20),
('P012', 'Maní Salado', 3000, 'Snacks', 70, 15),
('P013', 'Chocorramo', 3500, 'Snacks', 60, 15),
('P014', 'Marlboro Cajetilla', 18000, 'Cigarrillos', 40, 10),
('P015', 'Lucky Strike Cajetilla', 17000, 'Cigarrillos', 35, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` varchar(20) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_receta`, `id_producto`, `nombre`) VALUES
('REC001', 'P006', 'Mojito Clásico'),
('REC002', 'P007', 'Margarita Premium');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `ID_RESERVA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `ID_MESA` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `CANTIDAD_PERSONAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`ID_RESERVA`, `ID_USUARIO`, `ID_MESA`, `FECHA`, `ESTADO`, `CANTIDAD_PERSONAS`) VALUES
('RES001', 'USU001', 'M001', '2025-12-03', 'Finalizada', 6),
('RES002', 'USU002', 'M002', '2026-01-10', 'Finalizada', 2),
('RES003', 'USU003', 'M004', '2026-01-30', 'Finalizada', 1),
('RES004', 'USU004', 'M003', '2026-01-22', 'Pendiente', 2),
('RES005', 'USU005', 'M005', '2026-01-30', 'Finalizada', 3),
('RES006', 'USU006', 'M006', '2026-03-17', 'Pendiente', 1),
('RES007', 'USU007', 'M007', '2026-01-30', 'Pendiente', 10),
('RES008', 'USU008', 'M008', '2026-03-17', 'Cancelada', 5),
('RES009', 'USU009', 'M009', '2026-01-30', 'En curso', 1),
('RES010', 'USU010', 'M010', '2026-01-30', 'En curso', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE `reseña` (
  `ID_RESEÑA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `COMENTARIO` text NOT NULL,
  `PUNTUACION` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseña`
--

INSERT INTO `reseña` (`ID_RESEÑA`, `ID_USUARIO`, `COMENTARIO`, `PUNTUACION`, `FECHA`, `HORA`) VALUES
('Rese001', 'USU004', 'Excelente servicio y ambiente.', 4, '2025-12-03', '21:12:00'),
('Rese002', 'USU005', 'La musica del DJ estaba increible, ademas muy organizado el lugar', 5, '2026-01-10', '22:00:00'),
('Rese003', 'USU009', 'Muy buena atención por parte de los vendedores.', 5, '2026-01-22', '16:01:00'),
('Rese004', 'USU007', 'El tiempo de espera fue demasiado largo', 3, '2026-01-30', '23:50:00'),
('Rese005', 'USU006', 'Los cócteles son los mejores de la zona.', 5, '2026-02-15', '20:30:00'),
('Rese006', 'USU004', 'No me gustó la ubicación de la mesa, muy fría.', 1, '2026-03-17', '19:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`) VALUES
('R001', 'Administrador'),
('R002', 'Cliente'),
('R003', 'Vendedor/Mesero'),
('R004', 'DJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `ID_TELEFONO` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`ID_TELEFONO`, `ID_USUARIO`, `NUMERO`) VALUES
('TEL001', 'USU002', 2147483647),
('TEL002', 'USU002', 984945),
('TEL003', 'USU001', 2147483647),
('TEL004', 'USU005', 2147483647),
('TEL005', 'USU005', 2147483647),
('TEL006', 'USU005', 4531622),
('TEL007', 'USU008', 2147483647),
('TEL008', 'USU008', 1651455),
('TEL009', 'USU001', 3216544),
('TEL010', 'USU003', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` varchar(20) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `CORREO` varchar(20) NOT NULL,
  `CONTRASEÑA` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `VERIFICACION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOMBRE`, `APELLIDO`, `CORREO`, `CONTRASEÑA`, `ESTADO`, `VERIFICACION`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario` varchar(20) NOT NULL,
  `id_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario`, `id_rol`) VALUES
('USU001', 'R001'),
('USU003', 'R002'),
('USU006', 'R003'),
('USU002', 'R002'),
('USU004', 'R003'),
('USU005', 'R003'),
('USU002', 'R003'),
('USU007', 'R003'),
('USU008', 'R004'),
('USU009', 'R003'),
('USU010', 'R002'),
('USU011', 'R003'),
('USU012', 'R003'),
('USU001', 'R001'),
('USU003', 'R002'),
('USU006', 'R003'),
('USU002', 'R002'),
('USU004', 'R003'),
('USU005', 'R003'),
('USU002', 'R003'),
('USU007', 'R003'),
('USU008', 'R004'),
('USU009', 'R003'),
('USU010', 'R002'),
('USU011', 'R003'),
('USU012', 'R003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_VENTA` varchar(20) NOT NULL,
  `ID_USUARIO` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `METODO_PAGO` varchar(20) NOT NULL,
  `ESTADO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`ID_VENTA`, `ID_USUARIO`, `FECHA`, `METODO_PAGO`, `ESTADO`) VALUES
('Ven001', 'USU003', '2026-08-03', 'Nequi', 'Cumplida'),
('Ven002', 'USU009', '2026-07-03', 'Efectivo', 'Cancelada'),
('Ven003', 'USU004', '2026-04-03', 'Tarjeta', 'Cumplida'),
('Ven004', 'USU001', '2026-11-03', 'Nequi', 'Pendiente'),
('Ven005', 'USU005', '2026-08-03', 'Nequi', 'Cumplida'),
('Ven006', 'USU003', '2026-04-03', 'Efectivo', 'Pendiente'),
('Ven007', 'USU004', '2026-07-03', 'Efectivo', 'Cumplida'),
('Ven008', 'USU005', '2026-04-03', 'Tarjeta', 'Cumplida'),
('Ven009', 'USU009', '2026-11-03', 'Tarjeta', 'Cancelada'),
('Ven010', 'USU007', '2026-04-03', 'Efectivo', 'Pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`ID_DETALLE_PEDIDO`),
  ADD KEY `FK_DETALLE_PEDIDO_PEDIDO` (`ID_PEDIDO`),
  ADD KEY `FK_DETALLE_PEDIDO_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `detalle_receta`
--
ALTER TABLE `detalle_receta`
  ADD PRIMARY KEY (`id_detalle_receta`),
  ADD KEY `fk_detalle_receta_receta` (`id_receta`),
  ADD KEY `fk_detalle_insumo` (`id_insumo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`ID_DETALLE_VENTA`),
  ADD KEY `FK_DETALLE_VENTA_VENTA` (`ID_VENTA`),
  ADD KEY `FK_DETALLE_VENTA_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`ID_INCIDENCIA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`ID_INSUMO`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `fk_mensajes_usuario` (`id_emisor`),
  ADD KEY `fk_mensajes_usuario_receptor` (`id_receptor`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`ID_MESA`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_PAGO`),
  ADD KEY `FK_PAGO_PEDIDO` (`ID_PEDIDO`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_PEDIDO_USUARIO` (`ID_USUARIO`),
  ADD KEY `FK_PEDIDO_MESA` (`ID_MESA`),
  ADD KEY `FK_PEDIDO_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `permisos_rol`
--
ALTER TABLE `permisos_rol`
  ADD KEY `fk_permisos_rol_permiso` (`id_permiso`),
  ADD KEY `fk_permisos_rol_rol` (`id_rol`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`),
  ADD KEY `fk_recetas_producto` (`id_producto`) USING BTREE;

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_RESERVA`),
  ADD KEY `FK_ID_MESA` (`ID_MESA`),
  ADD KEY `FK_ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`ID_RESEÑA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`ID_TELEFONO`),
  ADD KEY `FK_TELEFONO_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD KEY `fk_usuario_rol_usuario` (`id_usuario`),
  ADD KEY `fk_usuario_rol_rol` (`id_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_VENTA`),
  ADD KEY `FK_VENTA_USUARIO` (`ID_USUARIO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `FK_DETALLE_PEDIDO_PEDIDO` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DETALLE_PEDIDO_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_receta`
--
ALTER TABLE `detalle_receta`
  ADD CONSTRAINT `fk_detalle_insumo` FOREIGN KEY (`id_insumo`) REFERENCES `insumo` (`ID_INSUMO`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detalle_receta_receta` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`) ON UPDATE CASCADE ON DELETE CASCADE ;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `FK_DETALLE_VENTA_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DETALLE_VENTA_VENTA` FOREIGN KEY (`ID_VENTA`) REFERENCES `venta` (`ID_VENTA`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD CONSTRAINT `fk_incidencia_usuario` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_mensajes_usuario` FOREIGN KEY (`id_emisor`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mensajes_usuario_receptor` FOREIGN KEY (`id_receptor`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `FK_PAGO_PEDIDO` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_PEDIDO_MESA` FOREIGN KEY (`ID_MESA`) REFERENCES `mesa` (`ID_MESA`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PEDIDO_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PEDIDO_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `permisos_rol`
--
ALTER TABLE `permisos_rol`
  ADD CONSTRAINT `fk_permisos_rol_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `fk_permisos_rol_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `fk_resetas_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`ID_PRODUCTO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_ID_MESA` FOREIGN KEY (`ID_MESA`) REFERENCES `mesa` (`ID_MESA`) ON DELETE CASCADE ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ID_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `fk_reseña_usuario` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `FK_TELEFONO_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuario_rol_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_VENTA_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`) ON UPDATE CASCADE ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
