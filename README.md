# ETL Project
## Thern Proposal Data Base Analysis

### About

*The objective of the ETL project was to Extract, Transform, & Load data from Thern Inc. proposals. We engineered data to get proposal information for both 2017 and 2018 and prepare it to be analyzed.* 

### Extracting the Data

We extracted the data from the Thern customer database into two Excel files one for 2017 and one for 2018. The files were then read into a Jupyter Notebook using Panda’s read_excel function. The extracted files contained 70 columns, 14 columns that have the main essential information were selected, the rest of the columns were dropped. The next step is to transform the data and prepare it to be loaded into the database.

### Transforming the Data 

This was the most challenging part of the project due to the way the reports as generated. We had to transform a file with more than 50 columns to data frames that were manageable to the outside sales team and for the technical sales team. Also, we encounter multiple empty rows and columns that need to be dropped since they did add any value to the data frame. 

One of the main challenges we encounter while sorting, and cleaning the data was to eliminate a category withing a column that was not relevant to this case. For this instance, we used the following code:

#### Delete water waste water rows withing the data frame 

```python
indexNames = organized_df[ organized_df['Market'] == "Water/Wastewater"].index 
organized_df.drop(indexNames , inplace=True) 
```
The different drop option for pandas would eliminate the entire row or column. 

Besides the sorting and the filtering of the data, we renamed some columns so they were easier to utilize by the individuals within the organization. 

Once we managed to read the .xlsx files in pandas, transform the data we wanted to combine the two years of information with the intention of being able to compare the performance of the company in terms of “proposals” generated per year. 

Our first approach was to use merge with pandas, but noticed that this function at the moment of merging with an outer join method would quadruple the number of rows in our new dataframe. We discussed this situation and decided to use an append function to combine the two databases into one. 

In a nutshell, we transformed files having on average more than 3100 rows and approximately 70 columns to export data frames with roughly 300 rows and 14 columns in total. Without duplicated proposals, the clean and legible information was ready to be uploaded. 

#### Raw Data 

<img src= "Assets/raw_data_image.png" width ="700">

#### Data Transformed 

<img src= "Assets/exported_data_csv.png" width ="700">


### Loading the Data 
The last step was to transfer our final output into a [Database](http://127.0.0.1:57996/browser/). We created a database and respective table defining data types so as to match the columns from the final pandas dataframe using Postgres database (**pgAdmin**) to store our original clean data sets. We then used the [schema](https://github.com/ruedaibanez1986/Project_ETL-/blob/master/schema.sql) to import the csv file into the SQL table. A visualization of the created database can be seen here:

<img src="Assets/pgadmin_database.png" width ="700">


Besides creating a database and loading the data, we decided to establish a connection with the intention of validating the tables within pgAdmin were populated correctly. 

#### Validating Connection with pgAdmin table

<img src="Assets/pgadmin_connection.png" width ="700">

Finally, we decided to work with the data by grouping it by years in order to analyze the number of proposals submitted and the potential revenue the proposals could generate for the company. 

#### Grouping information from df created from the connection with pgAdmin
<img src="Assets/grouping_information_df.png" width ="700">

#### Summary 

*For this project we successfully completed the objective of ETL. ETL stands for Extract, Transform and Load. In the first step extraction was done from multiple .csv files into the Jupyter Notebooks. During the transform step, the data was extracted from the .xlsx file cleaned and transformed. This was done by sorting, filtering, and dropping unnecessary data. The Loading step was finally completed by inputting the Pandas database into (PGadmin) and importing the data into the new tables created. When it was all complete we had a database that was clean and ready for interpretation.*

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
