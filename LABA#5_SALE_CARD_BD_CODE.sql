[LABA#5_SALE_CARD_BD_CODE_SQL.sql](https://github.com/user-attachments/files/23001230/LABA.5_SALE_CARD_BD_CODE_SQL.sql)

CREATE TABLE IF NOT EXISTS public."USERS"
(
    "user's number" integer NOT NULL PRIMARY KEY,
    "surname" varchar,
    "NAME" varchar,
	"patronymic" varchar,
	"phone number" integer,
	"email address" varchar
);

CREATE TABLE IF NOT EXISTS public."SALE_CARD"
(
    "unique card number" integer NOT NULL PRIMARY KEY,
    "card type" varchar, 
    "type of catch" varchar,
	"brends" varchar,
	"date" date,
	"status label" varchar,
	"user's number" integer NOT NULL REFERENCES  "USERS"
);

CREATE TABLE IF NOT EXISTS public."ACCOUNTING_LOG"
(
    "entry number" integer NOT NULL PRIMARY KEY,
    "date of capture" date,
	"Return date" date,
	"unique card number" integer NOT NULL REFERENCES  "SALE_CARD",
	"user's number" integer NOT NULL REFERENCES  "USERS"
)



