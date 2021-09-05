  set autocommit false;


  CREATE TABLE  IF NOT EXISTS auteur (
       id   INT PRIMARY KEY,
       nom VARCHAR(64) NOT NULL,
       prenom VARCHAR(64)
   );

   CREATE TABLE IF NOT EXISTS  profil (
       id   INT PRIMARY KEY,
       date_publication DATE,
       genre  VARCHAR(64)
    );




      CREATE TABLE IF NOT EXISTS  livre (
               id          INT PRIMARY KEY ,
               nom         VARCHAR(64) NOT NULL,
               langue      VARCHAR(64),
               prix         INT NOT NULL,
               id_auteur INT  NOT NULL ,
               id_profile  INT  NOT NULL,
               id_stock   INT NOT NULL,


               CONSTRAINT FK_livre_auteur FOREIGN KEY (id_auteur) REFERENCES auteur(id),
                CONSTRAINT FK_livre_profile FOREIGN KEY (id_profile) REFERENCES profil(id),
                CONSTRAINT FK_livre_stock FOREIGN KEY (id_stock) REFERENCES stock(id)
             );


commit;
-- security
CREATE TABLE IF NOT EXISTS  user (

id INT PRIMARY KEY,
username  VARCHAR(64) NOT NULL,
nom         VARCHAR(64) NOT NULL,
prenom  VARCHAR(64) NOT NULL ,
password VARCHAR(64) NOT NULL,
mail VARCHAR(64) NOT NULL,
actif  BOOLEAN NOT NULL DEFAULT TRUE
);


CREATE TABLE IF NOT EXISTS  role (

id INT PRIMARY KEY ,
nom         VARCHAR(64) NOT NULL,
description   VARCHAR(64) );


CREATE TABLE IF NOT EXISTS  user_role (

id_user INT,
id_role INT ,

CONSTRAINT FK_user_role_role FOREIGN KEY (id_role) REFERENCES role(id) ,
CONSTRAINT FK_user_role_user FOREIGN KEY (id_user) REFERENCES user(id)
);







CREATE TABLE  IF NOT EXISTS  user_livre  (
   id_livre INT NOT NULL ,
   id_user INT NOT NULL  ,
 CONSTRAINT FK_user_livre_livre FOREIGN KEY (id_livre) REFERENCES livre (id),
     CONSTRAINT FK_user_livre_user FOREIGN KEY (id_user) REFERENCES user (id)

);

CREATE TABLE IF NOT EXISTS  stock  (
   id INT PRIMARY KEY ,
   nombre INT NOT NULL default 0,
);


  CREATE TABLE IF NOT EXISTS  action (

  id INT PRIMARY KEY,
  commentaire VARCHAR(64),
  date_action DATE NOT NULL,
  id_user  VARCHAR(64) NOT NULL ,
  CONSTRAINT FK_action FOREIGN KEY (id_user) REFERENCES user(id)
  );


commit;