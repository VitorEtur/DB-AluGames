-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2021 às 03:31
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `alugames`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `cpfCliente` varchar(20) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `enderecoCliente` varchar(255) NOT NULL,
  `celularCliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `cpfCliente`, `emailCliente`, `enderecoCliente`, `celularCliente`) VALUES
(1, 'Vitor Tchunwen Etur Huang', '121.101.389-80', 'vitor.etur@gmail.com', 'Rua Santo Inácio nº100,Bairro São Francisco de Assis, Camboriú/SC', '47 9 9260-7442');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `idJogo` int(11) NOT NULL,
  `nomeJogo` varchar(100) NOT NULL,
  `plataformaJogo` varchar(15) NOT NULL,
  `classindicatJogo` varchar(11) NOT NULL,
  `descJogo` text NOT NULL,
  `obsJogo` text NOT NULL,
  `ativoJogo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`idJogo`, `nomeJogo`, `plataformaJogo`, `classindicatJogo`, `descJogo`, `obsJogo`, `ativoJogo`) VALUES
(1, 'Grand Theft Auto V', 'PS4', '18', 'Mundo aberto, 1º e 3º pessoa, ação-aventura', '', 1),
(2, 'God of War', 'PS4', '18', 'Mundo semi-aberto, 3º pessoa, ação-aventura', '', 1),
(3, 'Minecraft', 'Xbox One', 'LIVRE', 'Mundo aberto, 1º e 3º pessoa, sobrevivência', '', 1),
(4, 'Mineirinho Ultra Adventures', 'PC', 'LIVRE', 'Plataforma, 3º pessoa', '', 1),
(5, 'Red Dead Redemption 2', 'PS4, Xbox One', '18', 'Mundo aberto, 1º e 3º pessoa, ação-aventura', '', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`idJogo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `idJogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
