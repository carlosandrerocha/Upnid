-- Table: conta

-- DROP TABLE tweet;
-- DROP TABLE perfil;
-- DROP TABLE conta;
-- DROP TABLE tweettipo;


CREATE TABLE conta
(
  login character varying(50) NOT NULL,
  senha character varying(15) NOT NULL,
  complemento character varying(100),
  codigopais integer, 
  datacadastro timestamp without time zone NOT NULL,
  CONSTRAINT pk_conta PRIMARY KEY (login)
);  

CREATE TABLE perfil
(
  login character varying(50) NOT NULL,
  bio character varying(160) NOT NULL,
  localizacao character varying(30),
  homepage character varying(100), 
  datanascimento timestamp without time zone NOT NULL,
  visaodiamesnascimento integer,
  visaoanonascimento integer,
  CONSTRAINT pk_perfil PRIMARY KEY (login)
);  

CREATE TABLE tweet
(
  login character varying(50) NOT NULL,
  datatweet timestamp with time zone NOT NULL,
  tweet character varying(280) NOT NULL,
  codigotweettipo integer NOT NULL,
  CONSTRAINT pk_tweet PRIMARY KEY (login, datatweet)
);

CREATE TABLE tweettipo
(
  codigo integer NOT NULL,
  descricao character varying(70) NOT NULL,
  numero integer NOT NULL,
  CONSTRAINT pk_tweettipo PRIMARY KEY (codigo)
);