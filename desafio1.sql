DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS Artista (
	artista_id INT PRIMARY KEY auto_increment,
    nome_artista VARCHAR (45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Plano (
	plano_id INT PRIMARY KEY auto_increment,
    plano VARCHAR (45) NOT NULL,
    valor_plano INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Cancoes (
	cancao_id INT PRIMARY KEY auto_increment,
    cancao VARCHAR (45) NOT NULL,
    duracao_segundos INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	album_id INT PRIMARY KEY auto_increment,
    nome_album VARCHAR (45) NOT NULL,
    artista_id INT NOT NULL,
    cancao_id INT NOT NULL,
    ano_lancamento INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artista (artista_id),
    FOREIGN KEY (cancao_id) REFERENCES Cancoes (cancao_id)
);

CREATE TABLE IF NOT EXISTS Usuario (
	usuario_id INT PRIMARY KEY auto_increment,
    nome_usario VARCHAR (45) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    seguindo_artistas VARCHAR (200) NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Plano (plano_id)
);

CREATE TABLE IF NOT EXISTS Historico (
	historico_id INT PRIMARY KEY auto_increment,
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducao DATE,
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES Cancoes (cancao_id)
);
