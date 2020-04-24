DROP TABLE IF EXISTS Texas_df_2018 CASCADE;
DROP TABLE IF EXISTS Texas_df_2017 CASCADE;

CREATE TABLE "Texas_df_2018" (
    "Proposal_no" varchar(200)   NOT NULL,
    "Market" varchar(200)   NOT NULL,
    "Project_name" varchar(200)   NOT NULL,
    "Customer_ID" varchar(200)   NOT NULL,
    "Customer_name" varchar(30)   NOT NULL,
    "Proposal_value" DECIMAL(10,2)   NOT NULL,
    "Estimated_value" DECIMAL(10,2)   NOT NULL,
    "Status" varchar(200)   NOT NULL,
    "Notes" varchar(400)   NOT NULL,
    "City" varchar(200)   NOT NULL,
    "Zip_code" VARCHAR(12)   NOT NULL,
    "Contact_first_name" VARCHAR(30)   NOT NULL,
    "Email" VARCHAR(255)   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Texas_df_2018" PRIMARY KEY (
        "Proposal_no"
     )
);

CREATE TABLE "Texas_df_2017" (
    "Proposal_no" varchar(200)   NOT NULL,
    "Market" varchar(200)   NOT NULL,
    "Project_name" varchar(200)   NOT NULL,
    "Customer_ID" varchar(200)   NOT NULL,
    "Customer_name" varchar(30)   NOT NULL,
    "Proposal_value" DECIMAL(10,2)   NOT NULL,
    "Estimated_value" DECIMAL(10,2)   NOT NULL,
    "Status" varchar(200)   NOT NULL,
    "Notes" varchar(400)   NOT NULL,
    "City" varchar(200)   NOT NULL,
    "Zip_code" VARCHAR(12)   NOT NULL,
    "Contact_first_name" VARCHAR(30)   NOT NULL,
    "Email" VARCHAR(255)   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Texas_df_2017" PRIMARY KEY (
        "Proposal_no"
     )
);

ALTER TABLE "Texas_df_2018" ADD CONSTRAINT "fk_Texas_df_2018_Proposal_no" FOREIGN KEY("Proposal_no")
REFERENCES "Texas_df_2017" ("Proposal_no");