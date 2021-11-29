CREATE TABLE `tb_temas` (
	`id` bigint(5) NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_contos` (
	`id` bigint(5) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(1000) NOT NULL,
	`texto` varchar(100000) NOT NULL,
	`data` DATE(100) NOT NULL,
	`tema_id` bigint(5) NOT NULL,
	`usuario_id` bigint(5) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuarios` (
	`id` bigint(5) NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`foto` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_contos` ADD CONSTRAINT `tb_contos_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_temas`(`id`);

ALTER TABLE `tb_contos` ADD CONSTRAINT `tb_contos_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuarios`(`id`);




