INSERT INTO books (isbn, title, authorName, genre) VALUES ('978-1-56619-909-4', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction');
INSERT INTO books (isbn, title, authorName, genre) VALUES ('978-0-7432-7356-5', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction');
INSERT INTO books (isbn, title, authorName, genre) VALUES ('978-0-452-28423-4', '1984', 'George Orwell', 'Dystopian');
INSERT INTO books (isbn, title, authorName, genre) VALUES ('978-0-14-243723-0', 'Pride and Prejudice', 'Jane Austen', 'Romance');
INSERT INTO books (isbn, title, authorName, genre) VALUES ('978-0-7432-7356-5', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction');

INSERT INTO copies (copieCode, bookIsbn, edition) VALUES ('00000', '978-1-56619-909-4', '1st Edition');
INSERT INTO copies (copieCode, bookIsbn, edition) VALUES ('00050', '978-0-7432-7356-5', '2nd Edition');
INSERT INTO copies (copieCode, bookIsbn, edition) VALUES ('00101', '978-0-452-28423-4', '7th Edition');

INSERT INTO members (memberCode, dni, name, registrationDate, country, email) VALUES ('00000','98765432B','Pedro',TO_DATE('17/5/2019 11:12','DD/MM/YYYY HH24:MI'),'Germany','pedro34@gmail.com');
INSERT INTO members (memberCode, dni, name, registrationDate, country, email) VALUES ('00001','98137156A','Amanda',TO_DATE('28/2/2008 18:26','DD/MM/YYYY HH24:MI'),'Russia','amanda82@hotmail.com');
INSERT INTO members (memberCode, dni, name, registrationDate, country, email) VALUES ('00002','78900985K','Antonio',TO_DATE('8/8/2003 18:09','DD/MM/YYYY HH24:MI'),'France','4nton1o@yahoo.com');
INSERT INTO members (memberCode, dni, name, registrationDate, country, email) VALUES ('00003','91023613Q','Sofia',TO_DATE('29/12/2021 01:05','DD/MM/YYYY HH24:MI'),'Belgium','sofia720@outlook.com');
INSERT INTO members (memberCode, dni, name, registrationDate, country, email) VALUES ('00004','39235817D','Eva',TO_DATE('2/6/2006 20:16','DD/MM/YYYY HH24:MI'),'Spain','eva274@edu.gva.es');

INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES ('00101','00004',TO_TIMESTAMP('04/01/2023 24:23:59.113','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('12/01/2024 04:31:22.062','DD/MM/YYYY HH24:MI:SS.FF'));
INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES ('00000','00000',TO_TIMESTAMP('08/04/2017 05:11:20.672','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('15/04/2017 22:19:20.455','DD/MM/YYYY HH24:MI:SS.FF'));
INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES ('00050','00001',TO_TIMESTAMP('20/02/2008 13:19:34.048','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('28/02/2008 18:57:48.059','DD/MM/YYYY HH24:MI:SS.FF'));
INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES ('00033','00003',TO_TIMESTAMP('01/08/2006 10:36:32.740','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('07/08/2006 19:06:38.515','DD/MM/YYYY HH24:MI:SS.FF'));
INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES ('00063','00002',TO_TIMESTAMP('01/04/2007 18:23:46.916','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('18/04/2007 16:09:33.958','DD/MM/YYYY HH24:MI:SS.FF'));

UPDATE books SET title = 'One hundred years of solitude' WHERE isbn = '978-1-56619-909-4';

UPDATE members name = 'Maria Lopez' WHERE dni = '98765432B';

UPDATE loans returnDate = TO_TIMESTAMP('01/06/2023 10:00:00.000','DD/MM/YYYY HH24:MI:SS.FF') WHERE copieCode = '00101';