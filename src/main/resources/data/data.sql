SET AUTOCOMMIT FALSE;



INSERT INTO profil (id, date_publication, genre) VALUES
( 1,'2012-12-31', 'roman_social'),
( 2,'20014-05-05', 'roman_drame');


INSERT INTO auteur (id, nom, prenom)  VALUES
 ( 1,'auteur1', 'prenom1'),
  ( 2,'auteur2', 'prenom2');

INSERT INTO livre (id, nom, langue, prix, id_auteur, id_profile,id_stock) VALUES
  ( 1, 'une vie','fr',100,1,1,1),
  ( 2, 'crimes et chatiments','rs',200, 2,2,2);



INSERT INTO stock (id, nombre) VALUES
  ( 1, 20),
  ( 2, 30);


  -- security


INSERT INTO role (id, nom, description) VALUES
    ( 1, 'admin','tous le droits '),
    ( 2, 'user','droits restreints');


INSERT INTO user (id, username, nom, prenom, password, mail, actif) VALUES
--pasword1
        ( 1,'username_1', 'alaoui','ahmed','$2a$10$iU0hTb92bnYIixazpeTWke3/sAphcYqdhDR1q0zgSX8v7nkTipDgW','alaoui_ahmed@gmail.com',TRUE),
        --pasword2
    ( 2, 'username_2','maani','ali','$2a$10$CrJptyJI/5wd7MRW7Ze6E.o6aTrjHXI7yzICFrp8Yc3vfl5whZlk2','maani_ali@gmail.com',TRUE),
    --pasword3
    ( 3, 'username_3','fdali','sara','$2a$10$r.BPz3MgsTfqZRMultVA8.NmUe5pL3JCONapJ5Pc4bMLbQHijnG9.','fdali_sara@gmail.com',TRUE);

INSERT INTO user_role (id_user, id_role) VALUES
    ( 1, 1),
    ( 2, 2),
    ( 3, 2) ;

COMMIT;

