ALTER TABLE members
DROP CONSTRAINT pk_members;
ALTER TABLE members
ADD CONSTRAINT pk_members PRIMARY KEY (memberCode);


-- Use CHECK to restrict to the values from the condition.

ALTER TAbLE copies
ADD (publicationYear NUMBER CHECK(publicationYear BETWEEN 2000 AND 2023));

ALTER TABLE members
ADD (address VARCHAR(50), cover BFILE);