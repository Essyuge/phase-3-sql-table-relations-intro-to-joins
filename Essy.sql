RELATIONAL DATABASE.
Primary Key: a column in a table with an identifier (ID) that uniquely identifies one specific record, or row, in a table
Foreign Key: a column in from one table that refers to a primary key in another table
 Edgar codd invented the concept of relationl database.
in other words, he came up with the idea that storing data in tables, indexed by primary key and related by foreign keys would normalize that data.
CREATE TABLE 1
CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER,
  breed TEXT
);
THEN INSERT DATA
INSERT INTO cats (name, age, breed)
VALUES ("Maru", 3, "Scottish Fold");
THEN CREATE THE OTHER TABLE
CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);
ADD FOREIGN KEY TO CATS TABLE
ALTER TABLE cats ADD COLUMN owner_id INTEGER;
UPDATE THE FIRST TABLES FOREIGN KEY COLUMN
UPDATE cats SET owner_id = 1 WHERE name = "Maru";

1.INNER JOIN
SELECT
  cats.name,
  cats.breed,
  owners.name AS "owner_name"
FROM cats
INNER JOIN owners
ON cats.owner_id = owners.id;
2.LEFT JOIN
SELECT column_name(s)
FROM first_table
LEFT JOIN second_table
ON first_table.column_name = second_table.column_name;
ie.
SELECT cats.name, cats.breed, owners.name
FROM cats
LEFT OUTER JOIN owners
ON cats.owner_id = owners.id;
3.We have others like RIGHT JOIN AND FULL JOIN AND SELF JOIN.
LINK: https://www.w3schools.com/sql/sql_join.asp
.
