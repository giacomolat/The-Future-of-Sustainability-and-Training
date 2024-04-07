--------------------------------------------------------
--  File creato - domenica-aprile-07-2024   
--------------------------------------------------------
DROP TABLE "CUSTOMER_PROJECT_SRC_2022"."DIM_COMPANY";
--------------------------------------------------------
--  DDL for Table DIM_COMPANY
--------------------------------------------------------

  CREATE TABLE "CUSTOMER_PROJECT_SRC_2022"."DIM_COMPANY" 
   (	"COMPANY_COD" VARCHAR2(25 BYTE), 
	"COMPANY_DES" VARCHAR2(100 BYTE), 
	"CURRENCY_COD" VARCHAR2(10 BYTE), 
	"COUNTRY_COD" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

REM INSERTING into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY
SET DEFINE OFF;

Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('AT10','NovaGen Innovations Croazia','EUR','CR');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('AU10','NovaGen Innovations Australia','AUD','AU');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('BE10','NovaGen Innovations Belgium','EUR','BL');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('BG10','NovaGen Innovations Bulgary','BGN','BG');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('BR10','NovaGen Innovations Brasil','BRL','BR');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('CN10','NovaGen Innovations China','CNY','CH');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('DE10','NovaGen Innovations Germany','EUR','DE');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('ES10','NovaGen Innovations Spain','EUR','SP');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('FR10','NovaGen Innovations France','EUR','FR');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('GR10','NovaGen Innovations Greece','EUR','GR');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('HU10','NovaGen Innovations Hungary','HUF','HU');
Insert into CUSTOMER_PROJECT_SRC_2022.DIM_COMPANY (COMPANY_COD,COMPANY_DES,CURRENCY_COD,COUNTRY_COD) values ('IT10','NovaGen Innovations Italy','EUR','IT');
