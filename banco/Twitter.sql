create database blog;
USE blog;
drop database blog;

create table Usuario(
	id INT PRIMARY KEY AUTO_INCREMENT not null,
    nome VARCHAR(100) not null,
    email VARCHAR(100) not null,
    senha CHAR(60) not null,
    dataCriacao datetime not null default current_timestamp,
    ativo tinyint(4) not null default '0',
    adm tinyint(4) not null default '0'
);

create table Post(
	id INT PRIMARY KEY AUTO_INCREMENT not null,
    titulo VARCHAR(100) not null,
    texto text not null,
    dataCriacao datetime not null default current_timestamp,
    dataPostagem datetime not null,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(id)
);

select * from Usuario
