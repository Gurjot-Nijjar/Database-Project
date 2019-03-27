

CREATE TABLE Movie_ ( movie_id NUMBER PRIMARY KEY, movie_name VARCHAR2(35), language VARCHAR2(15), genre VARCHAR(15));

CREATE TABLE Cast_ (f_name VARCHAR2(25), l_name VARCHAR2(30), gender CHAR(1), actor_id NUMBER PRIMARY KEY, movie_id NUMBER(8), CONSTRAINT movie_fk FOREIGN KEY (movie_id) REFERENCES Movie_ (movie_id));

CREATE TABLE Rating_ (rev_name VARCHAR2(35), rat_stars NUMBER(1), reviewer_ID NUMBER(8),  movie_id NUMBER(8), PRIMARY KEY(reviewer_id, movie_id), CONSTRAINT movie1_fk FOREIGN KEY (movie_id) REFERENCES Movie_ (movie_id)); 

CREATE TABLE Screenings_ (ShowTime_Date TIMESTAMP, day varchar2(10), format varchar2(10),  movie_id NUMBER(8), CONSTRAINT movie2_fk FOREIGN KEY (movie_id) REFERENCES Movie_ (movie_id));

CREATE TABLE Director_ (dir_name VARCHAR2(35), dir_id NUMBER(8),  movie_id NUMBER(8), PRIMARY KEY(dir_id, movie_id), CONSTRAINT movie3_fk FOREIGN KEY (movie_id) REFERENCES Movie_ (movie_id));  

CREATE TABLE Producer_ (prod_name VARCHAR2(35), prod_id NUMBER(8), movie_id NUMBER(8), PRIMARY KEY(prod_id, movie_id), CONSTRAINT movie4_fk FOREIGN KEY (movie_id) REFERENCES Movie_ (movie_id));

INSERT INTO Movie_ VALUES (1, 'Star Wars: LAST JEDI', 'English', 'Action');
INSERT INTO Movie_ VALUES (2, 'The Disaster Artist', 'English', 'Comedy');
INSERT INTO Movie_ VALUES (3, 'Tiger Zinda Hai', 'Hindi', 'Action/Drama');
INSERT INTO Movie_ VALUES (4, 'Justice League', 'English', 'Adventure');
INSERT INTO Movie_ VALUES (5, 'Jumanji', 'English', 'Adventure');
INSERT INTO Movie_ VALUES (6, 'Pitch Perfect 3', 'English', 'Dramedy');
INSERT INTO Movie_ VALUES (7, 'Ferdinand', 'English', 'Animation');
INSERT INTO Movie_ VALUES (8, 'Coco', 'English', 'Animation');
INSERT INTO Movie_ VALUES (9, 'Daddy''s Home 2', 'English', 'Comedy');
INSERT INTO Movie_ VALUES (10, 'Thor 2', 'English', 'Action/Comedy');

INSERT INTO Cast_ VALUES ('Mark', 'Hamill', 'M', 1, 1);
INSERT INTO Cast_ VALUES ('James', 'Franco', 'M', 2, 2);
INSERT INTO Cast_ VALUES ('Salman', 'Khan', 'M', 3, 3);
INSERT INTO Cast_ VALUES ('Gal', 'Gadot', 'F', 4, 4);
INSERT INTO Cast_ VALUES ('The', 'Rock', 'M', 5, 5);
INSERT INTO Cast_ VALUES ('Anna', 'Kendrick', 'F', 6, 6);
INSERT INTO Cast_ VALUES ('John', 'Cena', 'M', 7, 7);
INSERT INTO Cast_ VALUES ('Benjimin', 'Bratt', 'M', 8, 8);
INSERT INTO Cast_ VALUES ('Will', 'Ferrell', 'M', 9, 9);
INSERT INTO Cast_ VALUES ('Chirs', 'Hemsworth', 'M', 10, 10);

INSERT INTO Rating_ VALUES ('Mr. Jones', 2, 1, 1);
INSERT INTO Rating_ VALUES ('Mr. Jones', 3, 1, 2);
INSERT INTO Rating_ VALUES ('Mr. Jones', 4, 1, 3);
INSERT INTO Rating_ VALUES ('Mr. Jones', 5, 1, 4);
INSERT INTO Rating_ VALUES ('Mr. Jones', 1, 1, 5);
INSERT INTO Rating_ VALUES ('Mr. Jones', 3, 1, 6);
INSERT INTO Rating_ VALUES ('Mr. Jones', 2, 1, 7);
INSERT INTO Rating_ VALUES ('Mr. Jones', 4, 1, 8);
INSERT INTO Rating_ VALUES ('Mr. Jones', 5, 1, 9);
INSERT INTO Rating_ VALUES ('Mr. Jones', 2, 1, 10);

INSERT INTO Screenings_ VALUES (to_date('2017/12/15 13:00', 'yyyy/mm/dd hh24:mi'), 'Friday', 'IMAX', 1);
INSERT INTO Screenings_ VALUES (to_date('2017/11/16 14:00', 'yyyy/mm/dd hh24:mi'), 'Thurdsday', 'RPX', 2);
INSERT INTO Screenings_ VALUES (to_date('2017/10/17 15:00', 'yyyy/mm/dd hh24:mi'), 'Wednesday', '3D', 3);
INSERT INTO Screenings_ VALUES (to_date('2017/12/13 16:00', 'yyyy/mm/dd hh24:mi'), 'Saturday', 'IMAX/3D', 4);
INSERT INTO Screenings_ VALUES (to_date('2017/11/12 17:00', 'yyyy/mm/dd hh24:mi'), 'Sunday', '4D', 5);
INSERT INTO Screenings_ VALUES (to_date('2017/10/11 18:00', 'yyyy/mm/dd hh24:mi'), 'Monday', 'IMAX', 6);
INSERT INTO Screenings_ VALUES (to_date('2017/12/10 19:00', 'yyyy/mm/dd hh24:mi'), 'Tuesday', 'RPX', 7);
INSERT INTO Screenings_ VALUES (to_date('2017/11/09 1:00', 'yyyy/mm/dd hh24:mi'), 'Friday', '3D', 8);
INSERT INTO Screenings_ VALUES (to_date('2017/10/08 2:00', 'yyyy/mm/dd hh24:mi'), 'Saturday', 'Standard', 9);
INSERT INTO Screenings_ VALUES (to_date('2017/12/07 3:00', 'yyyy/mm/dd hh24:mi'), 'Monday', 'IMAX/3D', 10);

INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '1');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '2');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '3');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '4');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '5');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '6');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '7');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '8');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '9');
INSERT INTO Director_ VALUES ('Steven Spielberg', '1', '10');

INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 1);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 2);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 3);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 4);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 5);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 6);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 7);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 8);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 9);
INSERT INTO Producer_ VALUES ('Harvey Winestein', 1, 1);






