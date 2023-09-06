-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06-Set-2023 às 11:24
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minas_cafe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `amostra_sem_estoque`
--

DROP TABLE IF EXISTS `amostra_sem_estoque`;
CREATE TABLE IF NOT EXISTS `amostra_sem_estoque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `catacao` int NOT NULL,
  `classificacao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `humidade` float DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `peneira` int NOT NULL,
  `produtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `amostra_sem_estoque`
--

INSERT INTO `amostra_sem_estoque` (`id`, `apelido`, `catacao`, `classificacao`, `data`, `humidade`, `observacoes`, `peneira`, `produtor`) VALUES
(1, 'Baiano', 12, 'duro', '2023-08-28', 13.4, NULL, 78, 'Devanil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_cafe_beneficiado`
--

DROP TABLE IF EXISTS `cad_cafe_beneficiado`;
CREATE TABLE IF NOT EXISTS `cad_cafe_beneficiado` (
  `lote` int NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `barracao` int NOT NULL,
  `catacao` int NOT NULL,
  `classificacao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `humidade` float DEFAULT NULL,
  `lancado` varchar(255) DEFAULT NULL,
  `meieiro` varchar(255) DEFAULT NULL,
  `numero_nota` int NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `peneira` int NOT NULL,
  `porcentagem_meieiro` int NOT NULL,
  `porcentagem_produtor` int NOT NULL,
  `produtor` varchar(255) DEFAULT NULL,
  `quilos` float NOT NULL,
  `sacas` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subproduto` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lote`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cad_cafe_beneficiado`
--

INSERT INTO `cad_cafe_beneficiado` (`lote`, `apelido`, `ativo`, `barracao`, `catacao`, `classificacao`, `data`, `humidade`, `lancado`, `meieiro`, `numero_nota`, `observacoes`, `peneira`, `porcentagem_meieiro`, `porcentagem_produtor`, `produtor`, `quilos`, `sacas`, `status`, `subproduto`, `referencia`) VALUES
(1, 'Berto', b'1', 2, 17, 'Rio', '2023-08-01', 12.8, 'nao', 'Joao Antonio', 1234, 'Informar Humidade ao produtor.', 12, 51, 49, 'Gilberto Morais', 50, 38, NULL, '2 sacos de Escolha e 30 kgs de Mooca', 'M-006'),
(2, 'Berto', b'1', 2, 17, 'Rio', '2023-08-01', 12.8, 'nao', 'Lucio do Gil', 13234, 'Informar Humidade ao produtor.', 12, 51, 49, 'Joaquim Feliciano', 50, 38, NULL, '2 sacos de Escolha e 30 kgs de Mooca', 'M-007'),
(3, 'Zé', b'1', 3, 18, 'Riado', '2023-08-02', 12.8, 'sim', 'Leonirdo Francisco', 13235, 'Informar ao produtor os custos do frete.', 13, 50, 50, 'José da Silva', 49, 39, NULL, '2 sacos de Mooca e 30 kgs de Escolha', NULL),
(4, 'Roia', b'1', 3, 18, 'Riado', '2023-08-03', 12.8, 'sim', 'Leonirdo Francisco', 13235, 'Informar ao produtor os custos do frete.', 13, 50, 50, 'Luis André', 49, 39, NULL, '2 sacos de Mooca e 30 kgs de Escolha', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_cafe_coco`
--

DROP TABLE IF EXISTS `cad_cafe_coco`;
CREATE TABLE IF NOT EXISTS `cad_cafe_coco` (
  `lote` int NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `ativo` bit(1) DEFAULT NULL,
  `barracao` int NOT NULL,
  `catacao` int NOT NULL,
  `classificacao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `humidade` float DEFAULT NULL,
  `lancado` varchar(255) DEFAULT NULL,
  `meieiro` varchar(255) DEFAULT NULL,
  `numero_nota` int NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `peneira` int NOT NULL,
  `porcentagem_meieiro` int NOT NULL,
  `porcentagem_produtor` int NOT NULL,
  `produtor` varchar(255) DEFAULT NULL,
  `quilos` float NOT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `sacos` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subproduto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lote`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cad_cafe_coco`
--

INSERT INTO `cad_cafe_coco` (`lote`, `apelido`, `ativo`, `barracao`, `catacao`, `classificacao`, `data`, `humidade`, `lancado`, `meieiro`, `numero_nota`, `observacoes`, `peneira`, `porcentagem_meieiro`, `porcentagem_produtor`, `produtor`, `quilos`, `referencia`, `sacos`, `status`, `subproduto`) VALUES
(1, 'Grandão', b'1', 1, 19, 'riado', '2023-08-11', 12.5, 'sim', 'João José', 12381, 'Verificar com o produtor se deseja renovar seu café', 13, 50, 50, 'Adenilton borba de Almeida', 29, 'E-007', 12, 'Vai beneficiar...', '11 kgs de painha'),
(2, 'Passarinho', b'1', 1, 19, 'riado', '2023-08-11', 12.5, 'sim', 'João José', 12381, 'Verificar com o produtor se deseja renovar seu café', 13, 50, 50, 'Bernardo João', 19, 'E-006', 39, 'Vai Beneficiar', '11 kgs de painha'),
(3, '', b'1', 1, 19, 'riado', '2023-08-11', 12.5, 'sim', 'João José', 12381, 'Verificar com o produtor se deseja renovar seu café', 13, 50, 50, 'Maganhoto Daniel', 32, NULL, 109, 'Vai Beneficiar no barracao', '11 kgs de painha'),
(4, '', b'1', 1, 0, NULL, '2023-08-28', NULL, NULL, 'Canedo', 0, 'Verificar a humidade do café.', 0, 0, 0, 'José Henrique Dias de Souza', 18, NULL, 12, 'Vai Beneficiar', '38 kgs de Mooca e 19 kgs de Escolha'),
(5, '', b'1', 1, 0, NULL, '2023-08-28', NULL, NULL, 'Gilberto', 0, 'Verificar humidade do café.', 0, 0, 0, 'Amarildo Ferraz', 38, NULL, 76, 'Vai Beneficiar', ''),
(6, '', b'1', 1, 0, NULL, '2023-08-29', NULL, NULL, 'Minhoca', 0, 'Ligar para o produtor para informar quantos sacos gerou.', 0, 0, 0, 'Dito Jitó', 38, '', 32, 'Vai Beneficiar', '12 Kgs de Mooca e 28 kgs de Escolha'),
(7, '', b'1', 1, 0, NULL, '2023-08-29', NULL, NULL, 'Juca', 0, 'Verificar com o produtor se deseja renovar seu café', 0, 0, 0, 'Elielton Salles', 12, '', 38, 'Vai Beneficiar', ''),
(8, '', b'1', 2, 0, NULL, '2023-08-28', NULL, NULL, 'João Nelson', 0, 'Vai ligar quando quiser beneficiar o seu café.', 0, 0, 0, 'Eli Soares', 23, '', 37, 'Vai Beneficiar', ''),
(9, '', b'1', 1, 0, NULL, '2023-08-29', NULL, NULL, 'Ze Totonho', 0, 'Cliente novo...', 0, 0, 0, 'Neilton Santos Silva', 0, '', 67, 'Vai Beneficiar', ''),
(10, 'Grandão', b'1', 1, 12, 'riado', '2023-03-12', 12.5, 'nao', '', 0, 'Informar Humidade ao produtor.', 12, 0, 0, 'Adailton Costa Mendes', 29, 'E-223', 12, 'Vai beneficiar...', '12 kgs de Mooca e 30 kgs de Escolha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_cafe_maquina`
--

DROP TABLE IF EXISTS `cad_cafe_maquina`;
CREATE TABLE IF NOT EXISTS `cad_cafe_maquina` (
  `lote` int NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `barracao` int NOT NULL,
  `catacao` int NOT NULL,
  `classificacao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `humidade` float DEFAULT NULL,
  `lancado` varchar(255) DEFAULT NULL,
  `meieiro` varchar(255) DEFAULT NULL,
  `numero_nota` int NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `peneira` int NOT NULL,
  `porcentagem_meieiro` int NOT NULL,
  `porcentagem_produtor` int NOT NULL,
  `produtor` varchar(255) DEFAULT NULL,
  `quilos` float NOT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `sacas` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subproduto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lote`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cad_cafe_maquina`
--

INSERT INTO `cad_cafe_maquina` (`lote`, `apelido`, `ativo`, `barracao`, `catacao`, `classificacao`, `data`, `humidade`, `lancado`, `meieiro`, `numero_nota`, `observacoes`, `peneira`, `porcentagem_meieiro`, `porcentagem_produtor`, `produtor`, `quilos`, `referencia`, `sacas`, `status`, `subproduto`) VALUES
(1, 'Toto', b'1', 2, 0, NULL, '2023-08-24', 0, NULL, 'Silvio de Alcantara', 0, 'Adicionar sacaria na ficha do produtor.', 0, 0, 0, 'Luis Antonio (Toto)', 31, NULL, 120, NULL, '12 kgs de Mooca e 29 kgs de Escolha'),
(2, '', b'1', 2, 0, NULL, '2023-08-24', 0, NULL, 'Jose Vitor da Silva', 0, 'Verificar humidade do Café.', 0, 0, 0, 'Rafael Moraes Diogo', 29, NULL, 102, NULL, '3 Sacos e 13 kgs de Mooca e 1 Saco e 2 kgs de Escolha'),
(3, 'Travasso', b'1', 2, 0, 'Duro', '2023-08-31', 13, NULL, 'Silvio de Alcantara', 0, 'Adicionar sacaria na ficha do produtor.', 0, 0, 0, 'Eduardo Travasso', 30, 'C-007', 110, NULL, '12 kgs de Mooca e 29 kgs de Escolha'),
(4, '', b'1', 2, 0, NULL, '2023-08-31', 0, NULL, 'Tarciso', 0, 'Ligar para o Produtor.', 0, 0, 0, 'Egidio', 24, 'C-008 C-018 C-029', 82, NULL, '12 Kgs de Mooca e 13 Kgs de Escolha'),
(5, '', b'1', 2, 0, NULL, '2023-08-31', 0, NULL, 'Tarciso', 0, 'Ligar para o Produtor.', 0, 0, 0, 'Egidio', 24, 'C-008 C-018 C-029', 82, NULL, '12 Kgs de Mooca e 13 Kgs de Escolha'),
(6, '', b'1', 1, 0, NULL, '2023-08-31', 0, NULL, 'Joaquim do Juca', 0, 'Sem observações', 0, 0, 0, 'Tião Teodoro', 33, 'C-001 C-004', 71, NULL, '23 kgs de Mooca e 18 Kgs de Escolha'),
(7, '', b'1', 1, 0, NULL, '2023-08-31', 0, NULL, 'Joaquim do Juca', 0, 'Sem observações', 0, 0, 0, 'Tião Teodoro', 33, 'C-001 C-004', 71, NULL, '23 kgs de Mooca e 18 Kgs de Escolha'),
(8, '', b'1', 1, 0, NULL, '2023-08-31', 0, NULL, 'Joaquim do Juca', 0, 'Sem observações', 0, 0, 0, 'Tião Teodoro', 33, 'C-001 C-004', 71, NULL, '23 kgs de Mooca e 18 Kgs de Escolha'),
(9, '', b'1', 1, 0, NULL, '2023-08-30', 0, NULL, 'Jorge', 0, 'Sem observações.', 0, 0, 0, 'Li Teodoro', 51, 'C-001 C-004', 37, NULL, '1 kg de Mooca e 1 kg de Escolha'),
(10, '', b'1', 3, 0, NULL, '2023-08-30', 0, NULL, 'Quinho', 0, 'Sem observações.', 0, 0, 0, 'Josué Morais', 12, 'C-001 C-005', 43, NULL, '1 kg de Mooca e 1 kg de Escolha'),
(11, '', b'1', 1, 0, NULL, '2023-08-31', 0, NULL, '', 0, 'Adicionar sacaria na ficha do produtor.', 0, 0, 0, 'Ze Ferreira', 21, 'C-001', 32, NULL, '3 Sacos de Mooca e 2 Sacos de Escolha'),
(12, '', b'1', 1, 0, NULL, '2023-09-02', 0, NULL, 'Jadir', 0, 'Sem observações.', 0, 0, 0, 'Alan Moreira Cesar', 5, 'C-002 C-005', 12, NULL, '1Kg de Mooca e 2 Kgs de Escolha'),
(13, '', b'1', 1, 0, NULL, '2023-09-01', 0, NULL, 'Luis Pio', 0, 'Sem observações para o momento.', 0, 0, 0, 'Pastor Marcio', 13, 'C-002 C-005', 12, NULL, '12 Kgs de Mooca e 3 Kgs de Escolha'),
(14, '', b'1', 1, 0, NULL, '2023-09-01', 0, NULL, 'Luis Pio', 0, 'Sem observações para o momento.', 0, 0, 0, 'Pastor Marcio', 13, 'C-002 C-005', 12, NULL, '12 Kgs de Mooca e 3 Kgs de Escolha'),
(15, '', b'1', 2, 0, NULL, '2023-08-31', 0, NULL, 'Luis Pio', 0, 'Sem observações.', 0, 0, 0, 'Pastor Marcio', 12, 'C-2 C-5', 13, NULL, '12 Kgs de Mooca e 3 Kgs de Escolha'),
(16, '', b'1', 1, 0, NULL, '2023-09-01', 0, NULL, 'Bill Gates', 0, 'Nada mesmo.', 0, 0, 0, 'Bob Esponja', 12, 'C-2 C-8', 33, NULL, ''),
(17, '', b'1', 2, 0, NULL, '2023-09-05', 0, NULL, 'Afonso', 0, 'Adicionar sacaria na ficha do produtor.', 0, 0, 0, 'Bernardo João', 22, 'C-2 C-9', 122, NULL, '2 sacos de Mooca e 38 kgs de Escolha'),
(19, '', b'1', 2, 0, NULL, '2023-09-05', 0, NULL, 'Gilberto', 0, 'Informar ao produtor quanto de quebra deu o Café após beneficiado.', 0, 0, 0, 'Amarildo Ferraz', 32, 'C-02 C-05', 115, NULL, '2 Sacos de Mooca e 38 Kgs de Escolha'),
(20, '', b'1', 2, 0, NULL, '2023-09-04', 0, NULL, 'Alberto', 0, 'Provar café do produtor.', 0, 0, 0, 'Dito Jitó', 41, 'C-03 C-06', 102, NULL, '4 Sacos de Mooca e 28 Kgs de Escolha'),
(21, '', b'1', 2, 0, NULL, '2023-09-04', 0, NULL, 'Joao Jose', 0, 'Informar ao produtor quanto de quebra deu o Café após beneficiado.', 0, 0, 0, 'Bernardo Joao', 18, 'C-03 C-06', 32, NULL, '19 kgs de Mooca e 12 Kgs de Escolha'),
(22, '', b'1', 2, 0, NULL, '2023-09-05', 0, NULL, 'Juca', 0, 'Provar café do produtor.', 0, 0, 0, 'Elielton Salles', 50, 'C-004 C-007', 78, NULL, '3 Sacos de Mooca e 15 Kgs de Escolha'),
(23, '', b'1', 2, 0, NULL, '2023-09-05', 0, NULL, 'Juca', 0, 'Verificar seca do Café.', 0, 0, 0, 'Elielton Salles', 11, 'C-004 C-007', 32, NULL, '13 Kgs de Mooca e 11 Kgs de Escolha'),
(24, '', b'1', 2, 0, NULL, '2023-09-05', 0, NULL, 'Juca', 0, 'Provar café do produtor.', 0, 0, 0, 'Elielton Salles', 12, 'C-004 C-007', 32, NULL, '12 kgs de Mooca e 8 kgs de Escolha'),
(25, '', b'1', 2, 0, NULL, '2023-09-04', 0, NULL, 'Juca', 0, 'Provar café do produtor.', 0, 0, 0, 'Elielton Salles', 12, 'C-04 C-07', 32, NULL, '12 kgs de Mooca e 8 kgs de Escolha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficha_produtor`
--

DROP TABLE IF EXISTS `ficha_produtor`;
CREATE TABLE IF NOT EXISTS `ficha_produtor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agencia` varchar(255) DEFAULT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `chave_pix` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `entrada_saida` varchar(255) DEFAULT NULL,
  `humidade` float NOT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_correntista` varchar(255) DEFAULT NULL,
  `numero_conta` varchar(255) DEFAULT NULL,
  `operacao` varchar(255) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `renda` int NOT NULL,
  `saldo_duro_quilos` float DEFAULT NULL,
  `saldo_duro_sacos` int DEFAULT NULL,
  `saldo_escolha_quilos` float DEFAULT NULL,
  `saldo_escolha_sacos` int DEFAULT NULL,
  `saldo_mooca_quilos` float DEFAULT NULL,
  `saldo_mooca_sacos` int DEFAULT NULL,
  `saldo_riado_quilos` float DEFAULT NULL,
  `saldo_riado_sacos` int DEFAULT NULL,
  `saldo_rio_quilos` float DEFAULT NULL,
  `saldo_rio_sacos` int DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `tipo_conta` varchar(255) DEFAULT NULL,
  `valor_total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `ficha_produtor`
--

INSERT INTO `ficha_produtor` (`id`, `agencia`, `apelido`, `banco`, `chave_pix`, `cpf`, `data`, `entrada_saida`, `humidade`, `lote`, `nome`, `nome_correntista`, `numero_conta`, `operacao`, `preco`, `renda`, `saldo_duro_quilos`, `saldo_duro_sacos`, `saldo_escolha_quilos`, `saldo_escolha_sacos`, `saldo_mooca_quilos`, `saldo_mooca_sacos`, `saldo_riado_quilos`, `saldo_riado_sacos`, `saldo_rio_quilos`, `saldo_rio_sacos`, `telefone`, `tipo_conta`, `valor_total`) VALUES
(1, '24776', 'Enjoado', 'Bradesco', '35999887766', '73732813118', '2023-09-01', 'Venda de 23 sacas', 12, 'E-203', 'Joelmir Barbosa', 'Joelmir Barbosda', '892764-32', '', 760, 52, 32, 89, 0, 3, 0, 4, 12, 1, 11, 2, '35999887766', 'Corrente', 18400),
(2, '24776', 'Galã', 'Banco do Brasil', '35998786756', '52031444514', '2023-08-31', 'Venda de 24 sacas', 13, 'E-204', 'Lucas Rissato', 'Lucas Rissato Constantino', '892764-32', '', 765, 51, 33, 88, 0, 4, 0, 5, 13, 2, 12, 3, '35998786756', 'Conta Salário', 16400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `liga`
--

DROP TABLE IF EXISTS `liga`;
CREATE TABLE IF NOT EXISTS `liga` (
  `id` int NOT NULL,
  `data` date DEFAULT NULL,
  `nomeliga` varchar(255) DEFAULT NULL,
  `somatorio_lotes` int NOT NULL,
  `somatorio_quilos` float DEFAULT NULL,
  `somatorio_sacas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `liga_lotes`
--

DROP TABLE IF EXISTS `liga_lotes`;
CREATE TABLE IF NOT EXISTS `liga_lotes` (
  `liga_id` int NOT NULL,
  `lotes` varchar(255) DEFAULT NULL,
  KEY `FK9kmn38fifk890u9myca7ujftv` (`liga_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `liga_sequence`
--

DROP TABLE IF EXISTS `liga_sequence`;
CREATE TABLE IF NOT EXISTS `liga_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `liga_sequence`
--

INSERT INTO `liga_sequence` (`next_val`) VALUES
(1);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `liga_lotes`
--
ALTER TABLE `liga_lotes`
  ADD CONSTRAINT `FK9kmn38fifk890u9myca7ujftv` FOREIGN KEY (`liga_id`) REFERENCES `liga` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
