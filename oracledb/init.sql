WHENEVER SQLERROR EXIT SQL.SQLCODE;

ALTER SESSION SET CONTAINER=FREEPDB1;

CREATE TABLE ADMIN.users (
                             id        NUMBER PRIMARY KEY,
                             username  VARCHAR2(50),
                             gender    CHAR(1),
                             birthdate DATE,
                             bio       CLOB
);

INSERT INTO ADMIN.users VALUES (1, 'alice', 'F', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Loves books.');
INSERT INTO ADMIN.users VALUES (2, 'bob', 'M', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'Fan of basketball.');
INSERT INTO ADMIN.users VALUES (3, 'carol', 'F', TO_DATE('1992-08-22', 'YYYY-MM-DD'), 'Data analyst.');
INSERT INTO ADMIN.users VALUES (4, 'dave', 'M', TO_DATE('1980-03-10', 'YYYY-MM-DD'), 'Writes blogs.');
INSERT INTO ADMIN.users VALUES (5, 'eve', 'F', TO_DATE('1995-12-05', 'YYYY-MM-DD'), 'Crypto enthusiast.');
INSERT INTO ADMIN.users VALUES (6, 'frank', 'M', TO_DATE('1988-07-30', 'YYYY-MM-DD'), 'Traveler.');
INSERT INTO ADMIN.users VALUES (7, 'grace', 'F', TO_DATE('1993-04-17', 'YYYY-MM-DD'), 'Mountain climber.');
INSERT INTO ADMIN.users VALUES (8, 'heidi', 'F', TO_DATE('1989-11-01', 'YYYY-MM-DD'), 'Gardener.');
INSERT INTO ADMIN.users VALUES (9, 'ivan', 'M', TO_DATE('1991-06-06', 'YYYY-MM-DD'), 'Tech geek.');
INSERT INTO ADMIN.users VALUES (10, 'judy', 'F', TO_DATE('1994-09-09', 'YYYY-MM-DD'), 'Yoga instructor.');

COMMIT;