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


