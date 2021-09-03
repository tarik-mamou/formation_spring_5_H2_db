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
    id_auteur INT  NOT NULL ,
    id_profile  INT  NOT NULL,

    CONSTRAINT FK_livre_auteur FOREIGN KEY (id_auteur) REFERENCES auteur(id),
     CONSTRAINT FK_livre_profile FOREIGN KEY (id_profile) REFERENCES profil(id)
  );

-- securite
CREATE TABLE IF NOT EXISTS  user (

id INT PRIMARY KEY,
nom         VARCHAR(64) NOT NULL,
prenom  VARCHAR(64) NOT NULL );


CREATE TABLE IF NOT EXISTS  role (

id INT PRIMARY KEY,
nom         VARCHAR(64) NOT NULL,
description   VARCHAR(64) );


CREATE TABLE IF NOT EXISTS  user_role (

id_user INT,
id_role INT ,

CONSTRAINT FK_user_role_role FOREIGN KEY (id_role) REFERENCES role(id) ,
CONSTRAINT FK_user_role_user FOREIGN KEY (id_user) REFERENCES user(id)
)

















  --optionel many to_many
 --CREATE TABLE  lecteur {
  --       id   INT PRIMARY KEY,
   --      nom VARCHAR(64);
-- }


--  CREATE TABLE  livre_lecteur {
--    id_livre INT NOT NULL FOREIGN KEY  REFERENCES livre(id),
--
--    id_lecteur INT NOT NULL  FOREIGN KEY  REFERENCES lecteur (id),
--
--     CONSTRAINT [PK_livre_lecteur] PRIMARY KEY (
--        id_livre,id_lecteur
--     )
--  }