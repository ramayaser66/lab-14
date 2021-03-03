
-- 1614762506759-Normalization 

-- - CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));
-- //when implenting this code in the database it will create a second table(authors) in the database (lab14_normal).

-- - INSERT INTO authors(name) SELECT DISTINCT author FROM books;
-- // this command will retrieve unique author names from the book table and insert them in authours table under the name colmun.

-- - ALTER TABLE books ADD COLUMN author_id INT;
-- // this command will add another colmun to the books table (author_id).

-- -  UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;
-- // this will content the two tables where it matches the authours id with the authour name.

-- - ALTER TABLE books DROP COLUMN author;
-- // this will remove the author column.

-- - ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id); 
-- // this will set the data type in the auther_id in books table as a foreign key that references the primary key in authours table. 