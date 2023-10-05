-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2023 a las 18:17:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `factura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_order`
--

CREATE TABLE `invoice_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_tax_per` varchar(250) NOT NULL,
  `order_total_after_tax` double(10,2) NOT NULL,
  `order_amount_paid` decimal(10,2) NOT NULL,
  `order_total_amount_due` decimal(10,2) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `invoice_order`
--

INSERT INTO `invoice_order` (`order_id`, `user_id`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`) VALUES
(682, 123456, '2022-06-07 01:18:03', 'Kellogs', 'Av tecnologico 102', 402.00, 64.32, '16', 466.32, 500.00, -33.68, 'Se realiza el proceso sin ningún inconveniente.'),
(685, 1, '2023-10-02 16:46:53', 'KELLOGS', 'Carr. Al Campo Militar Kilómetro 1, San Antonio de la Punta, 76000 Santiago de Querétaro, Qro.\r\n', 4000.00, 640.00, '16', 4640.00, 5000.00, -360.00, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_order_item`
--

CREATE TABLE `invoice_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_item_id`, `order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(4371, 682, '1', 'Extinguidor Sencillo', 1.00, 402.00, 402.00),
(4373, 685, '1', 'Silla', 10.00, 400.00, 4000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_user`
--

CREATE TABLE `invoice_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `invoice_user`
--

INSERT INTO `invoice_user` (`id`, `email`, `password`, `first_name`, `last_name`, `mobile`, `address`) VALUES
(1, 'andreseduarci@gmail.com', 'Andres300616.', 'Andres', 'Arciniega', 4424596337, 'Andres Henestrosa #1710 interior 99 col. Sonterra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `invoice_order`
--
ALTER TABLE `invoice_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indices de la tabla `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `invoice_order`
--
ALTER TABLE `invoice_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT de la tabla `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4374;

--
-- AUTO_INCREMENT de la tabla `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
