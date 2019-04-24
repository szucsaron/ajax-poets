/*
    Database initialization script that runs on every web-application redeployment.
*/
DROP TABLE IF EXISTS works;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    full_name TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
	CONSTRAINT email_not_empty CHECK (name <> ''),
	CONSTRAINT password_not_empty CHECK (password <> '')
);

CREATE TABLE works (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    title TEXT,
    content TEXT
);



INSERT INTO users (name, full_name, password) VALUES
	('kalman', 'Kálmán András', '1234'), -- 1
	('jeno', 'Jenő Gábor', '1234'), -- 2
	('czesy', 'Czési Irén', '1234'), -- 3
	('kalimp', 'Kalimpfrászy Nyavaja', '1234'); -- 4



