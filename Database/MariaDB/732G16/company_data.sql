/*-----------------------------------------------------------------
-- Ingrid Alin Nilsson 27/3-07
-- Data is inserted into database company
-----------------------------------------------------------------
-----------------------------------------------------------------
-- employee
-----------------------------------------------------------------*/
INSERT INTO employee VALUES (199, 'Bullock, J.D.', 27000, null, 1920, 1920);
INSERT INTO employee VALUES (11, 'Ross, Stuart', 12067, null, 1931, 1932);
INSERT INTO employee VALUES (10, 'Ross, Stanley', 15908, 199, 1927, 1945);
INSERT INTO employee VALUES (33, 'Hayes, Evelyn', 10100, 199, 1931, 1963);
INSERT INTO employee VALUES (32, 'Smythe, Carol', 9050, 199, 1929, 1967);
INSERT INTO employee VALUES (157, 'Jones, Tim', 12000, 199, 1940, 1960);
INSERT INTO employee VALUES (1110, 'Smith, Paul', 6000, 33, 1952, 1973);
INSERT INTO employee VALUES (35, 'Evans, Michael', 5000, 32, 1952, 1974);
INSERT INTO employee VALUES (129, 'Thomas, Tom', 10000, 199, 1941, 1962);
INSERT INTO employee VALUES (13, 'Edwards, Peter', 9000, 199, 1928, 1958);
INSERT INTO employee VALUES (215, 'Collins, Joanne', 7000, 10, 1950, 1971);
INSERT INTO employee VALUES (55, 'James, Mary', 12000, 199, 1920, 1969);
INSERT INTO employee VALUES (26, 'Thompson, Bob', 13000, 199, 1930, 1970);
INSERT INTO employee VALUES (98, 'Williams, Judy', 9000, 199, 1935, 1969);
INSERT INTO employee VALUES (4901, 'Bailey, Chas M.', 8377, 32, 1956, 1975);
INSERT INTO employee VALUES (843,  'Schmidt, Herman', 11204, 26, 1936, 1956);
INSERT INTO employee VALUES (2398, 'Wallace, Maggie J.', 7880, 26, 1940, 1959);
INSERT INTO employee VALUES (1639, 'Choy, Wanda', 11160, 55, 1947, 1970);
INSERT INTO employee VALUES (5119, 'Bono, Sonny', 13621, 55, 1939, 1963);
INSERT INTO employee VALUES (37, 'Raveen, Lemont', 11985, 26, 1950, 1974);
INSERT INTO employee VALUES (5219, 'Schwarz, Jason B.', 13374, 33, 1944, 1959);
INSERT INTO employee VALUES (1523, 'Zugnoni, Arthur A.', 19868, 129, 1928, 1949);
INSERT INTO employee VALUES (430, 'Brunet, Paul C.', 17674, 129, 1938, 1959);
INSERT INTO employee VALUES (994, 'Iwano, Masahiro', 15641, 129, 1944, 1970);
INSERT INTO employee VALUES (1330, 'Onstad, Richard', 8779, 13, 1952, 1971);
COMMIT;

/*-----------------------------------------------------------------
-- city
-----------------------------------------------------------------*/
INSERT INTO city VALUES ('Los Angeles', 'Calif');
INSERT INTO city VALUES ('Oakland', 'Calif');
INSERT INTO city VALUES ('El Cerrito', 'Calif');
INSERT INTO city VALUES ('Atlanta', 'Ga');
INSERT INTO city VALUES ('San Francisco', 'Calif');
INSERT INTO city VALUES ('Boston', 'Mass');
INSERT INTO city VALUES ('Dallas', 'Tex');
INSERT INTO city VALUES ('Denver', 'Colo');
INSERT INTO city VALUES ('White Plains', 'Neb');
INSERT INTO city VALUES ('Amherst', 'Mass');
INSERT INTO city VALUES ('Seattle', 'Wash');
INSERT INTO city VALUES ('Paxton', 'Ill');
INSERT INTO city VALUES ('New York', 'NY');
INSERT INTO city VALUES ('San Diego', 'Calif');
INSERT INTO city VALUES ('Hickville', 'Okla');
INSERT INTO city VALUES ('Salt Lake City', 'Utah');
INSERT INTO city VALUES ('Madison', 'Wisc');
INSERT INTO city VALUES ('Springfield', 'Okla');
COMMIT;

/*-----------------------------------------------------------------
-- store
-----------------------------------------------------------------*/
INSERT INTO store VALUES (5, 'San Francisco');
INSERT INTO store VALUES (7, 'Oakland');
INSERT INTO store VALUES (8, 'El Cerrito');
INSERT INTO store VALUES (9, 'San Francisco');
COMMIT;

/*-----------------------------------------------------------------
-- dept
-----------------------------------------------------------------*/
INSERT INTO dept VALUES (35, 'Book', 5, 1, 55);
INSERT INTO dept VALUES (10, 'Candy', 5, 1, 13);
INSERT INTO dept VALUES (19, 'Furniture', 7, 4, 26);
INSERT INTO dept VALUES (20, 'Major Appliances', 7, 4, 26);
INSERT INTO dept VALUES (14, 'Jewelry', 8, 1, 33);
INSERT INTO dept VALUES (43, 'Children''s', 8, 2, 32);
INSERT INTO dept VALUES (65, 'Junior''s', 7, 3, 37);
INSERT INTO dept VALUES (58, 'Men''s', 7, 2, 129);
INSERT INTO dept VALUES (60, 'Sportswear', 5, 1, 10);
INSERT INTO dept VALUES (99, 'Giftwrap', 5, 1, 98);
INSERT INTO dept VALUES (1, 'Bargain', 5, 0, 37);
INSERT INTO dept VALUES (26, 'Linens', 7, 3, 157);
INSERT INTO dept VALUES (63, 'Women''s', 7, 3, 32);
INSERT INTO dept VALUES (49, 'Toys', 8, 2, 35);
INSERT INTO dept VALUES (70, 'Women''s', 5, 1, 10);
INSERT INTO dept VALUES (73, 'Children''s', 5, 1, 10);
INSERT INTO dept VALUES (34, 'Stationary', 5, 1, 33);
INSERT INTO dept VALUES (47, 'Junior Miss', 7, 2, 129);
INSERT INTO dept VALUES (28, 'Women''s', 8, 2, 32);
COMMIT;

/*-----------------------------------------------------------------
-- supplier
-----------------------------------------------------------------*/
INSERT INTO supplier VALUES (199, 'Koret', 'Los Angeles');
INSERT INTO supplier VALUES (213,'Cannon', 'Atlanta');
INSERT INTO supplier VALUES (33, 'Levi-Strauss', 'San Francisco');
INSERT INTO supplier VALUES (89, 'Fisher-Price', 'Boston');
INSERT INTO supplier VALUES (125, 'Playskool', 'Dallas');
INSERT INTO supplier VALUES (42, 'Whitman''s', 'Denver');
INSERT INTO supplier VALUES (15, 'White Stag', 'White Plains');
INSERT INTO supplier VALUES (475, 'DEC', 'Amherst');
INSERT INTO supplier VALUES (122, 'White Paper', 'Seattle');
INSERT INTO supplier VALUES (440, 'Spooley', 'Paxton');
INSERT INTO supplier VALUES (241, 'IBM', 'New York');
INSERT INTO supplier VALUES (62, 'Data General', 'Atlanta');
INSERT INTO supplier VALUES (5, 'Amdahl', 'San Diego');
INSERT INTO supplier VALUES (20, 'Wormley', 'Hickville');
INSERT INTO supplier VALUES (67, 'Edger', 'Salt Lake City');
INSERT INTO supplier VALUES (999, 'A E Neumann', 'Madison');
INSERT INTO supplier VALUES (1, 'Simpsons Corp.', 'Springfield');
COMMIT;


/*-----------------------------------------------------------------
-- item
-----------------------------------------------------------------*/
INSERT INTO item VALUES (26, 'Earrings', 14, 1000, 20, 199);
INSERT INTO item VALUES (118, 'Towels, Bath', 26, 250, 1000, 213);
INSERT INTO item VALUES (43, 'Maze', 49, 325, 200, 89);
INSERT INTO item VALUES (106, 'Clock Book', 49, 198, 150, 125);
INSERT INTO item VALUES (23, '1 lb Box', 10, 215, 100, 42);
INSERT INTO item VALUES (52, 'Jacket', 60, 3295, 300, 15);
INSERT INTO item VALUES (165, 'Jean', 65, 825, 500, 33);
INSERT INTO item VALUES (258, 'Shirt', 58, 650, 1200, 33);
INSERT INTO item VALUES (120, 'Twin Sheet',26, 800, 750, 213);
INSERT INTO item VALUES (301, 'Boy''s Jean Suit', 43, 1250, 500, 33);
INSERT INTO item VALUES (121, 'Queen Sheet', 26, 1375, 600, 213);
INSERT INTO item VALUES (101, 'Slacks', 63, 1600, 325, 15);
INSERT INTO item VALUES (115, 'Gold Ring', 14, 4995, 10, 199);
INSERT INTO item VALUES (25, '2 lb Box, Mix', 10, 450, 75, 42);
INSERT INTO item VALUES (119, 'Squeeze Ball', 49,  250, 400, 89);
INSERT INTO item VALUES (11, 'Wash Cloth', 1, 75, 575, 213);
INSERT INTO item VALUES (19, 'Bellbottoms', 43, 450, 600, 33);
INSERT INTO item VALUES ( 21, 'ABC Blocks', 1, 198, 405, 125);
INSERT INTO item VALUES (107, 'The ''Feel'' Book', 35, 225, 225, 89);
INSERT INTO item VALUES (127, 'Ski Jumpsuit', 65, 4350, 125, 15);
COMMIT;

/*-----------------------------------------------------------------
-- parts
-----------------------------------------------------------------*/
INSERT INTO parts VALUES (1, 'central processor', 'pink', 10, 1);
INSERT INTO parts VALUES (2, 'memory', 'gray', 20, 32);
INSERT INTO parts VALUES (3, 'disk drive', 'black', 685, 2);
INSERT INTO parts VALUES (4, 'tape drive', 'black', 450, 4);
INSERT INTO parts VALUES (5, 'tapes', 'gray', 1, 250);
INSERT INTO parts VALUES (6, 'line printer', 'yellow', 578, 3);
INSERT INTO parts VALUES (7, 'l-p paper', 'white', 15,  95);
INSERT INTO parts VALUES (8, 'terminals', 'blue', 19, 15);
INSERT INTO parts VALUES (13, 'paper tape reader', 'black', 107, 0);
INSERT INTO parts VALUES (14, 'paper tape punch', 'black', 147, 0);
INSERT INTO parts VALUES (9, 'terminal paper', 'white', 2, 350);
INSERT INTO parts VALUES (10, 'byte-soap', 'clear', 0, 143);
INSERT INTO parts VALUES (11, 'card reader', 'gray', 327, 0);
INSERT INTO parts VALUES (12, 'card punch', 'gray', 427, 0);
COMMIT;


/*-----------------------------------------------------------------
-- supply
-----------------------------------------------------------------*/
INSERT INTO supply VALUES (475, 1, '1993-12-31', 1);
INSERT INTO supply VALUES (475, 2, '1994-05-31', 32);
INSERT INTO supply VALUES (475, 3, '1993-12-31', 2);
INSERT INTO supply VALUES (475, 4, '1994-05-31', 1);
INSERT INTO supply VALUES (122, 7, '1995-02-01', 144);
INSERT INTO supply VALUES (122, 7, '1995-02-02', 48);
INSERT INTO supply VALUES (122, 9, '1995-02-01', 144);
INSERT INTO supply VALUES (440, 6, '1994-10-10', 2);
INSERT INTO supply VALUES (241, 4, '1993-12-31', 1);
INSERT INTO supply VALUES (62, 3, '1994-06-18', 3);
INSERT INTO supply VALUES (475, 2, '1993-12-31', 32);
INSERT INTO supply VALUES (475, 1, '1994-07-01', 1);
INSERT INTO supply VALUES (5, 4, '1994-11-15', 3);
INSERT INTO supply VALUES (5, 4, '1995-01-22', 6);
INSERT INTO supply VALUES (20, 5, '1995-01-10', 20);
INSERT INTO supply VALUES (20, 5, '1995-01-11', 75);
INSERT INTO supply VALUES (241, 1, '1995-06-01', 1);
INSERT INTO supply VALUES (241, 2, '1995-06-01', 32);
INSERT INTO supply VALUES (241, 3, '1995-06-01', 1);
INSERT INTO supply VALUES (67, 4, '1995-07-01', 1);
INSERT INTO supply VALUES (999, 10, '1996-01-01', 144);
INSERT INTO supply VALUES (241, 8, '1995-07-01', 1);
INSERT INTO supply VALUES (241, 9, '1995-07-01', 144);
INSERT INTO supply VALUES (89, 3, '1995-07-04', 1000);
INSERT INTO supply VALUES (89, 4, '1995-07-04', 1000);
COMMIT;


/*-----------------------------------------------------------------
-- debit
-----------------------------------------------------------------*/
INSERT INTO debit VALUES (100581, '1995-01-15', 157, 10000000);
INSERT INTO debit VALUES (100582, '1995-01-15', 1110, 14356540);
INSERT INTO debit VALUES (100586, '1995-01-16', 35, 14096831);
INSERT INTO debit VALUES (100592, '1995-01-17', 129, 10000000);
INSERT INTO debit VALUES (100593, '1995-01-18', 35, 11652133);
INSERT INTO debit VALUES (100594, '1995-01-18', 215, 12591815);
COMMIT;

/*-----------------------------------------------------------------
-- sale
-----------------------------------------------------------------*/
INSERT INTO sale VALUES (100581, 118, 5);
INSERT INTO sale VALUES (100581, 120, 1);
INSERT INTO sale VALUES (100582, 26, 1);
INSERT INTO sale VALUES (100586, 127, 3);
INSERT INTO sale VALUES (100586, 106, 2);
INSERT INTO sale VALUES (100592, 258, 1);
INSERT INTO sale VALUES (100593, 23, 2);
INSERT INTO sale VALUES (100594, 52, 1);
COMMIT;

SELECT * FROM employee;
SELECT * FROM dept;
SELECT * FROM item;
SELECT * FROM parts;
SELECT * FROM sale;
SELECT * FROM debit;
SELECT * FROM city;
SELECT * FROM store;
SELECT * FROM supply;
SELECT * FROM supplier;
