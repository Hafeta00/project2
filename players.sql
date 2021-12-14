DROP TABLE IF EXISTS players;

CREATE TABLE players (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  number INT,
  firstName TEXT NOT NULL,
  lastName TEXT NOT NULL,
  age INT,
  team TEXT NOT NULL,
  position TEXT NOT NULL,
  is_deleted INT DEFAULT 0


);




INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(7,"Carmello", "Anthony", 37, "Lakers", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(3,"Anthony", "Davis", 28, "Lakers", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(6,"Lebron", "James", 36, "Lakers", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(1,"Trevor", "Ariza", 36, "Lakers", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(1,"Avery", "Bradley", 31, "Lakers", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(9,"Kent", "Bazemore", 23, "Lakers", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(10,"Deandre", "Jordan", 33, "Lakers", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Russell", "Westbrook", 33, "Lakers", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Frank", "Vogel", 48, "Lakers", "Coach");



INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(7,"Kevin", "Durant", 33, "Nets", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(11,"Kyrie", "Irving", 29, "Nets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(13,"James", "Harden", 32, "Nets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(12,"Joe", "Harris", 30, "Nets", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(21,"LaMarcus", "Aldridge", 36, "Nets", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(1,"Bruce", "Brown", 25, "Nets", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(22,"Nic", "Claxton", 22, "Nets", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(2,"Blake", "Griffin", 32, "Nets", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Steve", "Nash", 48, "Nets", "Coach");


INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(2,"LaMelo", "Ball", 20, "Hornets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(25,"PJ", "Washington", 23, "Hornets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Miles", "Bridges", 23, "Hornets", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(22,"Vernon", "Carey", 20, "Hornets", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(20,"Gordon", "Heyward", 31, "Hornets", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(12,"Kelly", "Oubre", 25, "Hornets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(10,"Ish", "Smith", 33, "Hornets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(3,"Terry", "Rozier", 27, "Hornets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"James", "Borrego", 44, "Hornets", "Coach");


INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(1,"John", "Wall", 31, "Rockets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Jalen", "Green", 19, "Rockets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(10,"Eric", "Gordon", 32, "Rockets", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(14,"D.J.", "Augustin", 34, "Rockets", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(7,"Armoni", "Brooks", 23, "Rockets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(3,"Kevin", "Porter Jr.", 21, "Rockets", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(35,"Christian", "Wood", 26, "Rockets", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(27,"Daniel", "Theis", 29, "Rockets", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Stephen", "Silas", 48, "Rockets", "Coach");



INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(7,"Grayson", "Allen", 26, "Bucks", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(34,"Giannis", "Antetokounmpo", 27, "Bucks", "PF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(43,"Thanasis", "Antetokounmpo", 29, "Bucks", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(24,"Pat", "Connaughton", 28, "Bucks", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(15,"DeMarcus", "Cousins", 31, "Bucks", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(3,"George", "Hill", 35, "Bucks", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(21,"Jrue", "Holiday", 31, "Bucks", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Donte", "DiVincenzo", 24, "Bucks", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Mike", "Budenholzer", 52, "Bucks", "Coach");

INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(2,"Lonzo", "Ball", 24, "Bulls", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(13,"Tony", "Bradley", 23, "Bulls", "C");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(6,"Alex", "Caruso", 57, "Bulls", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(11,"DeMar", "DeRozan", 32, "Bulls", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(24,"Javonte", "Green", 28, "Bulls", "SF");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(8,"Zach", "LaVine", 26, "Bulls", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(21,"Matt", "Thomas", 27, "Bulls", "SG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Coby", "White", 21, "Bulls", "PG");
INSERT INTO players(number, firstName, lastName, age, team, position)
VALUES(0,"Billy", "Donovan", 56, "Bulls", "Coach");
