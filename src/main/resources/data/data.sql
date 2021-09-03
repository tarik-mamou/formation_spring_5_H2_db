SET AUTOCOMMIT FALSE;



INSERT INTO profil (id, date_publication, genre) VALUES
( 1,'2012-12-31', 'roman_social'),
( 2,'20014-05-05', 'roman_drame');


INSERT INTO auteur (id, nom, prenom)  VALUES
 ( 1,'auteur1', 'prenom1'),
  ( 2,'auteur2', 'prenom2');

INSERT INTO livre (id, nom, langue, id_auteur, id_profile) VALUES
  ( 1, 'une vie','fr',1,1),
  ( 2, 'crimes et chatiments','rs',2,2);

  COMMIT;


  id INT PRIMARY KEY,
  nom         VARCHAR(64) NOT NULL,
  description   VARCHAR(64) );
  -- secuity


INSERT INTO role (id, nom, description) VALUES
  ( 1, 'admin','tous le droits '),
  ( 2, 'user','droits restreints');

  INSERT INTO user (id, nom, prenom, mail, actif) VALUES
    ( 1, 'alaoui','ahmed'),
    ( 2, 'maani','ali'),
    ( 3, 'fehli','ali');

       INSERT INTO user_role (id_user, id_role) VALUES
            ( 1, 1),
            ( 2, 2),
            ( 3, 2) ;

