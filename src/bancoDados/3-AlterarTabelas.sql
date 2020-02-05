ALTER TABLE perfil ADD CONSTRAINT fk_contaperfil FOREIGN KEY (login)
      REFERENCES conta (login);
      
ALTER TABLE tweet ADD CONSTRAINT fk_contatweet FOREIGN KEY (login)
      REFERENCES conta (login);
       
ALTER TABLE tweet ADD CONSTRAINT fk_tweettipotweet FOREIGN KEY (codigotweettipo)
      REFERENCES tweettipo (codigo);
