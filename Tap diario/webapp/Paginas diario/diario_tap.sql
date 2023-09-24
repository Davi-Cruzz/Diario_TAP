-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2023 às 03:29
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `diario_tap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_diario`
--

CREATE TABLE `cadastro_diario` (
  `id_cadastro` int(11) NOT NULL,
  `nome_cad` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `diario_paginas`
--

CREATE TABLE `diario_paginas` (
  `id_paginas` int(11) NOT NULL,
  `data_horaEnvio` datetime NOT NULL DEFAULT current_timestamp(),
  `assunto` tinytext NOT NULL,
  `mensagem` text NOT NULL,
  `id_cadastro` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro_diario`
--
ALTER TABLE `cadastro_diario`
  ADD PRIMARY KEY (`id_cadastro`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `diario_paginas`
--
ALTER TABLE `diario_paginas`
  ADD PRIMARY KEY (`id_paginas`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_diario`
--
ALTER TABLE `cadastro_diario`
  MODIFY `id_cadastro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `diario_paginas`
--
ALTER TABLE `diario_paginas`
  MODIFY `id_paginas` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
