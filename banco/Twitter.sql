create database blog;

USE database blog;

create table Usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha CHAR(60),
    dataCriacao datetime,
    ativo tinyint(4),
    adm tinyint(4)
);

create table Post(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    texto text,
    dataCriacao datetime,
    dataPostagem datetime,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
)