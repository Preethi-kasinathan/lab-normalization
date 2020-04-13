CREATE TABLE NORMALIZATION(
        USERID VARCHAR(11),
        USEREMAIL VARCHAR(30),
        FNAME VARCHAR(20),
        LNAME VARCHAR(20),
        CITY VARCHAR(20),
        STATE VARCHAR(20),
        ZIP NUMBER(11));
       DROP TABLE NORMALIZATION;
       --1NF 
       INSERT INTO NORMALIZATION (USERID,USEREMAIL,FNAME,LNAME,CITY,STATE,ZIP)VALUES
       ('MA12','ALEX@YMAIL.COM','ALEX','JONES','HOUSTON','TEXAS',75001);
       INSERT INTO NORMALIZATION (USERID,USEREMAIL,FNAME,LNAME,CITY,STATE,ZIP)VALUES
       ('PO45','EMMA.JOHN@GMAIL.COM','EMMA','STONE','ALBANY','NEWYORK',10008);
       INSERT INTO NORMALIZATION (USERID,USEREMAIL,FNAME,LNAME,CITY,STATE,ZIP)VALUES
       ('LA33','VICTORIA@YAHOO.CO','VICTORIA','AURORA','ISTANBUL','TURKEY',34000);
       INSERT INTO NORMALIZATION (USERID,USEREMAIL,FNAME,LNAME,CITY,STATE,ZIP)VALUES
       ('CH99','JOE.1197@HOTMAIL.COM','JOE','JOHNSON','LOS ANGELES','CALIFORNIA',90201);
       INSERT INTO NORMALIZATION (USERID,USEREMAIL,FNAME,LNAME,CITY,STATE,ZIP)VALUES
       ('D472','DIANY01@GMAIL.COM','DAINY','WILLAM','MIAMI','FLORIDA',32006);
       DESC NORMALIZATION;
       
       


       CREATE TABLE UD(
       USERID VARCHAR(11)NOT NULL,
       USEREMAIL VARCHAR(30)NOT NULL,
       CONSTRAINT USERID_PK PRIMARY KEY (USERID)
         );
         


       INSERT INTO UD (USERID,USEREMAIL)VALUES
       ('MA12','ALEX@YMAIL.COM');
       INSERT INTO UD(USERID,USEREMAIL)VALUES
       ('PO45','EMMA.JOHN@GMAIL.COM');
       INSERT INTO UD(USERID,USEREMAIL)VALUES
       ('LA33','VICTORIA@YAHOO.CO');
       INSERT INTO UD (USERID,USEREMAIL)VALUES
       ('CH99','JOE.1197@HOTMAIL.COM');
       INSERT INTO NORMALIZATION (USERID,USEREMAIL)VALUES
       ('D472','DIANY01@GMAIL.COM');
       	


       CREATE TABLE ZIP(
       CITY VARCHAR(20)NOT NULL,
       STATE VARCHAR(20)NOT NULL,
      ZIPID NUMBER(11)NOT NULL,
       CONSTRAINT ZIPID_PK PRIMARY KEY (ZIPID)
       );
       INSERT INTO ZIP (CITY,STATE,ZIPID)VALUES
       ('JONES','HOUSTON','TEXAS',75001);
       INSERT INTO ZIP(CITY,STATE,ZIPID)VALUES
       ('ALBANY','NEWYORK',10008);
       INSERT INTO ZIP (CITY,STATE,ZIPID)VALUES
       ('ISTANBUL','TURKEY',34000);
       INSERT INTO ZIP (CITY,STATE,ZIPID)VALUES
       ('LOS ANGELES','CALIFORNIA',90201);
       INSERT INTO ZIP (CITY,STATE,ZIPID)VALUES
       ('MIAMI','FLORIDA',32006);
      
       CREATE TABLE NAME(
       USER_ID VARCHAR(11) NOT NULL,
        CONSTRAINT Fk_UD
       FOREIGN KEY (USER_ID)
        REFERENCES UD(USERID),
       F_NAME VARCHAR(20)NOT NULL,
       L_NAME VARCHAR(20)NOT NULL
       );
       ALTER TABLE NAME DROP CONSTRAINT FK_UD;
       ALTER TABLE NAME DROP CONSTRAINT FK_ZIPID;
       DROP TABLE NAME;
       INSERT INTO NAME (USER_ID,F_NAME,L_NAME)VALUES
       ('MA12','ALEX','JONES');
       INSERT INTO NAME(USER_ID,F_NAME,L_NAME)VALUES
       ('PO45','EMMA','STONE');
       INSERT INTO NAME (USER_ID,F_NAME,L_NAME)VALUES
       ('LA33','VICTORIA','AURORA');
       INSERT INTO NAME(USER_ID,F_NAME,L_NAME)VALUES
       ('CH99','JOE','JOHNSON');