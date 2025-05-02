-- Creates the employee table with specified columns
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,             -- Auto-incrementing ID
    name VARCHAR(50),                  -- Employee's name
    birthday DATE,                     -- Birth date of the employee
    email VARCHAR(100)                 -- Email address
);

SELECT * FROM employee;
-- Insert 50 mock records into the employee table
INSERT INTO employee (name, birthday, email) VALUES ('Kevin', '1983-03-22', 'riverajodi@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Christopher', '1979-07-19', 'modom@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Priscilla', '2000-09-29', 'hmeza@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Sherry', '1992-08-27', 'patricklane@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Wendy', '1978-04-13', 'tina46@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('James', '1987-02-10', 'zsmith@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Amanda', '1985-11-30', 'amandab@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Carlos', '1993-06-25', 'carlosv@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Rachel', '1991-12-19', 'r.smith@outlook.com');
INSERT INTO employee (name, birthday, email) VALUES ('Tyler', '1980-08-15', 'tylerj@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Angela', '1990-05-04', 'angela.white@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Brian', '1984-04-10', 'brian84@live.com');
INSERT INTO employee (name, birthday, email) VALUES ('Donna', '1996-11-11', 'donnad@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Matthew', '1982-09-21', 'matt22@aol.com');
INSERT INTO employee (name, birthday, email) VALUES ('Nancy', '1995-07-30', 'nancyj@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('George', '1975-10-18', 'georgek@outlook.com');
INSERT INTO employee (name, birthday, email) VALUES ('Julie', '1986-02-07', 'julieann@ymail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Edward', '1974-01-03', 'edward1974@protonmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Megan', '1997-08-12', 'megan_lee@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Shawn', '1994-03-28', 'shawnm@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Laura', '1976-12-31', 'laura12@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Aaron', '1981-06-14', 'aaronb@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Cathy', '1999-01-25', 'cathy_w@ymail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Vincent', '1993-10-06', 'vincentw@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Debbie', '1978-03-23', 'debbie.ray@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Travis', '1989-09-01', 'travisd@msn.com');
INSERT INTO employee (name, birthday, email) VALUES ('Carol', '1983-04-20', 'carol88@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Harry', '1977-05-29', 'harry.potter@hogwarts.com');
INSERT INTO employee (name, birthday, email) VALUES ('Emma', '2001-11-03', 'emma01@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Olivia', '1998-07-17', 'olivia.lane@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Ethan', '1986-01-20', 'ethan12@aol.com');
INSERT INTO employee (name, birthday, email) VALUES ('Sophia', '1979-09-15', 'sophiabrown@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Noah', '1990-10-27', 'noah_smith@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Liam', '1988-03-03', 'liamrock@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Chloe', '1973-06-11', 'chloejohnson@ymail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Mason', '1992-02-15', 'mason23@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Isabella', '1981-12-22', 'isabella_f@outlook.com');
INSERT INTO employee (name, birthday, email) VALUES ('Logan', '1984-11-09', 'logan_doe@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Ava', '1999-05-16', 'avawhite@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Lucas', '1972-07-28', 'lucas_miller@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Mia', '1980-01-11', 'mia_b@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Jayden', '1976-10-05', 'jayden93@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Ella', '1991-03-19', 'ella_lovely@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Oliver', '1994-04-08', 'oliverwood@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Abigail', '1995-08-24', 'abigailg@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Aiden', '1989-07-07', 'aiden.carter@yahoo.com');
INSERT INTO employee (name, birthday, email) VALUES ('Grace', '1982-06-01', 'gracemartin@hotmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Henry', '1970-02-18', 'henrysmith@gmail.com');
INSERT INTO employee (name, birthday, email) VALUES ('Zoe', '1996-01-29', 'zoe_z@yahoo.com');

-- 5 UPDATE operations
UPDATE employee SET name='UpdatedName1' WHERE birthday<'1980-01-01' AND email LIKE '%@hotmail.com' RETURNING *;
UPDATE employee SET email='newemail@example.com' WHERE id=10 RETURNING *;
UPDATE employee SET birthday='1969-04-20' WHERE email='harry.potter@hogwarts.com' RETURNING *;
UPDATE employee SET name='UpdatedDolly' WHERE name='Donna' RETURNING *;
UPDATE employee SET name='UpdatedGuy' WHERE email='matt22@aol.com' RETURNING *;

-- 5 DELETE operations
DELETE FROM employee WHERE email LIKE '%@ymail.com';
DELETE FROM employee WHERE id=50;
DELETE FROM employee WHERE birthday<'1996-01-29' RETURNING *;
DELETE FROM employee WHERE name='Chloe' RETURNING *;
DELETE FROM employee WHERE name='Travis' OR email='vincentw@gmail.com' RETURNING *;
