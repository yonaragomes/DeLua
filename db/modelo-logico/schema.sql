CREATE TABLE IF NOT EXISTS `usuario` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(120) NOT NULL,
	`email` VARCHAR(160) NOT NULL UNIQUE,
	`senha_hash` VARCHAR(255) NOT NULL,
	`perfil` VARCHAR(20) NOT NULL DEFAULT 'usuario',
	`criado_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `tema` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(80) NOT NULL UNIQUE,
	`descricao` TEXT,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `palavra_chave` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`termo` VARCHAR(60) NOT NULL UNIQUE,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `fonte` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`titulo` VARCHAR(200) NOT NULL,
	`instituicao` VARCHAR(120),
	`url` VARCHAR(300),
	`ano` INTEGER,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `conteudo` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`tipo` VARCHAR(30) NOT NULL,
	`titulo` VARCHAR(200) NOT NULL,
	`descricao` TEXT,
	`autor` VARCHAR(160),
	`url_externo` VARCHAR(300),
	`ano_publicacao` INTEGER,
	`destaque` BOOLEAN NOT NULL DEFAULT 0,
	`criado_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `conteudo_tema` (
	`conteudo_id` INTEGER NOT NULL,
	`tema_id` INTEGER NOT NULL,
	PRIMARY KEY(`conteudo_id`, `tema_id`)
);


CREATE TABLE IF NOT EXISTS `conteudo_palavra_chave` (
	`conteudo_id` INTEGER NOT NULL,
	`palavra_chave_id` INTEGER NOT NULL,
	PRIMARY KEY(`conteudo_id`, `palavra_chave_id`)
);


CREATE TABLE IF NOT EXISTS `curtida` (
	`usuario_id` INTEGER NOT NULL,
	`conteudo_id` INTEGER NOT NULL,
	`criada_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`usuario_id`, `conteudo_id`)
);


CREATE TABLE IF NOT EXISTS `salvo` (
	`usuario_id` INTEGER NOT NULL,
	`conteudo_id` INTEGER NOT NULL,
	`salvo_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`usuario_id`, `conteudo_id`)
);


CREATE TABLE IF NOT EXISTS `afirmacao` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`tema_id` INTEGER NOT NULL,
	`enunciado` TEXT NOT NULL,
	`eh_verdade` BOOLEAN NOT NULL,
	`explicacao` TEXT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `afirmacao_fonte` (
	`afirmacao_id` INTEGER NOT NULL,
	`fonte_id` INTEGER NOT NULL,
	PRIMARY KEY(`afirmacao_id`, `fonte_id`)
);


CREATE TABLE IF NOT EXISTS `resposta_afirmacao` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`afirmacao_id` INTEGER NOT NULL,
	`usuario_id` INTEGER,
	`escolheu_verdade` BOOLEAN NOT NULL,
	`acertou` BOOLEAN NOT NULL,
	`respondida_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `indicador` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`fonte_id` INTEGER NOT NULL,
	`categoria` VARCHAR(40) NOT NULL,
	`nome` VARCHAR(160) NOT NULL,
	`unidade` VARCHAR(40),
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `indicador_valor` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`indicador_id` INTEGER NOT NULL,
	`ano` INTEGER NOT NULL,
	`recorte` VARCHAR(80),
	`valor` DECIMAL(14,2) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `servico_ajuda` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(160) NOT NULL,
	`tipo` VARCHAR(40),
	`telefone` VARCHAR(30),
	`url` VARCHAR(300),
	`descricao` TEXT,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `situacao_ajuda` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`titulo` VARCHAR(160) NOT NULL,
	`orientacao` TEXT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `servico_situacao` (
	`servico_id` INTEGER NOT NULL,
	`situacao_id` INTEGER NOT NULL,
	PRIMARY KEY(`servico_id`, `situacao_id`)
);


ALTER TABLE `conteudo_tema`
ADD FOREIGN KEY(`conteudo_id`) REFERENCES `conteudo`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `conteudo_tema`
ADD FOREIGN KEY(`tema_id`) REFERENCES `tema`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `conteudo_palavra_chave`
ADD FOREIGN KEY(`conteudo_id`) REFERENCES `conteudo`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `conteudo_palavra_chave`
ADD FOREIGN KEY(`palavra_chave_id`) REFERENCES `palavra_chave`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `curtida`
ADD FOREIGN KEY(`usuario_id`) REFERENCES `usuario`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `curtida`
ADD FOREIGN KEY(`conteudo_id`) REFERENCES `conteudo`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `salvo`
ADD FOREIGN KEY(`usuario_id`) REFERENCES `usuario`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `salvo`
ADD FOREIGN KEY(`conteudo_id`) REFERENCES `conteudo`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `afirmacao`
ADD FOREIGN KEY(`tema_id`) REFERENCES `tema`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `afirmacao_fonte`
ADD FOREIGN KEY(`afirmacao_id`) REFERENCES `afirmacao`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `afirmacao_fonte`
ADD FOREIGN KEY(`fonte_id`) REFERENCES `fonte`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `resposta_afirmacao`
ADD FOREIGN KEY(`afirmacao_id`) REFERENCES `afirmacao`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `resposta_afirmacao`
ADD FOREIGN KEY(`usuario_id`) REFERENCES `usuario`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `indicador`
ADD FOREIGN KEY(`fonte_id`) REFERENCES `fonte`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `indicador_valor`
ADD FOREIGN KEY(`indicador_id`) REFERENCES `indicador`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `servico_situacao`
ADD FOREIGN KEY(`servico_id`) REFERENCES `servico_ajuda`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `servico_situacao`
ADD FOREIGN KEY(`situacao_id`) REFERENCES `situacao_ajuda`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;