DROP TABLE IF EXISTS append_analysis_df CASCADE;

CREATE TABLE "append_analysis_df" (
    "Customer ID" varchar(20)   NOT NULL,
    "Proposal #" varchar(20)   NOT NULL,
    "Market" varchar(200)   NOT NULL,
    "Project Name" varchar(300) ,
    "Customer Name" varchar(100) ,
    "Proposal Value" DECIMAL(10,2) ,
    "Estimated Value" DECIMAL(10,2) ,
    "Status" varchar(10) ,
    "Notes" varchar(400) ,
    "City" varchar(20) ,
    "Zip Code" VARCHAR(12) ,
    "Contact Firt Name" VARCHAR(30) ,
    "Email" VARCHAR(255) ,
    "Year" int   NOT NULL
);