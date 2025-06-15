CREATE OR REPLACE TABLE books(
	isbn VARCHAR2(),
	title VARCHAR2(),
	authorName VARCHAR2(),
	genre VARCHAR2(),
	CONSTRAINT pk_books PRIMARY KEY (isbn)
);

CREATE OR REPLACE TABLE copies(
	copieCode VARCHAR2(),
	bookIsbn VARCHAR2(),
	edition VARCHAR2(),
	CONSTRAINT pk_copies PRIMARY KEY (copieCode),
	CONSTRAINT fk_copies_books FOREIGN KEY (bookIsbn) REFERENCES books(isbn) ON DELETE CASCADE
);

CREATE OR REPLACE TABLE members(
	memberCode VARCHAR2(),
	dni VARCHAR2(),
	name VARCHAR2(),
	registrationDate DATE(),
	country VARCHAR2(),
	email VARCHAR2(),
	CONSTRAINT pk_members PRIMARY KEY (dni),
	CONSTRAINT ak_members UNIQUE (memberCode)
);

CREATE OR REPLACE TABLE loans(
	copieCode VARCHAR2(),
	memberCode VARCHAR2(),
	loanDate TIMESTAMP(),
	returnDate TIMESTAMP(),
	CONSTRAINT pk_loans PRIMARY KEY (copieCode, memberCode),
	CONSTRAINT fk_loans_copies FOREIGN KEY (copieCode) REFERENCES copies(copieCode) ON DELETE CASCADE,
	CONSTRAINT fk_loans_members FOREIGN KEY (memberCode) REFERENCES members(memberCode)	ON DELETE CASCADE
);

CREATE OR REPLACE SEQUENCE seq_members(
	START WITH 1
	INCRREMENT BY 1
	NOMAXVALUE
);
