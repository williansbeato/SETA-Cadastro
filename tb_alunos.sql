-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 18-Fev-2020 às 21:33
-- Versão do servidor: 10.2.22-MariaDB
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aula002`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 NOT NULL,
  `curso` varchar(100) CHARACTER SET utf8 NOT NULL,
  `turma` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `tb_cursos`
--
CREATE TABLE `tb_cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 NOT NULL,
  `area_eixo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `nivel` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `tb_turmas`
--
CREATE TABLE `tb_turmas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ano` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id`, `nome`, `curso`, `turma`) VALUES
(1, 'MARIA EDUARDA DA SILVA', 'INFORMÁTICA - EMI', 'INFO18'),
(2, 'ANA PAULA GOMES SILVA', 'TÉCNICO EM MEIO AMBIENTE', 'MAMB20'),
(3, 'RENATO ALBERTO TELLES GOMES', 'INFORMÁTICA-EMI', 'INFO18'),
(4, 'DANIEL DA SILVA SOUZA JR', 'MECÂNICA - EMI', 'MEC15'),
(5, 'WELLINGTON DIAS ARAUJO E SILVA', 'MECÂNICA - EMI', 'MEC17'),
(6, 'MARCOS AURÉLIO', 'INFORMÁTICA - EMI', 'INFO14'),
(7, 'FABIO GILBERTO', 'TADS', 'TADS15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cursos`
--
ALTER TABLE `tb_cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_turmas`
--
ALTER TABLE `tb_turmas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `tb_cursos`
--
ALTER TABLE `tb_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- AUTO_INCREMENT for table `tb_turmas`
--
ALTER TABLE `tb_turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
