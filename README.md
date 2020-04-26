# ETL Project
## Thern Proposal Data Base Analysis

### About

*The objective of the ETL project was to Extract, Transform, & Load data from Thern Inc. proposals. We engineered data to get proposal information for both 2017 and 2018 and prepare it to be analyzed.* 

### Extracting the Data

*We extracted the data from the Thern customer database 

### Transforming the Data 


### Loading the Data 
The last step was to transfer our final output into a [Database](http://127.0.0.1:57996/browser/). We created a database and respective table defining data types so as to macth the  the columns  from the final Pandas Data Frame using Postgres database (**PGAdmin**) to store our original clean data sets. We then used the [schema](https://github.com/ruedaibanez1986/Project_ETL-/blob/master/schema.sql) to import the csv file into the SQL table. A visualization of the created database can be seen here:

<img src="Assets/pgadmin_database.png" width ="700">


We then reconnected the created database to a jupyter notebook file and generated a [pandas table](https://github.com/ruedaibanez1986/Project_ETL-/blob/master/Assets/pgadmin_connection.png?raw=true) in the notebook. 


### ??? Summary

---
### Tools Used
* Jupyter Notebook
* Python
* Pandas
* Excel Notebook
* Postgres SQL
* SQLALchemy
---

#### Team Members
* Kati Gremillion
* Robert Lugo Jr.
* Saheed Obitayo
* Kati Gremillion
