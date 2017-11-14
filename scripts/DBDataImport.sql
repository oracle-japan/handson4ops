EXEC CHECKTABLE;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "ORACLEUSR"."EMPLOYEE" 
   (	"ID" NUMBER(*,0), 
	"FIRSTNAME" VARCHAR2(255 BYTE), 
	"LASTNAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"BIRTHDATE" VARCHAR2(255 BYTE), 
	"TITLE" VARCHAR2(255 BYTE), 
	"DEPARTMENT" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ORACLEUSR.EMPLOYEE
SET DEFINE OFF;
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (380,'Hugh','Jast','Hugh.Jast@example.com','730-715-4446','1970-11-28T08:28:48.078Z','National Data Strategist','Mobility');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (381,'Toy','Herzog','Toy.Herzog@example.com','769-569-1789','1961-08-08T11:39:27.324Z','Dynamic Operations Manager','Paradigm');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (382,'Reed','Hahn','Reed.Hahn@example.com','429-071-2018','1977-02-05T19:18:57.407Z','Future Directives Facilitator','Quality');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (383,'Novella','Bahringer','Novella.Bahringer@example.com','293-596-3547','1961-07-25T10:59:55.485Z','Principal Factors Architect','Division');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (384,'Zora','Sawayn','Zora.Sawayn@example.com','923-814-0502','1978-03-18T17:00:12.938Z','Dynamic Marketing Designer','Security');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (385,'Cordia','Willms','Cordia.Willms@example.com','778-821-3941','1989-03-31T23:03:51.599Z','Human Division Representative','Optimization');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (386,'Clair','Bartoletti','Clair.Bartoletti@example.com','647-896-8993','1986-01-04T01:19:47.243Z','Customer Marketing Executive','Factors');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (387,'Joe','Beahan','Joe.Beahan@example.com','548-890-6181','1990-07-11T23:42:02.063Z','District Group Specialist','Program');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (388,'Daphney','Feest','Daphney.Feest@example.com','143-967-7041','1984-03-26T16:32:41.332Z','Dynamic Mobility Consultant','Metrics');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (389,'Janessa','Wyman','Janessa.Wyman@example.com','498-186-9009','1985-09-06T10:34:05.540Z','Investor Brand Associate','Markets');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (390,'Mara','Roob','Mara.Roob@example.com','962-540-9884','1975-05-11T09:45:58.248Z','Legacy Assurance Engineer','Usability');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (391,'Brennon','Bernhard','Brennon.Bernhard@example.com','395-224-9853','1963-12-05T20:32:26.668Z','Product Web Officer','Interactions');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (392,'Amya','Bernier','Amya.Bernier@example.com','563-562-4171','1972-06-23T15:25:40.799Z','Global Tactics Planner','Program');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (393,'Claud','Boehm','Claud.Boehm@example.com','089-073-7399','1965-02-27T14:09:28.325Z','National Marketing Associate','Directives');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (394,'Nyah','Schowalter','Nyah.Schowalter@example.com','823-063-7120','1969-02-19T19:34:55.044Z','Dynamic Communications Assistant','Metrics');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (395,'Imogene','Bernhard','Imogene.Bernhard@example.com','747-970-6062','1958-02-09T15:03:53.070Z','Dynamic Assurance Supervisor','Paradigm');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (396,'Chanel','Kuhlman','Chanel.Kuhlman@example.com','882-145-9513','1985-03-03T18:12:15.936Z','District Paradigm Representative','Integration');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (397,'Cierra','Morar','Cierra.Morar@example.com','273-607-2209','1965-01-25T20:17:32.836Z','Dynamic Data Planner','Paradigm');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (398,'Faye','Grimes','Faye.Grimes@example.com','750-139-1344','1962-08-21T07:52:29.284Z','Central Applications Analyst','Tactics');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (399,'Doyle','Rohan','Doyle.Rohan@example.com','093-457-5621','1991-11-29T17:19:01.536Z','Corporate Accountability Supervisor','Applications');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (400,'Jonathan','Barrows','Jonathan.Barrows@example.com','262-503-2161','1963-12-15T07:40:48.738Z','Regional Configuration Liason','Implementation');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (401,'Myriam','Luettgen','Myriam.Luettgen@example.com','951-924-8295','1962-02-08T10:09:10.361Z','Central Functionality Specialist','Accountability');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (402,'Johnnie','Schiller','Johnnie.Schiller@example.com','534-025-2200','1965-04-11T02:03:48.333Z','Principal Creative Developer','Interactions');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (403,'Laila','White','Laila.White@example.com','468-939-2298','1956-01-04T02:01:09.619Z','Corporate Optimization Engineer','Assurance');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (404,'Alessandra','Becker','Alessandra.Becker@example.com','081-724-0866','1984-08-12T05:32:50.509Z','Central Identity Associate','Quality');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (405,'Shannon','McCullough','Shannon.McCullough@example.com','101-995-1089','1989-02-25T07:47:10.774Z','Global Data Engineer','Division');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (406,'Garnet','Labadie','Garnet.Labadie@example.com','147-954-6624','1990-01-01T05:31:28.531Z','Senior Communications Producer','Program');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (407,'Mark','Graham','Mark.Graham@example.com','462-746-7388','1991-08-23T11:17:47.950Z','Legacy Directives Agent','Assurance');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (408,'Tristin','Bayer','Tristin.Bayer@example.com','882-044-3996','1964-03-26T17:49:29.143Z','Internal Marketing Officer','Intranet');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (409,'Maurice','Renner','Maurice.Renner@example.com','383-435-0943','1973-11-05T18:41:06.678Z','National Accountability Planner','Accounts');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (410,'Preston','Stark','Preston.Stark@example.com','080-698-9552','1994-02-02T10:24:40.312Z','Corporate Program Orchestrator','Integration');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (411,'Mabelle','Herman','Mabelle.Herman@example.com','778-672-2787','1956-11-30T09:45:45.699Z','Human Identity Officer','Integration');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (412,'Juvenal','Swaniawski','Juvenal.Swaniawski@example.com','349-906-2745','1963-11-17T06:51:48.742Z','Future Program Planner','Response');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (413,'Rachelle','Okuneva','Rachelle.Okuneva@example.com','134-565-3868','1992-05-27T04:39:16.831Z','District Creative Architect','Paradigm');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (414,'Macey','Weissnat','Macey.Weissnat@example.com','210-461-3749','1978-06-24T06:38:18.125Z','Product Accountability Facilitator','Data');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (415,'Ena','Gerlach','Ena.Gerlach@example.com','429-925-7634','1976-04-09T22:36:01.397Z','Human Tactics Agent','Creative');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (416,'Darrick','Deckow','Darrick.Deckow@example.com','549-222-4121','1956-10-25T01:05:22.507Z','Lead Solutions Producer','Metrics');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (417,'Palma','Torp','Palma.Torp@example.com','346-556-3517','1967-06-24T15:42:05.485Z','Product Infrastructure Consultant','Response');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (418,'Lucious','Steuber','Lucious.Steuber@example.com','977-372-2840','1961-11-24T16:19:53.598Z','District Creative Supervisor','Mobility');
Insert into ORACLEUSR.EMPLOYEE (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,BIRTHDATE,TITLE,DEPARTMENT) values (419,'Kacey','Kilback','Kacey.Kilback@example.com','268-777-2011','1957-09-06T10:07:09.719Z','Corporate Mobility Agent','Infrastructure');
--------------------------------------------------------
--  DDL for Index SYS_C0012473
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORACLEUSR"."SYS_C0012473" ON "ORACLEUSR"."EMPLOYEE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "ORACLEUSR"."EMPLOYEE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ORACLEUSR"."EMPLOYEE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;