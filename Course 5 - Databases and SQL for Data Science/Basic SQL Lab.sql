--Basic SQL Lab
DROP TABLE INSTRUCTOR;

CREATE TABLE INSTRUCTOR (
    INS_ID INT NOT NULL,
    LASTNAME VARCHAR(30) NOT NULL,
    FIRSTNAME VARCHAR(30) NOT NULL,
    CITY VARCHAR(30),
    COUNTRY VARCHAR(2),
    PRIMARY KEY(INS_ID)
  );

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES ('1', 'Ahuja', 'Rav', 'Toronto', 'CA');

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES ('2', 'Chong', 'Raul', 'Toronto', 'CA'), ('3', 'Vasudevan', 'Hima', 'Chicago', 'US');

SELECT * FROM INSTRUCTOR;

SELECT firstname, lastname, country from INSTRUCTOR where city = 'Toronto';

UPDATE INSTRUCTOR SET city = 'Markham' where ins_id = 1;

DELETE FROM INSTRUCTOR where ins_id = 2;

SELECT * FROM INSTRUCTOR;
--End of Basic SQL Lab
