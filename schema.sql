CREATE TABLE Category (
	id SERIAL PRIMARY KEY UNIQUE,
	name varchar(255) NOT NULL UNIQUE,
    createdat timestamp NOT NULL default now()
);


CREATE TABLE Verse (
	id SERIAL PRIMARY KEY UNIQUE,
	text varchar(255) NOT NULL,
	LOCATION varchar(255) NOT NULL,
	likeCounter int NOT NULL DEFAULT 0,
	categoryId int NOT NULL,
	CONSTRAINT fk_category 
	  FOREIGN KEY(categoryId) 
	    REFERENCES category(id),
    inserteddat timestamp NOT NULL default now()
);


-- Create Sample Categories
INSERT INTO category VALUES (DEFAULT,'Love');
INSERT INTO category VALUES (DEFAULT,'Hate');

-- Create Sample Verses
INSERT INTO verse VALUES (DEFAULT,'This is a test', 'Test 1:1', 50, 1);
INSERT INTO verse VALUES (DEFAULT,'This is another test', 'Test 1:2',0,2);

